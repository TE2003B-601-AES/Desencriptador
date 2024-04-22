-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "04/21/2024 20:34:52"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	InvAddRoundKey IS
    PORT (
	Clk : IN std_logic;
	Start : IN std_logic;
	Finish : BUFFER std_logic;
	DataIn : IN std_logic_vector(127 DOWNTO 0);
	DataOut : BUFFER std_logic_vector(127 DOWNTO 0)
	);
END InvAddRoundKey;

-- Design Ports Information
-- Finish	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[0]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[1]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[3]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[5]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[7]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[8]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[9]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[10]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[11]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[12]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[13]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[14]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[15]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[16]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[17]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[18]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[19]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[20]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[21]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[22]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[23]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[24]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[25]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[26]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[27]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[28]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[29]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[30]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[31]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[32]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[33]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[34]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[35]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[36]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[37]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[38]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[39]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[40]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[41]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[42]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[43]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[44]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[45]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[46]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[47]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[48]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[49]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[50]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[51]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[52]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[53]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[54]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[55]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[56]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[57]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[58]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[59]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[60]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[61]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[62]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[63]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[64]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[65]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[66]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[67]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[68]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[69]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[70]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[71]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[72]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[73]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[74]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[75]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[76]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[77]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[78]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[79]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[80]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[81]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[82]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[83]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[84]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[85]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[86]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[87]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[88]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[89]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[90]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[91]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[92]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[93]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[94]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[95]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[96]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[97]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[98]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[99]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[100]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[101]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[102]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[103]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[104]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[105]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[106]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[107]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[108]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[109]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[110]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[111]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[112]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[113]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[114]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[115]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[116]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[117]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[118]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[119]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[120]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[121]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[122]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[123]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[124]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[125]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[126]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataOut[127]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[1]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[6]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[7]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[8]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[9]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[10]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[11]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[13]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[14]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[15]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[16]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[17]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[18]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[19]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[20]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[21]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[22]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[23]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[24]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[25]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[26]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[27]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[28]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[29]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[30]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[31]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[32]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[33]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[34]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[35]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[36]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[37]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[38]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[39]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[40]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[41]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[42]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[43]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[44]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[45]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[46]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[47]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[48]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[49]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[50]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[51]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[52]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[53]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[54]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[55]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[56]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[57]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[58]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[59]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[60]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[61]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[62]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[63]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[64]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[65]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[66]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[67]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[68]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[69]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[70]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[71]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[72]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[73]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[74]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[75]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[76]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[77]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[78]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[79]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[80]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[81]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[82]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[83]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[84]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[85]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[86]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[87]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[88]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[89]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[90]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[91]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[92]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[93]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[94]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[95]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[96]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[97]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[98]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[99]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[100]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[101]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[102]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[103]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[104]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[105]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[106]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[107]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[108]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[109]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[110]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[111]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[112]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[113]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[114]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[115]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[116]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[117]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[118]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[119]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[120]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[121]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[122]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[123]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[124]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[125]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[126]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[127]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF InvAddRoundKey IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_Finish : std_logic;
SIGNAL ww_DataIn : std_logic_vector(127 DOWNTO 0);
SIGNAL ww_DataOut : std_logic_vector(127 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Finish~output_o\ : std_logic;
SIGNAL \DataOut[0]~output_o\ : std_logic;
SIGNAL \DataOut[1]~output_o\ : std_logic;
SIGNAL \DataOut[2]~output_o\ : std_logic;
SIGNAL \DataOut[3]~output_o\ : std_logic;
SIGNAL \DataOut[4]~output_o\ : std_logic;
SIGNAL \DataOut[5]~output_o\ : std_logic;
SIGNAL \DataOut[6]~output_o\ : std_logic;
SIGNAL \DataOut[7]~output_o\ : std_logic;
SIGNAL \DataOut[8]~output_o\ : std_logic;
SIGNAL \DataOut[9]~output_o\ : std_logic;
SIGNAL \DataOut[10]~output_o\ : std_logic;
SIGNAL \DataOut[11]~output_o\ : std_logic;
SIGNAL \DataOut[12]~output_o\ : std_logic;
SIGNAL \DataOut[13]~output_o\ : std_logic;
SIGNAL \DataOut[14]~output_o\ : std_logic;
SIGNAL \DataOut[15]~output_o\ : std_logic;
SIGNAL \DataOut[16]~output_o\ : std_logic;
SIGNAL \DataOut[17]~output_o\ : std_logic;
SIGNAL \DataOut[18]~output_o\ : std_logic;
SIGNAL \DataOut[19]~output_o\ : std_logic;
SIGNAL \DataOut[20]~output_o\ : std_logic;
SIGNAL \DataOut[21]~output_o\ : std_logic;
SIGNAL \DataOut[22]~output_o\ : std_logic;
SIGNAL \DataOut[23]~output_o\ : std_logic;
SIGNAL \DataOut[24]~output_o\ : std_logic;
SIGNAL \DataOut[25]~output_o\ : std_logic;
SIGNAL \DataOut[26]~output_o\ : std_logic;
SIGNAL \DataOut[27]~output_o\ : std_logic;
SIGNAL \DataOut[28]~output_o\ : std_logic;
SIGNAL \DataOut[29]~output_o\ : std_logic;
SIGNAL \DataOut[30]~output_o\ : std_logic;
SIGNAL \DataOut[31]~output_o\ : std_logic;
SIGNAL \DataOut[32]~output_o\ : std_logic;
SIGNAL \DataOut[33]~output_o\ : std_logic;
SIGNAL \DataOut[34]~output_o\ : std_logic;
SIGNAL \DataOut[35]~output_o\ : std_logic;
SIGNAL \DataOut[36]~output_o\ : std_logic;
SIGNAL \DataOut[37]~output_o\ : std_logic;
SIGNAL \DataOut[38]~output_o\ : std_logic;
SIGNAL \DataOut[39]~output_o\ : std_logic;
SIGNAL \DataOut[40]~output_o\ : std_logic;
SIGNAL \DataOut[41]~output_o\ : std_logic;
SIGNAL \DataOut[42]~output_o\ : std_logic;
SIGNAL \DataOut[43]~output_o\ : std_logic;
SIGNAL \DataOut[44]~output_o\ : std_logic;
SIGNAL \DataOut[45]~output_o\ : std_logic;
SIGNAL \DataOut[46]~output_o\ : std_logic;
SIGNAL \DataOut[47]~output_o\ : std_logic;
SIGNAL \DataOut[48]~output_o\ : std_logic;
SIGNAL \DataOut[49]~output_o\ : std_logic;
SIGNAL \DataOut[50]~output_o\ : std_logic;
SIGNAL \DataOut[51]~output_o\ : std_logic;
SIGNAL \DataOut[52]~output_o\ : std_logic;
SIGNAL \DataOut[53]~output_o\ : std_logic;
SIGNAL \DataOut[54]~output_o\ : std_logic;
SIGNAL \DataOut[55]~output_o\ : std_logic;
SIGNAL \DataOut[56]~output_o\ : std_logic;
SIGNAL \DataOut[57]~output_o\ : std_logic;
SIGNAL \DataOut[58]~output_o\ : std_logic;
SIGNAL \DataOut[59]~output_o\ : std_logic;
SIGNAL \DataOut[60]~output_o\ : std_logic;
SIGNAL \DataOut[61]~output_o\ : std_logic;
SIGNAL \DataOut[62]~output_o\ : std_logic;
SIGNAL \DataOut[63]~output_o\ : std_logic;
SIGNAL \DataOut[64]~output_o\ : std_logic;
SIGNAL \DataOut[65]~output_o\ : std_logic;
SIGNAL \DataOut[66]~output_o\ : std_logic;
SIGNAL \DataOut[67]~output_o\ : std_logic;
SIGNAL \DataOut[68]~output_o\ : std_logic;
SIGNAL \DataOut[69]~output_o\ : std_logic;
SIGNAL \DataOut[70]~output_o\ : std_logic;
SIGNAL \DataOut[71]~output_o\ : std_logic;
SIGNAL \DataOut[72]~output_o\ : std_logic;
SIGNAL \DataOut[73]~output_o\ : std_logic;
SIGNAL \DataOut[74]~output_o\ : std_logic;
SIGNAL \DataOut[75]~output_o\ : std_logic;
SIGNAL \DataOut[76]~output_o\ : std_logic;
SIGNAL \DataOut[77]~output_o\ : std_logic;
SIGNAL \DataOut[78]~output_o\ : std_logic;
SIGNAL \DataOut[79]~output_o\ : std_logic;
SIGNAL \DataOut[80]~output_o\ : std_logic;
SIGNAL \DataOut[81]~output_o\ : std_logic;
SIGNAL \DataOut[82]~output_o\ : std_logic;
SIGNAL \DataOut[83]~output_o\ : std_logic;
SIGNAL \DataOut[84]~output_o\ : std_logic;
SIGNAL \DataOut[85]~output_o\ : std_logic;
SIGNAL \DataOut[86]~output_o\ : std_logic;
SIGNAL \DataOut[87]~output_o\ : std_logic;
SIGNAL \DataOut[88]~output_o\ : std_logic;
SIGNAL \DataOut[89]~output_o\ : std_logic;
SIGNAL \DataOut[90]~output_o\ : std_logic;
SIGNAL \DataOut[91]~output_o\ : std_logic;
SIGNAL \DataOut[92]~output_o\ : std_logic;
SIGNAL \DataOut[93]~output_o\ : std_logic;
SIGNAL \DataOut[94]~output_o\ : std_logic;
SIGNAL \DataOut[95]~output_o\ : std_logic;
SIGNAL \DataOut[96]~output_o\ : std_logic;
SIGNAL \DataOut[97]~output_o\ : std_logic;
SIGNAL \DataOut[98]~output_o\ : std_logic;
SIGNAL \DataOut[99]~output_o\ : std_logic;
SIGNAL \DataOut[100]~output_o\ : std_logic;
SIGNAL \DataOut[101]~output_o\ : std_logic;
SIGNAL \DataOut[102]~output_o\ : std_logic;
SIGNAL \DataOut[103]~output_o\ : std_logic;
SIGNAL \DataOut[104]~output_o\ : std_logic;
SIGNAL \DataOut[105]~output_o\ : std_logic;
SIGNAL \DataOut[106]~output_o\ : std_logic;
SIGNAL \DataOut[107]~output_o\ : std_logic;
SIGNAL \DataOut[108]~output_o\ : std_logic;
SIGNAL \DataOut[109]~output_o\ : std_logic;
SIGNAL \DataOut[110]~output_o\ : std_logic;
SIGNAL \DataOut[111]~output_o\ : std_logic;
SIGNAL \DataOut[112]~output_o\ : std_logic;
SIGNAL \DataOut[113]~output_o\ : std_logic;
SIGNAL \DataOut[114]~output_o\ : std_logic;
SIGNAL \DataOut[115]~output_o\ : std_logic;
SIGNAL \DataOut[116]~output_o\ : std_logic;
SIGNAL \DataOut[117]~output_o\ : std_logic;
SIGNAL \DataOut[118]~output_o\ : std_logic;
SIGNAL \DataOut[119]~output_o\ : std_logic;
SIGNAL \DataOut[120]~output_o\ : std_logic;
SIGNAL \DataOut[121]~output_o\ : std_logic;
SIGNAL \DataOut[122]~output_o\ : std_logic;
SIGNAL \DataOut[123]~output_o\ : std_logic;
SIGNAL \DataOut[124]~output_o\ : std_logic;
SIGNAL \DataOut[125]~output_o\ : std_logic;
SIGNAL \DataOut[126]~output_o\ : std_logic;
SIGNAL \DataOut[127]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \next_state~0_combout\ : std_logic;
SIGNAL \next_state~q\ : std_logic;
SIGNAL \present_state~feeder_combout\ : std_logic;
SIGNAL \present_state~q\ : std_logic;
SIGNAL \DataIn[0]~input_o\ : std_logic;
SIGNAL \DataOut~0_combout\ : std_logic;
SIGNAL \DataIn[1]~input_o\ : std_logic;
SIGNAL \DataOut~1_combout\ : std_logic;
SIGNAL \DataIn[2]~input_o\ : std_logic;
SIGNAL \DataOut~2_combout\ : std_logic;
SIGNAL \DataIn[3]~input_o\ : std_logic;
SIGNAL \DataOut~3_combout\ : std_logic;
SIGNAL \DataIn[4]~input_o\ : std_logic;
SIGNAL \DataOut~4_combout\ : std_logic;
SIGNAL \DataIn[5]~input_o\ : std_logic;
SIGNAL \DataOut~5_combout\ : std_logic;
SIGNAL \DataIn[6]~input_o\ : std_logic;
SIGNAL \DataOut~6_combout\ : std_logic;
SIGNAL \DataIn[7]~input_o\ : std_logic;
SIGNAL \DataOut~7_combout\ : std_logic;
SIGNAL \DataIn[8]~input_o\ : std_logic;
SIGNAL \DataOut~8_combout\ : std_logic;
SIGNAL \DataIn[9]~input_o\ : std_logic;
SIGNAL \DataOut~9_combout\ : std_logic;
SIGNAL \DataIn[10]~input_o\ : std_logic;
SIGNAL \DataOut~10_combout\ : std_logic;
SIGNAL \DataIn[11]~input_o\ : std_logic;
SIGNAL \DataOut~11_combout\ : std_logic;
SIGNAL \DataIn[12]~input_o\ : std_logic;
SIGNAL \DataOut~12_combout\ : std_logic;
SIGNAL \DataIn[13]~input_o\ : std_logic;
SIGNAL \DataOut~13_combout\ : std_logic;
SIGNAL \DataIn[14]~input_o\ : std_logic;
SIGNAL \DataOut~14_combout\ : std_logic;
SIGNAL \DataIn[15]~input_o\ : std_logic;
SIGNAL \DataOut~15_combout\ : std_logic;
SIGNAL \DataIn[16]~input_o\ : std_logic;
SIGNAL \DataOut~16_combout\ : std_logic;
SIGNAL \DataIn[17]~input_o\ : std_logic;
SIGNAL \DataOut~17_combout\ : std_logic;
SIGNAL \DataIn[18]~input_o\ : std_logic;
SIGNAL \DataOut~18_combout\ : std_logic;
SIGNAL \DataIn[19]~input_o\ : std_logic;
SIGNAL \DataOut~19_combout\ : std_logic;
SIGNAL \DataIn[20]~input_o\ : std_logic;
SIGNAL \DataOut~20_combout\ : std_logic;
SIGNAL \DataIn[21]~input_o\ : std_logic;
SIGNAL \DataOut~21_combout\ : std_logic;
SIGNAL \DataIn[22]~input_o\ : std_logic;
SIGNAL \DataOut~22_combout\ : std_logic;
SIGNAL \DataIn[23]~input_o\ : std_logic;
SIGNAL \DataOut~23_combout\ : std_logic;
SIGNAL \DataIn[24]~input_o\ : std_logic;
SIGNAL \DataOut~24_combout\ : std_logic;
SIGNAL \DataIn[25]~input_o\ : std_logic;
SIGNAL \DataOut~25_combout\ : std_logic;
SIGNAL \DataIn[26]~input_o\ : std_logic;
SIGNAL \DataOut~26_combout\ : std_logic;
SIGNAL \DataIn[27]~input_o\ : std_logic;
SIGNAL \DataOut~27_combout\ : std_logic;
SIGNAL \DataIn[28]~input_o\ : std_logic;
SIGNAL \DataOut~28_combout\ : std_logic;
SIGNAL \DataIn[29]~input_o\ : std_logic;
SIGNAL \DataOut~29_combout\ : std_logic;
SIGNAL \DataIn[30]~input_o\ : std_logic;
SIGNAL \DataOut~30_combout\ : std_logic;
SIGNAL \DataIn[31]~input_o\ : std_logic;
SIGNAL \DataOut~31_combout\ : std_logic;
SIGNAL \DataIn[32]~input_o\ : std_logic;
SIGNAL \DataOut~32_combout\ : std_logic;
SIGNAL \DataIn[33]~input_o\ : std_logic;
SIGNAL \DataOut~33_combout\ : std_logic;
SIGNAL \DataIn[34]~input_o\ : std_logic;
SIGNAL \DataOut~34_combout\ : std_logic;
SIGNAL \DataIn[35]~input_o\ : std_logic;
SIGNAL \DataOut~35_combout\ : std_logic;
SIGNAL \DataIn[36]~input_o\ : std_logic;
SIGNAL \DataOut~36_combout\ : std_logic;
SIGNAL \DataIn[37]~input_o\ : std_logic;
SIGNAL \DataOut~37_combout\ : std_logic;
SIGNAL \DataIn[38]~input_o\ : std_logic;
SIGNAL \DataOut~38_combout\ : std_logic;
SIGNAL \DataIn[39]~input_o\ : std_logic;
SIGNAL \DataOut~39_combout\ : std_logic;
SIGNAL \DataIn[40]~input_o\ : std_logic;
SIGNAL \DataOut~40_combout\ : std_logic;
SIGNAL \DataIn[41]~input_o\ : std_logic;
SIGNAL \DataOut~41_combout\ : std_logic;
SIGNAL \DataIn[42]~input_o\ : std_logic;
SIGNAL \DataOut~42_combout\ : std_logic;
SIGNAL \DataIn[43]~input_o\ : std_logic;
SIGNAL \DataOut~43_combout\ : std_logic;
SIGNAL \DataIn[44]~input_o\ : std_logic;
SIGNAL \DataOut~44_combout\ : std_logic;
SIGNAL \DataIn[45]~input_o\ : std_logic;
SIGNAL \DataOut~45_combout\ : std_logic;
SIGNAL \DataIn[46]~input_o\ : std_logic;
SIGNAL \DataOut~46_combout\ : std_logic;
SIGNAL \DataIn[47]~input_o\ : std_logic;
SIGNAL \DataOut~47_combout\ : std_logic;
SIGNAL \DataIn[48]~input_o\ : std_logic;
SIGNAL \DataOut~48_combout\ : std_logic;
SIGNAL \DataIn[49]~input_o\ : std_logic;
SIGNAL \DataOut~49_combout\ : std_logic;
SIGNAL \DataIn[50]~input_o\ : std_logic;
SIGNAL \DataOut~50_combout\ : std_logic;
SIGNAL \DataIn[51]~input_o\ : std_logic;
SIGNAL \DataOut~51_combout\ : std_logic;
SIGNAL \DataIn[52]~input_o\ : std_logic;
SIGNAL \DataOut~52_combout\ : std_logic;
SIGNAL \DataIn[53]~input_o\ : std_logic;
SIGNAL \DataOut~53_combout\ : std_logic;
SIGNAL \DataIn[54]~input_o\ : std_logic;
SIGNAL \DataOut~54_combout\ : std_logic;
SIGNAL \DataIn[55]~input_o\ : std_logic;
SIGNAL \DataOut~55_combout\ : std_logic;
SIGNAL \DataIn[56]~input_o\ : std_logic;
SIGNAL \DataOut~56_combout\ : std_logic;
SIGNAL \DataIn[57]~input_o\ : std_logic;
SIGNAL \DataOut~57_combout\ : std_logic;
SIGNAL \DataIn[58]~input_o\ : std_logic;
SIGNAL \DataOut~58_combout\ : std_logic;
SIGNAL \DataIn[59]~input_o\ : std_logic;
SIGNAL \DataOut~59_combout\ : std_logic;
SIGNAL \DataIn[60]~input_o\ : std_logic;
SIGNAL \DataOut~60_combout\ : std_logic;
SIGNAL \DataIn[61]~input_o\ : std_logic;
SIGNAL \DataOut~61_combout\ : std_logic;
SIGNAL \DataIn[62]~input_o\ : std_logic;
SIGNAL \DataOut~62_combout\ : std_logic;
SIGNAL \DataIn[63]~input_o\ : std_logic;
SIGNAL \DataOut~63_combout\ : std_logic;
SIGNAL \DataIn[64]~input_o\ : std_logic;
SIGNAL \DataOut~64_combout\ : std_logic;
SIGNAL \DataIn[65]~input_o\ : std_logic;
SIGNAL \DataOut~65_combout\ : std_logic;
SIGNAL \DataIn[66]~input_o\ : std_logic;
SIGNAL \DataOut~66_combout\ : std_logic;
SIGNAL \DataIn[67]~input_o\ : std_logic;
SIGNAL \DataOut~67_combout\ : std_logic;
SIGNAL \DataIn[68]~input_o\ : std_logic;
SIGNAL \DataOut~68_combout\ : std_logic;
SIGNAL \DataIn[69]~input_o\ : std_logic;
SIGNAL \DataOut~69_combout\ : std_logic;
SIGNAL \DataIn[70]~input_o\ : std_logic;
SIGNAL \DataOut~70_combout\ : std_logic;
SIGNAL \DataIn[71]~input_o\ : std_logic;
SIGNAL \DataOut~71_combout\ : std_logic;
SIGNAL \DataIn[72]~input_o\ : std_logic;
SIGNAL \DataOut~72_combout\ : std_logic;
SIGNAL \DataIn[73]~input_o\ : std_logic;
SIGNAL \DataOut~73_combout\ : std_logic;
SIGNAL \DataIn[74]~input_o\ : std_logic;
SIGNAL \DataOut~74_combout\ : std_logic;
SIGNAL \DataIn[75]~input_o\ : std_logic;
SIGNAL \DataOut~75_combout\ : std_logic;
SIGNAL \DataIn[76]~input_o\ : std_logic;
SIGNAL \DataOut~76_combout\ : std_logic;
SIGNAL \DataIn[77]~input_o\ : std_logic;
SIGNAL \DataOut~77_combout\ : std_logic;
SIGNAL \DataIn[78]~input_o\ : std_logic;
SIGNAL \DataOut~78_combout\ : std_logic;
SIGNAL \DataIn[79]~input_o\ : std_logic;
SIGNAL \DataOut~79_combout\ : std_logic;
SIGNAL \DataIn[80]~input_o\ : std_logic;
SIGNAL \DataOut~80_combout\ : std_logic;
SIGNAL \DataIn[81]~input_o\ : std_logic;
SIGNAL \DataOut~81_combout\ : std_logic;
SIGNAL \DataIn[82]~input_o\ : std_logic;
SIGNAL \DataOut~82_combout\ : std_logic;
SIGNAL \DataIn[83]~input_o\ : std_logic;
SIGNAL \DataOut~83_combout\ : std_logic;
SIGNAL \DataIn[84]~input_o\ : std_logic;
SIGNAL \DataOut~84_combout\ : std_logic;
SIGNAL \DataIn[85]~input_o\ : std_logic;
SIGNAL \DataOut~85_combout\ : std_logic;
SIGNAL \DataIn[86]~input_o\ : std_logic;
SIGNAL \DataOut~86_combout\ : std_logic;
SIGNAL \DataIn[87]~input_o\ : std_logic;
SIGNAL \DataOut~87_combout\ : std_logic;
SIGNAL \DataIn[88]~input_o\ : std_logic;
SIGNAL \DataOut~88_combout\ : std_logic;
SIGNAL \DataIn[89]~input_o\ : std_logic;
SIGNAL \DataOut~89_combout\ : std_logic;
SIGNAL \DataIn[90]~input_o\ : std_logic;
SIGNAL \DataOut~90_combout\ : std_logic;
SIGNAL \DataIn[91]~input_o\ : std_logic;
SIGNAL \DataOut~91_combout\ : std_logic;
SIGNAL \DataIn[92]~input_o\ : std_logic;
SIGNAL \DataOut~92_combout\ : std_logic;
SIGNAL \DataIn[93]~input_o\ : std_logic;
SIGNAL \DataOut~93_combout\ : std_logic;
SIGNAL \DataIn[94]~input_o\ : std_logic;
SIGNAL \DataOut~94_combout\ : std_logic;
SIGNAL \DataIn[95]~input_o\ : std_logic;
SIGNAL \DataOut~95_combout\ : std_logic;
SIGNAL \DataIn[96]~input_o\ : std_logic;
SIGNAL \DataOut~96_combout\ : std_logic;
SIGNAL \DataIn[97]~input_o\ : std_logic;
SIGNAL \DataOut~97_combout\ : std_logic;
SIGNAL \DataIn[98]~input_o\ : std_logic;
SIGNAL \DataOut~98_combout\ : std_logic;
SIGNAL \DataIn[99]~input_o\ : std_logic;
SIGNAL \DataOut~99_combout\ : std_logic;
SIGNAL \DataIn[100]~input_o\ : std_logic;
SIGNAL \DataOut~100_combout\ : std_logic;
SIGNAL \DataIn[101]~input_o\ : std_logic;
SIGNAL \DataOut~101_combout\ : std_logic;
SIGNAL \DataIn[102]~input_o\ : std_logic;
SIGNAL \DataOut~102_combout\ : std_logic;
SIGNAL \DataIn[103]~input_o\ : std_logic;
SIGNAL \DataOut~103_combout\ : std_logic;
SIGNAL \DataIn[104]~input_o\ : std_logic;
SIGNAL \DataOut~104_combout\ : std_logic;
SIGNAL \DataIn[105]~input_o\ : std_logic;
SIGNAL \DataOut~105_combout\ : std_logic;
SIGNAL \DataIn[106]~input_o\ : std_logic;
SIGNAL \DataOut~106_combout\ : std_logic;
SIGNAL \DataIn[107]~input_o\ : std_logic;
SIGNAL \DataOut~107_combout\ : std_logic;
SIGNAL \DataIn[108]~input_o\ : std_logic;
SIGNAL \DataOut~108_combout\ : std_logic;
SIGNAL \DataIn[109]~input_o\ : std_logic;
SIGNAL \DataOut~109_combout\ : std_logic;
SIGNAL \DataIn[110]~input_o\ : std_logic;
SIGNAL \DataOut~110_combout\ : std_logic;
SIGNAL \DataIn[111]~input_o\ : std_logic;
SIGNAL \DataOut~111_combout\ : std_logic;
SIGNAL \DataIn[112]~input_o\ : std_logic;
SIGNAL \DataOut~112_combout\ : std_logic;
SIGNAL \DataIn[113]~input_o\ : std_logic;
SIGNAL \DataOut~113_combout\ : std_logic;
SIGNAL \DataIn[114]~input_o\ : std_logic;
SIGNAL \DataOut~114_combout\ : std_logic;
SIGNAL \DataIn[115]~input_o\ : std_logic;
SIGNAL \DataOut~115_combout\ : std_logic;
SIGNAL \DataIn[116]~input_o\ : std_logic;
SIGNAL \DataOut~116_combout\ : std_logic;
SIGNAL \DataIn[117]~input_o\ : std_logic;
SIGNAL \DataOut~117_combout\ : std_logic;
SIGNAL \DataIn[118]~input_o\ : std_logic;
SIGNAL \DataOut~118_combout\ : std_logic;
SIGNAL \DataIn[119]~input_o\ : std_logic;
SIGNAL \DataOut~119_combout\ : std_logic;
SIGNAL \DataIn[120]~input_o\ : std_logic;
SIGNAL \DataOut~120_combout\ : std_logic;
SIGNAL \DataIn[121]~input_o\ : std_logic;
SIGNAL \DataOut~121_combout\ : std_logic;
SIGNAL \DataIn[122]~input_o\ : std_logic;
SIGNAL \DataOut~122_combout\ : std_logic;
SIGNAL \DataIn[123]~input_o\ : std_logic;
SIGNAL \DataOut~123_combout\ : std_logic;
SIGNAL \DataIn[124]~input_o\ : std_logic;
SIGNAL \DataOut~124_combout\ : std_logic;
SIGNAL \DataIn[125]~input_o\ : std_logic;
SIGNAL \DataOut~125_combout\ : std_logic;
SIGNAL \DataIn[126]~input_o\ : std_logic;
SIGNAL \DataOut~126_combout\ : std_logic;
SIGNAL \DataIn[127]~input_o\ : std_logic;
SIGNAL \DataOut~127_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~127_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~126_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~125_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~123_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~121_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~119_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~117_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~116_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~114_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~112_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~109_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~108_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~104_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~102_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~101_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~100_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~99_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~98_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~97_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~96_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~95_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~94_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~92_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~89_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~87_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~83_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~82_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~80_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~77_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~75_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~73_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~72_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~71_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~67_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~66_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~64_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~62_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~61_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~60_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~57_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~56_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~55_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~53_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~52_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~51_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~49_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~47_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~46_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~45_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~44_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~42_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~40_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~37_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~35_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~32_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~29_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~24_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~23_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~22_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~20_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~17_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~14_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~13_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~5_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~3_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~2_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~1_combout\ : std_logic;
SIGNAL \ALT_INV_DataOut~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
ww_Start <= Start;
Finish <= ww_Finish;
ww_DataIn <= DataIn;
DataOut <= ww_DataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_DataOut~127_combout\ <= NOT \DataOut~127_combout\;
\ALT_INV_DataOut~126_combout\ <= NOT \DataOut~126_combout\;
\ALT_INV_DataOut~125_combout\ <= NOT \DataOut~125_combout\;
\ALT_INV_DataOut~123_combout\ <= NOT \DataOut~123_combout\;
\ALT_INV_DataOut~121_combout\ <= NOT \DataOut~121_combout\;
\ALT_INV_DataOut~119_combout\ <= NOT \DataOut~119_combout\;
\ALT_INV_DataOut~117_combout\ <= NOT \DataOut~117_combout\;
\ALT_INV_DataOut~116_combout\ <= NOT \DataOut~116_combout\;
\ALT_INV_DataOut~114_combout\ <= NOT \DataOut~114_combout\;
\ALT_INV_DataOut~112_combout\ <= NOT \DataOut~112_combout\;
\ALT_INV_DataOut~109_combout\ <= NOT \DataOut~109_combout\;
\ALT_INV_DataOut~108_combout\ <= NOT \DataOut~108_combout\;
\ALT_INV_DataOut~104_combout\ <= NOT \DataOut~104_combout\;
\ALT_INV_DataOut~102_combout\ <= NOT \DataOut~102_combout\;
\ALT_INV_DataOut~101_combout\ <= NOT \DataOut~101_combout\;
\ALT_INV_DataOut~100_combout\ <= NOT \DataOut~100_combout\;
\ALT_INV_DataOut~99_combout\ <= NOT \DataOut~99_combout\;
\ALT_INV_DataOut~98_combout\ <= NOT \DataOut~98_combout\;
\ALT_INV_DataOut~97_combout\ <= NOT \DataOut~97_combout\;
\ALT_INV_DataOut~96_combout\ <= NOT \DataOut~96_combout\;
\ALT_INV_DataOut~95_combout\ <= NOT \DataOut~95_combout\;
\ALT_INV_DataOut~94_combout\ <= NOT \DataOut~94_combout\;
\ALT_INV_DataOut~92_combout\ <= NOT \DataOut~92_combout\;
\ALT_INV_DataOut~89_combout\ <= NOT \DataOut~89_combout\;
\ALT_INV_DataOut~87_combout\ <= NOT \DataOut~87_combout\;
\ALT_INV_DataOut~83_combout\ <= NOT \DataOut~83_combout\;
\ALT_INV_DataOut~82_combout\ <= NOT \DataOut~82_combout\;
\ALT_INV_DataOut~80_combout\ <= NOT \DataOut~80_combout\;
\ALT_INV_DataOut~77_combout\ <= NOT \DataOut~77_combout\;
\ALT_INV_DataOut~75_combout\ <= NOT \DataOut~75_combout\;
\ALT_INV_DataOut~73_combout\ <= NOT \DataOut~73_combout\;
\ALT_INV_DataOut~72_combout\ <= NOT \DataOut~72_combout\;
\ALT_INV_DataOut~71_combout\ <= NOT \DataOut~71_combout\;
\ALT_INV_DataOut~67_combout\ <= NOT \DataOut~67_combout\;
\ALT_INV_DataOut~66_combout\ <= NOT \DataOut~66_combout\;
\ALT_INV_DataOut~64_combout\ <= NOT \DataOut~64_combout\;
\ALT_INV_DataOut~62_combout\ <= NOT \DataOut~62_combout\;
\ALT_INV_DataOut~61_combout\ <= NOT \DataOut~61_combout\;
\ALT_INV_DataOut~60_combout\ <= NOT \DataOut~60_combout\;
\ALT_INV_DataOut~57_combout\ <= NOT \DataOut~57_combout\;
\ALT_INV_DataOut~56_combout\ <= NOT \DataOut~56_combout\;
\ALT_INV_DataOut~55_combout\ <= NOT \DataOut~55_combout\;
\ALT_INV_DataOut~53_combout\ <= NOT \DataOut~53_combout\;
\ALT_INV_DataOut~52_combout\ <= NOT \DataOut~52_combout\;
\ALT_INV_DataOut~51_combout\ <= NOT \DataOut~51_combout\;
\ALT_INV_DataOut~49_combout\ <= NOT \DataOut~49_combout\;
\ALT_INV_DataOut~47_combout\ <= NOT \DataOut~47_combout\;
\ALT_INV_DataOut~46_combout\ <= NOT \DataOut~46_combout\;
\ALT_INV_DataOut~45_combout\ <= NOT \DataOut~45_combout\;
\ALT_INV_DataOut~44_combout\ <= NOT \DataOut~44_combout\;
\ALT_INV_DataOut~42_combout\ <= NOT \DataOut~42_combout\;
\ALT_INV_DataOut~40_combout\ <= NOT \DataOut~40_combout\;
\ALT_INV_DataOut~37_combout\ <= NOT \DataOut~37_combout\;
\ALT_INV_DataOut~35_combout\ <= NOT \DataOut~35_combout\;
\ALT_INV_DataOut~32_combout\ <= NOT \DataOut~32_combout\;
\ALT_INV_DataOut~29_combout\ <= NOT \DataOut~29_combout\;
\ALT_INV_DataOut~24_combout\ <= NOT \DataOut~24_combout\;
\ALT_INV_DataOut~23_combout\ <= NOT \DataOut~23_combout\;
\ALT_INV_DataOut~22_combout\ <= NOT \DataOut~22_combout\;
\ALT_INV_DataOut~20_combout\ <= NOT \DataOut~20_combout\;
\ALT_INV_DataOut~17_combout\ <= NOT \DataOut~17_combout\;
\ALT_INV_DataOut~14_combout\ <= NOT \DataOut~14_combout\;
\ALT_INV_DataOut~13_combout\ <= NOT \DataOut~13_combout\;
\ALT_INV_DataOut~5_combout\ <= NOT \DataOut~5_combout\;
\ALT_INV_DataOut~3_combout\ <= NOT \DataOut~3_combout\;
\ALT_INV_DataOut~2_combout\ <= NOT \DataOut~2_combout\;
\ALT_INV_DataOut~1_combout\ <= NOT \DataOut~1_combout\;
\ALT_INV_DataOut~0_combout\ <= NOT \DataOut~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y25_N9
\Finish~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Finish~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\DataOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~0_combout\,
	devoe => ww_devoe,
	o => \DataOut[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\DataOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~1_combout\,
	devoe => ww_devoe,
	o => \DataOut[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\DataOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~2_combout\,
	devoe => ww_devoe,
	o => \DataOut[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\DataOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~3_combout\,
	devoe => ww_devoe,
	o => \DataOut[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\DataOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~4_combout\,
	devoe => ww_devoe,
	o => \DataOut[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\DataOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~5_combout\,
	devoe => ww_devoe,
	o => \DataOut[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\DataOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~6_combout\,
	devoe => ww_devoe,
	o => \DataOut[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\DataOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~7_combout\,
	devoe => ww_devoe,
	o => \DataOut[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\DataOut[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~8_combout\,
	devoe => ww_devoe,
	o => \DataOut[8]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\DataOut[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~9_combout\,
	devoe => ww_devoe,
	o => \DataOut[9]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\DataOut[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~10_combout\,
	devoe => ww_devoe,
	o => \DataOut[10]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\DataOut[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~11_combout\,
	devoe => ww_devoe,
	o => \DataOut[11]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\DataOut[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~12_combout\,
	devoe => ww_devoe,
	o => \DataOut[12]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\DataOut[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~13_combout\,
	devoe => ww_devoe,
	o => \DataOut[13]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\DataOut[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~14_combout\,
	devoe => ww_devoe,
	o => \DataOut[14]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\DataOut[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~15_combout\,
	devoe => ww_devoe,
	o => \DataOut[15]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\DataOut[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~16_combout\,
	devoe => ww_devoe,
	o => \DataOut[16]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\DataOut[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~17_combout\,
	devoe => ww_devoe,
	o => \DataOut[17]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\DataOut[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~18_combout\,
	devoe => ww_devoe,
	o => \DataOut[18]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\DataOut[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~19_combout\,
	devoe => ww_devoe,
	o => \DataOut[19]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\DataOut[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~20_combout\,
	devoe => ww_devoe,
	o => \DataOut[20]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\DataOut[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~21_combout\,
	devoe => ww_devoe,
	o => \DataOut[21]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\DataOut[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~22_combout\,
	devoe => ww_devoe,
	o => \DataOut[22]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\DataOut[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~23_combout\,
	devoe => ww_devoe,
	o => \DataOut[23]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\DataOut[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~24_combout\,
	devoe => ww_devoe,
	o => \DataOut[24]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\DataOut[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~25_combout\,
	devoe => ww_devoe,
	o => \DataOut[25]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\DataOut[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~26_combout\,
	devoe => ww_devoe,
	o => \DataOut[26]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\DataOut[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~27_combout\,
	devoe => ww_devoe,
	o => \DataOut[27]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\DataOut[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~28_combout\,
	devoe => ww_devoe,
	o => \DataOut[28]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\DataOut[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~29_combout\,
	devoe => ww_devoe,
	o => \DataOut[29]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\DataOut[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~30_combout\,
	devoe => ww_devoe,
	o => \DataOut[30]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\DataOut[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~31_combout\,
	devoe => ww_devoe,
	o => \DataOut[31]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\DataOut[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~32_combout\,
	devoe => ww_devoe,
	o => \DataOut[32]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\DataOut[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~33_combout\,
	devoe => ww_devoe,
	o => \DataOut[33]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\DataOut[34]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~34_combout\,
	devoe => ww_devoe,
	o => \DataOut[34]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\DataOut[35]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~35_combout\,
	devoe => ww_devoe,
	o => \DataOut[35]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\DataOut[36]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~36_combout\,
	devoe => ww_devoe,
	o => \DataOut[36]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\DataOut[37]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~37_combout\,
	devoe => ww_devoe,
	o => \DataOut[37]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\DataOut[38]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~38_combout\,
	devoe => ww_devoe,
	o => \DataOut[38]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\DataOut[39]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~39_combout\,
	devoe => ww_devoe,
	o => \DataOut[39]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\DataOut[40]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~40_combout\,
	devoe => ww_devoe,
	o => \DataOut[40]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\DataOut[41]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~41_combout\,
	devoe => ww_devoe,
	o => \DataOut[41]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\DataOut[42]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~42_combout\,
	devoe => ww_devoe,
	o => \DataOut[42]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\DataOut[43]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~43_combout\,
	devoe => ww_devoe,
	o => \DataOut[43]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\DataOut[44]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~44_combout\,
	devoe => ww_devoe,
	o => \DataOut[44]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\DataOut[45]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~45_combout\,
	devoe => ww_devoe,
	o => \DataOut[45]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\DataOut[46]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~46_combout\,
	devoe => ww_devoe,
	o => \DataOut[46]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\DataOut[47]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~47_combout\,
	devoe => ww_devoe,
	o => \DataOut[47]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\DataOut[48]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~48_combout\,
	devoe => ww_devoe,
	o => \DataOut[48]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\DataOut[49]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~49_combout\,
	devoe => ww_devoe,
	o => \DataOut[49]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\DataOut[50]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~50_combout\,
	devoe => ww_devoe,
	o => \DataOut[50]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\DataOut[51]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~51_combout\,
	devoe => ww_devoe,
	o => \DataOut[51]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\DataOut[52]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~52_combout\,
	devoe => ww_devoe,
	o => \DataOut[52]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\DataOut[53]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~53_combout\,
	devoe => ww_devoe,
	o => \DataOut[53]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\DataOut[54]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~54_combout\,
	devoe => ww_devoe,
	o => \DataOut[54]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\DataOut[55]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~55_combout\,
	devoe => ww_devoe,
	o => \DataOut[55]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\DataOut[56]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~56_combout\,
	devoe => ww_devoe,
	o => \DataOut[56]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\DataOut[57]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~57_combout\,
	devoe => ww_devoe,
	o => \DataOut[57]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\DataOut[58]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~58_combout\,
	devoe => ww_devoe,
	o => \DataOut[58]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\DataOut[59]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~59_combout\,
	devoe => ww_devoe,
	o => \DataOut[59]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\DataOut[60]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~60_combout\,
	devoe => ww_devoe,
	o => \DataOut[60]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\DataOut[61]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~61_combout\,
	devoe => ww_devoe,
	o => \DataOut[61]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\DataOut[62]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~62_combout\,
	devoe => ww_devoe,
	o => \DataOut[62]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\DataOut[63]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~63_combout\,
	devoe => ww_devoe,
	o => \DataOut[63]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\DataOut[64]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~64_combout\,
	devoe => ww_devoe,
	o => \DataOut[64]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\DataOut[65]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~65_combout\,
	devoe => ww_devoe,
	o => \DataOut[65]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\DataOut[66]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~66_combout\,
	devoe => ww_devoe,
	o => \DataOut[66]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\DataOut[67]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~67_combout\,
	devoe => ww_devoe,
	o => \DataOut[67]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\DataOut[68]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~68_combout\,
	devoe => ww_devoe,
	o => \DataOut[68]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\DataOut[69]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~69_combout\,
	devoe => ww_devoe,
	o => \DataOut[69]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\DataOut[70]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~70_combout\,
	devoe => ww_devoe,
	o => \DataOut[70]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\DataOut[71]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~71_combout\,
	devoe => ww_devoe,
	o => \DataOut[71]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\DataOut[72]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~72_combout\,
	devoe => ww_devoe,
	o => \DataOut[72]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\DataOut[73]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~73_combout\,
	devoe => ww_devoe,
	o => \DataOut[73]~output_o\);

-- Location: IOOBUF_X78_Y16_N16
\DataOut[74]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~74_combout\,
	devoe => ww_devoe,
	o => \DataOut[74]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\DataOut[75]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~75_combout\,
	devoe => ww_devoe,
	o => \DataOut[75]~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\DataOut[76]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~76_combout\,
	devoe => ww_devoe,
	o => \DataOut[76]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\DataOut[77]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~77_combout\,
	devoe => ww_devoe,
	o => \DataOut[77]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\DataOut[78]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~78_combout\,
	devoe => ww_devoe,
	o => \DataOut[78]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\DataOut[79]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~79_combout\,
	devoe => ww_devoe,
	o => \DataOut[79]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\DataOut[80]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~80_combout\,
	devoe => ww_devoe,
	o => \DataOut[80]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\DataOut[81]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~81_combout\,
	devoe => ww_devoe,
	o => \DataOut[81]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\DataOut[82]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~82_combout\,
	devoe => ww_devoe,
	o => \DataOut[82]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\DataOut[83]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~83_combout\,
	devoe => ww_devoe,
	o => \DataOut[83]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\DataOut[84]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~84_combout\,
	devoe => ww_devoe,
	o => \DataOut[84]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\DataOut[85]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~85_combout\,
	devoe => ww_devoe,
	o => \DataOut[85]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\DataOut[86]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~86_combout\,
	devoe => ww_devoe,
	o => \DataOut[86]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\DataOut[87]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~87_combout\,
	devoe => ww_devoe,
	o => \DataOut[87]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\DataOut[88]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~88_combout\,
	devoe => ww_devoe,
	o => \DataOut[88]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\DataOut[89]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~89_combout\,
	devoe => ww_devoe,
	o => \DataOut[89]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\DataOut[90]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~90_combout\,
	devoe => ww_devoe,
	o => \DataOut[90]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\DataOut[91]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~91_combout\,
	devoe => ww_devoe,
	o => \DataOut[91]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\DataOut[92]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~92_combout\,
	devoe => ww_devoe,
	o => \DataOut[92]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\DataOut[93]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~93_combout\,
	devoe => ww_devoe,
	o => \DataOut[93]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\DataOut[94]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~94_combout\,
	devoe => ww_devoe,
	o => \DataOut[94]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\DataOut[95]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~95_combout\,
	devoe => ww_devoe,
	o => \DataOut[95]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\DataOut[96]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~96_combout\,
	devoe => ww_devoe,
	o => \DataOut[96]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\DataOut[97]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~97_combout\,
	devoe => ww_devoe,
	o => \DataOut[97]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\DataOut[98]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~98_combout\,
	devoe => ww_devoe,
	o => \DataOut[98]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\DataOut[99]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~99_combout\,
	devoe => ww_devoe,
	o => \DataOut[99]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\DataOut[100]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~100_combout\,
	devoe => ww_devoe,
	o => \DataOut[100]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\DataOut[101]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~101_combout\,
	devoe => ww_devoe,
	o => \DataOut[101]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\DataOut[102]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~102_combout\,
	devoe => ww_devoe,
	o => \DataOut[102]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\DataOut[103]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~103_combout\,
	devoe => ww_devoe,
	o => \DataOut[103]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\DataOut[104]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~104_combout\,
	devoe => ww_devoe,
	o => \DataOut[104]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\DataOut[105]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~105_combout\,
	devoe => ww_devoe,
	o => \DataOut[105]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\DataOut[106]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~106_combout\,
	devoe => ww_devoe,
	o => \DataOut[106]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\DataOut[107]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~107_combout\,
	devoe => ww_devoe,
	o => \DataOut[107]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\DataOut[108]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~108_combout\,
	devoe => ww_devoe,
	o => \DataOut[108]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\DataOut[109]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~109_combout\,
	devoe => ww_devoe,
	o => \DataOut[109]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\DataOut[110]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~110_combout\,
	devoe => ww_devoe,
	o => \DataOut[110]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\DataOut[111]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~111_combout\,
	devoe => ww_devoe,
	o => \DataOut[111]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\DataOut[112]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~112_combout\,
	devoe => ww_devoe,
	o => \DataOut[112]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\DataOut[113]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~113_combout\,
	devoe => ww_devoe,
	o => \DataOut[113]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\DataOut[114]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~114_combout\,
	devoe => ww_devoe,
	o => \DataOut[114]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\DataOut[115]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~115_combout\,
	devoe => ww_devoe,
	o => \DataOut[115]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\DataOut[116]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~116_combout\,
	devoe => ww_devoe,
	o => \DataOut[116]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\DataOut[117]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~117_combout\,
	devoe => ww_devoe,
	o => \DataOut[117]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\DataOut[118]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~118_combout\,
	devoe => ww_devoe,
	o => \DataOut[118]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\DataOut[119]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~119_combout\,
	devoe => ww_devoe,
	o => \DataOut[119]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\DataOut[120]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~120_combout\,
	devoe => ww_devoe,
	o => \DataOut[120]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\DataOut[121]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~121_combout\,
	devoe => ww_devoe,
	o => \DataOut[121]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\DataOut[122]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~122_combout\,
	devoe => ww_devoe,
	o => \DataOut[122]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\DataOut[123]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~123_combout\,
	devoe => ww_devoe,
	o => \DataOut[123]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\DataOut[124]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataOut~124_combout\,
	devoe => ww_devoe,
	o => \DataOut[124]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\DataOut[125]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~125_combout\,
	devoe => ww_devoe,
	o => \DataOut[125]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\DataOut[126]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~126_combout\,
	devoe => ww_devoe,
	o => \DataOut[126]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\DataOut[127]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DataOut~127_combout\,
	devoe => ww_devoe,
	o => \DataOut[127]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G3
\Clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X38_Y0_N1
\Start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: LCCOMB_X31_Y1_N12
\next_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_state~0_combout\ = (\Start~input_o\) # (\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Start~input_o\,
	datad => \present_state~q\,
	combout => \next_state~0_combout\);

-- Location: FF_X31_Y1_N13
next_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \next_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state~q\);

-- Location: LCCOMB_X31_Y1_N24
\present_state~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \present_state~feeder_combout\ = \next_state~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state~q\,
	combout => \present_state~feeder_combout\);

-- Location: FF_X31_Y1_N25
present_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \present_state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state~q\);

-- Location: IOIBUF_X34_Y0_N8
\DataIn[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(0),
	o => \DataIn[0]~input_o\);

-- Location: LCCOMB_X31_Y1_N22
\DataOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~0_combout\ = (\DataIn[0]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[0]~input_o\,
	combout => \DataOut~0_combout\);

-- Location: IOIBUF_X26_Y0_N29
\DataIn[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(1),
	o => \DataIn[1]~input_o\);

-- Location: LCCOMB_X31_Y1_N4
\DataOut~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~1_combout\ = (\DataIn[1]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[1]~input_o\,
	combout => \DataOut~1_combout\);

-- Location: IOIBUF_X31_Y0_N22
\DataIn[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(2),
	o => \DataIn[2]~input_o\);

-- Location: LCCOMB_X31_Y1_N14
\DataOut~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~2_combout\ = (\DataIn[2]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[2]~input_o\,
	combout => \DataOut~2_combout\);

-- Location: IOIBUF_X31_Y0_N8
\DataIn[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(3),
	o => \DataIn[3]~input_o\);

-- Location: LCCOMB_X31_Y1_N8
\DataOut~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~3_combout\ = (\DataIn[3]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[3]~input_o\,
	combout => \DataOut~3_combout\);

-- Location: IOIBUF_X40_Y0_N22
\DataIn[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(4),
	o => \DataIn[4]~input_o\);

-- Location: LCCOMB_X40_Y1_N0
\DataOut~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~4_combout\ = (\present_state~q\ & \DataIn[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[4]~input_o\,
	combout => \DataOut~4_combout\);

-- Location: IOIBUF_X38_Y0_N15
\DataIn[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(5),
	o => \DataIn[5]~input_o\);

-- Location: LCCOMB_X31_Y1_N30
\DataOut~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~5_combout\ = (\DataIn[5]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[5]~input_o\,
	combout => \DataOut~5_combout\);

-- Location: IOIBUF_X38_Y0_N8
\DataIn[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(6),
	o => \DataIn[6]~input_o\);

-- Location: LCCOMB_X31_Y1_N20
\DataOut~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~6_combout\ = (\present_state~q\ & \DataIn[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[6]~input_o\,
	combout => \DataOut~6_combout\);

-- Location: IOIBUF_X31_Y0_N15
\DataIn[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(7),
	o => \DataIn[7]~input_o\);

-- Location: LCCOMB_X31_Y1_N10
\DataOut~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~7_combout\ = (\present_state~q\ & \DataIn[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[7]~input_o\,
	combout => \DataOut~7_combout\);

-- Location: IOIBUF_X36_Y0_N1
\DataIn[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(8),
	o => \DataIn[8]~input_o\);

-- Location: LCCOMB_X31_Y1_N28
\DataOut~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~8_combout\ = (\present_state~q\ & \DataIn[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[8]~input_o\,
	combout => \DataOut~8_combout\);

-- Location: IOIBUF_X34_Y0_N15
\DataIn[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(9),
	o => \DataIn[9]~input_o\);

-- Location: LCCOMB_X31_Y1_N18
\DataOut~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~9_combout\ = (\present_state~q\ & \DataIn[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[9]~input_o\,
	combout => \DataOut~9_combout\);

-- Location: IOIBUF_X34_Y0_N1
\DataIn[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(10),
	o => \DataIn[10]~input_o\);

-- Location: LCCOMB_X31_Y1_N0
\DataOut~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~10_combout\ = (\present_state~q\ & \DataIn[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[10]~input_o\,
	combout => \DataOut~10_combout\);

-- Location: IOIBUF_X36_Y0_N8
\DataIn[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(11),
	o => \DataIn[11]~input_o\);

-- Location: LCCOMB_X31_Y1_N6
\DataOut~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~11_combout\ = (\present_state~q\ & \DataIn[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[11]~input_o\,
	combout => \DataOut~11_combout\);

-- Location: IOIBUF_X40_Y0_N15
\DataIn[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(12),
	o => \DataIn[12]~input_o\);

-- Location: LCCOMB_X40_Y1_N26
\DataOut~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~12_combout\ = (\present_state~q\ & \DataIn[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[12]~input_o\,
	combout => \DataOut~12_combout\);

-- Location: IOIBUF_X26_Y0_N22
\DataIn[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(13),
	o => \DataIn[13]~input_o\);

-- Location: LCCOMB_X31_Y1_N16
\DataOut~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~13_combout\ = (\DataIn[13]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[13]~input_o\,
	combout => \DataOut~13_combout\);

-- Location: IOIBUF_X29_Y39_N8
\DataIn[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(14),
	o => \DataIn[14]~input_o\);

-- Location: LCCOMB_X26_Y35_N28
\DataOut~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~14_combout\ = (\DataIn[14]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[14]~input_o\,
	combout => \DataOut~14_combout\);

-- Location: IOIBUF_X24_Y39_N22
\DataIn[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(15),
	o => \DataIn[15]~input_o\);

-- Location: LCCOMB_X26_Y35_N22
\DataOut~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~15_combout\ = (\present_state~q\ & \DataIn[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state~q\,
	datac => \DataIn[15]~input_o\,
	combout => \DataOut~15_combout\);

-- Location: IOIBUF_X36_Y39_N29
\DataIn[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(16),
	o => \DataIn[16]~input_o\);

-- Location: LCCOMB_X37_Y38_N8
\DataOut~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~16_combout\ = (\present_state~q\ & \DataIn[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[16]~input_o\,
	combout => \DataOut~16_combout\);

-- Location: IOIBUF_X29_Y39_N1
\DataIn[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(17),
	o => \DataIn[17]~input_o\);

-- Location: LCCOMB_X26_Y35_N12
\DataOut~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~17_combout\ = (\DataIn[17]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[17]~input_o\,
	combout => \DataOut~17_combout\);

-- Location: IOIBUF_X31_Y39_N8
\DataIn[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(18),
	o => \DataIn[18]~input_o\);

-- Location: LCCOMB_X32_Y38_N28
\DataOut~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~18_combout\ = (\present_state~q\ & \DataIn[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[18]~input_o\,
	combout => \DataOut~18_combout\);

-- Location: IOIBUF_X22_Y39_N22
\DataIn[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(19),
	o => \DataIn[19]~input_o\);

-- Location: LCCOMB_X26_Y35_N14
\DataOut~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~19_combout\ = (\present_state~q\ & \DataIn[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[19]~input_o\,
	combout => \DataOut~19_combout\);

-- Location: IOIBUF_X29_Y39_N15
\DataIn[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(20),
	o => \DataIn[20]~input_o\);

-- Location: LCCOMB_X26_Y35_N20
\DataOut~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~20_combout\ = (\DataIn[20]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[20]~input_o\,
	combout => \DataOut~20_combout\);

-- Location: IOIBUF_X26_Y39_N15
\DataIn[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(21),
	o => \DataIn[21]~input_o\);

-- Location: LCCOMB_X26_Y35_N18
\DataOut~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~21_combout\ = (\present_state~q\ & \DataIn[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[21]~input_o\,
	combout => \DataOut~21_combout\);

-- Location: IOIBUF_X34_Y39_N1
\DataIn[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(22),
	o => \DataIn[22]~input_o\);

-- Location: LCCOMB_X37_Y38_N6
\DataOut~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~22_combout\ = (\DataIn[22]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[22]~input_o\,
	combout => \DataOut~22_combout\);

-- Location: IOIBUF_X31_Y39_N15
\DataIn[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(23),
	o => \DataIn[23]~input_o\);

-- Location: LCCOMB_X26_Y35_N24
\DataOut~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~23_combout\ = (\DataIn[23]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[23]~input_o\,
	combout => \DataOut~23_combout\);

-- Location: IOIBUF_X22_Y39_N29
\DataIn[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(24),
	o => \DataIn[24]~input_o\);

-- Location: LCCOMB_X26_Y35_N2
\DataOut~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~24_combout\ = (\DataIn[24]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[24]~input_o\,
	combout => \DataOut~24_combout\);

-- Location: IOIBUF_X26_Y39_N8
\DataIn[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(25),
	o => \DataIn[25]~input_o\);

-- Location: LCCOMB_X26_Y35_N8
\DataOut~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~25_combout\ = (\present_state~q\ & \DataIn[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[25]~input_o\,
	combout => \DataOut~25_combout\);

-- Location: IOIBUF_X26_Y39_N1
\DataIn[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(26),
	o => \DataIn[26]~input_o\);

-- Location: LCCOMB_X26_Y35_N26
\DataOut~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~26_combout\ = (\present_state~q\ & \DataIn[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[26]~input_o\,
	combout => \DataOut~26_combout\);

-- Location: IOIBUF_X31_Y39_N1
\DataIn[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(27),
	o => \DataIn[27]~input_o\);

-- Location: LCCOMB_X32_Y38_N30
\DataOut~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~27_combout\ = (\present_state~q\ & \DataIn[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[27]~input_o\,
	combout => \DataOut~27_combout\);

-- Location: IOIBUF_X26_Y39_N29
\DataIn[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(28),
	o => \DataIn[28]~input_o\);

-- Location: LCCOMB_X26_Y35_N0
\DataOut~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~28_combout\ = (\present_state~q\ & \DataIn[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[28]~input_o\,
	combout => \DataOut~28_combout\);

-- Location: IOIBUF_X78_Y35_N8
\DataIn[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(29),
	o => \DataIn[29]~input_o\);

-- Location: LCCOMB_X77_Y33_N4
\DataOut~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~29_combout\ = (\DataIn[29]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[29]~input_o\,
	combout => \DataOut~29_combout\);

-- Location: IOIBUF_X78_Y33_N15
\DataIn[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(30),
	o => \DataIn[30]~input_o\);

-- Location: LCCOMB_X77_Y33_N2
\DataOut~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~30_combout\ = (\present_state~q\ & \DataIn[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[30]~input_o\,
	combout => \DataOut~30_combout\);

-- Location: IOIBUF_X78_Y30_N8
\DataIn[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(31),
	o => \DataIn[31]~input_o\);

-- Location: LCCOMB_X77_Y33_N8
\DataOut~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~31_combout\ = (\present_state~q\ & \DataIn[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[31]~input_o\,
	combout => \DataOut~31_combout\);

-- Location: IOIBUF_X78_Y34_N8
\DataIn[32]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(32),
	o => \DataIn[32]~input_o\);

-- Location: LCCOMB_X77_Y33_N30
\DataOut~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~32_combout\ = (\DataIn[32]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[32]~input_o\,
	combout => \DataOut~32_combout\);

-- Location: IOIBUF_X78_Y33_N1
\DataIn[33]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(33),
	o => \DataIn[33]~input_o\);

-- Location: LCCOMB_X77_Y33_N20
\DataOut~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~33_combout\ = (\present_state~q\ & \DataIn[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[33]~input_o\,
	combout => \DataOut~33_combout\);

-- Location: IOIBUF_X78_Y33_N22
\DataIn[34]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(34),
	o => \DataIn[34]~input_o\);

-- Location: LCCOMB_X77_Y33_N6
\DataOut~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~34_combout\ = (\present_state~q\ & \DataIn[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[34]~input_o\,
	combout => \DataOut~34_combout\);

-- Location: IOIBUF_X78_Y33_N8
\DataIn[35]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(35),
	o => \DataIn[35]~input_o\);

-- Location: LCCOMB_X77_Y33_N28
\DataOut~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~35_combout\ = (\DataIn[35]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[35]~input_o\,
	combout => \DataOut~35_combout\);

-- Location: IOIBUF_X78_Y36_N1
\DataIn[36]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(36),
	o => \DataIn[36]~input_o\);

-- Location: LCCOMB_X77_Y33_N10
\DataOut~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~36_combout\ = (\present_state~q\ & \DataIn[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[36]~input_o\,
	combout => \DataOut~36_combout\);

-- Location: IOIBUF_X78_Y30_N1
\DataIn[37]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(37),
	o => \DataIn[37]~input_o\);

-- Location: LCCOMB_X77_Y33_N12
\DataOut~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~37_combout\ = (\DataIn[37]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[37]~input_o\,
	combout => \DataOut~37_combout\);

-- Location: IOIBUF_X78_Y34_N1
\DataIn[38]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(38),
	o => \DataIn[38]~input_o\);

-- Location: LCCOMB_X77_Y33_N22
\DataOut~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~38_combout\ = (\present_state~q\ & \DataIn[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[38]~input_o\,
	combout => \DataOut~38_combout\);

-- Location: IOIBUF_X78_Y29_N8
\DataIn[39]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(39),
	o => \DataIn[39]~input_o\);

-- Location: LCCOMB_X77_Y33_N0
\DataOut~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~39_combout\ = (\present_state~q\ & \DataIn[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[39]~input_o\,
	combout => \DataOut~39_combout\);

-- Location: IOIBUF_X78_Y29_N22
\DataIn[40]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(40),
	o => \DataIn[40]~input_o\);

-- Location: LCCOMB_X77_Y33_N18
\DataOut~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~40_combout\ = (\DataIn[40]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[40]~input_o\,
	combout => \DataOut~40_combout\);

-- Location: IOIBUF_X78_Y31_N8
\DataIn[41]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(41),
	o => \DataIn[41]~input_o\);

-- Location: LCCOMB_X77_Y33_N24
\DataOut~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~41_combout\ = (\DataIn[41]~input_o\ & \present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataIn[41]~input_o\,
	datad => \present_state~q\,
	combout => \DataOut~41_combout\);

-- Location: IOIBUF_X78_Y34_N15
\DataIn[42]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(42),
	o => \DataIn[42]~input_o\);

-- Location: LCCOMB_X77_Y33_N26
\DataOut~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~42_combout\ = (\DataIn[42]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[42]~input_o\,
	combout => \DataOut~42_combout\);

-- Location: IOIBUF_X78_Y34_N23
\DataIn[43]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(43),
	o => \DataIn[43]~input_o\);

-- Location: LCCOMB_X77_Y33_N16
\DataOut~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~43_combout\ = (\present_state~q\ & \DataIn[43]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[43]~input_o\,
	combout => \DataOut~43_combout\);

-- Location: IOIBUF_X54_Y54_N29
\DataIn[44]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(44),
	o => \DataIn[44]~input_o\);

-- Location: LCCOMB_X55_Y53_N16
\DataOut~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~44_combout\ = (\DataIn[44]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[44]~input_o\,
	combout => \DataOut~44_combout\);

-- Location: IOIBUF_X58_Y54_N8
\DataIn[45]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(45),
	o => \DataIn[45]~input_o\);

-- Location: LCCOMB_X55_Y53_N18
\DataOut~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~45_combout\ = (\DataIn[45]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[45]~input_o\,
	combout => \DataOut~45_combout\);

-- Location: IOIBUF_X56_Y54_N1
\DataIn[46]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(46),
	o => \DataIn[46]~input_o\);

-- Location: LCCOMB_X55_Y53_N8
\DataOut~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~46_combout\ = (\DataIn[46]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[46]~input_o\,
	combout => \DataOut~46_combout\);

-- Location: IOIBUF_X60_Y54_N1
\DataIn[47]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(47),
	o => \DataIn[47]~input_o\);

-- Location: LCCOMB_X55_Y53_N30
\DataOut~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~47_combout\ = (\DataIn[47]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[47]~input_o\,
	combout => \DataOut~47_combout\);

-- Location: IOIBUF_X60_Y54_N8
\DataIn[48]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(48),
	o => \DataIn[48]~input_o\);

-- Location: LCCOMB_X55_Y53_N28
\DataOut~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~48_combout\ = (\present_state~q\ & \DataIn[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[48]~input_o\,
	combout => \DataOut~48_combout\);

-- Location: IOIBUF_X58_Y54_N15
\DataIn[49]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(49),
	o => \DataIn[49]~input_o\);

-- Location: LCCOMB_X55_Y53_N10
\DataOut~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~49_combout\ = (\DataIn[49]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[49]~input_o\,
	combout => \DataOut~49_combout\);

-- Location: IOIBUF_X54_Y54_N22
\DataIn[50]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(50),
	o => \DataIn[50]~input_o\);

-- Location: LCCOMB_X55_Y53_N0
\DataOut~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~50_combout\ = (\present_state~q\ & \DataIn[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[50]~input_o\,
	combout => \DataOut~50_combout\);

-- Location: IOIBUF_X51_Y54_N22
\DataIn[51]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(51),
	o => \DataIn[51]~input_o\);

-- Location: LCCOMB_X55_Y53_N2
\DataOut~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~51_combout\ = (\DataIn[51]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[51]~input_o\,
	combout => \DataOut~51_combout\);

-- Location: IOIBUF_X60_Y54_N15
\DataIn[52]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(52),
	o => \DataIn[52]~input_o\);

-- Location: LCCOMB_X55_Y53_N20
\DataOut~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~52_combout\ = (\DataIn[52]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[52]~input_o\,
	combout => \DataOut~52_combout\);

-- Location: IOIBUF_X56_Y54_N15
\DataIn[53]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(53),
	o => \DataIn[53]~input_o\);

-- Location: LCCOMB_X55_Y53_N14
\DataOut~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~53_combout\ = (\DataIn[53]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[53]~input_o\,
	combout => \DataOut~53_combout\);

-- Location: IOIBUF_X56_Y54_N8
\DataIn[54]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(54),
	o => \DataIn[54]~input_o\);

-- Location: LCCOMB_X55_Y53_N24
\DataOut~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~54_combout\ = (\present_state~q\ & \DataIn[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[54]~input_o\,
	combout => \DataOut~54_combout\);

-- Location: IOIBUF_X49_Y54_N22
\DataIn[55]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(55),
	o => \DataIn[55]~input_o\);

-- Location: LCCOMB_X55_Y53_N6
\DataOut~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~55_combout\ = (\DataIn[55]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[55]~input_o\,
	combout => \DataOut~55_combout\);

-- Location: IOIBUF_X64_Y54_N1
\DataIn[56]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(56),
	o => \DataIn[56]~input_o\);

-- Location: LCCOMB_X55_Y53_N12
\DataOut~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~56_combout\ = (\DataIn[56]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[56]~input_o\,
	combout => \DataOut~56_combout\);

-- Location: IOIBUF_X58_Y54_N1
\DataIn[57]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(57),
	o => \DataIn[57]~input_o\);

-- Location: LCCOMB_X55_Y53_N26
\DataOut~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~57_combout\ = (\DataIn[57]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[57]~input_o\,
	combout => \DataOut~57_combout\);

-- Location: IOIBUF_X51_Y54_N29
\DataIn[58]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(58),
	o => \DataIn[58]~input_o\);

-- Location: LCCOMB_X55_Y53_N4
\DataOut~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~58_combout\ = (\present_state~q\ & \DataIn[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[58]~input_o\,
	combout => \DataOut~58_combout\);

-- Location: IOIBUF_X78_Y18_N8
\DataIn[59]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(59),
	o => \DataIn[59]~input_o\);

-- Location: LCCOMB_X77_Y20_N20
\DataOut~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~59_combout\ = (\DataIn[59]~input_o\ & \present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataIn[59]~input_o\,
	datac => \present_state~q\,
	combout => \DataOut~59_combout\);

-- Location: IOIBUF_X78_Y23_N8
\DataIn[60]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(60),
	o => \DataIn[60]~input_o\);

-- Location: LCCOMB_X77_Y20_N2
\DataOut~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~60_combout\ = (\DataIn[60]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[60]~input_o\,
	combout => \DataOut~60_combout\);

-- Location: IOIBUF_X78_Y20_N15
\DataIn[61]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(61),
	o => \DataIn[61]~input_o\);

-- Location: LCCOMB_X77_Y20_N28
\DataOut~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~61_combout\ = (\DataIn[61]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[61]~input_o\,
	combout => \DataOut~61_combout\);

-- Location: IOIBUF_X34_Y39_N8
\DataIn[62]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(62),
	o => \DataIn[62]~input_o\);

-- Location: LCCOMB_X26_Y35_N10
\DataOut~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~62_combout\ = (\DataIn[62]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[62]~input_o\,
	combout => \DataOut~62_combout\);

-- Location: IOIBUF_X49_Y54_N29
\DataIn[63]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(63),
	o => \DataIn[63]~input_o\);

-- Location: LCCOMB_X55_Y53_N22
\DataOut~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~63_combout\ = (\present_state~q\ & \DataIn[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[63]~input_o\,
	combout => \DataOut~63_combout\);

-- Location: IOIBUF_X78_Y20_N8
\DataIn[64]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(64),
	o => \DataIn[64]~input_o\);

-- Location: LCCOMB_X77_Y20_N18
\DataOut~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~64_combout\ = (\DataIn[64]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[64]~input_o\,
	combout => \DataOut~64_combout\);

-- Location: IOIBUF_X78_Y24_N23
\DataIn[65]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(65),
	o => \DataIn[65]~input_o\);

-- Location: LCCOMB_X77_Y20_N4
\DataOut~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~65_combout\ = (\present_state~q\ & \DataIn[65]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[65]~input_o\,
	combout => \DataOut~65_combout\);

-- Location: IOIBUF_X78_Y17_N8
\DataIn[66]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(66),
	o => \DataIn[66]~input_o\);

-- Location: LCCOMB_X77_Y20_N22
\DataOut~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~66_combout\ = (\DataIn[66]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataIn[66]~input_o\,
	datac => \present_state~q\,
	combout => \DataOut~66_combout\);

-- Location: IOIBUF_X78_Y21_N22
\DataIn[67]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(67),
	o => \DataIn[67]~input_o\);

-- Location: LCCOMB_X77_Y20_N24
\DataOut~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~67_combout\ = (\DataIn[67]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[67]~input_o\,
	combout => \DataOut~67_combout\);

-- Location: IOIBUF_X78_Y23_N22
\DataIn[68]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(68),
	o => \DataIn[68]~input_o\);

-- Location: LCCOMB_X77_Y20_N30
\DataOut~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~68_combout\ = (\present_state~q\ & \DataIn[68]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[68]~input_o\,
	combout => \DataOut~68_combout\);

-- Location: IOIBUF_X78_Y24_N15
\DataIn[69]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(69),
	o => \DataIn[69]~input_o\);

-- Location: LCCOMB_X77_Y20_N12
\DataOut~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~69_combout\ = (\present_state~q\ & \DataIn[69]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[69]~input_o\,
	combout => \DataOut~69_combout\);

-- Location: IOIBUF_X78_Y16_N1
\DataIn[70]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(70),
	o => \DataIn[70]~input_o\);

-- Location: LCCOMB_X77_Y20_N26
\DataOut~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~70_combout\ = (\present_state~q\ & \DataIn[70]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[70]~input_o\,
	combout => \DataOut~70_combout\);

-- Location: IOIBUF_X78_Y18_N1
\DataIn[71]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(71),
	o => \DataIn[71]~input_o\);

-- Location: LCCOMB_X77_Y20_N8
\DataOut~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~71_combout\ = (\DataIn[71]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[71]~input_o\,
	combout => \DataOut~71_combout\);

-- Location: IOIBUF_X78_Y20_N23
\DataIn[72]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(72),
	o => \DataIn[72]~input_o\);

-- Location: LCCOMB_X77_Y20_N10
\DataOut~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~72_combout\ = (\DataIn[72]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataIn[72]~input_o\,
	datac => \present_state~q\,
	combout => \DataOut~72_combout\);

-- Location: IOIBUF_X78_Y17_N22
\DataIn[73]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(73),
	o => \DataIn[73]~input_o\);

-- Location: LCCOMB_X77_Y20_N16
\DataOut~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~73_combout\ = (\DataIn[73]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataIn[73]~input_o\,
	datac => \present_state~q\,
	combout => \DataOut~73_combout\);

-- Location: IOIBUF_X78_Y21_N15
\DataIn[74]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(74),
	o => \DataIn[74]~input_o\);

-- Location: LCCOMB_X77_Y20_N6
\DataOut~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~74_combout\ = (\DataIn[74]~input_o\ & \present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataIn[74]~input_o\,
	datac => \present_state~q\,
	combout => \DataOut~74_combout\);

-- Location: IOIBUF_X78_Y20_N1
\DataIn[75]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(75),
	o => \DataIn[75]~input_o\);

-- Location: LCCOMB_X77_Y20_N0
\DataOut~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~75_combout\ = (\DataIn[75]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataIn[75]~input_o\,
	datac => \present_state~q\,
	combout => \DataOut~75_combout\);

-- Location: IOIBUF_X78_Y18_N15
\DataIn[76]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(76),
	o => \DataIn[76]~input_o\);

-- Location: LCCOMB_X77_Y20_N14
\DataOut~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~76_combout\ = (\DataIn[76]~input_o\ & \present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataIn[76]~input_o\,
	datac => \present_state~q\,
	combout => \DataOut~76_combout\);

-- Location: IOIBUF_X16_Y0_N29
\DataIn[77]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(77),
	o => \DataIn[77]~input_o\);

-- Location: LCCOMB_X19_Y1_N20
\DataOut~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~77_combout\ = (\DataIn[77]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[77]~input_o\,
	combout => \DataOut~77_combout\);

-- Location: IOIBUF_X20_Y0_N15
\DataIn[78]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(78),
	o => \DataIn[78]~input_o\);

-- Location: LCCOMB_X19_Y1_N10
\DataOut~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~78_combout\ = (\present_state~q\ & \DataIn[78]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[78]~input_o\,
	combout => \DataOut~78_combout\);

-- Location: IOIBUF_X46_Y54_N22
\DataIn[79]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(79),
	o => \DataIn[79]~input_o\);

-- Location: LCCOMB_X47_Y53_N24
\DataOut~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~79_combout\ = (\present_state~q\ & \DataIn[79]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[79]~input_o\,
	combout => \DataOut~79_combout\);

-- Location: IOIBUF_X22_Y0_N8
\DataIn[80]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(80),
	o => \DataIn[80]~input_o\);

-- Location: LCCOMB_X19_Y1_N8
\DataOut~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~80_combout\ = (\DataIn[80]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[80]~input_o\,
	combout => \DataOut~80_combout\);

-- Location: IOIBUF_X20_Y0_N8
\DataIn[81]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(81),
	o => \DataIn[81]~input_o\);

-- Location: LCCOMB_X19_Y1_N30
\DataOut~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~81_combout\ = (\present_state~q\ & \DataIn[81]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[81]~input_o\,
	combout => \DataOut~81_combout\);

-- Location: IOIBUF_X18_Y0_N22
\DataIn[82]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(82),
	o => \DataIn[82]~input_o\);

-- Location: LCCOMB_X19_Y1_N0
\DataOut~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~82_combout\ = (\DataIn[82]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[82]~input_o\,
	combout => \DataOut~82_combout\);

-- Location: IOIBUF_X0_Y3_N15
\DataIn[83]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(83),
	o => \DataIn[83]~input_o\);

-- Location: LCCOMB_X19_Y1_N14
\DataOut~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~83_combout\ = (\DataIn[83]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[83]~input_o\,
	combout => \DataOut~83_combout\);

-- Location: IOIBUF_X18_Y0_N29
\DataIn[84]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(84),
	o => \DataIn[84]~input_o\);

-- Location: LCCOMB_X19_Y1_N28
\DataOut~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~84_combout\ = (\present_state~q\ & \DataIn[84]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[84]~input_o\,
	combout => \DataOut~84_combout\);

-- Location: IOIBUF_X20_Y0_N29
\DataIn[85]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(85),
	o => \DataIn[85]~input_o\);

-- Location: LCCOMB_X19_Y1_N6
\DataOut~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~85_combout\ = (\present_state~q\ & \DataIn[85]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[85]~input_o\,
	combout => \DataOut~85_combout\);

-- Location: IOIBUF_X20_Y0_N1
\DataIn[86]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(86),
	o => \DataIn[86]~input_o\);

-- Location: LCCOMB_X19_Y1_N24
\DataOut~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~86_combout\ = (\DataIn[86]~input_o\ & \present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataIn[86]~input_o\,
	datad => \present_state~q\,
	combout => \DataOut~86_combout\);

-- Location: IOIBUF_X16_Y0_N22
\DataIn[87]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(87),
	o => \DataIn[87]~input_o\);

-- Location: LCCOMB_X19_Y1_N2
\DataOut~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~87_combout\ = (\DataIn[87]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[87]~input_o\,
	combout => \DataOut~87_combout\);

-- Location: IOIBUF_X22_Y0_N15
\DataIn[88]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(88),
	o => \DataIn[88]~input_o\);

-- Location: LCCOMB_X19_Y1_N16
\DataOut~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~88_combout\ = (\present_state~q\ & \DataIn[88]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[88]~input_o\,
	combout => \DataOut~88_combout\);

-- Location: IOIBUF_X20_Y0_N22
\DataIn[89]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(89),
	o => \DataIn[89]~input_o\);

-- Location: LCCOMB_X19_Y1_N22
\DataOut~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~89_combout\ = (\DataIn[89]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[89]~input_o\,
	combout => \DataOut~89_combout\);

-- Location: IOIBUF_X22_Y0_N1
\DataIn[90]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(90),
	o => \DataIn[90]~input_o\);

