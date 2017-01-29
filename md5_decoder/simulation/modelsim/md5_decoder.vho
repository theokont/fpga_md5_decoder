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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/26/2017 03:38:39"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	md5_decoder IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	toggle1 : IN std_logic;
	toggle2 : IN std_logic;
	toggle3 : IN std_logic;
	toggle4 : IN std_logic;
	found1 : OUT std_logic;
	found2 : OUT std_logic;
	found3 : OUT std_logic;
	found4 : OUT std_logic;
	hex00 : OUT std_logic;
	hex01 : OUT std_logic;
	hex02 : OUT std_logic;
	hex03 : OUT std_logic;
	hex04 : OUT std_logic;
	hex05 : OUT std_logic;
	hex06 : OUT std_logic;
	hex10 : OUT std_logic;
	hex11 : OUT std_logic;
	hex12 : OUT std_logic;
	hex13 : OUT std_logic;
	hex14 : OUT std_logic;
	hex15 : OUT std_logic;
	hex16 : OUT std_logic
	);
END md5_decoder;

-- Design Ports Information
-- found1	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- found2	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- found3	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- found4	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex00	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex01	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex02	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex03	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex04	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex05	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex06	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex10	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex11	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex12	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex13	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex14	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex15	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex16	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- toggle2	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- toggle3	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- toggle1	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- toggle4	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF md5_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_toggle1 : std_logic;
SIGNAL ww_toggle2 : std_logic;
SIGNAL ww_toggle3 : std_logic;
SIGNAL ww_toggle4 : std_logic;
SIGNAL ww_found1 : std_logic;
SIGNAL ww_found2 : std_logic;
SIGNAL ww_found3 : std_logic;
SIGNAL ww_found4 : std_logic;
SIGNAL ww_hex00 : std_logic;
SIGNAL ww_hex01 : std_logic;
SIGNAL ww_hex02 : std_logic;
SIGNAL ww_hex03 : std_logic;
SIGNAL ww_hex04 : std_logic;
SIGNAL ww_hex05 : std_logic;
SIGNAL ww_hex06 : std_logic;
SIGNAL ww_hex10 : std_logic;
SIGNAL ww_hex11 : std_logic;
SIGNAL ww_hex12 : std_logic;
SIGNAL ww_hex13 : std_logic;
SIGNAL ww_hex14 : std_logic;
SIGNAL ww_hex15 : std_logic;
SIGNAL ww_hex16 : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \toggle2~combout\ : std_logic;
SIGNAL \toggle3~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \m|temp_found1~feeder_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \m|temp_found1~regout\ : std_logic;
SIGNAL \m|temp_found3~feeder_combout\ : std_logic;
SIGNAL \m|temp_found3~regout\ : std_logic;
SIGNAL \m|temp_found4~feeder_combout\ : std_logic;
SIGNAL \m|temp_found4~regout\ : std_logic;
SIGNAL \toggle4~combout\ : std_logic;
SIGNAL \toggle1~combout\ : std_logic;
SIGNAL \m|temp_address1[6]~feeder_combout\ : std_logic;
SIGNAL \m|toggle_address~0_combout\ : std_logic;
SIGNAL \m|temp_address~0_combout\ : std_logic;
SIGNAL \m|temp_address~2_combout\ : std_logic;
SIGNAL \m|temp_address~1_combout\ : std_logic;
SIGNAL \h|temp_hex00~0_combout\ : std_logic;
SIGNAL \h|temp_hex00~regout\ : std_logic;
SIGNAL \h|temp_hex01~0_combout\ : std_logic;
SIGNAL \h|temp_hex01~regout\ : std_logic;
SIGNAL \h|temp_hex02~0_combout\ : std_logic;
SIGNAL \h|temp_hex02~regout\ : std_logic;
SIGNAL \h|temp_hex03~0_combout\ : std_logic;
SIGNAL \h|temp_hex03~regout\ : std_logic;
SIGNAL \m|toggle_address~1_combout\ : std_logic;
SIGNAL \h|temp_hex04~0_combout\ : std_logic;
SIGNAL \h|temp_hex04~regout\ : std_logic;
SIGNAL \h|temp_hex05~0_combout\ : std_logic;
SIGNAL \h|temp_hex05~regout\ : std_logic;
SIGNAL \h|temp_hex06~0_combout\ : std_logic;
SIGNAL \h|temp_hex06~regout\ : std_logic;
SIGNAL \h|temp_hex10~0_combout\ : std_logic;
SIGNAL \h|temp_hex10~regout\ : std_logic;
SIGNAL \h|temp_hex11~regout\ : std_logic;
SIGNAL \h|temp_hex12~0_combout\ : std_logic;
SIGNAL \h|temp_hex12~regout\ : std_logic;
SIGNAL \h|temp_hex13~regout\ : std_logic;
SIGNAL \h|temp_hex14~regout\ : std_logic;
SIGNAL \h|temp_hex15~0_combout\ : std_logic;
SIGNAL \h|temp_hex15~regout\ : std_logic;
SIGNAL \h|temp_hex16~regout\ : std_logic;
SIGNAL \m|temp_address\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \m|temp_address1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \h|ALT_INV_temp_hex15~regout\ : std_logic;
SIGNAL \h|ALT_INV_temp_hex14~regout\ : std_logic;
SIGNAL \h|ALT_INV_temp_hex13~regout\ : std_logic;
SIGNAL \h|ALT_INV_temp_hex12~regout\ : std_logic;
SIGNAL \h|ALT_INV_temp_hex11~regout\ : std_logic;
SIGNAL \h|ALT_INV_temp_hex10~regout\ : std_logic;
SIGNAL \h|ALT_INV_temp_hex05~regout\ : std_logic;
SIGNAL \h|ALT_INV_temp_hex04~regout\ : std_logic;
SIGNAL \h|ALT_INV_temp_hex03~regout\ : std_logic;
SIGNAL \h|ALT_INV_temp_hex02~regout\ : std_logic;
SIGNAL \h|ALT_INV_temp_hex01~regout\ : std_logic;
SIGNAL \h|ALT_INV_temp_hex00~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_toggle1 <= toggle1;
ww_toggle2 <= toggle2;
ww_toggle3 <= toggle3;
ww_toggle4 <= toggle4;
found1 <= ww_found1;
found2 <= ww_found2;
found3 <= ww_found3;
found4 <= ww_found4;
hex00 <= ww_hex00;
hex01 <= ww_hex01;
hex02 <= ww_hex02;
hex03 <= ww_hex03;
hex04 <= ww_hex04;
hex05 <= ww_hex05;
hex06 <= ww_hex06;
hex10 <= ww_hex10;
hex11 <= ww_hex11;
hex12 <= ww_hex12;
hex13 <= ww_hex13;
hex14 <= ww_hex14;
hex15 <= ww_hex15;
hex16 <= ww_hex16;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\h|ALT_INV_temp_hex15~regout\ <= NOT \h|temp_hex15~regout\;
\h|ALT_INV_temp_hex14~regout\ <= NOT \h|temp_hex14~regout\;
\h|ALT_INV_temp_hex13~regout\ <= NOT \h|temp_hex13~regout\;
\h|ALT_INV_temp_hex12~regout\ <= NOT \h|temp_hex12~regout\;
\h|ALT_INV_temp_hex11~regout\ <= NOT \h|temp_hex11~regout\;
\h|ALT_INV_temp_hex10~regout\ <= NOT \h|temp_hex10~regout\;
\h|ALT_INV_temp_hex05~regout\ <= NOT \h|temp_hex05~regout\;
\h|ALT_INV_temp_hex04~regout\ <= NOT \h|temp_hex04~regout\;
\h|ALT_INV_temp_hex03~regout\ <= NOT \h|temp_hex03~regout\;
\h|ALT_INV_temp_hex02~regout\ <= NOT \h|temp_hex02~regout\;
\h|ALT_INV_temp_hex01~regout\ <= NOT \h|temp_hex01~regout\;
\h|ALT_INV_temp_hex00~regout\ <= NOT \h|temp_hex00~regout\;

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\toggle2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_toggle2,
	combout => \toggle2~combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\toggle3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_toggle3,
	combout => \toggle3~combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X49_Y2_N0
