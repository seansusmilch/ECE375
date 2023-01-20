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

-- DATE "12/09/2022 09:15:54"

-- 
-- Device: Altera EP4CE6E22A7 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	Lab5 IS
    PORT (
	a_in : IN std_logic_vector(5 DOWNTO 0);
	x_in : IN std_logic_vector(5 DOWNTO 0);
	clock : IN std_logic;
	reset : IN std_logic;
	result : BUFFER std_logic_vector(11 DOWNTO 0)
	);
END Lab5;

-- Design Ports Information
-- result[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[3]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[4]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_in[5]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[1]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[4]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_in[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a_in : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_x_in : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_result : std_logic_vector(11 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \present_state.P3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x0n1~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \a_in[0]~input_o\ : std_logic;
SIGNAL \x_in[1]~input_o\ : std_logic;
SIGNAL \present_state.Idle~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \present_state.Idle~q\ : std_logic;
SIGNAL \present_state.P0~0_combout\ : std_logic;
SIGNAL \present_state.P0~q\ : std_logic;
SIGNAL \present_state.P1~feeder_combout\ : std_logic;
SIGNAL \present_state.P1~q\ : std_logic;
SIGNAL \present_state.P2~feeder_combout\ : std_logic;
SIGNAL \present_state.P2~q\ : std_logic;
SIGNAL \x_in[3]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \present_state.P3~0_combout\ : std_logic;
SIGNAL \present_state.P3~feeder_combout\ : std_logic;
SIGNAL \present_state.P3~q\ : std_logic;
SIGNAL \x0n1~1_combout\ : std_logic;
SIGNAL \x0n1~1clkctrl_outclk\ : std_logic;
SIGNAL \x_in[4]~input_o\ : std_logic;
SIGNAL \x_in[2]~input_o\ : std_logic;
SIGNAL \x_in[0]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~0_combout\ : std_logic;
SIGNAL \a_in[1]~input_o\ : std_logic;
SIGNAL \na[0]~1_cout\ : std_logic;
SIGNAL \na[1]~2_combout\ : std_logic;
SIGNAL \x_in[5]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~7_combout\ : std_logic;
SIGNAL \a_in[2]~input_o\ : std_logic;
SIGNAL \na[1]~3\ : std_logic;
SIGNAL \na[2]~4_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~4_combout\ : std_logic;
SIGNAL \mux_in[1]~0_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~5_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~6_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~8_combout\ : std_logic;
SIGNAL \a_in[5]~input_o\ : std_logic;
SIGNAL \a_in[4]~input_o\ : std_logic;
SIGNAL \a_in[3]~input_o\ : std_logic;
SIGNAL \na[2]~5\ : std_logic;
SIGNAL \na[3]~7\ : std_logic;
SIGNAL \na[4]~9\ : std_logic;
SIGNAL \na[5]~10_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~19_combout\ : std_logic;
SIGNAL \na[5]~11\ : std_logic;
SIGNAL \na[6]~12_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~18_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~20_combout\ : std_logic;
SIGNAL \na[4]~8_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~15_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~16_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~17_combout\ : std_logic;
SIGNAL \na[3]~6_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~12_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~13_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~14_combout\ : std_logic;
SIGNAL \partial[9]~18_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~9_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~10_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~11_combout\ : std_logic;
SIGNAL \partial[7]~14_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~1_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~2_combout\ : std_logic;
SIGNAL \adder_mux|stage3|f~3_combout\ : std_logic;
SIGNAL \partial[4]~9\ : std_logic;
SIGNAL \partial[5]~11\ : std_logic;
SIGNAL \partial[6]~13\ : std_logic;
SIGNAL \partial[7]~15\ : std_logic;
SIGNAL \partial[8]~17\ : std_logic;
SIGNAL \partial[9]~19\ : std_logic;
SIGNAL \partial[10]~21\ : std_logic;
SIGNAL \partial[11]~22_combout\ : std_logic;
SIGNAL \partial[10]~20_combout\ : std_logic;
SIGNAL \partial[8]~16_combout\ : std_logic;
SIGNAL \partial[6]~12_combout\ : std_logic;
SIGNAL \partial[4]~8_combout\ : std_logic;
SIGNAL \partial[2]~feeder_combout\ : std_logic;
SIGNAL \present_state.P3~clkctrl_outclk\ : std_logic;
SIGNAL \result[0]$latch~combout\ : std_logic;
SIGNAL \partial[5]~10_combout\ : std_logic;
SIGNAL \partial[3]~feeder_combout\ : std_logic;
SIGNAL \result[1]$latch~combout\ : std_logic;
SIGNAL \result[2]$latch~combout\ : std_logic;
SIGNAL \result[3]$latch~combout\ : std_logic;
SIGNAL \result[4]$latch~combout\ : std_logic;
SIGNAL \result[5]$latch~combout\ : std_logic;
SIGNAL \result[6]$latch~combout\ : std_logic;
SIGNAL \result[7]$latch~combout\ : std_logic;
SIGNAL \result[8]$latch~combout\ : std_logic;
SIGNAL \result[9]$latch~combout\ : std_logic;
SIGNAL \result[10]$latch~combout\ : std_logic;
SIGNAL \result[11]$latch~combout\ : std_logic;
SIGNAL partial : std_logic_vector(14 DOWNTO 0);
SIGNAL x0n1 : std_logic_vector(1 DOWNTO 0);
SIGNAL x10 : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a_in <= a_in;
ww_x_in <= x_in;
ww_clock <= clock;
ww_reset <= reset;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\present_state.P3~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \present_state.P3~q\);

\x0n1~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \x0n1~1_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N16
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[0]$latch~combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[1]$latch~combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[2]$latch~combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[3]$latch~combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[4]$latch~combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[5]$latch~combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[6]$latch~combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[7]$latch~combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[8]$latch~combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[9]$latch~combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[10]$latch~combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[11]$latch~combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
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

-- Location: IOIBUF_X0_Y9_N8
\a_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(0),
	o => \a_in[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\x_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(1),
	o => \x_in[1]~input_o\);

-- Location: LCCOMB_X14_Y11_N18
\present_state.Idle~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.Idle~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \present_state.Idle~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G1
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X14_Y11_N19
\present_state.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \present_state.Idle~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.Idle~q\);

-- Location: LCCOMB_X14_Y11_N12
\present_state.P0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.P0~0_combout\ = !\present_state.Idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.Idle~q\,
	combout => \present_state.P0~0_combout\);