-- Location: LCCOMB_X19_Y1_N12
\DataOut~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~90_combout\ = (\present_state~q\ & \DataIn[90]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[90]~input_o\,
	combout => \DataOut~90_combout\);

-- Location: IOIBUF_X16_Y0_N1
\DataIn[91]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(91),
	o => \DataIn[91]~input_o\);

-- Location: LCCOMB_X19_Y1_N26
\DataOut~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~91_combout\ = (\present_state~q\ & \DataIn[91]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[91]~input_o\,
	combout => \DataOut~91_combout\);

-- Location: IOIBUF_X24_Y0_N8
\DataIn[92]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(92),
	o => \DataIn[92]~input_o\);

-- Location: LCCOMB_X19_Y1_N4
\DataOut~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~92_combout\ = (\DataIn[92]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[92]~input_o\,
	combout => \DataOut~92_combout\);

-- Location: IOIBUF_X78_Y43_N22
\DataIn[93]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(93),
	o => \DataIn[93]~input_o\);

-- Location: LCCOMB_X77_Y44_N0
\DataOut~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~93_combout\ = (\present_state~q\ & \DataIn[93]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[93]~input_o\,
	combout => \DataOut~93_combout\);

-- Location: IOIBUF_X74_Y54_N22
\DataIn[94]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(94),
	o => \DataIn[94]~input_o\);