\m|temp_found1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \m|temp_found1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \m|temp_found1~feeder_combout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G15
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X49_Y2_N1
\m|temp_found1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m|temp_found1~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m|temp_found1~regout\);

-- Location: LCCOMB_X49_Y10_N16
\m|temp_found3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \m|temp_found3~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \m|temp_found3~feeder_combout\);

-- Location: LCFF_X49_Y10_N17
\m|temp_found3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m|temp_found3~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m|temp_found3~regout\);

-- Location: LCCOMB_X49_Y10_N6
\m|temp_found4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \m|temp_found4~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \m|temp_found4~feeder_combout\);

-- Location: LCFF_X49_Y10_N7
\m|temp_found4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m|temp_found4~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m|temp_found4~regout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\toggle4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_toggle4,
	combout => \toggle4~combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\toggle1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_toggle1,
	combout => \toggle1~combout\);

-- Location: LCCOMB_X2_Y20_N30
\m|temp_address1[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \m|temp_address1[6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \m|temp_address1[6]~feeder_combout\);

-- Location: LCFF_X2_Y20_N31
\m|temp_address1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m|temp_address1[6]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m|temp_address1\(6));

-- Location: LCCOMB_X2_Y20_N28
\m|toggle_address~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m|toggle_address~0_combout\ = (!\toggle2~combout\ & \m|temp_address1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toggle2~combout\,
	datad => \m|temp_address1\(6),
	combout => \m|toggle_address~0_combout\);

