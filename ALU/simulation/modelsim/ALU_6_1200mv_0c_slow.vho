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

-- DATE "05/25/2022 18:15:38"

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

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	NZVC : OUT std_logic_vector(3 DOWNTO 0);
	ALU_Result : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- NZVC[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[5]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[7]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
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
SIGNAL ww_ALU_Result : std_logic_vector(7 DOWNTO 0);
SIGNAL \Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \ALU_Result[0]~output_o\ : std_logic;
SIGNAL \ALU_Result[1]~output_o\ : std_logic;
SIGNAL \ALU_Result[2]~output_o\ : std_logic;
SIGNAL \ALU_Result[3]~output_o\ : std_logic;
SIGNAL \ALU_Result[4]~output_o\ : std_logic;
SIGNAL \ALU_Result[5]~output_o\ : std_logic;
SIGNAL \ALU_Result[6]~output_o\ : std_logic;
SIGNAL \ALU_Result[7]~output_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \ALU_PROCESS~0_combout\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \NZVC[1]$latch~combout\ : std_logic;
SIGNAL \NZVC[3]$latch~combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \ALU_Result[0]$latch~combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \ALU_Result[1]$latch~combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \ALU_Result[2]$latch~combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \ALU_Result[3]$latch~combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \ALU_Result[4]$latch~combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \ALU_Result[5]$latch~combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \ALU_Result[6]$latch~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_Sel <= ALU_Sel;
NZVC <= ww_NZVC;
ALU_Result <= ww_ALU_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Equal0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal0~0_combout\);

-- Location: IOOBUF_X5_Y29_N23
\NZVC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\NZVC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[1]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\NZVC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\NZVC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[3]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\ALU_Result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[0]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\ALU_Result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[1]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\ALU_Result[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[2]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\ALU_Result[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[3]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\ALU_Result[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[4]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[4]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\ALU_Result[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[5]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\ALU_Result[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[6]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\ALU_Result[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[3]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[7]~output_o\);

-- Location: IOIBUF_X0_Y5_N22
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N4
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X1_Y4_N6
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add0~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add0~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add0~1\)) # (!\A[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add0~1\)) # (!\B[1]~input_o\ & ((!\Add0~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X1_Y4_N8
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\Add0~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X1_Y4_N10
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\Add0~5\ & VCC)) # (!\B[3]~input_o\ & (!\Add0~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\Add0~5\)) # (!\B[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\Add0~5\)) # (!\A[3]~input_o\ & ((!\Add0~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X1_Y4_N12
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\B[4]~input_o\ & ((\A[4]~input_o\) # (!\Add0~7\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X1_Y4_N14
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\ & (\Add0~9\ & VCC)) # (!\B[5]~input_o\ & (!\Add0~9\)))) # (!\A[5]~input_o\ & ((\B[5]~input_o\ & (!\Add0~9\)) # (!\B[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\A[5]~input_o\ & (!\B[5]~input_o\ & !\Add0~9\)) # (!\A[5]~input_o\ & ((!\Add0~9\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X1_Y4_N16
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\A[6]~input_o\ & ((\B[6]~input_o\) # (!\Add0~11\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X1_Y4_N18
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \A[7]~input_o\ $ (\Add0~13\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X1_Y4_N0
\ALU_PROCESS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_PROCESS~0_combout\ = (\A[7]~input_o\ & ((\Add0~14_combout\) # (!\B[7]~input_o\))) # (!\A[7]~input_o\ & ((\B[7]~input_o\) # (!\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \Add0~14_combout\,
	combout => \ALU_PROCESS~0_combout\);

-- Location: IOIBUF_X0_Y12_N22
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\ALU_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: LCCOMB_X1_Y14_N16
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: CLKCTRL_G2
\Equal0~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal0~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y4_N26
\NZVC[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[1]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (!\ALU_PROCESS~0_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\NZVC[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_PROCESS~0_combout\,
	datac => \NZVC[1]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \NZVC[1]$latch~combout\);

-- Location: LCCOMB_X1_Y4_N20
\NZVC[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC[3]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\Add0~14_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\NZVC[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datac => \NZVC[3]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \NZVC[3]$latch~combout\);

-- Location: LCCOMB_X1_Y4_N22
\ALU_Result[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[0]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\Add0~0_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\ALU_Result[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \ALU_Result[0]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \ALU_Result[0]$latch~combout\);

-- Location: LCCOMB_X1_Y4_N24
\ALU_Result[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[1]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\Add0~2_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\ALU_Result[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \ALU_Result[1]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \ALU_Result[1]$latch~combout\);

-- Location: LCCOMB_X2_Y4_N0
\ALU_Result[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[2]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\Add0~4_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\ALU_Result[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => \Equal0~0clkctrl_outclk\,
	datad => \ALU_Result[2]$latch~combout\,
	combout => \ALU_Result[2]$latch~combout\);

-- Location: LCCOMB_X1_Y4_N2
\ALU_Result[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[3]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\Add0~6_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\ALU_Result[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \ALU_Result[3]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \ALU_Result[3]$latch~combout\);

-- Location: LCCOMB_X4_Y4_N0
\ALU_Result[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[4]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\Add0~8_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\ALU_Result[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datac => \Equal0~0clkctrl_outclk\,
	datad => \ALU_Result[4]$latch~combout\,
	combout => \ALU_Result[4]$latch~combout\);

-- Location: LCCOMB_X1_Y4_N28
\ALU_Result[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[5]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\Add0~10_combout\))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (\ALU_Result[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Result[5]$latch~combout\,
	datac => \Add0~10_combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \ALU_Result[5]$latch~combout\);

-- Location: LCCOMB_X1_Y4_N30
\ALU_Result[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_Result[6]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\Add0~12_combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\ALU_Result[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datac => \ALU_Result[6]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \ALU_Result[6]$latch~combout\);

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;

ww_ALU_Result(0) <= \ALU_Result[0]~output_o\;

ww_ALU_Result(1) <= \ALU_Result[1]~output_o\;

ww_ALU_Result(2) <= \ALU_Result[2]~output_o\;

ww_ALU_Result(3) <= \ALU_Result[3]~output_o\;

ww_ALU_Result(4) <= \ALU_Result[4]~output_o\;

ww_ALU_Result(5) <= \ALU_Result[5]~output_o\;

ww_ALU_Result(6) <= \ALU_Result[6]~output_o\;

ww_ALU_Result(7) <= \ALU_Result[7]~output_o\;
END structure;