-- Location: LCCOMB_X77_Y44_N18
\DataOut~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~94_combout\ = (\DataIn[94]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[94]~input_o\,
	combout => \DataOut~94_combout\);

-- Location: IOIBUF_X78_Y42_N15
\DataIn[95]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(95),
	o => \DataIn[95]~input_o\);

-- Location: LCCOMB_X77_Y44_N20
\DataOut~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~95_combout\ = (\DataIn[95]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[95]~input_o\,
	combout => \DataOut~95_combout\);

-- Location: IOIBUF_X78_Y40_N8
\DataIn[96]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(96),
	o => \DataIn[96]~input_o\);

-- Location: LCCOMB_X77_Y44_N22
\DataOut~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~96_combout\ = (\DataIn[96]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataIn[96]~input_o\,
	datac => \present_state~q\,
	combout => \DataOut~96_combout\);

-- Location: IOIBUF_X78_Y43_N15
\DataIn[97]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(97),
	o => \DataIn[97]~input_o\);

-- Location: LCCOMB_X77_Y44_N4
\DataOut~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~97_combout\ = (\DataIn[97]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state~q\,
	datac => \DataIn[97]~input_o\,
	combout => \DataOut~97_combout\);

-- Location: IOIBUF_X78_Y44_N1
\DataIn[98]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(98),
	o => \DataIn[98]~input_o\);

