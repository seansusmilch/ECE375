library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is
	port(
		reset, clock: in std_logic;
		done: out std_logic;
		count_out: out std_logic_vector(31 downto 0)
		);
end counter;

architecture counter_logic of counter is
	signal counter_next: std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
	signal counter_1s: std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
	signal counter_3s: std_logic_vector(31 downto 0) := "00000000000000000000000000000011";
	signal counter_6s: std_logic_vector(31 downto 0) := "00000000000000000000000000000110";
	signal done_next: std_logic;

begin
	count_out <= counter_next;
	done <= done_next;
	
	process(clock) begin
		if(rising_edge(clock)) then
			if(reset='1') then
				counter_next <= "00000000000000000000000000000000";
				done_next <= '0';
			else
				counter_next <= counter_next + 1;
				if(counter_next = counter_1s or counter_next=counter_3s or counter_next=counter_6s) then
					done_next <= '1';
				else
					done_next <= '0';
				end if;
			end if;
		end if;
	end process;
end architecture;

--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
--
--entity counter is
--	port(
--		reset, clock: in std_logic;
--		done: out std_logic;
--		count_out: out std_logic_vector(31 downto 0)
--		);
--end counter;
--
--architecture counter_logic of counter is
--	signal counter_next: std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
--	signal counter_1s: std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
--	signal counter_3s: std_logic_vector(31 downto 0) := "00000000000000000000000000000011";
--	signal counter_6s: std_logic_vector(31 downto 0) := "00000000000000000000000000000110";
--
--begin
--	count_out <= counter_next;
--	process(clock) begin
--		if(rising_edge(clock)) then
--			if(reset='1') then
--				counter_next <= "00000000000000000000000000000000";
--			else
--				counter_next <= counter_next + 1;
--			end if;
--		end if;
--	end process;
--end architecture;