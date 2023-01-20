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

-- DATE "11/21/2022 12:01:07"

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

ENTITY 	Lab4 IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	x : IN std_logic_vector(7 DOWNTO 0);
	clock : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	result : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Lab4;

-- Design Ports Information
-- enable	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_result : std_logic_vector(15 DOWNTO 0);
SIGNAL \present_state.P8~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \enable~input_o\ : std_logic;
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
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \present_state.P0~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \present_state.P0~q\ : std_logic;
SIGNAL \present_state.P1~0_combout\ : std_logic;
SIGNAL \present_state.P1~q\ : std_logic;
SIGNAL \present_state.P2~feeder_combout\ : std_logic;
SIGNAL \present_state.P2~q\ : std_logic;
SIGNAL \present_state.P3~feeder_combout\ : std_logic;
SIGNAL \present_state.P3~q\ : std_logic;
SIGNAL \present_state.P4~q\ : std_logic;
SIGNAL \present_state.P5~q\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \present_state.P6~q\ : std_logic;
SIGNAL \present_state.P7~feeder_combout\ : std_logic;
SIGNAL \present_state.P7~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \present_state.P8~0_combout\ : std_logic;
SIGNAL \present_state.P8~feeder_combout\ : std_logic;
SIGNAL \present_state.P8~q\ : std_logic;
SIGNAL \present_state.P8~clkctrl_outclk\ : std_logic;
SIGNAL \mux_en~combout\ : std_logic;
SIGNAL \mux_sel~combout\ : std_logic;
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \adder_mux|stage3|f~1_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \adder_mux|stage3|f~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \adder|stage2|Cout~0_combout\ : std_logic;
SIGNAL \adder|stage2|Cout~1_combout\ : std_logic;
SIGNAL \adder|stage3|Cout~0_combout\ : std_logic;
SIGNAL \adder|stage4|Cout~0_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \adder_mux|stage3|f~3_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \adder_mux|stage3|f~5_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \adder_mux|stage3|f~4_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \adder_mux|stage3|f~2_combout\ : std_logic;
SIGNAL \adder|stage5|Cout~0_combout\ : std_logic;
SIGNAL \adder|stage6|Cout~0_combout\ : std_logic;
SIGNAL \adder|stage7|Cout~0_combout\ : std_logic;
SIGNAL \adder|stage8|Cout~0_combout\ : std_logic;
SIGNAL \adder|stage10|s~combout\ : std_logic;
SIGNAL \adder|stage9|s~combout\ : std_logic;
SIGNAL \adder|stage8|s~combout\ : std_logic;
SIGNAL \adder|stage7|s~combout\ : std_logic;
SIGNAL \adder|stage6|s~combout\ : std_logic;
SIGNAL \adder|stage5|s~combout\ : std_logic;
SIGNAL \adder|stage4|s~combout\ : std_logic;
SIGNAL \adder|stage3|s~combout\ : std_logic;
SIGNAL \adder|stage2|s~2_combout\ : std_logic;
SIGNAL \adder|stage2|s~3_combout\ : std_logic;
SIGNAL \adder|stage1|s~combout\ : std_logic;
SIGNAL \partial[6]~feeder_combout\ : std_logic;
SIGNAL \partial[5]~feeder_combout\ : std_logic;
SIGNAL \partial[3]~feeder_combout\ : std_logic;
SIGNAL \result[0]$latch~combout\ : std_logic;
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
SIGNAL \result[12]$latch~combout\ : std_logic;
SIGNAL \result[13]$latch~combout\ : std_logic;
SIGNAL \result[14]$latch~combout\ : std_logic;
SIGNAL \result[15]$latch~combout\ : std_logic;
SIGNAL partial : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_x <= x;
ww_clock <= clock;
ww_enable <= enable;
ww_reset <= reset;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\present_state.P8~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \present_state.P8~q\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X23_Y0_N9
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

-- Location: IOOBUF_X21_Y0_N9
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

-- Location: IOOBUF_X34_Y9_N2
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

-- Location: IOOBUF_X34_Y10_N9
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X34_Y3_N23
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

