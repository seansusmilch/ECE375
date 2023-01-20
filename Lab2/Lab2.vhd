library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Lab2 is
	port(
		reset, start, clock: in std_logic;
		red, yellow, green: out std_logic;
		count_out: out std_logic_vector(31 downto 0)
	);
end Lab2;

architecture Lab2_logic of Lab2 is
type state_available is (Idle, Ready, Set, Go);
signal present_state, next_state : state_available;
signal count_reset: std_logic;
signal done: std_logic;

component counter
	port(
		reset, clock: in std_logic;
		done: out std_logic;
		count_out: out std_logic_vector(31 downto 0)
		);
end component;

begin
	count_reset <= reset or start;
	c0: counter port map (count_reset, clock, done, count_out);
	
	process(clock, reset) begin
		if(reset='1') then
			present_state <= Idle;
			
		elsif(rising_edge(clock)) then
			present_state <= next_state;
		end if;
	end process;
	
	process(present_state, start, done) begin
		case present_state is
			when Idle =>
				red <= '1';
				yellow <= '0';
				green <= '0';
				
				if(start='0') then
					next_state <= Idle;
				else
					next_state <= Ready;
				end if;
				
			when Ready =>
				red <= '1';
				yellow <= '0';
				green <= '0';
				
				if(done = '1') then
					next_state <= Set;
				else
					next_state <= Ready;
				end if;
				
			when Set =>
				red <= '0';
				yellow <= '1';
				green <= '0';
				
				if(done = '1') then
					next_state <= Go;
				else
					next_state <= Set;
				end if;
				
			when Go =>
				red <= '0';
				yellow <= '0';
				green <= '1';
				
				if(done = '1') then
					next_state <= Idle;
				else
					next_state <= Go;
				end if;
		end case;
	end process;
end Lab2_logic;