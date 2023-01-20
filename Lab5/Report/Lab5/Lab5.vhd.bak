library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.components.all;

entity Lab4 is
	port(
		a, x: in std_logic_vector(7 downto 0);
		clock, enable, reset: in std_logic;
		result: out std_logic_vector(15 downto 0)
	);
end Lab4;

architecture Lab4_arch of Lab4 is
	signal multiplier, multiplicand, mux_out : std_logic_vector(7 downto 0);
	signal partial : std_logic_vector(17 downto 0) := "000000000000000000"; -- 2k+2, P0 is 0
	signal mux_en, mux_sel, Cin, Cout_trash: std_logic;
	signal mux_in : std_logic_vector(1 downto 0);
	signal adder_x, adder_y, adder_out : std_logic_vector(9 downto 0);
	
	type state_avail is (P0, P1, P2, P3, P4, P5, P6, P7, P8);
	signal present_state, next_state: state_avail;
	
begin
	process(clock, reset) begin
		if(reset='1') then
			present_state <= P0;
		elsif(rising_edge(clock)) then
			present_state <= next_state;
			
			partial <= adder_out(9) & adder_out & partial(7 downto 1); -- right shift 1
		end if;
	end process;
	
	process(present_state) begin
		case present_state is
			when P0 =>
				mux_en <= multiplier(0);
				mux_sel <= '0';
				next_state <= P1;
			when P1 =>
				mux_en <= multiplier(1);
				mux_sel <= '0';
				next_state <= P2;
			when P2 =>
				mux_en <= multiplier(2);
				mux_sel <= '0';
				next_state <= P3;
			when P3 =>
				mux_en <= multiplier(3);
				mux_sel <= '0';
				next_state <= P4;
			when P4 =>
				mux_en <= multiplier(4);
				mux_sel <= '0';
				next_state <= P5;
			when P5 =>
				mux_en <= multiplier(5);
				mux_sel <= '0';
				next_state <= P6;
			when P6 =>
				mux_en <= multiplier(6);
				mux_sel <= '0';
				next_state <= P7;
			when P7 =>
				mux_en <= multiplier(7);
				mux_sel <= '1';
				next_state <= P8;
			when P8 =>
				next_state <= P8;
				result <= partial(15 downto 0);
		end case;
	end process;
	
	multiplicand <= a;
	multiplier <= x;
	
	mux_in <= mux_en & mux_sel;
	adder_mux: mux4to1 
		generic map (n=>8) 
		port map (mux_in, "00000000", "00000000", multiplicand, "not"(multiplicand), mux_out);
		
	adder_x <= partial(17 downto 8);
	adder_y <= mux_out(7) & mux_out(7) & mux_out;
	Cin <= mux_en and mux_sel;
	adder: ripple_carry
		port map ( Cin, adder_x, adder_y, adder_out, Cout_trash);
		
end architecture;