-- Location: IOOBUF_X34_Y17_N23
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

-- Location: IOOBUF_X34_Y2_N16
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

-- Location: IOOBUF_X34_Y4_N23
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

-- Location: IOOBUF_X32_Y0_N23
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

-- Location: IOOBUF_X32_Y0_N16
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[12]$latch~combout\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[13]$latch~combout\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[14]$latch~combout\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[15]$latch~combout\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

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

-- Location: IOIBUF_X16_Y0_N22
\x[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\x[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: LCCOMB_X28_Y4_N20
\present_state.P0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.P0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \present_state.P0~feeder_combout\);

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

-- Location: CLKCTRL_G4
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

-- Location: FF_X28_Y4_N21
\present_state.P0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \present_state.P0~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.P0~q\);

-- Location: LCCOMB_X28_Y4_N8
\present_state.P1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.P1~0_combout\ = !\present_state.P0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.P0~q\,
	combout => \present_state.P1~0_combout\);

-- Location: FF_X28_Y4_N9
\present_state.P1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \present_state.P1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.P1~q\);

-- Location: LCCOMB_X28_Y4_N12
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

-- Location: FF_X28_Y4_N13
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

-- Location: LCCOMB_X28_Y4_N30
\present_state.P3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.P3~feeder_combout\ = \present_state.P2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.P2~q\,
	combout => \present_state.P3~feeder_combout\);

-- Location: FF_X28_Y4_N31
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

-- Location: FF_X28_Y4_N5
\present_state.P4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \present_state.P3~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.P4~q\);

-- Location: FF_X28_Y4_N27
\present_state.P5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \present_state.P4~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.P5~q\);

-- Location: LCCOMB_X28_Y4_N26
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\x[4]~input_o\ & ((\present_state.P4~q\) # ((\x[5]~input_o\ & \present_state.P5~q\)))) # (!\x[4]~input_o\ & (\x[5]~input_o\ & (\present_state.P5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[4]~input_o\,
	datab => \x[5]~input_o\,
	datac => \present_state.P5~q\,
	datad => \present_state.P4~q\,
	combout => \Selector2~1_combout\);

-- Location: IOIBUF_X23_Y0_N15
\x[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\x[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: FF_X28_Y4_N17
\present_state.P6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \present_state.P5~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.P6~q\);

-- Location: LCCOMB_X28_Y4_N28
\present_state.P7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.P7~feeder_combout\ = \present_state.P6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.P6~q\,
	combout => \present_state.P7~feeder_combout\);

-- Location: FF_X28_Y4_N29
\present_state.P7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \present_state.P7~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.P7~q\);

-- Location: LCCOMB_X28_Y4_N16
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\x[6]~input_o\ & ((\present_state.P6~q\) # ((\x[7]~input_o\ & \present_state.P7~q\)))) # (!\x[6]~input_o\ & (\x[7]~input_o\ & ((\present_state.P7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[6]~input_o\,
	datab => \x[7]~input_o\,
	datac => \present_state.P6~q\,
	datad => \present_state.P7~q\,
	combout => \Selector2~0_combout\);

-- Location: IOIBUF_X13_Y0_N1
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: LCCOMB_X28_Y4_N4
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\x[3]~input_o\ & ((\present_state.P3~q\) # ((\x[2]~input_o\ & \present_state.P2~q\)))) # (!\x[3]~input_o\ & (\x[2]~input_o\ & ((\present_state.P2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[2]~input_o\,
	datac => \present_state.P3~q\,
	datad => \present_state.P2~q\,
	combout => \Selector2~2_combout\);

-- Location: IOIBUF_X3_Y0_N1
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: LCCOMB_X28_Y4_N0
\Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\x[0]~input_o\ & (((\x[1]~input_o\ & \present_state.P1~q\)) # (!\present_state.P0~q\))) # (!\x[0]~input_o\ & (\x[1]~input_o\ & (\present_state.P1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[1]~input_o\,
	datac => \present_state.P1~q\,
	datad => \present_state.P0~q\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X28_Y4_N18
\Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\Selector2~1_combout\) # ((\Selector2~0_combout\) # ((\Selector2~2_combout\) # (\Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \Selector2~0_combout\,
	datac => \Selector2~2_combout\,
	datad => \Selector2~3_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X28_Y4_N24
