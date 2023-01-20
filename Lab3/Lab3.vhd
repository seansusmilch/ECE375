library ieee;
use ieee.std_logic_1164.all;

entity Lab3 is
	port(
		clock: in std_logic;
		Ld: in std_logic;
		ReadAddr: in std_logic_vector(1 downto 0);
		WriteAddr: in std_logic_vector(1 downto 0);
		Memin: in std_logic_vector(5 downto 0);
		
		Memout: out std_logic_vector(5 downto 0)
		);
end Lab3;

architecture Lab3_arch of Lab3 is
	signal rout0, rout1, rout2, rout3: std_logic_vector(5 downto 0);
	signal ren0, ren1, ren2, ren3: std_logic;
	signal tri0, tri1, tri2, tri3: std_logic;

	component regN is
	generic(N: integer:= 6);
	port(
		clock: in std_logic;
		en: in std_logic;
		D: in std_logic_vector(N-1 downto 0);
		Q: out std_logic_vector(N-1 downto 0)
		);
	end component;

	component tristateN is
		generic(N: integer:= 6);
		port(
			enable: in std_logic;
			input: in std_logic_vector((N-1) downto 0);
			output: out std_logic_vector((N-1) downto 0)
			);
	end component;
	
begin
	reg0: regN generic map(N=>6) port map(clock, ren0, Memin, rout0);
	t0: tristateN generic map(N=>6) port map(tri0, rout0, Memout);
	
	reg1: regN generic map(N=>6) port map(clock, ren1, Memin, rout1);
	t1: tristateN generic map(N=>6) port map(tri1, rout1, Memout);
	
	reg2: regN generic map(N=>6) port map(clock, ren2, Memin, rout2);
	t2: tristateN generic map(N=>6) port map(tri2, rout2, Memout);
	
	reg3: regN generic map(N=>6) port map(clock, ren3, Memin, rout3);
	t3: tristateN generic map(N=>6) port map(tri3, rout3, Memout);
	
	process(ReadAddr) begin
		
	end process;
	
	process(clock) begin
		if(rising_edge(clock)) then
			case ReadAddr is
				when "00" =>
					tri0 <= '0';
					tri1 <= '1';
					tri2 <= '1';
					tri3 <= '1';
				when "01" =>
					tri0 <= '1';
					tri1 <= '0';
					tri2 <= '1';
					tri3 <= '1';
				when "10" =>
					tri0 <= '1';
					tri1 <= '1';
					tri2 <= '0';
					tri3 <= '1';
				when "11" =>
					tri0 <= '1';
					tri1 <= '1';
					tri2 <= '1';
					tri3 <= '0';
				when others =>
					tri0 <= '1';
					tri1 <= '1';
					tri2 <= '1';
					tri3 <= '1';	
			end case;
			if(Ld='1') then
				case WriteAddr is
					when "00" =>
						ren0 <= '0';
						ren1 <= '1';
						ren2 <= '1';
						ren3 <= '1';
					when "01" =>
						ren0 <= '1';
						ren1 <= '0';
						ren2 <= '1';
						ren3 <= '1';
					when "10" =>
						ren0 <= '1';
						ren1 <= '1';
						ren2 <= '0';
						ren3 <= '1';
					when "11" =>
						ren0 <= '1';
						ren1 <= '1';
						ren2 <= '1';
						ren3 <= '0';
					when others =>
						ren0 <= '1';
						ren1 <= '1';
						ren2 <= '1';
						ren3 <= '1';
				end case;
			else
				ren0 <= '1';
				ren1 <= '1';
				ren2 <= '1';
				ren3 <= '1';
			end if;
		end if;
	end process;
end Lab3_arch;