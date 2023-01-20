library ieee;
use ieee.std_logic_1164.all;

entity Lab1 is
	port(
		a : in std_logic;
		b : in std_logic;
		c : out std_logic
		);	
end Lab1;

architecture or_logic of Lab1 is
begin
	c <= a or b;
end or_logic;