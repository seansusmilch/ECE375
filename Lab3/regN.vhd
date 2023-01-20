-- ENABLE ACTIVE LOW N-bit REGISTER
library ieee;
use ieee.std_logic_1164.all;

entity regN is
	generic(N: integer:= 6);
	port(
		clock: in std_logic;
		en: in std_logic;
		D: in std_logic_vector((N-1) downto 0);
		Q: out std_logic_vector((N-1) downto 0)
		);
end regN;

architecture regN_arch of regN is begin
	process(clock) begin
		if(rising_edge(clock)) then
			if(en='0') then
				Q <= D;
			end if;
		end if;
	end process;
end regN_arch;