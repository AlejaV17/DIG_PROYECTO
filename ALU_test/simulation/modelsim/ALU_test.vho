-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/01/2022 08:14:21"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU_test IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	NZVC : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END ALU_test;

-- Design Ports Information
-- NZVC[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_NZVC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \N|Equal0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \N|Equal0~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \N|Add0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \N|Add0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \N|Add0|auto_generated|_~2_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \N|Add0|auto_generated|_~3_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \N|Add0|auto_generated|_~4_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \N|Add0|auto_generated|_~5_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \N|Add0|auto_generated|_~6_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \N|Add0|auto_generated|_~7_combout\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \N|Equal0~1_combout\ : std_logic;
SIGNAL \N|Equal0~1clkctrl_outclk\ : std_logic;
SIGNAL \N|Add0~1\ : std_logic;
SIGNAL \N|Add0~3\ : std_logic;
SIGNAL \N|Add0~5\ : std_logic;
SIGNAL \N|Add0~7\ : std_logic;
SIGNAL \N|Add0~9\ : std_logic;
SIGNAL \N|Add0~11\ : std_logic;
SIGNAL \N|Add0~13\ : std_logic;
SIGNAL \N|Add0~14_combout\ : std_logic;
SIGNAL \N|Add1~1\ : std_logic;
SIGNAL \N|Add1~3\ : std_logic;
SIGNAL \N|Add1~5\ : std_logic;
SIGNAL \N|Add1~7\ : std_logic;
SIGNAL \N|Add1~9\ : std_logic;
SIGNAL \N|Add1~11\ : std_logic;
SIGNAL \N|Add1~13\ : std_logic;
SIGNAL \N|Add1~14_combout\ : std_logic;
SIGNAL \N|NZVC[1]~0_combout\ : std_logic;
SIGNAL \N|NZVC[1]~1_combout\ : std_logic;
SIGNAL \N|Add1~8_combout\ : std_logic;
SIGNAL \N|Add1~6_combout\ : std_logic;
SIGNAL \N|Add1~10_combout\ : std_logic;
SIGNAL \N|Add1~4_combout\ : std_logic;
SIGNAL \N|NZVC[2]~6_combout\ : std_logic;
SIGNAL \N|Add1~2_combout\ : std_logic;
SIGNAL \N|Add1~0_combout\ : std_logic;
SIGNAL \N|NZVC[2]~5_combout\ : std_logic;
SIGNAL \N|Add0~2_combout\ : std_logic;
SIGNAL \N|Add0~0_combout\ : std_logic;
SIGNAL \N|NZVC[2]~2_combout\ : std_logic;
SIGNAL \N|Add0~10_combout\ : std_logic;
SIGNAL \N|Add0~6_combout\ : std_logic;
SIGNAL \N|Add0~4_combout\ : std_logic;
SIGNAL \N|Add0~8_combout\ : std_logic;
SIGNAL \N|NZVC[2]~3_combout\ : std_logic;
SIGNAL \N|Add0~12_combout\ : std_logic;
SIGNAL \N|NZVC[2]~4_combout\ : std_logic;
SIGNAL \N|Add1~12_combout\ : std_logic;
SIGNAL \N|NZVC[2]~7_combout\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \S0|Mux6~0_combout\ : std_logic;
SIGNAL \S0|Mux5~0_combout\ : std_logic;
SIGNAL \S0|Mux4~0_combout\ : std_logic;
SIGNAL \S0|Mux3~0_combout\ : std_logic;
SIGNAL \S0|Mux2~0_combout\ : std_logic;
SIGNAL \S0|Mux1~0_combout\ : std_logic;
SIGNAL \S0|Mux0~0_combout\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \N|Add0|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \S1|Mux6~0_combout\ : std_logic;
SIGNAL \S1|Mux5~0_combout\ : std_logic;
SIGNAL \S1|Mux4~0_combout\ : std_logic;
SIGNAL \S1|Mux3~0_combout\ : std_logic;
SIGNAL \S1|Mux2~0_combout\ : std_logic;
SIGNAL \S1|Mux1~0_combout\ : std_logic;
SIGNAL \S1|Mux0~0_combout\ : std_logic;
SIGNAL \N|ALU_Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \N|NZVC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \S0|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_Sel <= ALU_Sel;
NZVC <= ww_NZVC;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\N|Equal0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \N|Equal0~1_combout\);
\S1|ALT_INV_Mux0~0_combout\ <= NOT \S1|Mux0~0_combout\;
\S0|ALT_INV_Mux0~0_combout\ <= NOT \S0|Mux0~0_combout\;

-- Location: IOOBUF_X0_Y20_N9
\NZVC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N|NZVC\(0),
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\NZVC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N|NZVC\(1),
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\NZVC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N|NZVC\(2),
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\NZVC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N|NZVC\(3),
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOIBUF_X30_Y0_N8
\ALU_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: LCCOMB_X1_Y25_N12
\N|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Equal0~0_combout\ = (!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \N|Equal0~0_combout\);

-- Location: IOIBUF_X23_Y0_N1
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X5_Y25_N8
\N|Add0|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|_~0_combout\ = \B[7]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \B[7]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \N|Add0|auto_generated|_~0_combout\);