-- Location: LCCOMB_X77_Y44_N10
\DataOut~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~98_combout\ = (\DataIn[98]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[98]~input_o\,
	combout => \DataOut~98_combout\);

-- Location: IOIBUF_X78_Y40_N1
\DataIn[99]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(99),
	o => \DataIn[99]~input_o\);

-- Location: LCCOMB_X77_Y44_N24
\DataOut~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~99_combout\ = (\DataIn[99]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[99]~input_o\,
	combout => \DataOut~99_combout\);

-- Location: IOIBUF_X78_Y42_N22
\DataIn[100]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(100),
	o => \DataIn[100]~input_o\);

-- Location: LCCOMB_X77_Y44_N6
\DataOut~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~100_combout\ = (\DataIn[100]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataIn[100]~input_o\,
	datac => \present_state~q\,
	combout => \DataOut~100_combout\);

-- Location: IOIBUF_X78_Y49_N1
\DataIn[101]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(101),
	o => \DataIn[101]~input_o\);

-- Location: LCCOMB_X77_Y44_N28
\DataOut~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~101_combout\ = (\DataIn[101]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[101]~input_o\,
	combout => \DataOut~101_combout\);

-- Location: IOIBUF_X78_Y44_N8
\DataIn[102]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(102),
	o => \DataIn[102]~input_o\);

