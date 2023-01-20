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

-- DATE "10/10/2022 12:20:59"

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

ENTITY 	Lab2 IS
    PORT (
	reset : IN std_logic;
	start : IN std_logic;
	clock : IN std_logic;
	red : BUFFER std_logic;
	yellow : BUFFER std_logic;
	green : BUFFER std_logic;
	count_out : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END Lab2;

-- Design Ports Information
-- red	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[0]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[3]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[4]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[7]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[8]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[9]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[10]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[11]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[12]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[13]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[14]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[15]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[16]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[17]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[18]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[19]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[20]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[21]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[22]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[23]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[24]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[25]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[26]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[27]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[28]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[29]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[30]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[31]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_red : std_logic;
SIGNAL ww_yellow : std_logic;
SIGNAL ww_green : std_logic;
SIGNAL ww_count_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \red~output_o\ : std_logic;
SIGNAL \yellow~output_o\ : std_logic;
SIGNAL \green~output_o\ : std_logic;
SIGNAL \count_out[0]~output_o\ : std_logic;
SIGNAL \count_out[1]~output_o\ : std_logic;
SIGNAL \count_out[2]~output_o\ : std_logic;
SIGNAL \count_out[3]~output_o\ : std_logic;
SIGNAL \count_out[4]~output_o\ : std_logic;
SIGNAL \count_out[5]~output_o\ : std_logic;
SIGNAL \count_out[6]~output_o\ : std_logic;
SIGNAL \count_out[7]~output_o\ : std_logic;
SIGNAL \count_out[8]~output_o\ : std_logic;
SIGNAL \count_out[9]~output_o\ : std_logic;
SIGNAL \count_out[10]~output_o\ : std_logic;
SIGNAL \count_out[11]~output_o\ : std_logic;
SIGNAL \count_out[12]~output_o\ : std_logic;
SIGNAL \count_out[13]~output_o\ : std_logic;
SIGNAL \count_out[14]~output_o\ : std_logic;
SIGNAL \count_out[15]~output_o\ : std_logic;
SIGNAL \count_out[16]~output_o\ : std_logic;
SIGNAL \count_out[17]~output_o\ : std_logic;
SIGNAL \count_out[18]~output_o\ : std_logic;
SIGNAL \count_out[19]~output_o\ : std_logic;
SIGNAL \count_out[20]~output_o\ : std_logic;
SIGNAL \count_out[21]~output_o\ : std_logic;
SIGNAL \count_out[22]~output_o\ : std_logic;
SIGNAL \count_out[23]~output_o\ : std_logic;
SIGNAL \count_out[24]~output_o\ : std_logic;
SIGNAL \count_out[25]~output_o\ : std_logic;
SIGNAL \count_out[26]~output_o\ : std_logic;
SIGNAL \count_out[27]~output_o\ : std_logic;
SIGNAL \count_out[28]~output_o\ : std_logic;
SIGNAL \count_out[29]~output_o\ : std_logic;
SIGNAL \count_out[30]~output_o\ : std_logic;
SIGNAL \count_out[31]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \c0|counter_next[0]~32_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \count_reset~combout\ : std_logic;
SIGNAL \c0|counter_next[0]~33\ : std_logic;
SIGNAL \c0|counter_next[1]~34_combout\ : std_logic;
SIGNAL \c0|counter_next[1]~35\ : std_logic;
SIGNAL \c0|counter_next[2]~36_combout\ : std_logic;
SIGNAL \c0|done_next~0_combout\ : std_logic;
SIGNAL \c0|counter_next[2]~37\ : std_logic;
SIGNAL \c0|counter_next[3]~38_combout\ : std_logic;
SIGNAL \c0|counter_next[3]~39\ : std_logic;
SIGNAL \c0|counter_next[4]~40_combout\ : std_logic;
SIGNAL \c0|counter_next[4]~41\ : std_logic;
SIGNAL \c0|counter_next[5]~42_combout\ : std_logic;
SIGNAL \c0|counter_next[5]~43\ : std_logic;
SIGNAL \c0|counter_next[6]~44_combout\ : std_logic;
SIGNAL \c0|counter_next[6]~45\ : std_logic;
SIGNAL \c0|counter_next[7]~46_combout\ : std_logic;
SIGNAL \c0|counter_next[7]~47\ : std_logic;
SIGNAL \c0|counter_next[8]~48_combout\ : std_logic;
SIGNAL \c0|done_next~1_combout\ : std_logic;
SIGNAL \c0|done_next~2_combout\ : std_logic;
SIGNAL \c0|counter_next[8]~49\ : std_logic;
SIGNAL \c0|counter_next[9]~50_combout\ : std_logic;
SIGNAL \c0|counter_next[9]~51\ : std_logic;
SIGNAL \c0|counter_next[10]~52_combout\ : std_logic;
SIGNAL \c0|counter_next[10]~53\ : std_logic;
SIGNAL \c0|counter_next[11]~54_combout\ : std_logic;
SIGNAL \c0|counter_next[11]~55\ : std_logic;
SIGNAL \c0|counter_next[12]~56_combout\ : std_logic;
SIGNAL \c0|counter_next[12]~57\ : std_logic;
SIGNAL \c0|counter_next[13]~58_combout\ : std_logic;
SIGNAL \c0|counter_next[13]~59\ : std_logic;
SIGNAL \c0|counter_next[14]~60_combout\ : std_logic;
SIGNAL \c0|counter_next[14]~61\ : std_logic;
SIGNAL \c0|counter_next[15]~62_combout\ : std_logic;
SIGNAL \c0|counter_next[15]~63\ : std_logic;
SIGNAL \c0|counter_next[16]~64_combout\ : std_logic;
SIGNAL \c0|counter_next[16]~65\ : std_logic;
SIGNAL \c0|counter_next[17]~66_combout\ : std_logic;
SIGNAL \c0|counter_next[17]~67\ : std_logic;
SIGNAL \c0|counter_next[18]~68_combout\ : std_logic;
SIGNAL \c0|counter_next[18]~69\ : std_logic;
SIGNAL \c0|counter_next[19]~70_combout\ : std_logic;
SIGNAL \c0|counter_next[19]~71\ : std_logic;
SIGNAL \c0|counter_next[20]~72_combout\ : std_logic;
SIGNAL \c0|counter_next[20]~73\ : std_logic;
SIGNAL \c0|counter_next[21]~74_combout\ : std_logic;
SIGNAL \c0|counter_next[21]~75\ : std_logic;
SIGNAL \c0|counter_next[22]~76_combout\ : std_logic;
SIGNAL \c0|counter_next[22]~77\ : std_logic;
SIGNAL \c0|counter_next[23]~78_combout\ : std_logic;
SIGNAL \c0|counter_next[23]~79\ : std_logic;
SIGNAL \c0|counter_next[24]~80_combout\ : std_logic;
SIGNAL \c0|done_next~6_combout\ : std_logic;
SIGNAL \c0|done_next~3_combout\ : std_logic;
SIGNAL \c0|done_next~4_combout\ : std_logic;
SIGNAL \c0|done_next~5_combout\ : std_logic;
SIGNAL \c0|done_next~7_combout\ : std_logic;
SIGNAL \c0|counter_next[24]~81\ : std_logic;
SIGNAL \c0|counter_next[25]~82_combout\ : std_logic;
SIGNAL \c0|counter_next[25]~83\ : std_logic;
SIGNAL \c0|counter_next[26]~84_combout\ : std_logic;
SIGNAL \c0|counter_next[26]~85\ : std_logic;
SIGNAL \c0|counter_next[27]~86_combout\ : std_logic;
SIGNAL \c0|counter_next[27]~87\ : std_logic;
SIGNAL \c0|counter_next[28]~88_combout\ : std_logic;
SIGNAL \c0|counter_next[28]~89\ : std_logic;
SIGNAL \c0|counter_next[29]~90_combout\ : std_logic;
SIGNAL \c0|counter_next[29]~91\ : std_logic;
SIGNAL \c0|counter_next[30]~92_combout\ : std_logic;
SIGNAL \c0|counter_next[30]~93\ : std_logic;
SIGNAL \c0|counter_next[31]~94_combout\ : std_logic;
SIGNAL \c0|done_next~8_combout\ : std_logic;
SIGNAL \c0|done_next~9_combout\ : std_logic;
SIGNAL \c0|done_next~10_combout\ : std_logic;
SIGNAL \c0|done_next~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \present_state.Ready~q\ : std_logic;
SIGNAL \present_state.Set~feeder_combout\ : std_logic;
SIGNAL \present_state.Set~q\ : std_logic;
SIGNAL \present_state.Go~feeder_combout\ : std_logic;
SIGNAL \present_state.Go~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \present_state.Idle~q\ : std_logic;
SIGNAL \red~2_combout\ : std_logic;
SIGNAL \c0|counter_next\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_start <= start;
ww_clock <= clock;
red <= ww_red;
yellow <= ww_yellow;
green <= ww_green;
count_out <= ww_count_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\red~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red~2_combout\,
	devoe => ww_devoe,
	o => \red~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\yellow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \present_state.Set~q\,
	devoe => ww_devoe,
	o => \yellow~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\green~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \present_state.Go~q\,
	devoe => ww_devoe,
	o => \green~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\count_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(0),
	devoe => ww_devoe,
	o => \count_out[0]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\count_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(1),
	devoe => ww_devoe,
	o => \count_out[1]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\count_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(2),
	devoe => ww_devoe,
	o => \count_out[2]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\count_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(3),
	devoe => ww_devoe,
	o => \count_out[3]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\count_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(4),
	devoe => ww_devoe,
	o => \count_out[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\count_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(5),
	devoe => ww_devoe,
	o => \count_out[5]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\count_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(6),
	devoe => ww_devoe,
	o => \count_out[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\count_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(7),
	devoe => ww_devoe,
	o => \count_out[7]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\count_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(8),
	devoe => ww_devoe,
	o => \count_out[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\count_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(9),
	devoe => ww_devoe,
	o => \count_out[9]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\count_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(10),
	devoe => ww_devoe,
	o => \count_out[10]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\count_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(11),
	devoe => ww_devoe,
	o => \count_out[11]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\count_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(12),
	devoe => ww_devoe,
	o => \count_out[12]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\count_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(13),
	devoe => ww_devoe,
	o => \count_out[13]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\count_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(14),
	devoe => ww_devoe,
	o => \count_out[14]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\count_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(15),
	devoe => ww_devoe,
	o => \count_out[15]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\count_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(16),
	devoe => ww_devoe,
	o => \count_out[16]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\count_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(17),
	devoe => ww_devoe,
	o => \count_out[17]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\count_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(18),
	devoe => ww_devoe,
	o => \count_out[18]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\count_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(19),
	devoe => ww_devoe,
	o => \count_out[19]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\count_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(20),
	devoe => ww_devoe,
	o => \count_out[20]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\count_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(21),
	devoe => ww_devoe,
	o => \count_out[21]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\count_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(22),
	devoe => ww_devoe,
	o => \count_out[22]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\count_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(23),
	devoe => ww_devoe,
	o => \count_out[23]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\count_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(24),
	devoe => ww_devoe,
	o => \count_out[24]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\count_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(25),
	devoe => ww_devoe,
	o => \count_out[25]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\count_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(26),
	devoe => ww_devoe,
	o => \count_out[26]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\count_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(27),
	devoe => ww_devoe,
	o => \count_out[27]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\count_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(28),
	devoe => ww_devoe,
	o => \count_out[28]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\count_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(29),
	devoe => ww_devoe,
	o => \count_out[29]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\count_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(30),
	devoe => ww_devoe,
	o => \count_out[30]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\count_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0|counter_next\(31),
	devoe => ww_devoe,
	o => \count_out[31]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X86_Y72_N0
\c0|counter_next[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[0]~32_combout\ = \c0|counter_next\(0) $ (VCC)
-- \c0|counter_next[0]~33\ = CARRY(\c0|counter_next\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(0),
	datad => VCC,
	combout => \c0|counter_next[0]~32_combout\,
	cout => \c0|counter_next[0]~33\);

-- Location: IOIBUF_X115_Y40_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X87_Y72_N0
count_reset : cycloneive_lcell_comb
-- Equation(s):
-- \count_reset~combout\ = (\reset~input_o\) # (\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \start~input_o\,
	combout => \count_reset~combout\);

-- Location: FF_X86_Y72_N1
\c0|counter_next[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[0]~32_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(0));

-- Location: LCCOMB_X86_Y72_N2
\c0|counter_next[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[1]~34_combout\ = (\c0|counter_next\(1) & (!\c0|counter_next[0]~33\)) # (!\c0|counter_next\(1) & ((\c0|counter_next[0]~33\) # (GND)))
-- \c0|counter_next[1]~35\ = CARRY((!\c0|counter_next[0]~33\) # (!\c0|counter_next\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(1),
	datad => VCC,
	cin => \c0|counter_next[0]~33\,
	combout => \c0|counter_next[1]~34_combout\,
	cout => \c0|counter_next[1]~35\);

-- Location: FF_X86_Y72_N3
\c0|counter_next[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[1]~34_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(1));

-- Location: LCCOMB_X86_Y72_N4
\c0|counter_next[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[2]~36_combout\ = (\c0|counter_next\(2) & (\c0|counter_next[1]~35\ $ (GND))) # (!\c0|counter_next\(2) & (!\c0|counter_next[1]~35\ & VCC))
-- \c0|counter_next[2]~37\ = CARRY((\c0|counter_next\(2) & !\c0|counter_next[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(2),
	datad => VCC,
	cin => \c0|counter_next[1]~35\,
	combout => \c0|counter_next[2]~36_combout\,
	cout => \c0|counter_next[2]~37\);

-- Location: FF_X86_Y72_N5
\c0|counter_next[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[2]~36_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(2));

-- Location: LCCOMB_X87_Y72_N6
\c0|done_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|done_next~0_combout\ = (\c0|counter_next\(0) & (!\c0|counter_next\(2))) # (!\c0|counter_next\(0) & (\c0|counter_next\(2) & \c0|counter_next\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(0),
	datac => \c0|counter_next\(2),
	datad => \c0|counter_next\(1),
	combout => \c0|done_next~0_combout\);

-- Location: LCCOMB_X86_Y72_N6
\c0|counter_next[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[3]~38_combout\ = (\c0|counter_next\(3) & (!\c0|counter_next[2]~37\)) # (!\c0|counter_next\(3) & ((\c0|counter_next[2]~37\) # (GND)))
-- \c0|counter_next[3]~39\ = CARRY((!\c0|counter_next[2]~37\) # (!\c0|counter_next\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(3),
	datad => VCC,
	cin => \c0|counter_next[2]~37\,
	combout => \c0|counter_next[3]~38_combout\,
	cout => \c0|counter_next[3]~39\);

-- Location: FF_X86_Y72_N7
\c0|counter_next[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[3]~38_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(3));

-- Location: LCCOMB_X86_Y72_N8
\c0|counter_next[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[4]~40_combout\ = (\c0|counter_next\(4) & (\c0|counter_next[3]~39\ $ (GND))) # (!\c0|counter_next\(4) & (!\c0|counter_next[3]~39\ & VCC))
-- \c0|counter_next[4]~41\ = CARRY((\c0|counter_next\(4) & !\c0|counter_next[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(4),
	datad => VCC,
	cin => \c0|counter_next[3]~39\,
	combout => \c0|counter_next[4]~40_combout\,
	cout => \c0|counter_next[4]~41\);

-- Location: FF_X86_Y72_N9
\c0|counter_next[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[4]~40_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(4));

-- Location: LCCOMB_X86_Y72_N10
\c0|counter_next[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[5]~42_combout\ = (\c0|counter_next\(5) & (!\c0|counter_next[4]~41\)) # (!\c0|counter_next\(5) & ((\c0|counter_next[4]~41\) # (GND)))
-- \c0|counter_next[5]~43\ = CARRY((!\c0|counter_next[4]~41\) # (!\c0|counter_next\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(5),
	datad => VCC,
	cin => \c0|counter_next[4]~41\,
	combout => \c0|counter_next[5]~42_combout\,
	cout => \c0|counter_next[5]~43\);

-- Location: FF_X86_Y72_N11
\c0|counter_next[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[5]~42_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(5));

-- Location: LCCOMB_X86_Y72_N12
\c0|counter_next[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[6]~44_combout\ = (\c0|counter_next\(6) & (\c0|counter_next[5]~43\ $ (GND))) # (!\c0|counter_next\(6) & (!\c0|counter_next[5]~43\ & VCC))
-- \c0|counter_next[6]~45\ = CARRY((\c0|counter_next\(6) & !\c0|counter_next[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(6),
	datad => VCC,
	cin => \c0|counter_next[5]~43\,
	combout => \c0|counter_next[6]~44_combout\,
	cout => \c0|counter_next[6]~45\);

-- Location: FF_X86_Y72_N13
\c0|counter_next[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[6]~44_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(6));

-- Location: LCCOMB_X86_Y72_N14
\c0|counter_next[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[7]~46_combout\ = (\c0|counter_next\(7) & (!\c0|counter_next[6]~45\)) # (!\c0|counter_next\(7) & ((\c0|counter_next[6]~45\) # (GND)))
-- \c0|counter_next[7]~47\ = CARRY((!\c0|counter_next[6]~45\) # (!\c0|counter_next\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(7),
	datad => VCC,
	cin => \c0|counter_next[6]~45\,
	combout => \c0|counter_next[7]~46_combout\,
	cout => \c0|counter_next[7]~47\);

-- Location: FF_X86_Y72_N15
\c0|counter_next[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[7]~46_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(7));

-- Location: LCCOMB_X86_Y72_N16
\c0|counter_next[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[8]~48_combout\ = (\c0|counter_next\(8) & (\c0|counter_next[7]~47\ $ (GND))) # (!\c0|counter_next\(8) & (!\c0|counter_next[7]~47\ & VCC))
-- \c0|counter_next[8]~49\ = CARRY((\c0|counter_next\(8) & !\c0|counter_next[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(8),
	datad => VCC,
	cin => \c0|counter_next[7]~47\,
	combout => \c0|counter_next[8]~48_combout\,
	cout => \c0|counter_next[8]~49\);

-- Location: FF_X86_Y72_N17
\c0|counter_next[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[8]~48_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(8));

-- Location: LCCOMB_X87_Y72_N16
\c0|done_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|done_next~1_combout\ = (!\c0|counter_next\(5) & (!\c0|counter_next\(6) & (!\c0|counter_next\(8) & !\c0|counter_next\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(5),
	datab => \c0|counter_next\(6),
	datac => \c0|counter_next\(8),
	datad => \c0|counter_next\(7),
	combout => \c0|done_next~1_combout\);

-- Location: LCCOMB_X87_Y72_N14
\c0|done_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|done_next~2_combout\ = (!\c0|counter_next\(4) & (!\count_reset~combout\ & (!\c0|counter_next\(3) & \c0|done_next~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(4),
	datab => \count_reset~combout\,
	datac => \c0|counter_next\(3),
	datad => \c0|done_next~1_combout\,
	combout => \c0|done_next~2_combout\);

-- Location: LCCOMB_X86_Y72_N18
\c0|counter_next[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[9]~50_combout\ = (\c0|counter_next\(9) & (!\c0|counter_next[8]~49\)) # (!\c0|counter_next\(9) & ((\c0|counter_next[8]~49\) # (GND)))
-- \c0|counter_next[9]~51\ = CARRY((!\c0|counter_next[8]~49\) # (!\c0|counter_next\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(9),
	datad => VCC,
	cin => \c0|counter_next[8]~49\,
	combout => \c0|counter_next[9]~50_combout\,
	cout => \c0|counter_next[9]~51\);

-- Location: FF_X86_Y72_N19
\c0|counter_next[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[9]~50_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(9));

-- Location: LCCOMB_X86_Y72_N20
\c0|counter_next[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[10]~52_combout\ = (\c0|counter_next\(10) & (\c0|counter_next[9]~51\ $ (GND))) # (!\c0|counter_next\(10) & (!\c0|counter_next[9]~51\ & VCC))
-- \c0|counter_next[10]~53\ = CARRY((\c0|counter_next\(10) & !\c0|counter_next[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(10),
	datad => VCC,
	cin => \c0|counter_next[9]~51\,
	combout => \c0|counter_next[10]~52_combout\,
	cout => \c0|counter_next[10]~53\);

-- Location: FF_X86_Y72_N21
\c0|counter_next[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[10]~52_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(10));

-- Location: LCCOMB_X86_Y72_N22
\c0|counter_next[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[11]~54_combout\ = (\c0|counter_next\(11) & (!\c0|counter_next[10]~53\)) # (!\c0|counter_next\(11) & ((\c0|counter_next[10]~53\) # (GND)))
-- \c0|counter_next[11]~55\ = CARRY((!\c0|counter_next[10]~53\) # (!\c0|counter_next\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(11),
	datad => VCC,
	cin => \c0|counter_next[10]~53\,
	combout => \c0|counter_next[11]~54_combout\,
	cout => \c0|counter_next[11]~55\);

-- Location: FF_X86_Y72_N23
\c0|counter_next[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[11]~54_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(11));

-- Location: LCCOMB_X86_Y72_N24
\c0|counter_next[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[12]~56_combout\ = (\c0|counter_next\(12) & (\c0|counter_next[11]~55\ $ (GND))) # (!\c0|counter_next\(12) & (!\c0|counter_next[11]~55\ & VCC))
-- \c0|counter_next[12]~57\ = CARRY((\c0|counter_next\(12) & !\c0|counter_next[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(12),
	datad => VCC,
	cin => \c0|counter_next[11]~55\,
	combout => \c0|counter_next[12]~56_combout\,
	cout => \c0|counter_next[12]~57\);

-- Location: FF_X86_Y72_N25
\c0|counter_next[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[12]~56_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(12));

-- Location: LCCOMB_X86_Y72_N26
\c0|counter_next[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[13]~58_combout\ = (\c0|counter_next\(13) & (!\c0|counter_next[12]~57\)) # (!\c0|counter_next\(13) & ((\c0|counter_next[12]~57\) # (GND)))
-- \c0|counter_next[13]~59\ = CARRY((!\c0|counter_next[12]~57\) # (!\c0|counter_next\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(13),
	datad => VCC,
	cin => \c0|counter_next[12]~57\,
	combout => \c0|counter_next[13]~58_combout\,
	cout => \c0|counter_next[13]~59\);

-- Location: FF_X86_Y72_N27
\c0|counter_next[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[13]~58_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(13));

-- Location: LCCOMB_X86_Y72_N28
\c0|counter_next[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[14]~60_combout\ = (\c0|counter_next\(14) & (\c0|counter_next[13]~59\ $ (GND))) # (!\c0|counter_next\(14) & (!\c0|counter_next[13]~59\ & VCC))
-- \c0|counter_next[14]~61\ = CARRY((\c0|counter_next\(14) & !\c0|counter_next[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(14),
	datad => VCC,
	cin => \c0|counter_next[13]~59\,
	combout => \c0|counter_next[14]~60_combout\,
	cout => \c0|counter_next[14]~61\);

-- Location: FF_X86_Y72_N29
\c0|counter_next[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[14]~60_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(14));

-- Location: LCCOMB_X86_Y72_N30
\c0|counter_next[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[15]~62_combout\ = (\c0|counter_next\(15) & (!\c0|counter_next[14]~61\)) # (!\c0|counter_next\(15) & ((\c0|counter_next[14]~61\) # (GND)))
-- \c0|counter_next[15]~63\ = CARRY((!\c0|counter_next[14]~61\) # (!\c0|counter_next\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(15),
	datad => VCC,
	cin => \c0|counter_next[14]~61\,
	combout => \c0|counter_next[15]~62_combout\,
	cout => \c0|counter_next[15]~63\);

-- Location: FF_X86_Y72_N31
\c0|counter_next[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[15]~62_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(15));

-- Location: LCCOMB_X86_Y71_N0
\c0|counter_next[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[16]~64_combout\ = (\c0|counter_next\(16) & (\c0|counter_next[15]~63\ $ (GND))) # (!\c0|counter_next\(16) & (!\c0|counter_next[15]~63\ & VCC))
-- \c0|counter_next[16]~65\ = CARRY((\c0|counter_next\(16) & !\c0|counter_next[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(16),
	datad => VCC,
	cin => \c0|counter_next[15]~63\,
	combout => \c0|counter_next[16]~64_combout\,
	cout => \c0|counter_next[16]~65\);

-- Location: FF_X86_Y71_N1
\c0|counter_next[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[16]~64_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(16));

-- Location: LCCOMB_X86_Y71_N2
\c0|counter_next[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[17]~66_combout\ = (\c0|counter_next\(17) & (!\c0|counter_next[16]~65\)) # (!\c0|counter_next\(17) & ((\c0|counter_next[16]~65\) # (GND)))
-- \c0|counter_next[17]~67\ = CARRY((!\c0|counter_next[16]~65\) # (!\c0|counter_next\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(17),
	datad => VCC,
	cin => \c0|counter_next[16]~65\,
	combout => \c0|counter_next[17]~66_combout\,
	cout => \c0|counter_next[17]~67\);

-- Location: FF_X86_Y71_N3
\c0|counter_next[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[17]~66_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(17));

-- Location: LCCOMB_X86_Y71_N4
\c0|counter_next[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[18]~68_combout\ = (\c0|counter_next\(18) & (\c0|counter_next[17]~67\ $ (GND))) # (!\c0|counter_next\(18) & (!\c0|counter_next[17]~67\ & VCC))
-- \c0|counter_next[18]~69\ = CARRY((\c0|counter_next\(18) & !\c0|counter_next[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(18),
	datad => VCC,
	cin => \c0|counter_next[17]~67\,
	combout => \c0|counter_next[18]~68_combout\,
	cout => \c0|counter_next[18]~69\);

-- Location: FF_X86_Y71_N5
\c0|counter_next[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[18]~68_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(18));

-- Location: LCCOMB_X86_Y71_N6
\c0|counter_next[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[19]~70_combout\ = (\c0|counter_next\(19) & (!\c0|counter_next[18]~69\)) # (!\c0|counter_next\(19) & ((\c0|counter_next[18]~69\) # (GND)))
-- \c0|counter_next[19]~71\ = CARRY((!\c0|counter_next[18]~69\) # (!\c0|counter_next\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(19),
	datad => VCC,
	cin => \c0|counter_next[18]~69\,
	combout => \c0|counter_next[19]~70_combout\,
	cout => \c0|counter_next[19]~71\);

-- Location: FF_X86_Y71_N7
\c0|counter_next[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[19]~70_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(19));

-- Location: LCCOMB_X86_Y71_N8
\c0|counter_next[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[20]~72_combout\ = (\c0|counter_next\(20) & (\c0|counter_next[19]~71\ $ (GND))) # (!\c0|counter_next\(20) & (!\c0|counter_next[19]~71\ & VCC))
-- \c0|counter_next[20]~73\ = CARRY((\c0|counter_next\(20) & !\c0|counter_next[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(20),
	datad => VCC,
	cin => \c0|counter_next[19]~71\,
	combout => \c0|counter_next[20]~72_combout\,
	cout => \c0|counter_next[20]~73\);

-- Location: FF_X86_Y71_N9
\c0|counter_next[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[20]~72_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(20));

-- Location: LCCOMB_X86_Y71_N10
\c0|counter_next[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[21]~74_combout\ = (\c0|counter_next\(21) & (!\c0|counter_next[20]~73\)) # (!\c0|counter_next\(21) & ((\c0|counter_next[20]~73\) # (GND)))
-- \c0|counter_next[21]~75\ = CARRY((!\c0|counter_next[20]~73\) # (!\c0|counter_next\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(21),
	datad => VCC,
	cin => \c0|counter_next[20]~73\,
	combout => \c0|counter_next[21]~74_combout\,
	cout => \c0|counter_next[21]~75\);

-- Location: FF_X86_Y71_N11
\c0|counter_next[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[21]~74_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(21));

-- Location: LCCOMB_X86_Y71_N12
\c0|counter_next[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[22]~76_combout\ = (\c0|counter_next\(22) & (\c0|counter_next[21]~75\ $ (GND))) # (!\c0|counter_next\(22) & (!\c0|counter_next[21]~75\ & VCC))
-- \c0|counter_next[22]~77\ = CARRY((\c0|counter_next\(22) & !\c0|counter_next[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(22),
	datad => VCC,
	cin => \c0|counter_next[21]~75\,
	combout => \c0|counter_next[22]~76_combout\,
	cout => \c0|counter_next[22]~77\);

-- Location: FF_X86_Y71_N13
\c0|counter_next[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[22]~76_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(22));

-- Location: LCCOMB_X86_Y71_N14
\c0|counter_next[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[23]~78_combout\ = (\c0|counter_next\(23) & (!\c0|counter_next[22]~77\)) # (!\c0|counter_next\(23) & ((\c0|counter_next[22]~77\) # (GND)))
-- \c0|counter_next[23]~79\ = CARRY((!\c0|counter_next[22]~77\) # (!\c0|counter_next\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(23),
	datad => VCC,
	cin => \c0|counter_next[22]~77\,
	combout => \c0|counter_next[23]~78_combout\,
	cout => \c0|counter_next[23]~79\);

-- Location: FF_X86_Y71_N15
\c0|counter_next[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[23]~78_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(23));

-- Location: LCCOMB_X86_Y71_N16
\c0|counter_next[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[24]~80_combout\ = (\c0|counter_next\(24) & (\c0|counter_next[23]~79\ $ (GND))) # (!\c0|counter_next\(24) & (!\c0|counter_next[23]~79\ & VCC))
-- \c0|counter_next[24]~81\ = CARRY((\c0|counter_next\(24) & !\c0|counter_next[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(24),
	datad => VCC,
	cin => \c0|counter_next[23]~79\,
	combout => \c0|counter_next[24]~80_combout\,
	cout => \c0|counter_next[24]~81\);

-- Location: FF_X86_Y71_N17
\c0|counter_next[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[24]~80_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(24));

-- Location: LCCOMB_X85_Y71_N2
\c0|done_next~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|done_next~6_combout\ = (!\c0|counter_next\(24) & (!\c0|counter_next\(21) & (!\c0|counter_next\(22) & !\c0|counter_next\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(24),
	datab => \c0|counter_next\(21),
	datac => \c0|counter_next\(22),
	datad => \c0|counter_next\(23),
	combout => \c0|done_next~6_combout\);

-- Location: LCCOMB_X85_Y72_N28
\c0|done_next~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|done_next~3_combout\ = (!\c0|counter_next\(10) & (!\c0|counter_next\(11) & (!\c0|counter_next\(12) & !\c0|counter_next\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(10),
	datab => \c0|counter_next\(11),
	datac => \c0|counter_next\(12),
	datad => \c0|counter_next\(9),
	combout => \c0|done_next~3_combout\);

-- Location: LCCOMB_X85_Y72_N30
\c0|done_next~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|done_next~4_combout\ = (!\c0|counter_next\(16) & (!\c0|counter_next\(13) & (!\c0|counter_next\(15) & !\c0|counter_next\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(16),
	datab => \c0|counter_next\(13),
	datac => \c0|counter_next\(15),
	datad => \c0|counter_next\(14),
	combout => \c0|done_next~4_combout\);

-- Location: LCCOMB_X85_Y71_N0
\c0|done_next~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|done_next~5_combout\ = (!\c0|counter_next\(19) & (!\c0|counter_next\(20) & (!\c0|counter_next\(18) & !\c0|counter_next\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(19),
	datab => \c0|counter_next\(20),
	datac => \c0|counter_next\(18),
	datad => \c0|counter_next\(17),
	combout => \c0|done_next~5_combout\);

-- Location: LCCOMB_X85_Y72_N0
\c0|done_next~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|done_next~7_combout\ = (\c0|done_next~6_combout\ & (\c0|done_next~3_combout\ & (\c0|done_next~4_combout\ & \c0|done_next~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|done_next~6_combout\,
	datab => \c0|done_next~3_combout\,
	datac => \c0|done_next~4_combout\,
	datad => \c0|done_next~5_combout\,
	combout => \c0|done_next~7_combout\);

-- Location: LCCOMB_X86_Y71_N18
\c0|counter_next[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[25]~82_combout\ = (\c0|counter_next\(25) & (!\c0|counter_next[24]~81\)) # (!\c0|counter_next\(25) & ((\c0|counter_next[24]~81\) # (GND)))
-- \c0|counter_next[25]~83\ = CARRY((!\c0|counter_next[24]~81\) # (!\c0|counter_next\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(25),
	datad => VCC,
	cin => \c0|counter_next[24]~81\,
	combout => \c0|counter_next[25]~82_combout\,
	cout => \c0|counter_next[25]~83\);

-- Location: FF_X86_Y71_N19
\c0|counter_next[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[25]~82_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(25));

-- Location: LCCOMB_X86_Y71_N20
\c0|counter_next[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[26]~84_combout\ = (\c0|counter_next\(26) & (\c0|counter_next[25]~83\ $ (GND))) # (!\c0|counter_next\(26) & (!\c0|counter_next[25]~83\ & VCC))
-- \c0|counter_next[26]~85\ = CARRY((\c0|counter_next\(26) & !\c0|counter_next[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(26),
	datad => VCC,
	cin => \c0|counter_next[25]~83\,
	combout => \c0|counter_next[26]~84_combout\,
	cout => \c0|counter_next[26]~85\);

-- Location: FF_X86_Y71_N21
\c0|counter_next[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[26]~84_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(26));

-- Location: LCCOMB_X86_Y71_N22
\c0|counter_next[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[27]~86_combout\ = (\c0|counter_next\(27) & (!\c0|counter_next[26]~85\)) # (!\c0|counter_next\(27) & ((\c0|counter_next[26]~85\) # (GND)))
-- \c0|counter_next[27]~87\ = CARRY((!\c0|counter_next[26]~85\) # (!\c0|counter_next\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(27),
	datad => VCC,
	cin => \c0|counter_next[26]~85\,
	combout => \c0|counter_next[27]~86_combout\,
	cout => \c0|counter_next[27]~87\);

-- Location: FF_X86_Y71_N23
\c0|counter_next[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[27]~86_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(27));

-- Location: LCCOMB_X86_Y71_N24
\c0|counter_next[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[28]~88_combout\ = (\c0|counter_next\(28) & (\c0|counter_next[27]~87\ $ (GND))) # (!\c0|counter_next\(28) & (!\c0|counter_next[27]~87\ & VCC))
-- \c0|counter_next[28]~89\ = CARRY((\c0|counter_next\(28) & !\c0|counter_next[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(28),
	datad => VCC,
	cin => \c0|counter_next[27]~87\,
	combout => \c0|counter_next[28]~88_combout\,
	cout => \c0|counter_next[28]~89\);

-- Location: FF_X86_Y71_N25
\c0|counter_next[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[28]~88_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(28));

-- Location: LCCOMB_X86_Y71_N26
\c0|counter_next[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[29]~90_combout\ = (\c0|counter_next\(29) & (!\c0|counter_next[28]~89\)) # (!\c0|counter_next\(29) & ((\c0|counter_next[28]~89\) # (GND)))
-- \c0|counter_next[29]~91\ = CARRY((!\c0|counter_next[28]~89\) # (!\c0|counter_next\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(29),
	datad => VCC,
	cin => \c0|counter_next[28]~89\,
	combout => \c0|counter_next[29]~90_combout\,
	cout => \c0|counter_next[29]~91\);

-- Location: FF_X86_Y71_N27
\c0|counter_next[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[29]~90_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(29));

-- Location: LCCOMB_X86_Y71_N28
\c0|counter_next[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[30]~92_combout\ = (\c0|counter_next\(30) & (\c0|counter_next[29]~91\ $ (GND))) # (!\c0|counter_next\(30) & (!\c0|counter_next[29]~91\ & VCC))
-- \c0|counter_next[30]~93\ = CARRY((\c0|counter_next\(30) & !\c0|counter_next[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \c0|counter_next\(30),
	datad => VCC,
	cin => \c0|counter_next[29]~91\,
	combout => \c0|counter_next[30]~92_combout\,
	cout => \c0|counter_next[30]~93\);

-- Location: FF_X86_Y71_N29
\c0|counter_next[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[30]~92_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(30));

-- Location: LCCOMB_X86_Y71_N30
\c0|counter_next[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|counter_next[31]~94_combout\ = \c0|counter_next\(31) $ (\c0|counter_next[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(31),
	cin => \c0|counter_next[30]~93\,
	combout => \c0|counter_next[31]~94_combout\);

-- Location: FF_X86_Y71_N31
\c0|counter_next[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|counter_next[31]~94_combout\,
	sclr => \count_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|counter_next\(31));

-- Location: LCCOMB_X87_Y72_N20
\c0|done_next~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|done_next~8_combout\ = (!\c0|counter_next\(25) & (!\c0|counter_next\(26) & (!\c0|counter_next\(28) & !\c0|counter_next\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(25),
	datab => \c0|counter_next\(26),
	datac => \c0|counter_next\(28),
	datad => \c0|counter_next\(27),
	combout => \c0|done_next~8_combout\);

-- Location: LCCOMB_X87_Y72_N10
\c0|done_next~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|done_next~9_combout\ = (!\c0|counter_next\(31) & (!\c0|counter_next\(30) & (!\c0|counter_next\(29) & \c0|done_next~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|counter_next\(31),
	datab => \c0|counter_next\(30),
	datac => \c0|counter_next\(29),
	datad => \c0|done_next~8_combout\,
	combout => \c0|done_next~9_combout\);

-- Location: LCCOMB_X87_Y72_N18
\c0|done_next~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0|done_next~10_combout\ = (\c0|done_next~0_combout\ & (\c0|done_next~2_combout\ & (\c0|done_next~7_combout\ & \c0|done_next~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0|done_next~0_combout\,
	datab => \c0|done_next~2_combout\,
	datac => \c0|done_next~7_combout\,
	datad => \c0|done_next~9_combout\,
	combout => \c0|done_next~10_combout\);

-- Location: FF_X87_Y72_N19
\c0|done_next\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \c0|done_next~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c0|done_next~q\);

-- Location: LCCOMB_X87_Y72_N12
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\present_state.Idle~q\ & (!\c0|done_next~q\ & (\present_state.Ready~q\))) # (!\present_state.Idle~q\ & ((\start~input_o\) # ((!\c0|done_next~q\ & \present_state.Ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.Idle~q\,
	datab => \c0|done_next~q\,
	datac => \present_state.Ready~q\,
	datad => \start~input_o\,
	combout => \Selector1~0_combout\);

-- Location: FF_X87_Y72_N13
\present_state.Ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.Ready~q\);

-- Location: LCCOMB_X87_Y72_N2
\present_state.Set~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.Set~feeder_combout\ = \present_state.Ready~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.Ready~q\,
	combout => \present_state.Set~feeder_combout\);

-- Location: FF_X87_Y72_N3
\present_state.Set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \present_state.Set~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \c0|done_next~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.Set~q\);

-- Location: LCCOMB_X87_Y72_N28
\present_state.Go~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.Go~feeder_combout\ = \present_state.Set~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_state.Set~q\,
	combout => \present_state.Go~feeder_combout\);

-- Location: FF_X87_Y72_N29
\present_state.Go\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \present_state.Go~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \c0|done_next~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.Go~q\);

-- Location: LCCOMB_X87_Y72_N22
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\present_state.Go~q\ & (!\c0|done_next~q\ & ((\present_state.Idle~q\) # (\start~input_o\)))) # (!\present_state.Go~q\ & (((\present_state.Idle~q\) # (\start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.Go~q\,
	datab => \c0|done_next~q\,
	datac => \present_state.Idle~q\,
	datad => \start~input_o\,
	combout => \Selector0~0_combout\);

-- Location: FF_X87_Y72_N23
\present_state.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.Idle~q\);

-- Location: LCCOMB_X87_Y72_N24
\red~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \red~2_combout\ = (\present_state.Ready~q\) # (!\present_state.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state.Idle~q\,
	datad => \present_state.Ready~q\,
	combout => \red~2_combout\);

ww_red <= \red~output_o\;

ww_yellow <= \yellow~output_o\;

ww_green <= \green~output_o\;

ww_count_out(0) <= \count_out[0]~output_o\;

ww_count_out(1) <= \count_out[1]~output_o\;

ww_count_out(2) <= \count_out[2]~output_o\;

ww_count_out(3) <= \count_out[3]~output_o\;

ww_count_out(4) <= \count_out[4]~output_o\;

ww_count_out(5) <= \count_out[5]~output_o\;

ww_count_out(6) <= \count_out[6]~output_o\;

ww_count_out(7) <= \count_out[7]~output_o\;

ww_count_out(8) <= \count_out[8]~output_o\;

ww_count_out(9) <= \count_out[9]~output_o\;

ww_count_out(10) <= \count_out[10]~output_o\;

ww_count_out(11) <= \count_out[11]~output_o\;

ww_count_out(12) <= \count_out[12]~output_o\;

ww_count_out(13) <= \count_out[13]~output_o\;

ww_count_out(14) <= \count_out[14]~output_o\;

ww_count_out(15) <= \count_out[15]~output_o\;

ww_count_out(16) <= \count_out[16]~output_o\;

ww_count_out(17) <= \count_out[17]~output_o\;

ww_count_out(18) <= \count_out[18]~output_o\;

ww_count_out(19) <= \count_out[19]~output_o\;

ww_count_out(20) <= \count_out[20]~output_o\;

ww_count_out(21) <= \count_out[21]~output_o\;

ww_count_out(22) <= \count_out[22]~output_o\;

ww_count_out(23) <= \count_out[23]~output_o\;

ww_count_out(24) <= \count_out[24]~output_o\;

ww_count_out(25) <= \count_out[25]~output_o\;

ww_count_out(26) <= \count_out[26]~output_o\;

ww_count_out(27) <= \count_out[27]~output_o\;

ww_count_out(28) <= \count_out[28]~output_o\;

ww_count_out(29) <= \count_out[29]~output_o\;

ww_count_out(30) <= \count_out[30]~output_o\;

ww_count_out(31) <= \count_out[31]~output_o\;
END structure;