-- Location: IOIBUF_X0_Y26_N8
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X5_Y25_N26
\N|Add0|auto_generated|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|_~1_combout\ = \B[6]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \N|Add0|auto_generated|_~1_combout\);

-- Location: IOIBUF_X0_Y25_N15
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X5_Y25_N28
\N|Add0|auto_generated|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|_~2_combout\ = \B[5]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \N|Add0|auto_generated|_~2_combout\);

-- Location: IOIBUF_X0_Y22_N15
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X5_Y25_N30
\N|Add0|auto_generated|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|_~3_combout\ = \B[4]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \N|Add0|auto_generated|_~3_combout\);

-- Location: IOIBUF_X0_Y23_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X5_Y25_N4
\N|Add0|auto_generated|_~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|_~4_combout\ = \B[3]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \N|Add0|auto_generated|_~4_combout\);

-- Location: IOIBUF_X9_Y0_N29
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X5_Y25_N2
\N|Add0|auto_generated|_~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|_~5_combout\ = \B[2]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \N|Add0|auto_generated|_~5_combout\);

-- Location: IOIBUF_X0_Y25_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X5_Y25_N0
\N|Add0|auto_generated|_~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|_~6_combout\ = \B[1]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \N|Add0|auto_generated|_~6_combout\);

-- Location: IOIBUF_X0_Y27_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X5_Y25_N6
\N|Add0|auto_generated|_~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|_~7_combout\ = \B[0]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \N|Add0|auto_generated|_~7_combout\);

