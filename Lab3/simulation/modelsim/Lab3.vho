-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/31/2022 12:40:28"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab3 IS
    PORT (
	clock : IN std_logic;
	Ld : IN std_logic;
	ReadAddr : IN std_logic_vector(1 DOWNTO 0);
	WriteAddr : IN std_logic_vector(1 DOWNTO 0);
	Memin : IN std_logic_vector(5 DOWNTO 0);
	Memout : OUT std_logic_vector(5 DOWNTO 0)
	);
END Lab3;

-- Design Ports Information
-- Memout[0]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memout[1]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memout[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memout[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memout[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memout[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadAddr[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadAddr[0]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memin[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memin[1]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memin[2]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memin[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memin[4]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Memin[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteAddr[1]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ld	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteAddr[0]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_Ld : std_logic;
SIGNAL ww_ReadAddr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_WriteAddr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Memin : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Memout : std_logic_vector(5 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Memout[0]~output_o\ : std_logic;
SIGNAL \Memout[1]~output_o\ : std_logic;
SIGNAL \Memout[2]~output_o\ : std_logic;
SIGNAL \Memout[3]~output_o\ : std_logic;
SIGNAL \Memout[4]~output_o\ : std_logic;
SIGNAL \Memout[5]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \ReadAddr[1]~input_o\ : std_logic;
SIGNAL \ReadAddr[0]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \tri2~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \tri1~q\ : std_logic;
SIGNAL \Memin[0]~input_o\ : std_logic;
SIGNAL \Ld~input_o\ : std_logic;
SIGNAL \WriteAddr[1]~input_o\ : std_logic;
SIGNAL \WriteAddr[0]~input_o\ : std_logic;
SIGNAL \ren2~0_combout\ : std_logic;
SIGNAL \ren2~feeder_combout\ : std_logic;
SIGNAL \ren2~q\ : std_logic;
SIGNAL \reg1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \ren1~0_combout\ : std_logic;
SIGNAL \ren1~q\ : std_logic;
SIGNAL \t0|output[0]~6_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \tri3~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \tri0~q\ : std_logic;
SIGNAL \ren0~0_combout\ : std_logic;
SIGNAL \ren0~q\ : std_logic;
SIGNAL \ren3~0_combout\ : std_logic;
SIGNAL \ren3~q\ : std_logic;
SIGNAL \t0|output[0]~7_combout\ : std_logic;
SIGNAL \t0|output[0]~8_combout\ : std_logic;
SIGNAL \t0|output[0]~9_combout\ : std_logic;
SIGNAL \Memin[1]~input_o\ : std_logic;
SIGNAL \reg3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \t0|output[1]~11_combout\ : std_logic;
SIGNAL \reg2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \t0|output[1]~10_combout\ : std_logic;
SIGNAL \t0|output[1]~12_combout\ : std_logic;
SIGNAL \Memin[2]~input_o\ : std_logic;
SIGNAL \reg3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \t0|output[2]~14_combout\ : std_logic;
SIGNAL \reg1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \t0|output[2]~13_combout\ : std_logic;
SIGNAL \t0|output[2]~15_combout\ : std_logic;
SIGNAL \Memin[3]~input_o\ : std_logic;
SIGNAL \t0|output[3]~16_combout\ : std_logic;
SIGNAL \reg3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \t0|output[3]~17_combout\ : std_logic;
SIGNAL \t0|output[3]~18_combout\ : std_logic;
SIGNAL \Memin[4]~input_o\ : std_logic;
SIGNAL \t0|output[4]~20_combout\ : std_logic;
SIGNAL \reg1|Q[4]~feeder_combout\ : std_logic;
SIGNAL \t0|output[4]~19_combout\ : std_logic;
SIGNAL \t0|output[4]~21_combout\ : std_logic;
SIGNAL \Memin[5]~input_o\ : std_logic;
SIGNAL \reg1|Q[5]~feeder_combout\ : std_logic;
SIGNAL \reg2|Q[5]~feeder_combout\ : std_logic;
SIGNAL \t0|output[5]~22_combout\ : std_logic;
SIGNAL \t0|output[5]~23_combout\ : std_logic;
SIGNAL \t0|output[5]~24_combout\ : std_logic;
SIGNAL \reg1|Q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \reg2|Q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \reg3|Q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \reg0|Q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_ren0~q\ : std_logic;
SIGNAL \ALT_INV_ren3~q\ : std_logic;
SIGNAL \ALT_INV_ren2~q\ : std_logic;
SIGNAL \ALT_INV_ren1~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_Ld <= Ld;
ww_ReadAddr <= ReadAddr;
ww_WriteAddr <= WriteAddr;
ww_Memin <= Memin;
Memout <= ww_Memout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_ren0~q\ <= NOT \ren0~q\;
\ALT_INV_ren3~q\ <= NOT \ren3~q\;
\ALT_INV_ren2~q\ <= NOT \ren2~q\;
\ALT_INV_ren1~q\ <= NOT \ren1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X83_Y73_N2
\Memout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t0|output[0]~8_combout\,
	oe => \t0|output[0]~9_combout\,
	devoe => ww_devoe,
	o => \Memout[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\Memout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t0|output[1]~12_combout\,
	oe => \t0|output[0]~9_combout\,
	devoe => ww_devoe,
	o => \Memout[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\Memout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t0|output[2]~15_combout\,
	oe => \t0|output[0]~9_combout\,
	devoe => ww_devoe,
	o => \Memout[2]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\Memout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t0|output[3]~18_combout\,
	oe => \t0|output[0]~9_combout\,
	devoe => ww_devoe,
	o => \Memout[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\Memout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t0|output[4]~21_combout\,
	oe => \t0|output[0]~9_combout\,
	devoe => ww_devoe,
	o => \Memout[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\Memout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t0|output[5]~24_combout\,
	oe => \t0|output[0]~9_combout\,
	devoe => ww_devoe,
	o => \Memout[5]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X81_Y73_N15
\ReadAddr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadAddr(1),
	o => \ReadAddr[1]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\ReadAddr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadAddr(0),
	o => \ReadAddr[0]~input_o\);

-- Location: LCCOMB_X85_Y70_N26
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ReadAddr[0]~input_o\) # (!\ReadAddr[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ReadAddr[1]~input_o\,
	datad => \ReadAddr[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: FF_X85_Y70_N27
tri2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tri2~q\);

-- Location: LCCOMB_X85_Y70_N28
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ReadAddr[1]~input_o\) # (!\ReadAddr[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ReadAddr[1]~input_o\,
	datad => \ReadAddr[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: FF_X85_Y70_N29
tri1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tri1~q\);

-- Location: IOIBUF_X89_Y73_N15
\Memin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memin(0),
	o => \Memin[0]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\Ld~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld,
	o => \Ld~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\WriteAddr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteAddr(1),
	o => \WriteAddr[1]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\WriteAddr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteAddr(0),
	o => \WriteAddr[0]~input_o\);

-- Location: LCCOMB_X87_Y70_N10
\ren2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ren2~0_combout\ = ((\WriteAddr[0]~input_o\) # (!\WriteAddr[1]~input_o\)) # (!\Ld~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ld~input_o\,
	datac => \WriteAddr[1]~input_o\,
	datad => \WriteAddr[0]~input_o\,
	combout => \ren2~0_combout\);

-- Location: LCCOMB_X85_Y70_N4
\ren2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ren2~feeder_combout\ = \ren2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ren2~0_combout\,
	combout => \ren2~feeder_combout\);

-- Location: FF_X85_Y70_N5
ren2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ren2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ren2~q\);

-- Location: FF_X85_Y70_N13
\reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(0));

-- Location: LCCOMB_X87_Y70_N28
\reg1|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[0]~feeder_combout\ = \Memin[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memin[0]~input_o\,
	combout => \reg1|Q[0]~feeder_combout\);

-- Location: LCCOMB_X87_Y70_N4
\ren1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ren1~0_combout\ = ((\WriteAddr[1]~input_o\) # (!\WriteAddr[0]~input_o\)) # (!\Ld~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ld~input_o\,
	datac => \WriteAddr[1]~input_o\,
	datad => \WriteAddr[0]~input_o\,
	combout => \ren1~0_combout\);

-- Location: FF_X87_Y70_N5
ren1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ren1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ren1~q\);

-- Location: FF_X87_Y70_N29
\reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|Q[0]~feeder_combout\,
	ena => \ALT_INV_ren1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(0));

-- Location: LCCOMB_X85_Y70_N12
\t0|output[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[0]~6_combout\ = (\tri2~q\ & ((\tri1~q\) # ((\reg1|Q\(0))))) # (!\tri2~q\ & (\reg2|Q\(0) & ((\tri1~q\) # (\reg1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tri2~q\,
	datab => \tri1~q\,
	datac => \reg2|Q\(0),
	datad => \reg1|Q\(0),
	combout => \t0|output[0]~6_combout\);

-- Location: LCCOMB_X85_Y70_N10
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\ReadAddr[0]~input_o\) # (!\ReadAddr[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ReadAddr[1]~input_o\,
	datad => \ReadAddr[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: FF_X85_Y70_N11
tri3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tri3~q\);

-- Location: LCCOMB_X85_Y70_N20
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ReadAddr[1]~input_o\) # (\ReadAddr[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ReadAddr[1]~input_o\,
	datad => \ReadAddr[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: FF_X85_Y70_N21
tri0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tri0~q\);

-- Location: LCCOMB_X87_Y70_N0
\ren0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ren0~0_combout\ = ((\WriteAddr[1]~input_o\) # (\WriteAddr[0]~input_o\)) # (!\Ld~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ld~input_o\,
	datac => \WriteAddr[1]~input_o\,
	datad => \WriteAddr[0]~input_o\,
	combout => \ren0~0_combout\);

-- Location: FF_X86_Y70_N5
ren0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ren0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ren0~q\);

-- Location: FF_X86_Y70_N25
\reg0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(0));

-- Location: LCCOMB_X88_Y70_N12
\ren3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ren3~0_combout\ = ((!\WriteAddr[0]~input_o\) # (!\WriteAddr[1]~input_o\)) # (!\Ld~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ld~input_o\,
	datac => \WriteAddr[1]~input_o\,
	datad => \WriteAddr[0]~input_o\,
	combout => \ren3~0_combout\);

-- Location: FF_X88_Y70_N13
ren3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ren3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ren3~q\);

-- Location: FF_X88_Y70_N1
\reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(0));