-- Location: LCCOMB_X2_Y20_N18
\m|temp_address~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m|temp_address~0_combout\ = (!\toggle4~combout\ & (\m|toggle_address~0_combout\ & (\toggle3~combout\ $ (\toggle1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toggle3~combout\,
	datab => \toggle4~combout\,
	datac => \toggle1~combout\,
	datad => \m|toggle_address~0_combout\,
	combout => \m|temp_address~0_combout\);

-- Location: LCFF_X2_Y20_N19
\m|temp_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m|temp_address~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m|temp_address\(4));

-- Location: LCCOMB_X2_Y20_N16
\m|temp_address~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \m|temp_address~2_combout\ = (\m|toggle_address~0_combout\ & ((\toggle3~combout\ & (!\toggle4~combout\ & !\toggle1~combout\)) # (!\toggle3~combout\ & (\toggle4~combout\ $ (\toggle1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toggle3~combout\,
	datab => \toggle4~combout\,
	datac => \toggle1~combout\,
	datad => \m|toggle_address~0_combout\,
	combout => \m|temp_address~2_combout\);

-- Location: LCFF_X2_Y20_N17
\m|temp_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m|temp_address~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m|temp_address\(2));

-- Location: LCCOMB_X2_Y20_N14
\m|temp_address~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m|temp_address~1_combout\ = (!\toggle3~combout\ & (\m|toggle_address~0_combout\ & (\toggle4~combout\ $ (\toggle1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toggle3~combout\,
	datab => \toggle4~combout\,
	datac => \toggle1~combout\,
	datad => \m|toggle_address~0_combout\,
	combout => \m|temp_address~1_combout\);

-- Location: LCFF_X2_Y20_N15
\m|temp_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m|temp_address~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m|temp_address\(3));

-- Location: LCCOMB_X1_Y20_N28
\h|temp_hex00~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \h|temp_hex00~0_combout\ = (\m|temp_address\(2) & ((\m|temp_address\(0)) # ((\m|temp_address\(3)) # (!\m|temp_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m|temp_address\(0),
	datab => \m|temp_address\(4),
	datac => \m|temp_address\(2),
	datad => \m|temp_address\(3),
	combout => \h|temp_hex00~0_combout\);

-- Location: LCFF_X1_Y20_N29
\h|temp_hex00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \h|temp_hex00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \h|temp_hex00~regout\);

-- Location: LCCOMB_X1_Y20_N26
\h|temp_hex01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \h|temp_hex01~0_combout\ = (\m|temp_address\(2) & (((\m|temp_address\(4)) # (\m|temp_address\(3))) # (!\m|temp_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m|temp_address\(0),
	datab => \m|temp_address\(4),
	datac => \m|temp_address\(2),
	datad => \m|temp_address\(3),
	combout => \h|temp_hex01~0_combout\);

-- Location: LCFF_X1_Y20_N27
\h|temp_hex01\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \h|temp_hex01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \h|temp_hex01~regout\);

-- Location: LCCOMB_X1_Y20_N16
\h|temp_hex02~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \h|temp_hex02~0_combout\ = (\m|temp_address\(2) & (((!\m|temp_address\(3)) # (!\m|temp_address\(4))) # (!\m|temp_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m|temp_address\(0),
	datab => \m|temp_address\(4),
	datac => \m|temp_address\(2),
	datad => \m|temp_address\(3),
	combout => \h|temp_hex02~0_combout\);

-- Location: LCFF_X1_Y20_N17
\h|temp_hex02\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \h|temp_hex02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \h|temp_hex02~regout\);

-- Location: LCCOMB_X1_Y20_N22
\h|temp_hex03~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \h|temp_hex03~0_combout\ = (\m|temp_address\(2) & ((\m|temp_address\(0)) # ((\m|temp_address\(4) & \m|temp_address\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m|temp_address\(0),
	datab => \m|temp_address\(4),
	datac => \m|temp_address\(2),
	datad => \m|temp_address\(3),
	combout => \h|temp_hex03~0_combout\);

-- Location: LCFF_X1_Y20_N23
\h|temp_hex03\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \h|temp_hex03~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \h|temp_hex03~regout\);

-- Location: LCCOMB_X2_Y20_N4
\m|toggle_address~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m|toggle_address~1_combout\ = (!\toggle3~combout\ & (!\toggle4~combout\ & (\toggle1~combout\ & \m|toggle_address~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toggle3~combout\,
	datab => \toggle4~combout\,
	datac => \toggle1~combout\,
	datad => \m|toggle_address~0_combout\,
	combout => \m|toggle_address~1_combout\);

-- Location: LCFF_X2_Y20_N5
\m|temp_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m|toggle_address~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m|temp_address\(0));

-- Location: LCCOMB_X1_Y20_N12
\h|temp_hex04~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \h|temp_hex04~0_combout\ = (\m|temp_address\(2) & \m|temp_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m|temp_address\(2),
	datad => \m|temp_address\(0),
	combout => \h|temp_hex04~0_combout\);

-- Location: LCFF_X1_Y20_N13
\h|temp_hex04\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \h|temp_hex04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \h|temp_hex04~regout\);

-- Location: LCCOMB_X1_Y20_N10
\h|temp_hex05~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \h|temp_hex05~0_combout\ = (\m|temp_address\(2) & ((\m|temp_address\(3) & ((!\m|temp_address\(4)))) # (!\m|temp_address\(3) & (\m|temp_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m|temp_address\(0),
	datab => \m|temp_address\(4),
	datac => \m|temp_address\(2),
	datad => \m|temp_address\(3),
	combout => \h|temp_hex05~0_combout\);

-- Location: LCFF_X1_Y20_N11
\h|temp_hex05\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \h|temp_hex05~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \h|temp_hex05~regout\);

-- Location: LCCOMB_X1_Y20_N4
\h|temp_hex06~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \h|temp_hex06~0_combout\ = (\m|temp_address\(2) & (!\m|temp_address\(3) & ((\m|temp_address\(4)) # (!\m|temp_address\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m|temp_address\(0),
	datab => \m|temp_address\(2),
	datac => \m|temp_address\(4),
	datad => \m|temp_address\(3),
	combout => \h|temp_hex06~0_combout\);

-- Location: LCFF_X1_Y20_N5
\h|temp_hex06\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \h|temp_hex06~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \h|temp_hex06~regout\);

-- Location: LCCOMB_X2_Y20_N20
\h|temp_hex10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \h|temp_hex10~0_combout\ = (\m|temp_address\(2) & (\m|temp_address\(3) $ (!\m|temp_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m|temp_address\(2),
	datab => \m|temp_address\(3),
	datad => \m|temp_address\(4),
	combout => \h|temp_hex10~0_combout\);

-- Location: LCFF_X2_Y20_N25
\h|temp_hex10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \h|temp_hex10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \h|temp_hex10~regout\);

-- Location: LCFF_X1_Y20_N3
\h|temp_hex11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \m|temp_address\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \h|temp_hex11~regout\);

-- Location: LCCOMB_X2_Y20_N24
\h|temp_hex12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \h|temp_hex12~0_combout\ = (\m|temp_address\(2) & ((\m|temp_address\(3)) # (\m|temp_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m|temp_address\(2),
	datab => \m|temp_address\(3),
	datad => \m|temp_address\(4),
	combout => \h|temp_hex12~0_combout\);

-- Location: LCFF_X2_Y20_N23
\h|temp_hex12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \h|temp_hex12~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \h|temp_hex12~regout\);

-- Location: LCFF_X2_Y20_N29
\h|temp_hex13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \h|temp_hex10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \h|temp_hex13~regout\);

-- Location: LCFF_X2_Y20_N27
\h|temp_hex14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \h|temp_hex10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \h|temp_hex14~regout\);

-- Location: LCCOMB_X1_Y20_N24
\h|temp_hex15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \h|temp_hex15~0_combout\ = (\m|temp_address\(3) & (\m|temp_address\(2) & \m|temp_address\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m|temp_address\(3),
	datac => \m|temp_address\(2),
	datad => \m|temp_address\(4),
	combout => \h|temp_hex15~0_combout\);

-- Location: LCFF_X1_Y20_N25
\h|temp_hex15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \h|temp_hex15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \h|temp_hex15~regout\);

-- Location: LCFF_X2_Y20_N21
\h|temp_hex16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \h|temp_hex12~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \h|temp_hex16~regout\);

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\found1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m|temp_found1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_found1);

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\found2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_found2);

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\found3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m|temp_found3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_found3);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\found4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \m|temp_found4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_found4);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex00~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \h|ALT_INV_temp_hex00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex00);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex01~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \h|ALT_INV_temp_hex01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex01);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex02~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \h|ALT_INV_temp_hex02~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex02);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex03~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \h|ALT_INV_temp_hex03~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex03);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex04~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \h|ALT_INV_temp_hex04~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex04);

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex05~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \h|ALT_INV_temp_hex05~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex05);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex06~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \h|temp_hex06~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex06);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex10~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \h|ALT_INV_temp_hex10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex10);

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex11~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \h|ALT_INV_temp_hex11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex11);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex12~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \h|ALT_INV_temp_hex12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex12);

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex13~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \h|ALT_INV_temp_hex13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex13);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex14~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \h|ALT_INV_temp_hex14~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex14);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex15~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \h|ALT_INV_temp_hex15~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex15);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex16~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \h|temp_hex16~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex16);
END structure;