\present_state.P8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.P8~0_combout\ = (\present_state.P8~q\) # (\present_state.P7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.P8~q\,
	datad => \present_state.P7~q\,
	combout => \present_state.P8~0_combout\);

-- Location: LCCOMB_X28_Y4_N2
\present_state.P8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.P8~feeder_combout\ = \present_state.P8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.P8~0_combout\,
	combout => \present_state.P8~feeder_combout\);

-- Location: FF_X28_Y4_N3
\present_state.P8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \present_state.P8~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.P8~q\);

-- Location: CLKCTRL_G6
\present_state.P8~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \present_state.P8~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \present_state.P8~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y4_N6
mux_en : cycloneive_lcell_comb
-- Equation(s):
-- \mux_en~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & (\mux_en~combout\)) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & ((\Selector2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_en~combout\,
	datab => \Selector2~4_combout\,
	datad => \present_state.P8~clkctrl_outclk\,
	combout => \mux_en~combout\);

-- Location: LCCOMB_X30_Y4_N22
mux_sel : cycloneive_lcell_comb
-- Equation(s):
-- \mux_sel~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & (\mux_sel~combout\)) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & ((\present_state.P7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel~combout\,
	datac => \present_state.P8~clkctrl_outclk\,
	datad => \present_state.P7~q\,
	combout => \mux_sel~combout\);

-- Location: LCCOMB_X30_Y4_N6
Cin : cycloneive_lcell_comb
-- Equation(s):
-- \Cin~combout\ = (\mux_sel~combout\ & \mux_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_sel~combout\,
	datad => \mux_en~combout\,
	combout => \Cin~combout\);

-- Location: IOIBUF_X30_Y0_N8
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X29_Y4_N20
\adder_mux|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~1_combout\ = (\mux_en~combout\ & (\a[3]~input_o\ $ (\mux_sel~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datac => \mux_en~combout\,
	datad => \mux_sel~combout\,
	combout => \adder_mux|stage3|f~1_combout\);

-- Location: IOIBUF_X30_Y0_N22
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X29_Y4_N22
\adder_mux|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~0_combout\ = (\mux_en~combout\ & (\a[2]~input_o\ $ (\mux_sel~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \mux_en~combout\,
	datad => \mux_sel~combout\,
	combout => \adder_mux|stage3|f~0_combout\);

-- Location: IOIBUF_X30_Y0_N1
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X30_Y4_N18
\adder|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage2|Cout~0_combout\ = (\a[0]~input_o\ & ((\mux_sel~combout\) # (partial(8)))) # (!\a[0]~input_o\ & (\mux_sel~combout\ & partial(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[0]~input_o\,
	datac => \mux_sel~combout\,
	datad => partial(8),
	combout => \adder|stage2|Cout~0_combout\);

-- Location: LCCOMB_X30_Y4_N12
\adder|stage2|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage2|Cout~1_combout\ = (\mux_en~combout\ & ((partial(9) & ((\a[1]~input_o\) # (\adder|stage2|Cout~0_combout\))) # (!partial(9) & (\a[1]~input_o\ & \adder|stage2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => partial(9),
	datab => \a[1]~input_o\,
	datac => \mux_en~combout\,
	datad => \adder|stage2|Cout~0_combout\,
	combout => \adder|stage2|Cout~1_combout\);

-- Location: LCCOMB_X31_Y4_N2
\adder|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage3|Cout~0_combout\ = (partial(10) & ((\adder|stage2|Cout~1_combout\) # (\Cin~combout\ $ (\adder_mux|stage3|f~0_combout\)))) # (!partial(10) & (\adder|stage2|Cout~1_combout\ & (\Cin~combout\ $ (\adder_mux|stage3|f~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => partial(10),
	datab => \Cin~combout\,
	datac => \adder_mux|stage3|f~0_combout\,
	datad => \adder|stage2|Cout~1_combout\,
	combout => \adder|stage3|Cout~0_combout\);

-- Location: LCCOMB_X31_Y4_N20
\adder|stage4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage4|Cout~0_combout\ = (partial(11) & ((\adder|stage3|Cout~0_combout\) # (\Cin~combout\ $ (\adder_mux|stage3|f~1_combout\)))) # (!partial(11) & (\adder|stage3|Cout~0_combout\ & (\Cin~combout\ $ (\adder_mux|stage3|f~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => partial(11),
	datab => \Cin~combout\,
	datac => \adder_mux|stage3|f~1_combout\,
	datad => \adder|stage3|Cout~0_combout\,
	combout => \adder|stage4|Cout~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X29_Y4_N30
\adder_mux|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~3_combout\ = (\mux_en~combout\ & (\a[5]~input_o\ $ (\mux_sel~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_en~combout\,
	datac => \a[5]~input_o\,
	datad => \mux_sel~combout\,
	combout => \adder_mux|stage3|f~3_combout\);

-- Location: IOIBUF_X34_Y9_N15
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X30_Y4_N28
\adder_mux|stage3|f~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~5_combout\ = (\mux_en~combout\ & (\mux_sel~combout\ $ (\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_sel~combout\,
	datab => \a[7]~input_o\,
	datad => \mux_en~combout\,
	combout => \adder_mux|stage3|f~5_combout\);

-- Location: IOIBUF_X34_Y9_N8
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X29_Y4_N24
\adder_mux|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~4_combout\ = (\mux_en~combout\ & (\a[6]~input_o\ $ (\mux_sel~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_en~combout\,
	datac => \a[6]~input_o\,
	datad => \mux_sel~combout\,
	combout => \adder_mux|stage3|f~4_combout\);

-- Location: IOIBUF_X34_Y9_N22
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X30_Y4_N14
\adder_mux|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_mux|stage3|f~2_combout\ = (\mux_en~combout\ & (\a[4]~input_o\ $ (\mux_sel~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datac => \mux_sel~combout\,
	datad => \mux_en~combout\,
	combout => \adder_mux|stage3|f~2_combout\);

-- Location: LCCOMB_X31_Y4_N18
\adder|stage5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage5|Cout~0_combout\ = (partial(12) & ((\adder|stage4|Cout~0_combout\) # (\adder_mux|stage3|f~2_combout\ $ (\Cin~combout\)))) # (!partial(12) & (\adder|stage4|Cout~0_combout\ & (\adder_mux|stage3|f~2_combout\ $ (\Cin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_mux|stage3|f~2_combout\,
	datab => partial(12),
	datac => \Cin~combout\,
	datad => \adder|stage4|Cout~0_combout\,
	combout => \adder|stage5|Cout~0_combout\);

-- Location: LCCOMB_X31_Y4_N16
\adder|stage6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage6|Cout~0_combout\ = (partial(13) & ((\adder|stage5|Cout~0_combout\) # (\adder_mux|stage3|f~3_combout\ $ (\Cin~combout\)))) # (!partial(13) & (\adder|stage5|Cout~0_combout\ & (\adder_mux|stage3|f~3_combout\ $ (\Cin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_mux|stage3|f~3_combout\,
	datab => partial(13),
	datac => \Cin~combout\,
	datad => \adder|stage5|Cout~0_combout\,
	combout => \adder|stage6|Cout~0_combout\);

-- Location: LCCOMB_X31_Y4_N10
\adder|stage7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage7|Cout~0_combout\ = (partial(14) & ((\adder|stage6|Cout~0_combout\) # (\adder_mux|stage3|f~4_combout\ $ (\Cin~combout\)))) # (!partial(14) & (\adder|stage6|Cout~0_combout\ & (\adder_mux|stage3|f~4_combout\ $ (\Cin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => partial(14),
	datab => \adder_mux|stage3|f~4_combout\,
	datac => \Cin~combout\,
	datad => \adder|stage6|Cout~0_combout\,
	combout => \adder|stage7|Cout~0_combout\);

-- Location: LCCOMB_X31_Y4_N0
\adder|stage8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage8|Cout~0_combout\ = (partial(15) & ((\adder|stage7|Cout~0_combout\) # (\adder_mux|stage3|f~5_combout\ $ (\Cin~combout\)))) # (!partial(15) & (\adder|stage7|Cout~0_combout\ & (\adder_mux|stage3|f~5_combout\ $ (\Cin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => partial(15),
	datab => \adder_mux|stage3|f~5_combout\,
	datac => \Cin~combout\,
	datad => \adder|stage7|Cout~0_combout\,
	combout => \adder|stage8|Cout~0_combout\);

-- Location: LCCOMB_X31_Y4_N22
\adder|stage10|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage10|s~combout\ = (partial(16) & ((\adder_mux|stage3|f~5_combout\ $ (\Cin~combout\)) # (!\adder|stage8|Cout~0_combout\))) # (!partial(16) & (!\adder|stage8|Cout~0_combout\ & (\adder_mux|stage3|f~5_combout\ $ (\Cin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_mux|stage3|f~5_combout\,
	datab => \Cin~combout\,
	datac => partial(16),
	datad => \adder|stage8|Cout~0_combout\,
	combout => \adder|stage10|s~combout\);

-- Location: FF_X31_Y4_N23
\partial[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \adder|stage10|s~combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(16));

-- Location: LCCOMB_X31_Y4_N12
\adder|stage9|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage9|s~combout\ = partial(16) $ (\adder_mux|stage3|f~5_combout\ $ (\Cin~combout\ $ (\adder|stage8|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => partial(16),
	datab => \adder_mux|stage3|f~5_combout\,
	datac => \Cin~combout\,
	datad => \adder|stage8|Cout~0_combout\,
	combout => \adder|stage9|s~combout\);

-- Location: FF_X31_Y4_N13
\partial[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \adder|stage9|s~combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(15));

-- Location: LCCOMB_X31_Y4_N6
\adder|stage8|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage8|s~combout\ = partial(15) $ (\adder_mux|stage3|f~5_combout\ $ (\Cin~combout\ $ (\adder|stage7|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => partial(15),
	datab => \adder_mux|stage3|f~5_combout\,
	datac => \Cin~combout\,
	datad => \adder|stage7|Cout~0_combout\,
	combout => \adder|stage8|s~combout\);

-- Location: FF_X31_Y4_N7
\partial[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \adder|stage8|s~combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(14));

-- Location: LCCOMB_X31_Y4_N24
\adder|stage7|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage7|s~combout\ = partial(14) $ (\adder_mux|stage3|f~4_combout\ $ (\Cin~combout\ $ (\adder|stage6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => partial(14),
	datab => \adder_mux|stage3|f~4_combout\,
	datac => \Cin~combout\,
	datad => \adder|stage6|Cout~0_combout\,
	combout => \adder|stage7|s~combout\);

-- Location: FF_X31_Y4_N25
\partial[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \adder|stage7|s~combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(13));

-- Location: LCCOMB_X31_Y4_N14
\adder|stage6|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage6|s~combout\ = \adder_mux|stage3|f~3_combout\ $ (partial(13) $ (\Cin~combout\ $ (\adder|stage5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_mux|stage3|f~3_combout\,
	datab => partial(13),
	datac => \Cin~combout\,
	datad => \adder|stage5|Cout~0_combout\,
	combout => \adder|stage6|s~combout\);

-- Location: FF_X31_Y4_N15
\partial[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \adder|stage6|s~combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(12));

-- Location: LCCOMB_X31_Y4_N28
\adder|stage5|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage5|s~combout\ = \adder|stage4|Cout~0_combout\ $ (partial(12) $ (\Cin~combout\ $ (\adder_mux|stage3|f~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|stage4|Cout~0_combout\,
	datab => partial(12),
	datac => \Cin~combout\,
	datad => \adder_mux|stage3|f~2_combout\,
	combout => \adder|stage5|s~combout\);

-- Location: FF_X31_Y4_N29
\partial[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \adder|stage5|s~combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(11));

-- Location: LCCOMB_X30_Y4_N0
\adder|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage4|s~combout\ = \Cin~combout\ $ (partial(11) $ (\adder|stage3|Cout~0_combout\ $ (\adder_mux|stage3|f~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~combout\,
	datab => partial(11),
	datac => \adder|stage3|Cout~0_combout\,
	datad => \adder_mux|stage3|f~1_combout\,
	combout => \adder|stage4|s~combout\);

-- Location: FF_X30_Y4_N1
\partial[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \adder|stage4|s~combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(10));

-- Location: LCCOMB_X30_Y4_N10
\adder|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage3|s~combout\ = \Cin~combout\ $ (partial(10) $ (\adder_mux|stage3|f~0_combout\ $ (\adder|stage2|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~combout\,
	datab => partial(10),
	datac => \adder_mux|stage3|f~0_combout\,
	datad => \adder|stage2|Cout~1_combout\,
	combout => \adder|stage3|s~combout\);

-- Location: FF_X30_Y4_N11
\partial[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \adder|stage3|s~combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(9));

-- Location: LCCOMB_X30_Y4_N24
\adder|stage2|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage2|s~2_combout\ = \a[1]~input_o\ $ (((partial(8) & (\a[0]~input_o\ & !\mux_sel~combout\)) # (!partial(8) & (!\a[0]~input_o\ & \mux_sel~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => partial(8),
	datab => \a[0]~input_o\,
	datac => \mux_sel~combout\,
	datad => \a[1]~input_o\,
	combout => \adder|stage2|s~2_combout\);

-- Location: LCCOMB_X30_Y4_N20
\adder|stage2|s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage2|s~3_combout\ = partial(9) $ (((\mux_en~combout\ & (\mux_sel~combout\ $ (\adder|stage2|s~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_en~combout\,
	datab => partial(9),
	datac => \mux_sel~combout\,
	datad => \adder|stage2|s~2_combout\,
	combout => \adder|stage2|s~3_combout\);

-- Location: FF_X30_Y4_N21
\partial[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \adder|stage2|s~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(8));

-- Location: LCCOMB_X30_Y4_N2
\adder|stage1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|stage1|s~combout\ = partial(8) $ (((\mux_en~combout\ & (\a[0]~input_o\ $ (\mux_sel~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => partial(8),
	datab => \a[0]~input_o\,
	datac => \mux_sel~combout\,
	datad => \mux_en~combout\,
	combout => \adder|stage1|s~combout\);

-- Location: FF_X30_Y4_N3
\partial[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \adder|stage1|s~combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(7));

-- Location: LCCOMB_X29_Y4_N28
\partial[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial[6]~feeder_combout\ = partial(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => partial(7),
	combout => \partial[6]~feeder_combout\);

-- Location: FF_X29_Y4_N29
\partial[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \partial[6]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(6));

-- Location: LCCOMB_X29_Y4_N18
\partial[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial[5]~feeder_combout\ = partial(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => partial(6),
	combout => \partial[5]~feeder_combout\);

-- Location: FF_X29_Y4_N19
\partial[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \partial[5]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(5));

-- Location: FF_X30_Y4_N29
\partial[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => partial(5),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(4));

-- Location: LCCOMB_X29_Y4_N16
\partial[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \partial[3]~feeder_combout\ = partial(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => partial(4),
	combout => \partial[3]~feeder_combout\);

-- Location: FF_X29_Y4_N17
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

-- Location: FF_X28_Y4_N15
\partial[2]\ : dffeas
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
	q => partial(2));

-- Location: FF_X28_Y4_N23
\partial[1]\ : dffeas
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
	q => partial(1));

-- Location: FF_X28_Y4_N11
\partial[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => partial(1),
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => partial(0));

-- Location: LCCOMB_X28_Y4_N10
\result[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[0]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(0)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[0]$latch~combout\,
	datac => partial(0),
	datad => \present_state.P8~clkctrl_outclk\,
	combout => \result[0]$latch~combout\);

-- Location: LCCOMB_X28_Y4_N22
\result[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[1]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(1)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[1]$latch~combout\,
	datac => partial(1),
	datad => \present_state.P8~clkctrl_outclk\,
	combout => \result[1]$latch~combout\);

-- Location: LCCOMB_X28_Y4_N14
\result[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[2]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(2)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[2]$latch~combout\,
	datac => partial(2),
	datad => \present_state.P8~clkctrl_outclk\,
	combout => \result[2]$latch~combout\);

-- Location: LCCOMB_X29_Y4_N26
\result[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[3]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(3)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[3]$latch~combout\,
	datac => \present_state.P8~clkctrl_outclk\,
	datad => partial(3),
	combout => \result[3]$latch~combout\);

-- Location: LCCOMB_X30_Y4_N4
\result[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[4]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(4)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[4]$latch~combout\,
	datac => \present_state.P8~clkctrl_outclk\,
	datad => partial(4),
	combout => \result[4]$latch~combout\);

-- Location: LCCOMB_X29_Y4_N12
\result[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[5]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(5)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[5]$latch~combout\,
	datac => \present_state.P8~clkctrl_outclk\,
	datad => partial(5),
	combout => \result[5]$latch~combout\);

-- Location: LCCOMB_X29_Y4_N14
\result[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[6]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(6)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[6]$latch~combout\,
	datac => \present_state.P8~clkctrl_outclk\,
	datad => partial(6),
	combout => \result[6]$latch~combout\);

-- Location: LCCOMB_X30_Y4_N26
\result[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[7]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(7)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[7]$latch~combout\,
	datac => \present_state.P8~clkctrl_outclk\,
	datad => partial(7),
	combout => \result[7]$latch~combout\);

-- Location: LCCOMB_X30_Y4_N8
\result[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[8]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(8)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[8]$latch~combout\,
	datac => \present_state.P8~clkctrl_outclk\,
	datad => partial(8),
	combout => \result[8]$latch~combout\);

-- Location: LCCOMB_X30_Y4_N30
\result[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[9]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(9)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[9]$latch~combout\,
	datac => \present_state.P8~clkctrl_outclk\,
	datad => partial(9),
	combout => \result[9]$latch~combout\);

-- Location: LCCOMB_X30_Y4_N16
\result[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[10]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(10)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[10]$latch~combout\,
	datac => \present_state.P8~clkctrl_outclk\,
	datad => partial(10),
	combout => \result[10]$latch~combout\);

-- Location: LCCOMB_X32_Y4_N8
\result[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[11]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(11)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[11]$latch~combout\,
	datac => \present_state.P8~clkctrl_outclk\,
	datad => partial(11),
	combout => \result[11]$latch~combout\);

-- Location: LCCOMB_X31_Y4_N8
\result[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[12]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(12)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[12]$latch~combout\,
	datac => partial(12),
	datad => \present_state.P8~clkctrl_outclk\,
	combout => \result[12]$latch~combout\);

-- Location: LCCOMB_X31_Y4_N26
\result[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[13]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(13)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[13]$latch~combout\,
	datac => \present_state.P8~clkctrl_outclk\,
	datad => partial(13),
	combout => \result[13]$latch~combout\);

-- Location: LCCOMB_X31_Y4_N4
\result[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[14]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(14)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \result[14]$latch~combout\,
	datac => \present_state.P8~clkctrl_outclk\,
	datad => partial(14),
	combout => \result[14]$latch~combout\);

-- Location: LCCOMB_X31_Y4_N30
\result[15]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[15]$latch~combout\ = (GLOBAL(\present_state.P8~clkctrl_outclk\) & ((partial(15)))) # (!GLOBAL(\present_state.P8~clkctrl_outclk\) & (\result[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[15]$latch~combout\,
	datac => \present_state.P8~clkctrl_outclk\,
	datad => partial(15),
	combout => \result[15]$latch~combout\);

-- Location: IOIBUF_X28_Y24_N8
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

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

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;
END structure;