-- Location: LCCOMB_X77_Y44_N2
\DataOut~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~102_combout\ = (\DataIn[102]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[102]~input_o\,
	combout => \DataOut~102_combout\);

-- Location: IOIBUF_X74_Y54_N8
\DataIn[103]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(103),
	o => \DataIn[103]~input_o\);

-- Location: LCCOMB_X77_Y44_N12
\DataOut~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~103_combout\ = (\present_state~q\ & \DataIn[103]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[103]~input_o\,
	combout => \DataOut~103_combout\);

-- Location: IOIBUF_X78_Y37_N15
\DataIn[104]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(104),
	o => \DataIn[104]~input_o\);

-- Location: LCCOMB_X77_Y37_N16
\DataOut~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~104_combout\ = (\DataIn[104]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[104]~input_o\,
	combout => \DataOut~104_combout\);

-- Location: IOIBUF_X78_Y44_N15
\DataIn[105]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(105),
	o => \DataIn[105]~input_o\);

-- Location: LCCOMB_X77_Y44_N26
\DataOut~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~105_combout\ = (\present_state~q\ & \DataIn[105]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[105]~input_o\,
	combout => \DataOut~105_combout\);

-- Location: IOIBUF_X78_Y41_N1
\DataIn[106]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(106),
	o => \DataIn[106]~input_o\);

