---- this is a 9-bit ripple_carry adder circuit -----------

LIBRARY ieee;
USE ieee.std_logic_1164.all ;
USE work.components.all;

ENTITY ripple_carry IS
	PORT ( Cin: IN STD_LOGIC;
			x,y : IN STD_LOGIC_VECTOR(8 downto 0);
			s : OUT STD_LOGIC_VECTOR(8 downto 0);
			Cout : OUT STD_LOGIC );
END ripple_carry ;

ARCHITECTURE struc_behaviour OF ripple_carry IS
	signal carry : std_logic_vector(8 downto 1);
	signal y0,y1,y2,y3,y4,y5,y6,y7,y8 : std_logic;

BEGIN

	y0 <= y(0) XOR Cin;
	y1 <= y(1) XOR Cin;
	y2 <= y(2) XOR Cin;
	y3 <= y(3) XOR Cin;
	y4 <= y(4) XOR Cin;
	y5 <= y(5) XOR Cin;
	y6 <= y(6) XOR Cin;
	y7 <= y(7) XOR Cin;
	y8 <= y(8) XOR Cin;
	
	stage1 : fulladd PORT MAP (Cin, x(0), y0, s(0), carry(1));
	stage2 : fulladd PORT MAP (carry(1), x(1), y1, s(1), carry(2));
	stage3 : fulladd PORT MAP (carry(2), x(2), y2, s(2), carry(3));
	stage4 : fulladd PORT MAP (carry(3), x(3), y3, s(3), carry(4));
	stage5 : fulladd PORT MAP (carry(4), x(4), y4, s(4), carry(5));
	stage6 : fulladd PORT MAP (carry(5), x(5), y5, s(5), carry(6));
	stage7 : fulladd PORT MAP (carry(6), x(6), y6, s(6), carry(7));
	stage8 : fulladd PORT MAP (carry(7), x(7), y7, s(7), carry(8));
	stage9 : fulladd PORT MAP (carry(8), x(8), y8, s(8), Cout);

END struc_behaviour;