-- Location: LCCOMB_X6_Y25_N4
\N|Add0|auto_generated|result_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|result_int[0]~1_cout\ = CARRY(!\N|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|Equal0~0_combout\,
	datad => VCC,
	cout => \N|Add0|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X6_Y25_N6
\N|Add0|auto_generated|result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|result_int[1]~2_combout\ = (\A[0]~input_o\ & ((\N|Add0|auto_generated|_~7_combout\ & (!\N|Add0|auto_generated|result_int[0]~1_cout\)) # (!\N|Add0|auto_generated|_~7_combout\ & (\N|Add0|auto_generated|result_int[0]~1_cout\ & VCC)))) 
-- # (!\A[0]~input_o\ & ((\N|Add0|auto_generated|_~7_combout\ & ((\N|Add0|auto_generated|result_int[0]~1_cout\) # (GND))) # (!\N|Add0|auto_generated|_~7_combout\ & (!\N|Add0|auto_generated|result_int[0]~1_cout\))))
-- \N|Add0|auto_generated|result_int[1]~3\ = CARRY((\A[0]~input_o\ & (\N|Add0|auto_generated|_~7_combout\ & !\N|Add0|auto_generated|result_int[0]~1_cout\)) # (!\A[0]~input_o\ & ((\N|Add0|auto_generated|_~7_combout\) # 
-- (!\N|Add0|auto_generated|result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \N|Add0|auto_generated|_~7_combout\,
	datad => VCC,
	cin => \N|Add0|auto_generated|result_int[0]~1_cout\,
	combout => \N|Add0|auto_generated|result_int[1]~2_combout\,
	cout => \N|Add0|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X6_Y25_N8
\N|Add0|auto_generated|result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|result_int[2]~4_combout\ = ((\N|Add0|auto_generated|_~6_combout\ $ (\A[1]~input_o\ $ (\N|Add0|auto_generated|result_int[1]~3\)))) # (GND)
-- \N|Add0|auto_generated|result_int[2]~5\ = CARRY((\N|Add0|auto_generated|_~6_combout\ & (\A[1]~input_o\ & !\N|Add0|auto_generated|result_int[1]~3\)) # (!\N|Add0|auto_generated|_~6_combout\ & ((\A[1]~input_o\) # (!\N|Add0|auto_generated|result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N|Add0|auto_generated|_~6_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \N|Add0|auto_generated|result_int[1]~3\,
	combout => \N|Add0|auto_generated|result_int[2]~4_combout\,
	cout => \N|Add0|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X6_Y25_N10
\N|Add0|auto_generated|result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|result_int[3]~6_combout\ = (\N|Add0|auto_generated|_~5_combout\ & ((\A[2]~input_o\ & (!\N|Add0|auto_generated|result_int[2]~5\)) # (!\A[2]~input_o\ & ((\N|Add0|auto_generated|result_int[2]~5\) # (GND))))) # 
-- (!\N|Add0|auto_generated|_~5_combout\ & ((\A[2]~input_o\ & (\N|Add0|auto_generated|result_int[2]~5\ & VCC)) # (!\A[2]~input_o\ & (!\N|Add0|auto_generated|result_int[2]~5\))))
-- \N|Add0|auto_generated|result_int[3]~7\ = CARRY((\N|Add0|auto_generated|_~5_combout\ & ((!\N|Add0|auto_generated|result_int[2]~5\) # (!\A[2]~input_o\))) # (!\N|Add0|auto_generated|_~5_combout\ & (!\A[2]~input_o\ & 
-- !\N|Add0|auto_generated|result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N|Add0|auto_generated|_~5_combout\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \N|Add0|auto_generated|result_int[2]~5\,
	combout => \N|Add0|auto_generated|result_int[3]~6_combout\,
	cout => \N|Add0|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X6_Y25_N12
\N|Add0|auto_generated|result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|result_int[4]~8_combout\ = ((\A[3]~input_o\ $ (\N|Add0|auto_generated|_~4_combout\ $ (\N|Add0|auto_generated|result_int[3]~7\)))) # (GND)
-- \N|Add0|auto_generated|result_int[4]~9\ = CARRY((\A[3]~input_o\ & ((!\N|Add0|auto_generated|result_int[3]~7\) # (!\N|Add0|auto_generated|_~4_combout\))) # (!\A[3]~input_o\ & (!\N|Add0|auto_generated|_~4_combout\ & 
-- !\N|Add0|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \N|Add0|auto_generated|_~4_combout\,
	datad => VCC,
	cin => \N|Add0|auto_generated|result_int[3]~7\,
	combout => \N|Add0|auto_generated|result_int[4]~8_combout\,
	cout => \N|Add0|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X6_Y25_N14
\N|Add0|auto_generated|result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|result_int[5]~10_combout\ = (\A[4]~input_o\ & ((\N|Add0|auto_generated|_~3_combout\ & (!\N|Add0|auto_generated|result_int[4]~9\)) # (!\N|Add0|auto_generated|_~3_combout\ & (\N|Add0|auto_generated|result_int[4]~9\ & VCC)))) # 
-- (!\A[4]~input_o\ & ((\N|Add0|auto_generated|_~3_combout\ & ((\N|Add0|auto_generated|result_int[4]~9\) # (GND))) # (!\N|Add0|auto_generated|_~3_combout\ & (!\N|Add0|auto_generated|result_int[4]~9\))))
-- \N|Add0|auto_generated|result_int[5]~11\ = CARRY((\A[4]~input_o\ & (\N|Add0|auto_generated|_~3_combout\ & !\N|Add0|auto_generated|result_int[4]~9\)) # (!\A[4]~input_o\ & ((\N|Add0|auto_generated|_~3_combout\) # 
-- (!\N|Add0|auto_generated|result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \N|Add0|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \N|Add0|auto_generated|result_int[4]~9\,
	combout => \N|Add0|auto_generated|result_int[5]~10_combout\,
	cout => \N|Add0|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X6_Y25_N16
\N|Add0|auto_generated|result_int[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|result_int[6]~12_combout\ = ((\N|Add0|auto_generated|_~2_combout\ $ (\A[5]~input_o\ $ (\N|Add0|auto_generated|result_int[5]~11\)))) # (GND)
-- \N|Add0|auto_generated|result_int[6]~13\ = CARRY((\N|Add0|auto_generated|_~2_combout\ & (\A[5]~input_o\ & !\N|Add0|auto_generated|result_int[5]~11\)) # (!\N|Add0|auto_generated|_~2_combout\ & ((\A[5]~input_o\) # 
-- (!\N|Add0|auto_generated|result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N|Add0|auto_generated|_~2_combout\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \N|Add0|auto_generated|result_int[5]~11\,
	combout => \N|Add0|auto_generated|result_int[6]~12_combout\,
	cout => \N|Add0|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X6_Y25_N18
\N|Add0|auto_generated|result_int[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|result_int[7]~14_combout\ = (\N|Add0|auto_generated|_~1_combout\ & ((\A[6]~input_o\ & (!\N|Add0|auto_generated|result_int[6]~13\)) # (!\A[6]~input_o\ & ((\N|Add0|auto_generated|result_int[6]~13\) # (GND))))) # 
-- (!\N|Add0|auto_generated|_~1_combout\ & ((\A[6]~input_o\ & (\N|Add0|auto_generated|result_int[6]~13\ & VCC)) # (!\A[6]~input_o\ & (!\N|Add0|auto_generated|result_int[6]~13\))))
-- \N|Add0|auto_generated|result_int[7]~15\ = CARRY((\N|Add0|auto_generated|_~1_combout\ & ((!\N|Add0|auto_generated|result_int[6]~13\) # (!\A[6]~input_o\))) # (!\N|Add0|auto_generated|_~1_combout\ & (!\A[6]~input_o\ & 
-- !\N|Add0|auto_generated|result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N|Add0|auto_generated|_~1_combout\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \N|Add0|auto_generated|result_int[6]~13\,
	combout => \N|Add0|auto_generated|result_int[7]~14_combout\,
	cout => \N|Add0|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X6_Y25_N20
\N|Add0|auto_generated|result_int[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|result_int[8]~16_combout\ = ((\N|Add0|auto_generated|_~0_combout\ $ (\A[7]~input_o\ $ (\N|Add0|auto_generated|result_int[7]~15\)))) # (GND)
-- \N|Add0|auto_generated|result_int[8]~17\ = CARRY((\N|Add0|auto_generated|_~0_combout\ & (\A[7]~input_o\ & !\N|Add0|auto_generated|result_int[7]~15\)) # (!\N|Add0|auto_generated|_~0_combout\ & ((\A[7]~input_o\) # 
-- (!\N|Add0|auto_generated|result_int[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N|Add0|auto_generated|_~0_combout\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \N|Add0|auto_generated|result_int[7]~15\,
	combout => \N|Add0|auto_generated|result_int[8]~16_combout\,
	cout => \N|Add0|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X6_Y25_N22
\N|Add0|auto_generated|result_int[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0|auto_generated|result_int[9]~18_combout\ = \N|Equal0~0_combout\ $ (!\N|Add0|auto_generated|result_int[8]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \N|Equal0~0_combout\,
	cin => \N|Add0|auto_generated|result_int[8]~17\,
	combout => \N|Add0|auto_generated|result_int[9]~18_combout\);

-- Location: LCCOMB_X1_Y25_N8
\N|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Equal0~1_combout\ = (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \N|Equal0~1_combout\);

-- Location: CLKCTRL_G0
\N|Equal0~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \N|Equal0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \N|Equal0~1clkctrl_outclk\);

-- Location: LCCOMB_X6_Y25_N0
\N|NZVC[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|NZVC\(0) = (GLOBAL(\N|Equal0~1clkctrl_outclk\) & ((\N|Add0|auto_generated|result_int[9]~18_combout\))) # (!GLOBAL(\N|Equal0~1clkctrl_outclk\) & (\N|NZVC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \N|NZVC\(0),
	datac => \N|Add0|auto_generated|result_int[9]~18_combout\,
	datad => \N|Equal0~1clkctrl_outclk\,
	combout => \N|NZVC\(0));

-- Location: LCCOMB_X5_Y25_N10
\N|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (VCC))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & VCC))
-- \N|Add0~1\ = CARRY((\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \N|Add0~0_combout\,
	cout => \N|Add0~1\);

-- Location: LCCOMB_X5_Y25_N12
\N|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\N|Add0~1\ & VCC)) # (!\A[1]~input_o\ & (!\N|Add0~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\N|Add0~1\)) # (!\A[1]~input_o\ & ((\N|Add0~1\) # (GND)))))
-- \N|Add0~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\N|Add0~1\)) # (!\B[1]~input_o\ & ((!\N|Add0~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \N|Add0~1\,
	combout => \N|Add0~2_combout\,
	cout => \N|Add0~3\);

-- Location: LCCOMB_X5_Y25_N14
\N|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\N|Add0~3\)))) # (GND)
-- \N|Add0~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\N|Add0~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\N|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \N|Add0~3\,
	combout => \N|Add0~4_combout\,
	cout => \N|Add0~5\);

-- Location: LCCOMB_X5_Y25_N16
\N|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\N|Add0~5\ & VCC)) # (!\B[3]~input_o\ & (!\N|Add0~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\N|Add0~5\)) # (!\B[3]~input_o\ & ((\N|Add0~5\) # (GND)))))
-- \N|Add0~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\N|Add0~5\)) # (!\A[3]~input_o\ & ((!\N|Add0~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \N|Add0~5\,
	combout => \N|Add0~6_combout\,
	cout => \N|Add0~7\);

-- Location: LCCOMB_X5_Y25_N18
\N|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (!\N|Add0~7\)))) # (GND)
-- \N|Add0~9\ = CARRY((\B[4]~input_o\ & ((\A[4]~input_o\) # (!\N|Add0~7\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & !\N|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \N|Add0~7\,
	combout => \N|Add0~8_combout\,
	cout => \N|Add0~9\);

-- Location: LCCOMB_X5_Y25_N20
\N|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (\N|Add0~9\ & VCC)) # (!\A[5]~input_o\ & (!\N|Add0~9\)))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (!\N|Add0~9\)) # (!\A[5]~input_o\ & ((\N|Add0~9\) # (GND)))))
-- \N|Add0~11\ = CARRY((\B[5]~input_o\ & (!\A[5]~input_o\ & !\N|Add0~9\)) # (!\B[5]~input_o\ & ((!\N|Add0~9\) # (!\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \N|Add0~9\,
	combout => \N|Add0~10_combout\,
	cout => \N|Add0~11\);

-- Location: LCCOMB_X5_Y25_N22
\N|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0~12_combout\ = ((\B[6]~input_o\ $ (\A[6]~input_o\ $ (!\N|Add0~11\)))) # (GND)
-- \N|Add0~13\ = CARRY((\B[6]~input_o\ & ((\A[6]~input_o\) # (!\N|Add0~11\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & !\N|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \N|Add0~11\,
	combout => \N|Add0~12_combout\,
	cout => \N|Add0~13\);

-- Location: LCCOMB_X5_Y25_N24
\N|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add0~14_combout\ = \A[7]~input_o\ $ (\N|Add0~13\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \N|Add0~13\,
	combout => \N|Add0~14_combout\);

-- Location: LCCOMB_X8_Y25_N12
\N|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add1~0_combout\ = (\A[0]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \N|Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \N|Add1~0_combout\,
	cout => \N|Add1~1\);

-- Location: LCCOMB_X8_Y25_N14
\N|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add1~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (!\N|Add1~1\)) # (!\A[1]~input_o\ & ((\N|Add1~1\) # (GND))))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (\N|Add1~1\ & VCC)) # (!\A[1]~input_o\ & (!\N|Add1~1\))))
-- \N|Add1~3\ = CARRY((\B[1]~input_o\ & ((!\N|Add1~1\) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (!\A[1]~input_o\ & !\N|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \N|Add1~1\,
	combout => \N|Add1~2_combout\,
	cout => \N|Add1~3\);

-- Location: LCCOMB_X8_Y25_N16
\N|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add1~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (\N|Add1~3\)))) # (GND)
-- \N|Add1~5\ = CARRY((\B[2]~input_o\ & (\A[2]~input_o\ & !\N|Add1~3\)) # (!\B[2]~input_o\ & ((\A[2]~input_o\) # (!\N|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \N|Add1~3\,
	combout => \N|Add1~4_combout\,
	cout => \N|Add1~5\);

-- Location: LCCOMB_X8_Y25_N18
\N|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add1~6_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ & (!\N|Add1~5\)) # (!\A[3]~input_o\ & ((\N|Add1~5\) # (GND))))) # (!\B[3]~input_o\ & ((\A[3]~input_o\ & (\N|Add1~5\ & VCC)) # (!\A[3]~input_o\ & (!\N|Add1~5\))))
-- \N|Add1~7\ = CARRY((\B[3]~input_o\ & ((!\N|Add1~5\) # (!\A[3]~input_o\))) # (!\B[3]~input_o\ & (!\A[3]~input_o\ & !\N|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \N|Add1~5\,
	combout => \N|Add1~6_combout\,
	cout => \N|Add1~7\);

-- Location: LCCOMB_X8_Y25_N20
\N|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add1~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (\N|Add1~7\)))) # (GND)
-- \N|Add1~9\ = CARRY((\B[4]~input_o\ & (\A[4]~input_o\ & !\N|Add1~7\)) # (!\B[4]~input_o\ & ((\A[4]~input_o\) # (!\N|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \N|Add1~7\,
	combout => \N|Add1~8_combout\,
	cout => \N|Add1~9\);

-- Location: LCCOMB_X8_Y25_N22
\N|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add1~10_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\ & (!\N|Add1~9\)) # (!\B[5]~input_o\ & (\N|Add1~9\ & VCC)))) # (!\A[5]~input_o\ & ((\B[5]~input_o\ & ((\N|Add1~9\) # (GND))) # (!\B[5]~input_o\ & (!\N|Add1~9\))))
-- \N|Add1~11\ = CARRY((\A[5]~input_o\ & (\B[5]~input_o\ & !\N|Add1~9\)) # (!\A[5]~input_o\ & ((\B[5]~input_o\) # (!\N|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \N|Add1~9\,
	combout => \N|Add1~10_combout\,
	cout => \N|Add1~11\);

-- Location: LCCOMB_X8_Y25_N24
\N|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add1~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (\N|Add1~11\)))) # (GND)
-- \N|Add1~13\ = CARRY((\A[6]~input_o\ & ((!\N|Add1~11\) # (!\B[6]~input_o\))) # (!\A[6]~input_o\ & (!\B[6]~input_o\ & !\N|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \N|Add1~11\,
	combout => \N|Add1~12_combout\,
	cout => \N|Add1~13\);

-- Location: LCCOMB_X8_Y25_N26
\N|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|Add1~14_combout\ = \A[7]~input_o\ $ (\N|Add1~13\ $ (!\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \N|Add1~13\,
	combout => \N|Add1~14_combout\);

-- Location: LCCOMB_X7_Y25_N12
\N|NZVC[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|NZVC[1]~0_combout\ = (\ALU_Sel[0]~input_o\ & ((\N|Add1~14_combout\))) # (!\ALU_Sel[0]~input_o\ & (\N|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[0]~input_o\,
	datac => \N|Add0~14_combout\,
	datad => \N|Add1~14_combout\,
	combout => \N|NZVC[1]~0_combout\);

-- Location: LCCOMB_X7_Y25_N26
\N|NZVC[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|NZVC[1]~1_combout\ = (\A[7]~input_o\ & ((\N|NZVC[1]~0_combout\) # (!\B[7]~input_o\))) # (!\A[7]~input_o\ & ((\B[7]~input_o\) # (!\N|NZVC[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \N|NZVC[1]~0_combout\,
	combout => \N|NZVC[1]~1_combout\);

-- Location: LCCOMB_X7_Y25_N24
\N|NZVC[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|NZVC\(1) = (GLOBAL(\N|Equal0~1clkctrl_outclk\) & ((!\N|NZVC[1]~1_combout\))) # (!GLOBAL(\N|Equal0~1clkctrl_outclk\) & (\N|NZVC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \N|NZVC\(1),
	datac => \N|NZVC[1]~1_combout\,
	datad => \N|Equal0~1clkctrl_outclk\,
	combout => \N|NZVC\(1));

-- Location: LCCOMB_X8_Y25_N4
\N|NZVC[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|NZVC[2]~6_combout\ = (!\N|Add1~8_combout\ & (!\N|Add1~6_combout\ & (!\N|Add1~10_combout\ & !\N|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|Add1~8_combout\,
	datab => \N|Add1~6_combout\,
	datac => \N|Add1~10_combout\,
	datad => \N|Add1~4_combout\,
	combout => \N|NZVC[2]~6_combout\);

-- Location: LCCOMB_X7_Y25_N28
\N|NZVC[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|NZVC[2]~5_combout\ = (!\N|Add1~14_combout\ & (!\N|Add1~2_combout\ & (!\N|Add1~0_combout\ & \ALU_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|Add1~14_combout\,
	datab => \N|Add1~2_combout\,
	datac => \N|Add1~0_combout\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \N|NZVC[2]~5_combout\);

-- Location: LCCOMB_X4_Y25_N0
\N|NZVC[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|NZVC[2]~2_combout\ = (!\ALU_Sel[0]~input_o\ & (!\N|Add0~2_combout\ & (!\N|Add0~0_combout\ & !\N|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \N|Add0~2_combout\,
	datac => \N|Add0~0_combout\,
	datad => \N|Add0~14_combout\,
	combout => \N|NZVC[2]~2_combout\);

-- Location: LCCOMB_X4_Y25_N22
\N|NZVC[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|NZVC[2]~3_combout\ = (!\N|Add0~10_combout\ & (!\N|Add0~6_combout\ & (!\N|Add0~4_combout\ & !\N|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|Add0~10_combout\,
	datab => \N|Add0~6_combout\,
	datac => \N|Add0~4_combout\,
	datad => \N|Add0~8_combout\,
	combout => \N|NZVC[2]~3_combout\);

-- Location: LCCOMB_X4_Y25_N16
\N|NZVC[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|NZVC[2]~4_combout\ = (\N|NZVC[2]~2_combout\ & (\N|NZVC[2]~3_combout\ & !\N|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \N|NZVC[2]~2_combout\,
	datac => \N|NZVC[2]~3_combout\,
	datad => \N|Add0~12_combout\,
	combout => \N|NZVC[2]~4_combout\);

-- Location: LCCOMB_X7_Y25_N6
\N|NZVC[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|NZVC[2]~7_combout\ = (\N|NZVC[2]~4_combout\) # ((\N|NZVC[2]~6_combout\ & (\N|NZVC[2]~5_combout\ & !\N|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|NZVC[2]~6_combout\,
	datab => \N|NZVC[2]~5_combout\,
	datac => \N|NZVC[2]~4_combout\,
	datad => \N|Add1~12_combout\,
	combout => \N|NZVC[2]~7_combout\);

-- Location: LCCOMB_X7_Y25_N30
\N|NZVC[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|NZVC\(2) = (GLOBAL(\N|Equal0~1clkctrl_outclk\) & (\N|NZVC[2]~7_combout\)) # (!GLOBAL(\N|Equal0~1clkctrl_outclk\) & ((\N|NZVC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|NZVC[2]~7_combout\,
	datac => \N|NZVC\(2),
	datad => \N|Equal0~1clkctrl_outclk\,
	combout => \N|NZVC\(2));

-- Location: LCCOMB_X6_Y25_N30
\N|NZVC[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|NZVC\(3) = (GLOBAL(\N|Equal0~1clkctrl_outclk\) & ((\N|Add0|auto_generated|result_int[8]~16_combout\))) # (!GLOBAL(\N|Equal0~1clkctrl_outclk\) & (\N|NZVC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|NZVC\(3),
	datac => \N|Equal0~1clkctrl_outclk\,
	datad => \N|Add0|auto_generated|result_int[8]~16_combout\,
	combout => \N|NZVC\(3));

-- Location: LCCOMB_X7_Y25_N22
\N|ALU_Result[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|ALU_Result\(1) = (GLOBAL(\N|Equal0~1clkctrl_outclk\) & (\N|Add0|auto_generated|result_int[2]~4_combout\)) # (!GLOBAL(\N|Equal0~1clkctrl_outclk\) & ((\N|ALU_Result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|Add0|auto_generated|result_int[2]~4_combout\,
	datac => \N|ALU_Result\(1),
	datad => \N|Equal0~1clkctrl_outclk\,
	combout => \N|ALU_Result\(1));

-- Location: LCCOMB_X6_Y25_N24
\N|ALU_Result[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|ALU_Result\(3) = (GLOBAL(\N|Equal0~1clkctrl_outclk\) & ((\N|Add0|auto_generated|result_int[4]~8_combout\))) # (!GLOBAL(\N|Equal0~1clkctrl_outclk\) & (\N|ALU_Result\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \N|ALU_Result\(3),
	datac => \N|Add0|auto_generated|result_int[4]~8_combout\,
	datad => \N|Equal0~1clkctrl_outclk\,
	combout => \N|ALU_Result\(3));

-- Location: LCCOMB_X7_Y25_N8
\N|ALU_Result[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|ALU_Result\(2) = (GLOBAL(\N|Equal0~1clkctrl_outclk\) & ((\N|Add0|auto_generated|result_int[3]~6_combout\))) # (!GLOBAL(\N|Equal0~1clkctrl_outclk\) & (\N|ALU_Result\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \N|ALU_Result\(2),
	datac => \N|Equal0~1clkctrl_outclk\,
	datad => \N|Add0|auto_generated|result_int[3]~6_combout\,
	combout => \N|ALU_Result\(2));

-- Location: LCCOMB_X7_Y25_N4
\N|ALU_Result[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|ALU_Result\(0) = (GLOBAL(\N|Equal0~1clkctrl_outclk\) & (\N|Add0|auto_generated|result_int[1]~2_combout\)) # (!GLOBAL(\N|Equal0~1clkctrl_outclk\) & ((\N|ALU_Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \N|Add0|auto_generated|result_int[1]~2_combout\,
	datac => \N|ALU_Result\(0),
	datad => \N|Equal0~1clkctrl_outclk\,
	combout => \N|ALU_Result\(0));

-- Location: LCCOMB_X20_Y28_N0
\S0|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S0|Mux6~0_combout\ = (\N|ALU_Result\(3) & (\N|ALU_Result\(0) & (\N|ALU_Result\(1) $ (\N|ALU_Result\(2))))) # (!\N|ALU_Result\(3) & (!\N|ALU_Result\(1) & (\N|ALU_Result\(2) $ (\N|ALU_Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(1),
	datab => \N|ALU_Result\(3),
	datac => \N|ALU_Result\(2),
	datad => \N|ALU_Result\(0),
	combout => \S0|Mux6~0_combout\);

-- Location: LCCOMB_X20_Y28_N2
\S0|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S0|Mux5~0_combout\ = (\N|ALU_Result\(1) & ((\N|ALU_Result\(0) & (\N|ALU_Result\(3))) # (!\N|ALU_Result\(0) & ((\N|ALU_Result\(2)))))) # (!\N|ALU_Result\(1) & (\N|ALU_Result\(2) & (\N|ALU_Result\(3) $ (\N|ALU_Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(1),
	datab => \N|ALU_Result\(3),
	datac => \N|ALU_Result\(2),
	datad => \N|ALU_Result\(0),
	combout => \S0|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y28_N4
\S0|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S0|Mux4~0_combout\ = (\N|ALU_Result\(3) & (\N|ALU_Result\(2) & ((\N|ALU_Result\(1)) # (!\N|ALU_Result\(0))))) # (!\N|ALU_Result\(3) & (\N|ALU_Result\(1) & (!\N|ALU_Result\(2) & !\N|ALU_Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(1),
	datab => \N|ALU_Result\(3),
	datac => \N|ALU_Result\(2),
	datad => \N|ALU_Result\(0),
	combout => \S0|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y28_N10
\S0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S0|Mux3~0_combout\ = (\N|ALU_Result\(1) & ((\N|ALU_Result\(2) & ((\N|ALU_Result\(0)))) # (!\N|ALU_Result\(2) & (\N|ALU_Result\(3) & !\N|ALU_Result\(0))))) # (!\N|ALU_Result\(1) & (!\N|ALU_Result\(3) & (\N|ALU_Result\(2) $ (\N|ALU_Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(1),
	datab => \N|ALU_Result\(3),
	datac => \N|ALU_Result\(2),
	datad => \N|ALU_Result\(0),
	combout => \S0|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y28_N16
\S0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S0|Mux2~0_combout\ = (\N|ALU_Result\(1) & (!\N|ALU_Result\(3) & ((\N|ALU_Result\(0))))) # (!\N|ALU_Result\(1) & ((\N|ALU_Result\(2) & (!\N|ALU_Result\(3))) # (!\N|ALU_Result\(2) & ((\N|ALU_Result\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(1),
	datab => \N|ALU_Result\(3),
	datac => \N|ALU_Result\(2),
	datad => \N|ALU_Result\(0),
	combout => \S0|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y28_N26
\S0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S0|Mux1~0_combout\ = (\N|ALU_Result\(1) & (!\N|ALU_Result\(3) & ((\N|ALU_Result\(0)) # (!\N|ALU_Result\(2))))) # (!\N|ALU_Result\(1) & (\N|ALU_Result\(0) & (\N|ALU_Result\(3) $ (!\N|ALU_Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(1),
	datab => \N|ALU_Result\(3),
	datac => \N|ALU_Result\(2),
	datad => \N|ALU_Result\(0),
	combout => \S0|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y28_N12
\S0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S0|Mux0~0_combout\ = (\N|ALU_Result\(0) & ((\N|ALU_Result\(3)) # (\N|ALU_Result\(1) $ (\N|ALU_Result\(2))))) # (!\N|ALU_Result\(0) & ((\N|ALU_Result\(1)) # (\N|ALU_Result\(3) $ (\N|ALU_Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(1),
	datab => \N|ALU_Result\(3),
	datac => \N|ALU_Result\(2),
	datad => \N|ALU_Result\(0),
	combout => \S0|Mux0~0_combout\);

-- Location: LCCOMB_X6_Y25_N2
\N|ALU_Result[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|ALU_Result\(4) = (GLOBAL(\N|Equal0~1clkctrl_outclk\) & ((\N|Add0|auto_generated|result_int[5]~10_combout\))) # (!GLOBAL(\N|Equal0~1clkctrl_outclk\) & (\N|ALU_Result\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \N|ALU_Result\(4),
	datac => \N|Add0|auto_generated|result_int[5]~10_combout\,
	datad => \N|Equal0~1clkctrl_outclk\,
	combout => \N|ALU_Result\(4));

-- Location: LCCOMB_X6_Y25_N26
\N|ALU_Result[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|ALU_Result\(6) = (GLOBAL(\N|Equal0~1clkctrl_outclk\) & ((\N|Add0|auto_generated|result_int[7]~14_combout\))) # (!GLOBAL(\N|Equal0~1clkctrl_outclk\) & (\N|ALU_Result\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(6),
	datac => \N|Equal0~1clkctrl_outclk\,
	datad => \N|Add0|auto_generated|result_int[7]~14_combout\,
	combout => \N|ALU_Result\(6));

-- Location: LCCOMB_X6_Y25_N28
\N|ALU_Result[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \N|ALU_Result\(5) = (GLOBAL(\N|Equal0~1clkctrl_outclk\) & (\N|Add0|auto_generated|result_int[6]~12_combout\)) # (!GLOBAL(\N|Equal0~1clkctrl_outclk\) & ((\N|ALU_Result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \N|Add0|auto_generated|result_int[6]~12_combout\,
	datac => \N|ALU_Result\(5),
	datad => \N|Equal0~1clkctrl_outclk\,
	combout => \N|ALU_Result\(5));

-- Location: LCCOMB_X12_Y25_N12
\S1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S1|Mux6~0_combout\ = (\N|ALU_Result\(6) & (!\N|ALU_Result\(5) & (\N|ALU_Result\(4) $ (!\N|NZVC\(3))))) # (!\N|ALU_Result\(6) & (\N|ALU_Result\(4) & (\N|NZVC\(3) $ (!\N|ALU_Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(4),
	datab => \N|ALU_Result\(6),
	datac => \N|NZVC\(3),
	datad => \N|ALU_Result\(5),
	combout => \S1|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y25_N18
\S1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S1|Mux5~0_combout\ = (\N|NZVC\(3) & ((\N|ALU_Result\(4) & ((\N|ALU_Result\(5)))) # (!\N|ALU_Result\(4) & (\N|ALU_Result\(6))))) # (!\N|NZVC\(3) & (\N|ALU_Result\(6) & (\N|ALU_Result\(4) $ (\N|ALU_Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(4),
	datab => \N|ALU_Result\(6),
	datac => \N|NZVC\(3),
	datad => \N|ALU_Result\(5),
	combout => \S1|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y25_N24
\S1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S1|Mux4~0_combout\ = (\N|ALU_Result\(6) & (\N|NZVC\(3) & ((\N|ALU_Result\(5)) # (!\N|ALU_Result\(4))))) # (!\N|ALU_Result\(6) & (!\N|ALU_Result\(4) & (!\N|NZVC\(3) & \N|ALU_Result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(4),
	datab => \N|ALU_Result\(6),
	datac => \N|NZVC\(3),
	datad => \N|ALU_Result\(5),
	combout => \S1|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y25_N2
\S1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S1|Mux3~0_combout\ = (\N|ALU_Result\(5) & ((\N|ALU_Result\(4) & (\N|ALU_Result\(6))) # (!\N|ALU_Result\(4) & (!\N|ALU_Result\(6) & \N|NZVC\(3))))) # (!\N|ALU_Result\(5) & (!\N|NZVC\(3) & (\N|ALU_Result\(4) $ (\N|ALU_Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(4),
	datab => \N|ALU_Result\(6),
	datac => \N|NZVC\(3),
	datad => \N|ALU_Result\(5),
	combout => \S1|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y25_N8
\S1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S1|Mux2~0_combout\ = (\N|ALU_Result\(5) & (\N|ALU_Result\(4) & ((!\N|NZVC\(3))))) # (!\N|ALU_Result\(5) & ((\N|ALU_Result\(6) & ((!\N|NZVC\(3)))) # (!\N|ALU_Result\(6) & (\N|ALU_Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(4),
	datab => \N|ALU_Result\(6),
	datac => \N|NZVC\(3),
	datad => \N|ALU_Result\(5),
	combout => \S1|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y25_N10
\S1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S1|Mux1~0_combout\ = (\N|ALU_Result\(4) & (\N|NZVC\(3) $ (((\N|ALU_Result\(5)) # (!\N|ALU_Result\(6)))))) # (!\N|ALU_Result\(4) & (!\N|ALU_Result\(6) & (!\N|NZVC\(3) & \N|ALU_Result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(4),
	datab => \N|ALU_Result\(6),
	datac => \N|NZVC\(3),
	datad => \N|ALU_Result\(5),
	combout => \S1|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y25_N4
\S1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S1|Mux0~0_combout\ = (\N|ALU_Result\(4) & ((\N|NZVC\(3)) # (\N|ALU_Result\(6) $ (\N|ALU_Result\(5))))) # (!\N|ALU_Result\(4) & ((\N|ALU_Result\(5)) # (\N|ALU_Result\(6) $ (\N|NZVC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N|ALU_Result\(4),
	datab => \N|ALU_Result\(6),
	datac => \N|NZVC\(3),
	datad => \N|ALU_Result\(5),
	combout => \S1|Mux0~0_combout\);

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;
END structure;