-- Location: FF_X14_Y11_N13
\present_state.P0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \present_state.P0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.P0~q\);

-- Location: LCCOMB_X14_Y11_N24
\present_state.P1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.P1~feeder_combout\ = \present_state.P0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.P0~q\,
	combout => \present_state.P1~feeder_combout\);

-- Location: FF_X14_Y11_N25
\present_state.P1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \present_state.P1~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.P1~q\);

-- Location: LCCOMB_X14_Y11_N28
\present_state.P2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.P2~feeder_combout\ = \present_state.P1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.P1~q\,
	combout => \present_state.P2~feeder_combout\);

-- Location: FF_X14_Y11_N29
\present_state.P2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \present_state.P2~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.P2~q\);

-- Location: IOIBUF_X13_Y24_N15
\x_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(3),
	o => \x_in[3]~input_o\);

-- Location: LCCOMB_X14_Y11_N4
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\x_in[1]~input_o\ & ((\present_state.P1~q\) # ((\present_state.P2~q\ & \x_in[3]~input_o\)))) # (!\x_in[1]~input_o\ & (((\present_state.P2~q\ & \x_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[1]~input_o\,
	datab => \present_state.P1~q\,
	datac => \present_state.P2~q\,
	datad => \x_in[3]~input_o\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X14_Y11_N22
\present_state.P3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.P3~0_combout\ = (\present_state.P3~q\) # (\present_state.P2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.P3~q\,
	datad => \present_state.P2~q\,
	combout => \present_state.P3~0_combout\);

-- Location: LCCOMB_X14_Y11_N26
\present_state.P3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.P3~feeder_combout\ = \present_state.P3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.P3~0_combout\,
	combout => \present_state.P3~feeder_combout\);

-- Location: FF_X14_Y11_N27
\present_state.P3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \present_state.P3~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.P3~q\);

-- Location: LCCOMB_X14_Y11_N20
\x0n1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x0n1~1_combout\ = (\present_state.P3~q\) # (!\present_state.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.P3~q\,
	datad => \present_state.Idle~q\,
	combout => \x0n1~1_combout\);

-- Location: CLKCTRL_G3
\x0n1~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \x0n1~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \x0n1~1clkctrl_outclk\);

-- Location: LCCOMB_X13_Y11_N14
\x0n1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- x0n1(0) = (GLOBAL(\x0n1~1clkctrl_outclk\) & ((x0n1(0)))) # (!GLOBAL(\x0n1~1clkctrl_outclk\) & (\Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datac => x0n1(0),
	datad => \x0n1~1clkctrl_outclk\,
	combout => x0n1(0));