-- Location: LCCOMB_X77_Y44_N16
\DataOut~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~106_combout\ = (\DataIn[106]~input_o\ & \present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataIn[106]~input_o\,
	datac => \present_state~q\,
	combout => \DataOut~106_combout\);

-- Location: IOIBUF_X78_Y44_N23
\DataIn[107]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(107),
	o => \DataIn[107]~input_o\);

-- Location: LCCOMB_X77_Y44_N14
\DataOut~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~107_combout\ = (\present_state~q\ & \DataIn[107]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[107]~input_o\,
	combout => \DataOut~107_combout\);

-- Location: IOIBUF_X78_Y42_N8
\DataIn[108]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(108),
	o => \DataIn[108]~input_o\);

-- Location: LCCOMB_X77_Y44_N8
\DataOut~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~108_combout\ = (\DataIn[108]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataIn[108]~input_o\,
	datac => \present_state~q\,
	combout => \DataOut~108_combout\);

-- Location: IOIBUF_X56_Y0_N15
\DataIn[109]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(109),
	o => \DataIn[109]~input_o\);

-- Location: LCCOMB_X55_Y1_N16
\DataOut~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~109_combout\ = (\DataIn[109]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[109]~input_o\,
	combout => \DataOut~109_combout\);

-- Location: IOIBUF_X46_Y0_N1
\DataIn[110]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(110),
	o => \DataIn[110]~input_o\);

