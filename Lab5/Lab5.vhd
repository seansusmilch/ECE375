library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.components.all;

entity Lab5 is
	port(
		a_in, x_in: in std_logic_vector(5 downto 0);
		clock, reset: in std_logic;
		result: out std_logic_vector(11 downto 0)
	);
end Lab5;

architecture Lab5_arch of Lab5 is
	signal multiplier, multiplicand : std_logic_vector(5 downto 0);
	signal a, na, a2, na2, mux_out : std_logic_vector(6 downto 0);
	signal partial : std_logic_vector(14 downto 0) := "000000000000000"; -- 2k+3, P0 is 0
	signal mux_en, mux_sel, subadd, Cin, Cout_trash: std_logic;
	signal mux_in : std_logic_vector(2 downto 0);
	signal adder_x, adder_y, adder_out : std_logic_vector(8 downto 0);
	signal base2 : std_logic_vector(2 downto 0);
	
	type state_avail is (Idle, P0, P1, P2, P3);
	signal present_state, next_state: state_avail;
	
--	signal x1, x0, xn1 : std_logic;
	signal x10, x0n1 : std_logic_vector(1 downto 0);
	
	--	booth encoding -1, 0, 1
	type booth is (n_oneb, zerob, oneb);
	signal y_next, y_current : booth;
	
	-- radix 4		-2, -1, 0, 1, 2
	type radix4 is (n_two4, n_one4, zero4, one4, two4);
	signal current_r4 : radix4;
	
begin
	process(clock, reset) begin
		if(reset='1') then
			present_state <= Idle;
		elsif(rising_edge(clock)) then
			present_state <= next_state;
			
			partial <= adder_out(8) & adder_out(8) & adder_out & partial(5 downto 2); -- right shift 2
		end if;
	end process;
	
	process(present_state) begin
		case present_state is
			when Idle => 
				next_state <= P0;
			when P0 =>
				x10 <= multiplier(1 downto 0);
				x0n1 <= multiplier(0) & '0';
				next_state <= P1;
			when P1 =>
				x10 <= multiplier(3 downto 2);
				x0n1 <= multiplier(2 downto 1);
				next_state <= P2;
			when P2 =>
				x10 <= multiplier(5 downto 4);
				x0n1 <= multiplier(4 downto 3);
				next_state <= P3;
			when P3 =>
				result <= partial(11 downto 0);
				next_state <= P3;
		end case;

	end process;
	
	process(x10, x0n1) begin
		case x10 is
			when "00" | "11" =>
				y_next <= zerob;
			when "01" =>
				y_next <= oneb;
			when "10" =>
				y_next <= n_oneb;
			when others => 
				y_next <= zerob;
		end case;
		case x0n1 is
			when "00" | "11" =>
				y_current <= zerob;
			when "01" =>
				y_current <= oneb;
			when "10" =>
				y_current <= n_oneb;
			when others => 
				y_current <= zerob;
		end case;
		
	end process;
	
	process(y_next, y_current) begin
		case y_current is
			when zerob => 
				case y_next is
					when n_oneb => current_r4 <= n_two4;
					when zerob => current_r4 <= zero4;
					when oneb => current_r4 <= two4;
				end case;
			
			when n_oneb | oneb =>
				case y_next is
					when n_oneb => current_r4 <= n_one4;
					when zerob =>
						if(y_current = n_oneb) then
							current_r4 <= n_one4;
						else
							current_r4 <= one4;
						end if;
					when oneb => current_r4 <= one4;
				end case;
		end case;
	end process;
	
	multiplicand <= a_in;
	multiplier <= x_in;
	
--	x10 <= x1 & x0;
--	x0n1 <= x0 & xn1;
	
	mux_en <= '1' when current_r4 /= zero4 else '0';
	mux_sel <= '1' when current_r4 = n_two4 or current_r4 = two4 else '0';
	subadd <= '1' when current_r4 = n_two4 or current_r4 = n_one4 else '0';
	mux_in <= mux_en & mux_sel & subadd;
	a <= "0" & multiplicand;
	na <= not(multiplicand(5)) & not(multiplicand) + 1;
	a2 <= multiplicand(5 downto 0) & '0';
	na2 <= na(5 downto 0) & '0'; 
	adder_mux: mux8to1 
		generic map (n=>7) 
		port map (mux_in, "0000000", "0000000", "0000000", "0000000", a, na, a2, na2, mux_out);
		
	adder_x <= partial(14 downto 6);
	adder_y <= mux_out(6) & mux_out(6) & mux_out;
	Cin <= mux_en and mux_sel;
--	adder: ripple_carry
--		port map ( Cin, adder_x, adder_y, adder_out, Cout_trash);
	adder_out <= adder_x + adder_y;
		
end architecture;