-- Location: IOIBUF_X18_Y0_N15
\x_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(4),
	o => \x_in[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\x_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(2),
	o => \x_in[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\x_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(0),
	o => \x_in[0]~input_o\);

-- Location: LCCOMB_X14_Y11_N8
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\present_state.P2~q\ & ((\present_state.P1~q\ & (\x_in[2]~input_o\)) # (!\present_state.P1~q\ & ((\x_in[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[2]~input_o\,
	datab => \x_in[0]~input_o\,
	datac => \present_state.P2~q\,
	datad => \present_state.P1~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X14_Y11_N10
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\present_state.P2~q\ & \x_in[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.P2~q\,
	datab => \x_in[4]~input_o\,
	datac => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X13_Y11_N4
\x0n1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- x0n1(1) = (GLOBAL(\x0n1~1clkctrl_outclk\) & (x0n1(1))) # (!GLOBAL(\x0n1~1clkctrl_outclk\) & ((\Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x0n1(1),
	datac => \Selector4~1_combout\,
	datad => \x0n1~1clkctrl_outclk\,
	combout => x0n1(1));

-- Location: LCCOMB_X12_Y11_N28
\adder_mux|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~0_combout\ = (\a_in[0]~input_o\ & (x0n1(0) $ (x0n1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_in[0]~input_o\,
	datac => x0n1(0),
	datad => x0n1(1),
	combout => \adder_mux|stage3|f~0_combout\);

-- Location: IOIBUF_X13_Y24_N22
\a_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(1),
	o => \a_in[1]~input_o\);

-- Location: LCCOMB_X11_Y11_N14
\na[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \na[0]~1_cout\ = CARRY(!\a_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_in[0]~input_o\,
	datad => VCC,
	cout => \na[0]~1_cout\);

-- Location: LCCOMB_X11_Y11_N16
\na[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \na[1]~2_combout\ = (\a_in[1]~input_o\ & ((\na[0]~1_cout\) # (GND))) # (!\a_in[1]~input_o\ & (!\na[0]~1_cout\))
-- \na[1]~3\ = CARRY((\a_in[1]~input_o\) # (!\na[0]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a_in[1]~input_o\,
	datad => VCC,
	cin => \na[0]~1_cout\,
	combout => \na[1]~2_combout\,
	cout => \na[1]~3\);

-- Location: IOIBUF_X23_Y0_N8
\x_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_in(5),
	o => \x_in[5]~input_o\);

-- Location: LCCOMB_X14_Y11_N14
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\present_state.P2~q\ & ((\present_state.P1~q\ & (\x_in[3]~input_o\)) # (!\present_state.P1~q\ & ((\x_in[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_in[3]~input_o\,
	datab => \x_in[1]~input_o\,
	datac => \present_state.P2~q\,
	datad => \present_state.P1~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X14_Y11_N30
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((\present_state.P2~q\ & \x_in[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.P2~q\,
	datab => \x_in[5]~input_o\,
	datac => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X13_Y11_N2
\x10[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- x10(1) = (GLOBAL(\x0n1~1clkctrl_outclk\) & (x10(1))) # (!GLOBAL(\x0n1~1clkctrl_outclk\) & ((\Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x10(1),
	datac => \Selector5~1_combout\,
	datad => \x0n1~1clkctrl_outclk\,
	combout => x10(1));

-- Location: LCCOMB_X13_Y11_N28
\adder_mux|stage3|f~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~7_combout\ = (!x0n1(1) & (!x0n1(0) & x10(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x0n1(1),
	datac => x0n1(0),
	datad => x10(1),
	combout => \adder_mux|stage3|f~7_combout\);

-- Location: IOIBUF_X16_Y24_N1
\a_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(2),
	o => \a_in[2]~input_o\);

-- Location: LCCOMB_X11_Y11_N18
\na[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \na[2]~4_combout\ = (\a_in[2]~input_o\ & (!\na[1]~3\ & VCC)) # (!\a_in[2]~input_o\ & (\na[1]~3\ $ (GND)))
-- \na[2]~5\ = CARRY((!\a_in[2]~input_o\ & !\na[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a_in[2]~input_o\,
	datad => VCC,
	cin => \na[1]~3\,
	combout => \na[2]~4_combout\,
	cout => \na[2]~5\);

-- Location: LCCOMB_X13_Y11_N22
\adder_mux|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~4_combout\ = (\na[2]~4_combout\ & (x10(1) & (x0n1(0) $ (x0n1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \na[2]~4_combout\,
	datab => x10(1),
	datac => x0n1(0),
	datad => x0n1(1),
	combout => \adder_mux|stage3|f~4_combout\);

-- Location: LCCOMB_X13_Y11_N8
\mux_in[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_in[1]~0_combout\ = (x0n1(0) & (x0n1(1) & !x10(1))) # (!x0n1(0) & (!x0n1(1) & x10(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x0n1(0),
	datac => x0n1(1),
	datad => x10(1),
	combout => \mux_in[1]~0_combout\);

-- Location: LCCOMB_X13_Y11_N16
\adder_mux|stage3|f~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~5_combout\ = (!x10(1) & ((x0n1(1)) # (x0n1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x0n1(1),
	datac => x0n1(0),
	datad => x10(1),
	combout => \adder_mux|stage3|f~5_combout\);

-- Location: LCCOMB_X13_Y11_N18
\adder_mux|stage3|f~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~6_combout\ = (\adder_mux|stage3|f~5_combout\ & ((\mux_in[1]~0_combout\ & (\a_in[1]~input_o\)) # (!\mux_in[1]~0_combout\ & ((\a_in[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_in[1]~input_o\,
	datab => \a_in[2]~input_o\,
	datac => \mux_in[1]~0_combout\,
	datad => \adder_mux|stage3|f~5_combout\,
	combout => \adder_mux|stage3|f~6_combout\);

-- Location: LCCOMB_X13_Y11_N30
\adder_mux|stage3|f~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~8_combout\ = (\adder_mux|stage3|f~4_combout\) # ((\adder_mux|stage3|f~6_combout\) # ((\na[1]~2_combout\ & \adder_mux|stage3|f~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \na[1]~2_combout\,
	datab => \adder_mux|stage3|f~7_combout\,
	datac => \adder_mux|stage3|f~4_combout\,
	datad => \adder_mux|stage3|f~6_combout\,
	combout => \adder_mux|stage3|f~8_combout\);

-- Location: IOIBUF_X13_Y0_N1
\a_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(5),
	o => \a_in[5]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\a_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(4),
	o => \a_in[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\a_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_in(3),
	o => \a_in[3]~input_o\);

-- Location: LCCOMB_X11_Y11_N20
\na[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \na[3]~6_combout\ = (\a_in[3]~input_o\ & ((\na[2]~5\) # (GND))) # (!\a_in[3]~input_o\ & (!\na[2]~5\))
-- \na[3]~7\ = CARRY((\a_in[3]~input_o\) # (!\na[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_in[3]~input_o\,
	datad => VCC,
	cin => \na[2]~5\,
	combout => \na[3]~6_combout\,
	cout => \na[3]~7\);

-- Location: LCCOMB_X11_Y11_N22
\na[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \na[4]~8_combout\ = (\a_in[4]~input_o\ & (!\na[3]~7\ & VCC)) # (!\a_in[4]~input_o\ & (\na[3]~7\ $ (GND)))
-- \na[4]~9\ = CARRY((!\a_in[4]~input_o\ & !\na[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a_in[4]~input_o\,
	datad => VCC,
	cin => \na[3]~7\,
	combout => \na[4]~8_combout\,
	cout => \na[4]~9\);

-- Location: LCCOMB_X11_Y11_N24
\na[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \na[5]~10_combout\ = (\a_in[5]~input_o\ & ((\na[4]~9\) # (GND))) # (!\a_in[5]~input_o\ & (!\na[4]~9\))
-- \na[5]~11\ = CARRY((\a_in[5]~input_o\) # (!\na[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_in[5]~input_o\,
	datad => VCC,
	cin => \na[4]~9\,
	combout => \na[5]~10_combout\,
	cout => \na[5]~11\);

-- Location: LCCOMB_X12_Y11_N30
\adder_mux|stage3|f~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~19_combout\ = (x0n1(1) & (\a_in[5]~input_o\ & (x0n1(0) & !x10(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x0n1(1),
	datab => \a_in[5]~input_o\,
	datac => x0n1(0),
	datad => x10(1),
	combout => \adder_mux|stage3|f~19_combout\);

-- Location: LCCOMB_X11_Y11_N26
\na[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \na[6]~12_combout\ = \a_in[5]~input_o\ $ (\na[5]~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_in[5]~input_o\,
	cin => \na[5]~11\,
	combout => \na[6]~12_combout\);

-- Location: LCCOMB_X11_Y11_N28
\adder_mux|stage3|f~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~18_combout\ = (\na[6]~12_combout\ & (x10(1) & (x0n1(0) $ (x0n1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \na[6]~12_combout\,
	datab => x10(1),
	datac => x0n1(0),
	datad => x0n1(1),
	combout => \adder_mux|stage3|f~18_combout\);

-- Location: LCCOMB_X11_Y11_N2
\adder_mux|stage3|f~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~20_combout\ = (\adder_mux|stage3|f~19_combout\) # ((\adder_mux|stage3|f~18_combout\) # ((\adder_mux|stage3|f~7_combout\ & \na[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_mux|stage3|f~7_combout\,
	datab => \na[5]~10_combout\,
	datac => \adder_mux|stage3|f~19_combout\,
	datad => \adder_mux|stage3|f~18_combout\,
	combout => \adder_mux|stage3|f~20_combout\);

-- Location: LCCOMB_X13_Y11_N24
\adder_mux|stage3|f~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~15_combout\ = (\na[5]~10_combout\ & (x10(1) & (x0n1(0) $ (x0n1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \na[5]~10_combout\,
	datab => x10(1),
	datac => x0n1(0),
	datad => x0n1(1),
	combout => \adder_mux|stage3|f~15_combout\);

-- Location: LCCOMB_X13_Y11_N10
\adder_mux|stage3|f~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~16_combout\ = (\adder_mux|stage3|f~5_combout\ & ((\mux_in[1]~0_combout\ & (\a_in[4]~input_o\)) # (!\mux_in[1]~0_combout\ & ((\a_in[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_in[4]~input_o\,
	datab => \a_in[5]~input_o\,
	datac => \mux_in[1]~0_combout\,
	datad => \adder_mux|stage3|f~5_combout\,
	combout => \adder_mux|stage3|f~16_combout\);

-- Location: LCCOMB_X13_Y11_N20
\adder_mux|stage3|f~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~17_combout\ = (\adder_mux|stage3|f~15_combout\) # ((\adder_mux|stage3|f~16_combout\) # ((\na[4]~8_combout\ & \adder_mux|stage3|f~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \na[4]~8_combout\,
	datab => \adder_mux|stage3|f~7_combout\,
	datac => \adder_mux|stage3|f~15_combout\,
	datad => \adder_mux|stage3|f~16_combout\,
	combout => \adder_mux|stage3|f~17_combout\);

-- Location: LCCOMB_X13_Y11_N12
\adder_mux|stage3|f~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~12_combout\ = (\na[4]~8_combout\ & (x10(1) & (x0n1(0) $ (x0n1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \na[4]~8_combout\,
	datab => x10(1),
	datac => x0n1(0),
	datad => x0n1(1),
	combout => \adder_mux|stage3|f~12_combout\);

-- Location: LCCOMB_X13_Y11_N6
\adder_mux|stage3|f~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~13_combout\ = (\adder_mux|stage3|f~5_combout\ & ((\mux_in[1]~0_combout\ & (\a_in[3]~input_o\)) # (!\mux_in[1]~0_combout\ & ((\a_in[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_in[3]~input_o\,
	datab => \a_in[4]~input_o\,
	datac => \mux_in[1]~0_combout\,
	datad => \adder_mux|stage3|f~5_combout\,
	combout => \adder_mux|stage3|f~13_combout\);

-- Location: LCCOMB_X12_Y11_N24
\adder_mux|stage3|f~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~14_combout\ = (\adder_mux|stage3|f~12_combout\) # ((\adder_mux|stage3|f~13_combout\) # ((\na[3]~6_combout\ & \adder_mux|stage3|f~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \na[3]~6_combout\,
	datab => \adder_mux|stage3|f~7_combout\,
	datac => \adder_mux|stage3|f~12_combout\,
	datad => \adder_mux|stage3|f~13_combout\,
	combout => \adder_mux|stage3|f~14_combout\);

-- Location: LCCOMB_X12_Y11_N10
\partial[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial[9]~18_combout\ = (\adder_mux|stage3|f~17_combout\ & ((partial(11) & (\partial[8]~17\ & VCC)) # (!partial(11) & (!\partial[8]~17\)))) # (!\adder_mux|stage3|f~17_combout\ & ((partial(11) & (!\partial[8]~17\)) # (!partial(11) & ((\partial[8]~17\) # 
-- (GND)))))
-- \partial[9]~19\ = CARRY((\adder_mux|stage3|f~17_combout\ & (!partial(11) & !\partial[8]~17\)) # (!\adder_mux|stage3|f~17_combout\ & ((!\partial[8]~17\) # (!partial(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adder_mux|stage3|f~17_combout\,
	datab => partial(11),
	datad => VCC,
	cin => \partial[8]~17\,
	combout => \partial[9]~18_combout\,
	cout => \partial[9]~19\);

-- Location: FF_X12_Y11_N11
\partial[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \partial[9]~18_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(9));

-- Location: LCCOMB_X13_Y11_N0
\adder_mux|stage3|f~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~9_combout\ = (\na[3]~6_combout\ & (x10(1) & (x0n1(0) $ (x0n1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \na[3]~6_combout\,
	datab => x10(1),
	datac => x0n1(0),
	datad => x0n1(1),
	combout => \adder_mux|stage3|f~9_combout\);

-- Location: LCCOMB_X13_Y11_N26
\adder_mux|stage3|f~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~10_combout\ = (\adder_mux|stage3|f~5_combout\ & ((\mux_in[1]~0_combout\ & ((\a_in[2]~input_o\))) # (!\mux_in[1]~0_combout\ & (\a_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_in[3]~input_o\,
	datab => \a_in[2]~input_o\,
	datac => \mux_in[1]~0_combout\,
	datad => \adder_mux|stage3|f~5_combout\,
	combout => \adder_mux|stage3|f~10_combout\);

-- Location: LCCOMB_X12_Y11_N18
\adder_mux|stage3|f~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~11_combout\ = (\adder_mux|stage3|f~9_combout\) # ((\adder_mux|stage3|f~10_combout\) # ((\na[2]~4_combout\ & \adder_mux|stage3|f~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \na[2]~4_combout\,
	datab => \adder_mux|stage3|f~7_combout\,
	datac => \adder_mux|stage3|f~9_combout\,
	datad => \adder_mux|stage3|f~10_combout\,
	combout => \adder_mux|stage3|f~11_combout\);

-- Location: LCCOMB_X12_Y11_N6
\partial[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial[7]~14_combout\ = (partial(9) & ((\adder_mux|stage3|f~11_combout\ & (\partial[6]~13\ & VCC)) # (!\adder_mux|stage3|f~11_combout\ & (!\partial[6]~13\)))) # (!partial(9) & ((\adder_mux|stage3|f~11_combout\ & (!\partial[6]~13\)) # 
-- (!\adder_mux|stage3|f~11_combout\ & ((\partial[6]~13\) # (GND)))))
-- \partial[7]~15\ = CARRY((partial(9) & (!\adder_mux|stage3|f~11_combout\ & !\partial[6]~13\)) # (!partial(9) & ((!\partial[6]~13\) # (!\adder_mux|stage3|f~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => partial(9),
	datab => \adder_mux|stage3|f~11_combout\,
	datad => VCC,
	cin => \partial[6]~13\,
	combout => \partial[7]~14_combout\,
	cout => \partial[7]~15\);

-- Location: FF_X12_Y11_N7
\partial[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \partial[7]~14_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(7));

-- Location: LCCOMB_X12_Y11_N26
\adder_mux|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~1_combout\ = (x0n1(1) & ((!x10(1)) # (!x0n1(0)))) # (!x0n1(1) & ((x0n1(0)) # (x10(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x0n1(1),
	datac => x0n1(0),
	datad => x10(1),
	combout => \adder_mux|stage3|f~1_combout\);

-- Location: LCCOMB_X11_Y11_N10
\adder_mux|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~2_combout\ = (x10(1) & (\na[1]~2_combout\)) # (!x10(1) & ((\a_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \na[1]~2_combout\,
	datac => \a_in[1]~input_o\,
	datad => x10(1),
	combout => \adder_mux|stage3|f~2_combout\);

-- Location: LCCOMB_X12_Y11_N16
\adder_mux|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~3_combout\ = (\adder_mux|stage3|f~1_combout\ & ((\mux_in[1]~0_combout\ & (\a_in[0]~input_o\)) # (!\mux_in[1]~0_combout\ & ((\adder_mux|stage3|f~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_in[0]~input_o\,
	datab => \mux_in[1]~0_combout\,
	datac => \adder_mux|stage3|f~1_combout\,
	datad => \adder_mux|stage3|f~2_combout\,
	combout => \adder_mux|stage3|f~3_combout\);

-- Location: LCCOMB_X12_Y11_N0
\partial[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial[4]~8_combout\ = (\adder_mux|stage3|f~0_combout\ & (partial(6) $ (VCC))) # (!\adder_mux|stage3|f~0_combout\ & (partial(6) & VCC))
-- \partial[4]~9\ = CARRY((\adder_mux|stage3|f~0_combout\ & partial(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_mux|stage3|f~0_combout\,
	datab => partial(6),
	datad => VCC,
	combout => \partial[4]~8_combout\,
	cout => \partial[4]~9\);

-- Location: LCCOMB_X12_Y11_N2
\partial[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial[5]~10_combout\ = (partial(7) & ((\adder_mux|stage3|f~3_combout\ & (\partial[4]~9\ & VCC)) # (!\adder_mux|stage3|f~3_combout\ & (!\partial[4]~9\)))) # (!partial(7) & ((\adder_mux|stage3|f~3_combout\ & (!\partial[4]~9\)) # 
-- (!\adder_mux|stage3|f~3_combout\ & ((\partial[4]~9\) # (GND)))))
-- \partial[5]~11\ = CARRY((partial(7) & (!\adder_mux|stage3|f~3_combout\ & !\partial[4]~9\)) # (!partial(7) & ((!\partial[4]~9\) # (!\adder_mux|stage3|f~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => partial(7),
	datab => \adder_mux|stage3|f~3_combout\,
	datad => VCC,
	cin => \partial[4]~9\,
	combout => \partial[5]~10_combout\,
	cout => \partial[5]~11\);

-- Location: LCCOMB_X12_Y11_N4
\partial[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial[6]~12_combout\ = ((\adder_mux|stage3|f~8_combout\ $ (partial(8) $ (!\partial[5]~11\)))) # (GND)
-- \partial[6]~13\ = CARRY((\adder_mux|stage3|f~8_combout\ & ((partial(8)) # (!\partial[5]~11\))) # (!\adder_mux|stage3|f~8_combout\ & (partial(8) & !\partial[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adder_mux|stage3|f~8_combout\,
	datab => partial(8),
	datad => VCC,
	cin => \partial[5]~11\,
	combout => \partial[6]~12_combout\,
	cout => \partial[6]~13\);

-- Location: LCCOMB_X12_Y11_N8
\partial[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial[8]~16_combout\ = ((partial(10) $ (\adder_mux|stage3|f~14_combout\ $ (!\partial[7]~15\)))) # (GND)
-- \partial[8]~17\ = CARRY((partial(10) & ((\adder_mux|stage3|f~14_combout\) # (!\partial[7]~15\))) # (!partial(10) & (\adder_mux|stage3|f~14_combout\ & !\partial[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => partial(10),
	datab => \adder_mux|stage3|f~14_combout\,
	datad => VCC,
	cin => \partial[7]~15\,
	combout => \partial[8]~16_combout\,
	cout => \partial[8]~17\);

-- Location: LCCOMB_X12_Y11_N12
\partial[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial[10]~20_combout\ = ((\adder_mux|stage3|f~20_combout\ $ (partial(11) $ (!\partial[9]~19\)))) # (GND)
-- \partial[10]~21\ = CARRY((\adder_mux|stage3|f~20_combout\ & ((partial(11)) # (!\partial[9]~19\))) # (!\adder_mux|stage3|f~20_combout\ & (partial(11) & !\partial[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adder_mux|stage3|f~20_combout\,
	datab => partial(11),
	datad => VCC,
	cin => \partial[9]~19\,
	combout => \partial[10]~20_combout\,
	cout => \partial[10]~21\);

-- Location: LCCOMB_X12_Y11_N14
\partial[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial[11]~22_combout\ = partial(11) $ (\partial[10]~21\ $ (\adder_mux|stage3|f~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => partial(11),
	datad => \adder_mux|stage3|f~20_combout\,
	cin => \partial[10]~21\,
	combout => \partial[11]~22_combout\);

-- Location: FF_X12_Y11_N15
\partial[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \partial[11]~22_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(11));

-- Location: FF_X12_Y11_N13
\partial[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \partial[10]~20_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(10));

-- Location: FF_X12_Y11_N9
\partial[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \partial[8]~16_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(8));

-- Location: FF_X12_Y11_N5
\partial[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \partial[6]~12_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(6));

-- Location: FF_X11_Y11_N1
\partial[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \partial[4]~8_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(4));

-- Location: LCCOMB_X7_Y11_N4
\partial[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial[2]~feeder_combout\ = partial(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => partial(4),
	combout => \partial[2]~feeder_combout\);

-- Location: FF_X7_Y11_N5
\partial[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \partial[2]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(2));

-- Location: FF_X7_Y11_N25
\partial[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => partial(2),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(0));

-- Location: CLKCTRL_G0
\present_state.P3~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \present_state.P3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \present_state.P3~clkctrl_outclk\);

-- Location: LCCOMB_X7_Y11_N24
\result[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[0]$latch~combout\ = (GLOBAL(\present_state.P3~clkctrl_outclk\) & ((partial(0)))) # (!GLOBAL(\present_state.P3~clkctrl_outclk\) & (\result[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[0]$latch~combout\,
	datac => partial(0),
	datad => \present_state.P3~clkctrl_outclk\,
	combout => \result[0]$latch~combout\);

-- Location: FF_X12_Y11_N3
\partial[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \partial[5]~10_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(5));

-- Location: LCCOMB_X7_Y11_N26
\partial[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial[3]~feeder_combout\ = partial(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => partial(5),
	combout => \partial[3]~feeder_combout\);

-- Location: FF_X7_Y11_N27
\partial[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \partial[3]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(3));

-- Location: FF_X7_Y11_N19
\partial[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => partial(3),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(1));

-- Location: LCCOMB_X7_Y11_N18
\result[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[1]$latch~combout\ = (GLOBAL(\present_state.P3~clkctrl_outclk\) & ((partial(1)))) # (!GLOBAL(\present_state.P3~clkctrl_outclk\) & (\result[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[1]$latch~combout\,
	datac => partial(1),
	datad => \present_state.P3~clkctrl_outclk\,
	combout => \result[1]$latch~combout\);

-- Location: LCCOMB_X7_Y11_N8
\result[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[2]$latch~combout\ = (GLOBAL(\present_state.P3~clkctrl_outclk\) & ((partial(2)))) # (!GLOBAL(\present_state.P3~clkctrl_outclk\) & (\result[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[2]$latch~combout\,
	datac => \present_state.P3~clkctrl_outclk\,
	datad => partial(2),
	combout => \result[2]$latch~combout\);

-- Location: LCCOMB_X7_Y11_N14
\result[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[3]$latch~combout\ = (GLOBAL(\present_state.P3~clkctrl_outclk\) & ((partial(3)))) # (!GLOBAL(\present_state.P3~clkctrl_outclk\) & (\result[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[3]$latch~combout\,
	datac => \present_state.P3~clkctrl_outclk\,
	datad => partial(3),
	combout => \result[3]$latch~combout\);

-- Location: LCCOMB_X11_Y11_N0
\result[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[4]$latch~combout\ = (GLOBAL(\present_state.P3~clkctrl_outclk\) & ((partial(4)))) # (!GLOBAL(\present_state.P3~clkctrl_outclk\) & (\result[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[4]$latch~combout\,
	datac => partial(4),
	datad => \present_state.P3~clkctrl_outclk\,
	combout => \result[4]$latch~combout\);

-- Location: LCCOMB_X11_Y11_N8
\result[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[5]$latch~combout\ = (GLOBAL(\present_state.P3~clkctrl_outclk\) & ((partial(5)))) # (!GLOBAL(\present_state.P3~clkctrl_outclk\) & (\result[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[5]$latch~combout\,
	datac => \present_state.P3~clkctrl_outclk\,
	datad => partial(5),
	combout => \result[5]$latch~combout\);

-- Location: LCCOMB_X12_Y11_N20
\result[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[6]$latch~combout\ = (GLOBAL(\present_state.P3~clkctrl_outclk\) & ((partial(6)))) # (!GLOBAL(\present_state.P3~clkctrl_outclk\) & (\result[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[6]$latch~combout\,
	datac => partial(6),
	datad => \present_state.P3~clkctrl_outclk\,
	combout => \result[6]$latch~combout\);

-- Location: LCCOMB_X11_Y11_N30
\result[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[7]$latch~combout\ = (GLOBAL(\present_state.P3~clkctrl_outclk\) & ((partial(7)))) # (!GLOBAL(\present_state.P3~clkctrl_outclk\) & (\result[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[7]$latch~combout\,
	datac => \present_state.P3~clkctrl_outclk\,
	datad => partial(7),
	combout => \result[7]$latch~combout\);

-- Location: LCCOMB_X12_Y11_N22
\result[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[8]$latch~combout\ = (GLOBAL(\present_state.P3~clkctrl_outclk\) & ((partial(8)))) # (!GLOBAL(\present_state.P3~clkctrl_outclk\) & (\result[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[8]$latch~combout\,
	datac => partial(8),
	datad => \present_state.P3~clkctrl_outclk\,
	combout => \result[8]$latch~combout\);

-- Location: LCCOMB_X11_Y11_N4
\result[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[9]$latch~combout\ = (GLOBAL(\present_state.P3~clkctrl_outclk\) & ((partial(9)))) # (!GLOBAL(\present_state.P3~clkctrl_outclk\) & (\result[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[9]$latch~combout\,
	datac => partial(9),
	datad => \present_state.P3~clkctrl_outclk\,
	combout => \result[9]$latch~combout\);

-- Location: LCCOMB_X11_Y11_N12
\result[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[10]$latch~combout\ = (GLOBAL(\present_state.P3~clkctrl_outclk\) & ((partial(10)))) # (!GLOBAL(\present_state.P3~clkctrl_outclk\) & (\result[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[10]$latch~combout\,
	datac => partial(10),
	datad => \present_state.P3~clkctrl_outclk\,
	combout => \result[10]$latch~combout\);

-- Location: LCCOMB_X11_Y11_N6
\result[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[11]$latch~combout\ = (GLOBAL(\present_state.P3~clkctrl_outclk\) & ((partial(11)))) # (!GLOBAL(\present_state.P3~clkctrl_outclk\) & (\result[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[11]$latch~combout\,
	datac => partial(11),
	datad => \present_state.P3~clkctrl_outclk\,
	combout => \result[11]$latch~combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;
END structure;