-- Location: LCCOMB_X47_Y1_N0
\DataOut~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~110_combout\ = (\present_state~q\ & \DataIn[110]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[110]~input_o\,
	combout => \DataOut~110_combout\);

-- Location: IOIBUF_X62_Y0_N8
\DataIn[111]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(111),
	o => \DataIn[111]~input_o\);

-- Location: LCCOMB_X55_Y1_N14
\DataOut~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~111_combout\ = (\present_state~q\ & \DataIn[111]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[111]~input_o\,
	combout => \DataOut~111_combout\);

-- Location: IOIBUF_X56_Y0_N29
\DataIn[112]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(112),
	o => \DataIn[112]~input_o\);

-- Location: LCCOMB_X55_Y1_N8
\DataOut~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~112_combout\ = (\DataIn[112]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[112]~input_o\,
	combout => \DataOut~112_combout\);

-- Location: IOIBUF_X54_Y0_N22
\DataIn[113]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(113),
	o => \DataIn[113]~input_o\);

-- Location: LCCOMB_X55_Y1_N22
\DataOut~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~113_combout\ = (\present_state~q\ & \DataIn[113]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[113]~input_o\,
	combout => \DataOut~113_combout\);

-- Location: IOIBUF_X54_Y0_N29
\DataIn[114]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(114),
	o => \DataIn[114]~input_o\);

-- Location: LCCOMB_X55_Y1_N20
\DataOut~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~114_combout\ = (\DataIn[114]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[114]~input_o\,
	combout => \DataOut~114_combout\);

-- Location: IOIBUF_X58_Y0_N1
\DataIn[115]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(115),
	o => \DataIn[115]~input_o\);

-- Location: LCCOMB_X55_Y1_N2
\DataOut~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~115_combout\ = (\present_state~q\ & \DataIn[115]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[115]~input_o\,
	combout => \DataOut~115_combout\);

-- Location: IOIBUF_X56_Y0_N1
\DataIn[116]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(116),
	o => \DataIn[116]~input_o\);

