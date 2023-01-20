----- This is a n-bit 8_to_1 MUX using 4_to_1 MUX ---------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use work.components.all;

ENTITY mux8to1 IS
	generic  (n : integer:= 4);
	PORT ( 
		s : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		w0, w1, w2, w3, w4, w5, w6, w7 : IN STD_LOGIC_VECTOR((n-1) downto 0);
		
		f : OUT STD_LOGIC_VECTOR((n-1) downto 0));
END mux8to1;

ARCHITECTURE struc_behaviour OF mux8to1 IS
	signal mux1_vec : std_logic_vector((n-1) downto 0);
	signal mux2_vec : std_logic_vector((n-1) downto 0);
	
BEGIN
	stage1 : mux4to1 generic map (n=>n) port map (s(1 downto 0), w0, w1, w2, w3, mux1_vec);
	stage2 : mux4to1 generic map (n=>n) port map (s(1 downto 0), w4, w5, w6, w7, mux2_vec);
	stage3 : mux2to1 generic map (n=>n) port map (s(2), mux1_vec, mux2_vec, f);
END struc_behaviour; 