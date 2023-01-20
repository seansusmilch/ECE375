library ieee;
use ieee.std_logic_1164.all;

entity fsm is	
	port( 
		reset, input, clock: in std_logic;
		output: out std_logic
		);
end fsm;

architecture fsm_logic of fsm is
	type state_available is (A,B,C,D);
	signal present_state, next_state : state_available;

begin
	process(clock, reset) begin
		if(reset='1') then
			present_state <= A;
		
		elsif(rising_edge(clock)) then
			present_state <= next_state;
			
		end if;
	end process;
	
	process(present_state, input) begin
		case present_state is
		
			when A =>
				if(input='0') then
					output <= '1';
					next_state <= C;
				else
					output <= '0';
					next_state <= B;
				end if;
				
			when B =>
				if(input='0') then
					output <= '0';
					next_state <= D;
				else
					output <= '1';
					next_state <= B;
				end if;
				
			when C =>
				if(input='0') then
					output <= '1';
					next_state <= D;
				else
					output <= '1';
					next_state <= C;
				end if;
			
			when D =>
				if(input='0') then
					output <= '0';
					next_state <= D;
				else
					output <= '1';
					next_state <= A;
				end if;
				
		end case;
	end process;
end architecture;
					