-- Location: LCCOMB_X55_Y1_N24
\DataOut~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~116_combout\ = (\DataIn[116]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataIn[116]~input_o\,
	datad => \present_state~q\,
	combout => \DataOut~116_combout\);

-- Location: IOIBUF_X58_Y0_N15
\DataIn[117]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(117),
	o => \DataIn[117]~input_o\);

-- Location: LCCOMB_X55_Y1_N18
\DataOut~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~117_combout\ = (\DataIn[117]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[117]~input_o\,
	combout => \DataOut~117_combout\);

-- Location: IOIBUF_X51_Y0_N29
\DataIn[118]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(118),
	o => \DataIn[118]~input_o\);

-- Location: LCCOMB_X55_Y1_N28
\DataOut~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~118_combout\ = (\present_state~q\ & \DataIn[118]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[118]~input_o\,
	combout => \DataOut~118_combout\);

-- Location: IOIBUF_X40_Y0_N1
\DataIn[119]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(119),
	o => \DataIn[119]~input_o\);

-- Location: LCCOMB_X40_Y1_N28
\DataOut~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~119_combout\ = (\DataIn[119]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[119]~input_o\,
	combout => \DataOut~119_combout\);

-- Location: IOIBUF_X62_Y0_N15
\DataIn[120]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(120),
	o => \DataIn[120]~input_o\);

-- Location: LCCOMB_X55_Y1_N10
\DataOut~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~120_combout\ = (\present_state~q\ & \DataIn[120]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[120]~input_o\,
	combout => \DataOut~120_combout\);

-- Location: IOIBUF_X49_Y0_N22
\DataIn[121]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(121),
	o => \DataIn[121]~input_o\);

-- Location: LCCOMB_X50_Y1_N0
\DataOut~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~121_combout\ = (\DataIn[121]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[121]~input_o\,
	combout => \DataOut~121_combout\);

-- Location: IOIBUF_X56_Y0_N8
\DataIn[122]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(122),
	o => \DataIn[122]~input_o\);

-- Location: LCCOMB_X55_Y1_N0
\DataOut~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~122_combout\ = (\present_state~q\ & \DataIn[122]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[122]~input_o\,
	combout => \DataOut~122_combout\);

-- Location: IOIBUF_X51_Y0_N22
\DataIn[123]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(123),
	o => \DataIn[123]~input_o\);

-- Location: LCCOMB_X55_Y1_N26
\DataOut~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~123_combout\ = (\DataIn[123]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[123]~input_o\,
	combout => \DataOut~123_combout\);

-- Location: IOIBUF_X58_Y0_N8
\DataIn[124]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(124),
	o => \DataIn[124]~input_o\);

-- Location: LCCOMB_X55_Y1_N4
\DataOut~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~124_combout\ = (\present_state~q\ & \DataIn[124]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datac => \DataIn[124]~input_o\,
	combout => \DataOut~124_combout\);

-- Location: IOIBUF_X46_Y54_N8
\DataIn[125]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(125),
	o => \DataIn[125]~input_o\);

-- Location: LCCOMB_X46_Y53_N24
\DataOut~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~125_combout\ = (\DataIn[125]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[125]~input_o\,
	combout => \DataOut~125_combout\);

-- Location: IOIBUF_X78_Y31_N15
\DataIn[126]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(126),
	o => \DataIn[126]~input_o\);

-- Location: LCCOMB_X77_Y33_N14
\DataOut~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~126_combout\ = (\DataIn[126]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_state~q\,
	datad => \DataIn[126]~input_o\,
	combout => \DataOut~126_combout\);

-- Location: IOIBUF_X31_Y0_N1
\DataIn[127]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(127),
	o => \DataIn[127]~input_o\);

-- Location: LCCOMB_X31_Y1_N2
\DataOut~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataOut~127_combout\ = (\DataIn[127]~input_o\) # (!\present_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_state~q\,
	datad => \DataIn[127]~input_o\,
	combout => \DataOut~127_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Finish <= \Finish~output_o\;

ww_DataOut(0) <= \DataOut[0]~output_o\;

ww_DataOut(1) <= \DataOut[1]~output_o\;

ww_DataOut(2) <= \DataOut[2]~output_o\;

ww_DataOut(3) <= \DataOut[3]~output_o\;

ww_DataOut(4) <= \DataOut[4]~output_o\;

ww_DataOut(5) <= \DataOut[5]~output_o\;

ww_DataOut(6) <= \DataOut[6]~output_o\;

ww_DataOut(7) <= \DataOut[7]~output_o\;

ww_DataOut(8) <= \DataOut[8]~output_o\;

ww_DataOut(9) <= \DataOut[9]~output_o\;

ww_DataOut(10) <= \DataOut[10]~output_o\;

ww_DataOut(11) <= \DataOut[11]~output_o\;

ww_DataOut(12) <= \DataOut[12]~output_o\;

ww_DataOut(13) <= \DataOut[13]~output_o\;

ww_DataOut(14) <= \DataOut[14]~output_o\;

ww_DataOut(15) <= \DataOut[15]~output_o\;

ww_DataOut(16) <= \DataOut[16]~output_o\;

ww_DataOut(17) <= \DataOut[17]~output_o\;

ww_DataOut(18) <= \DataOut[18]~output_o\;

ww_DataOut(19) <= \DataOut[19]~output_o\;

ww_DataOut(20) <= \DataOut[20]~output_o\;

ww_DataOut(21) <= \DataOut[21]~output_o\;

ww_DataOut(22) <= \DataOut[22]~output_o\;

ww_DataOut(23) <= \DataOut[23]~output_o\;

ww_DataOut(24) <= \DataOut[24]~output_o\;

ww_DataOut(25) <= \DataOut[25]~output_o\;

ww_DataOut(26) <= \DataOut[26]~output_o\;

ww_DataOut(27) <= \DataOut[27]~output_o\;

ww_DataOut(28) <= \DataOut[28]~output_o\;

ww_DataOut(29) <= \DataOut[29]~output_o\;

ww_DataOut(30) <= \DataOut[30]~output_o\;

ww_DataOut(31) <= \DataOut[31]~output_o\;

ww_DataOut(32) <= \DataOut[32]~output_o\;

ww_DataOut(33) <= \DataOut[33]~output_o\;

ww_DataOut(34) <= \DataOut[34]~output_o\;

ww_DataOut(35) <= \DataOut[35]~output_o\;

ww_DataOut(36) <= \DataOut[36]~output_o\;

ww_DataOut(37) <= \DataOut[37]~output_o\;

ww_DataOut(38) <= \DataOut[38]~output_o\;

ww_DataOut(39) <= \DataOut[39]~output_o\;

ww_DataOut(40) <= \DataOut[40]~output_o\;

ww_DataOut(41) <= \DataOut[41]~output_o\;

ww_DataOut(42) <= \DataOut[42]~output_o\;

ww_DataOut(43) <= \DataOut[43]~output_o\;

ww_DataOut(44) <= \DataOut[44]~output_o\;

ww_DataOut(45) <= \DataOut[45]~output_o\;

ww_DataOut(46) <= \DataOut[46]~output_o\;

ww_DataOut(47) <= \DataOut[47]~output_o\;

ww_DataOut(48) <= \DataOut[48]~output_o\;

ww_DataOut(49) <= \DataOut[49]~output_o\;

ww_DataOut(50) <= \DataOut[50]~output_o\;

ww_DataOut(51) <= \DataOut[51]~output_o\;

ww_DataOut(52) <= \DataOut[52]~output_o\;

ww_DataOut(53) <= \DataOut[53]~output_o\;

ww_DataOut(54) <= \DataOut[54]~output_o\;

ww_DataOut(55) <= \DataOut[55]~output_o\;

ww_DataOut(56) <= \DataOut[56]~output_o\;

ww_DataOut(57) <= \DataOut[57]~output_o\;

ww_DataOut(58) <= \DataOut[58]~output_o\;

ww_DataOut(59) <= \DataOut[59]~output_o\;

ww_DataOut(60) <= \DataOut[60]~output_o\;

ww_DataOut(61) <= \DataOut[61]~output_o\;

ww_DataOut(62) <= \DataOut[62]~output_o\;

ww_DataOut(63) <= \DataOut[63]~output_o\;

ww_DataOut(64) <= \DataOut[64]~output_o\;

ww_DataOut(65) <= \DataOut[65]~output_o\;

ww_DataOut(66) <= \DataOut[66]~output_o\;

ww_DataOut(67) <= \DataOut[67]~output_o\;

ww_DataOut(68) <= \DataOut[68]~output_o\;

ww_DataOut(69) <= \DataOut[69]~output_o\;

ww_DataOut(70) <= \DataOut[70]~output_o\;

ww_DataOut(71) <= \DataOut[71]~output_o\;

ww_DataOut(72) <= \DataOut[72]~output_o\;

ww_DataOut(73) <= \DataOut[73]~output_o\;

ww_DataOut(74) <= \DataOut[74]~output_o\;

ww_DataOut(75) <= \DataOut[75]~output_o\;

ww_DataOut(76) <= \DataOut[76]~output_o\;

ww_DataOut(77) <= \DataOut[77]~output_o\;

ww_DataOut(78) <= \DataOut[78]~output_o\;

ww_DataOut(79) <= \DataOut[79]~output_o\;

ww_DataOut(80) <= \DataOut[80]~output_o\;

ww_DataOut(81) <= \DataOut[81]~output_o\;

ww_DataOut(82) <= \DataOut[82]~output_o\;

ww_DataOut(83) <= \DataOut[83]~output_o\;

ww_DataOut(84) <= \DataOut[84]~output_o\;

ww_DataOut(85) <= \DataOut[85]~output_o\;

ww_DataOut(86) <= \DataOut[86]~output_o\;

ww_DataOut(87) <= \DataOut[87]~output_o\;

ww_DataOut(88) <= \DataOut[88]~output_o\;

ww_DataOut(89) <= \DataOut[89]~output_o\;

ww_DataOut(90) <= \DataOut[90]~output_o\;

ww_DataOut(91) <= \DataOut[91]~output_o\;

ww_DataOut(92) <= \DataOut[92]~output_o\;

ww_DataOut(93) <= \DataOut[93]~output_o\;

ww_DataOut(94) <= \DataOut[94]~output_o\;

ww_DataOut(95) <= \DataOut[95]~output_o\;

ww_DataOut(96) <= \DataOut[96]~output_o\;

ww_DataOut(97) <= \DataOut[97]~output_o\;

ww_DataOut(98) <= \DataOut[98]~output_o\;

ww_DataOut(99) <= \DataOut[99]~output_o\;

ww_DataOut(100) <= \DataOut[100]~output_o\;

ww_DataOut(101) <= \DataOut[101]~output_o\;

ww_DataOut(102) <= \DataOut[102]~output_o\;

ww_DataOut(103) <= \DataOut[103]~output_o\;

ww_DataOut(104) <= \DataOut[104]~output_o\;

ww_DataOut(105) <= \DataOut[105]~output_o\;

ww_DataOut(106) <= \DataOut[106]~output_o\;

ww_DataOut(107) <= \DataOut[107]~output_o\;

ww_DataOut(108) <= \DataOut[108]~output_o\;

ww_DataOut(109) <= \DataOut[109]~output_o\;

ww_DataOut(110) <= \DataOut[110]~output_o\;

ww_DataOut(111) <= \DataOut[111]~output_o\;

ww_DataOut(112) <= \DataOut[112]~output_o\;

ww_DataOut(113) <= \DataOut[113]~output_o\;

ww_DataOut(114) <= \DataOut[114]~output_o\;

ww_DataOut(115) <= \DataOut[115]~output_o\;

ww_DataOut(116) <= \DataOut[116]~output_o\;

ww_DataOut(117) <= \DataOut[117]~output_o\;

ww_DataOut(118) <= \DataOut[118]~output_o\;

ww_DataOut(119) <= \DataOut[119]~output_o\;

ww_DataOut(120) <= \DataOut[120]~output_o\;

ww_DataOut(121) <= \DataOut[121]~output_o\;

ww_DataOut(122) <= \DataOut[122]~output_o\;

ww_DataOut(123) <= \DataOut[123]~output_o\;

ww_DataOut(124) <= \DataOut[124]~output_o\;

ww_DataOut(125) <= \DataOut[125]~output_o\;

ww_DataOut(126) <= \DataOut[126]~output_o\;

ww_DataOut(127) <= \DataOut[127]~output_o\;
END structure;


