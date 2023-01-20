-- ENABLE ACTIVE LOW N-bit TRISTATE BUFFER
library ieee;
use ieee.std_logic_1164.all;

entity tristateN is
	generic(N: integer:= 6);
	port(
		enable: in std_logic;
		input: in std_logic_vector((N-1) downto 0);
		output: out std_logic_vector((N-1) downto 0)
		);
end tristateN;

architecture tristate_arch of tristateN is begin
	output <= input when(enable = '0') else (OTHERS => 'Z');
end tristate_arch;