-- Location: LCCOMB_X86_Y70_N24
\t0|output[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[0]~7_combout\ = (\tri3~q\ & ((\tri0~q\) # ((\reg0|Q\(0))))) # (!\tri3~q\ & (\reg3|Q\(0) & ((\tri0~q\) # (\reg0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tri3~q\,
	datab => \tri0~q\,
	datac => \reg0|Q\(0),
	datad => \reg3|Q\(0),
	combout => \t0|output[0]~7_combout\);

-- Location: LCCOMB_X85_Y70_N18
\t0|output[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[0]~8_combout\ = (\t0|output[0]~6_combout\ & \t0|output[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|output[0]~6_combout\,
	datad => \t0|output[0]~7_combout\,
	combout => \t0|output[0]~8_combout\);

-- Location: LCCOMB_X85_Y70_N16
\t0|output[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[0]~9_combout\ = (((!\tri0~q\) # (!\tri2~q\)) # (!\tri1~q\)) # (!\tri3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tri3~q\,
	datab => \tri1~q\,
	datac => \tri2~q\,
	datad => \tri0~q\,
	combout => \t0|output[0]~9_combout\);

-- Location: IOIBUF_X89_Y73_N22
\Memin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memin(1),
	o => \Memin[1]~input_o\);

-- Location: FF_X86_Y70_N9
\reg0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(1));

-- Location: LCCOMB_X88_Y70_N14
\reg3|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[1]~feeder_combout\ = \Memin[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memin[1]~input_o\,
	combout => \reg3|Q[1]~feeder_combout\);

-- Location: FF_X88_Y70_N15
\reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg3|Q[1]~feeder_combout\,
	ena => \ALT_INV_ren3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(1));

-- Location: LCCOMB_X86_Y70_N8
\t0|output[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[1]~11_combout\ = (\tri3~q\ & ((\tri0~q\) # ((\reg0|Q\(1))))) # (!\tri3~q\ & (\reg3|Q\(1) & ((\tri0~q\) # (\reg0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tri3~q\,
	datab => \tri0~q\,
	datac => \reg0|Q\(1),
	datad => \reg3|Q\(1),
	combout => \t0|output[1]~11_combout\);

-- Location: LCCOMB_X85_Y70_N6
\reg2|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[1]~feeder_combout\ = \Memin[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memin[1]~input_o\,
	combout => \reg2|Q[1]~feeder_combout\);

-- Location: FF_X85_Y70_N7
\reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg2|Q[1]~feeder_combout\,
	ena => \ALT_INV_ren2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(1));

-- Location: FF_X87_Y70_N27
\reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(1));

-- Location: LCCOMB_X86_Y70_N30
\t0|output[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[1]~10_combout\ = (\tri2~q\ & ((\tri1~q\) # ((\reg1|Q\(1))))) # (!\tri2~q\ & (\reg2|Q\(1) & ((\tri1~q\) # (\reg1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tri2~q\,
	datab => \tri1~q\,
	datac => \reg2|Q\(1),
	datad => \reg1|Q\(1),
	combout => \t0|output[1]~10_combout\);

-- Location: LCCOMB_X86_Y70_N26
\t0|output[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[1]~12_combout\ = (\t0|output[1]~11_combout\ & \t0|output[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|output[1]~11_combout\,
	datac => \t0|output[1]~10_combout\,
	combout => \t0|output[1]~12_combout\);

-- Location: IOIBUF_X85_Y73_N22
\Memin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memin(2),
	o => \Memin[2]~input_o\);

-- Location: LCCOMB_X88_Y70_N28
\reg3|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[2]~feeder_combout\ = \Memin[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memin[2]~input_o\,
	combout => \reg3|Q[2]~feeder_combout\);

-- Location: FF_X88_Y70_N29
\reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg3|Q[2]~feeder_combout\,
	ena => \ALT_INV_ren3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(2));

-- Location: FF_X86_Y70_N11
\reg0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(2));

-- Location: LCCOMB_X86_Y70_N10
\t0|output[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[2]~14_combout\ = (\reg3|Q\(2) & ((\tri0~q\) # ((\reg0|Q\(2))))) # (!\reg3|Q\(2) & (\tri3~q\ & ((\tri0~q\) # (\reg0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|Q\(2),
	datab => \tri0~q\,
	datac => \reg0|Q\(2),
	datad => \tri3~q\,
	combout => \t0|output[2]~14_combout\);

-- Location: LCCOMB_X87_Y70_N20
\reg1|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[2]~feeder_combout\ = \Memin[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memin[2]~input_o\,
	combout => \reg1|Q[2]~feeder_combout\);

-- Location: FF_X87_Y70_N21
\reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|Q[2]~feeder_combout\,
	ena => \ALT_INV_ren1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(2));

-- Location: FF_X85_Y70_N25
\reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(2));

-- Location: LCCOMB_X86_Y70_N16
\t0|output[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[2]~13_combout\ = (\reg1|Q\(2) & (((\tri2~q\) # (\reg2|Q\(2))))) # (!\reg1|Q\(2) & (\tri1~q\ & ((\tri2~q\) # (\reg2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg1|Q\(2),
	datab => \tri1~q\,
	datac => \tri2~q\,
	datad => \reg2|Q\(2),
	combout => \t0|output[2]~13_combout\);

-- Location: LCCOMB_X86_Y70_N4
\t0|output[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[2]~15_combout\ = (\t0|output[2]~14_combout\ & \t0|output[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|output[2]~14_combout\,
	datad => \t0|output[2]~13_combout\,
	combout => \t0|output[2]~15_combout\);

-- Location: IOIBUF_X87_Y73_N15
\Memin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memin(3),
	o => \Memin[3]~input_o\);

-- Location: FF_X85_Y70_N23
\reg2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(3));

-- Location: FF_X87_Y70_N23
\reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(3));

-- Location: LCCOMB_X85_Y70_N22
\t0|output[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[3]~16_combout\ = (\tri2~q\ & ((\tri1~q\) # ((\reg1|Q\(3))))) # (!\tri2~q\ & (\reg2|Q\(3) & ((\tri1~q\) # (\reg1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tri2~q\,
	datab => \tri1~q\,
	datac => \reg2|Q\(3),
	datad => \reg1|Q\(3),
	combout => \t0|output[3]~16_combout\);

-- Location: LCCOMB_X88_Y70_N22
\reg3|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3|Q[3]~feeder_combout\ = \Memin[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memin[3]~input_o\,
	combout => \reg3|Q[3]~feeder_combout\);

-- Location: FF_X88_Y70_N23
\reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg3|Q[3]~feeder_combout\,
	ena => \ALT_INV_ren3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(3));

-- Location: FF_X86_Y70_N3
\reg0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(3));

-- Location: LCCOMB_X86_Y70_N2
\t0|output[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[3]~17_combout\ = (\reg3|Q\(3) & ((\tri0~q\) # ((\reg0|Q\(3))))) # (!\reg3|Q\(3) & (\tri3~q\ & ((\tri0~q\) # (\reg0|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|Q\(3),
	datab => \tri0~q\,
	datac => \reg0|Q\(3),
	datad => \tri3~q\,
	combout => \t0|output[3]~17_combout\);

-- Location: LCCOMB_X85_Y70_N8
\t0|output[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[3]~18_combout\ = (\t0|output[3]~16_combout\ & \t0|output[3]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|output[3]~16_combout\,
	datad => \t0|output[3]~17_combout\,
	combout => \t0|output[3]~18_combout\);

-- Location: IOIBUF_X89_Y73_N8
\Memin[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memin(4),
	o => \Memin[4]~input_o\);

-- Location: FF_X86_Y70_N15
\reg0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(4));

-- Location: FF_X88_Y70_N21
\reg3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(4));

-- Location: LCCOMB_X86_Y70_N14
\t0|output[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[4]~20_combout\ = (\tri3~q\ & ((\tri0~q\) # ((\reg0|Q\(4))))) # (!\tri3~q\ & (\reg3|Q\(4) & ((\tri0~q\) # (\reg0|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tri3~q\,
	datab => \tri0~q\,
	datac => \reg0|Q\(4),
	datad => \reg3|Q\(4),
	combout => \t0|output[4]~20_combout\);

-- Location: LCCOMB_X87_Y70_N12
\reg1|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[4]~feeder_combout\ = \Memin[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memin[4]~input_o\,
	combout => \reg1|Q[4]~feeder_combout\);

-- Location: FF_X87_Y70_N13
\reg1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|Q[4]~feeder_combout\,
	ena => \ALT_INV_ren1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(4));

-- Location: FF_X85_Y70_N9
\reg2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(4));

-- Location: LCCOMB_X86_Y70_N12
\t0|output[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[4]~19_combout\ = (\tri2~q\ & ((\tri1~q\) # ((\reg1|Q\(4))))) # (!\tri2~q\ & (\reg2|Q\(4) & ((\tri1~q\) # (\reg1|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tri2~q\,
	datab => \tri1~q\,
	datac => \reg1|Q\(4),
	datad => \reg2|Q\(4),
	combout => \t0|output[4]~19_combout\);

-- Location: LCCOMB_X86_Y70_N20
\t0|output[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[4]~21_combout\ = (\t0|output[4]~20_combout\ & \t0|output[4]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t0|output[4]~20_combout\,
	datad => \t0|output[4]~19_combout\,
	combout => \t0|output[4]~21_combout\);

-- Location: IOIBUF_X87_Y73_N8
\Memin[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Memin(5),
	o => \Memin[5]~input_o\);

-- Location: LCCOMB_X87_Y70_N30
\reg1|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[5]~feeder_combout\ = \Memin[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memin[5]~input_o\,
	combout => \reg1|Q[5]~feeder_combout\);

-- Location: FF_X87_Y70_N31
\reg1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|Q[5]~feeder_combout\,
	ena => \ALT_INV_ren1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(5));

-- Location: LCCOMB_X85_Y70_N14
\reg2|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2|Q[5]~feeder_combout\ = \Memin[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memin[5]~input_o\,
	combout => \reg2|Q[5]~feeder_combout\);

-- Location: FF_X85_Y70_N15
\reg2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg2|Q[5]~feeder_combout\,
	ena => \ALT_INV_ren2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(5));

-- Location: LCCOMB_X86_Y70_N22
\t0|output[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[5]~22_combout\ = (\tri2~q\ & ((\tri1~q\) # ((\reg1|Q\(5))))) # (!\tri2~q\ & (\reg2|Q\(5) & ((\tri1~q\) # (\reg1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tri2~q\,
	datab => \tri1~q\,
	datac => \reg1|Q\(5),
	datad => \reg2|Q\(5),
	combout => \t0|output[5]~22_combout\);

-- Location: FF_X86_Y70_N29
\reg0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[5]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|Q\(5));

-- Location: FF_X88_Y70_N11
\reg3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Memin[5]~input_o\,
	sload => VCC,
	ena => \ALT_INV_ren3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(5));

-- Location: LCCOMB_X86_Y70_N28
\t0|output[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[5]~23_combout\ = (\tri3~q\ & ((\tri0~q\) # ((\reg0|Q\(5))))) # (!\tri3~q\ & (\reg3|Q\(5) & ((\tri0~q\) # (\reg0|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tri3~q\,
	datab => \tri0~q\,
	datac => \reg0|Q\(5),
	datad => \reg3|Q\(5),
	combout => \t0|output[5]~23_combout\);

-- Location: LCCOMB_X86_Y70_N18
\t0|output[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|output[5]~24_combout\ = (\t0|output[5]~22_combout\ & \t0|output[5]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t0|output[5]~22_combout\,
	datad => \t0|output[5]~23_combout\,
	combout => \t0|output[5]~24_combout\);

ww_Memout(0) <= \Memout[0]~output_o\;

ww_Memout(1) <= \Memout[1]~output_o\;

ww_Memout(2) <= \Memout[2]~output_o\;

ww_Memout(3) <= \Memout[3]~output_o\;

ww_Memout(4) <= \Memout[4]~output_o\;

ww_Memout(5) <= \Memout[5]~output_o\;
END structure;


