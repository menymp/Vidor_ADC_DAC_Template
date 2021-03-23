-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.1.1 Build 646 04/11/2019 SJ Lite Edition"

-- DATE "08/26/2020 13:06:49"

-- 
-- Device: Altera 10CL016YU256C8G Package UFBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MKRVIDOR4000_top IS
    PORT (
	\oHDMI_TX[0](n)\ : OUT std_logic;
	\oHDMI_TX[1](n)\ : OUT std_logic;
	\oHDMI_TX[2](n)\ : OUT std_logic;
	\oHDMI_CLK(n)\ : OUT std_logic;
	\iMIPI_D[0](n)\ : IN std_logic := '0';
	\iMIPI_D[1](n)\ : IN std_logic := '0';
	\iMIPI_CLK(n)\ : IN std_logic := '0';
	iCLK : IN std_logic;
	iRESETn : IN std_logic;
	iSAM_INT : IN std_logic;
	oSAM_INT : OUT std_logic;
	oSDRAM_CLK : OUT std_logic;
	oSDRAM_ADDR : OUT std_logic_vector(11 DOWNTO 0);
	oSDRAM_BA : OUT std_logic_vector(1 DOWNTO 0);
	oSDRAM_CASn : OUT std_logic;
	oSDRAM_CKE : OUT std_logic;
	oSDRAM_CSn : OUT std_logic;
	bSDRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	oSDRAM_DQM : OUT std_logic_vector(1 DOWNTO 0);
	oSDRAM_RASn : OUT std_logic;
	oSDRAM_WEn : OUT std_logic;
	bMKR_AREF : INOUT std_logic;
	bMKR_A : INOUT std_logic_vector(6 DOWNTO 0);
	bMKR_D : INOUT std_logic_vector(14 DOWNTO 0);
	bPEX_RST : INOUT std_logic;
	bPEX_PIN6 : INOUT std_logic;
	bPEX_PIN8 : INOUT std_logic;
	bPEX_PIN10 : INOUT std_logic;
	iPEX_PIN11 : IN std_logic;
	bPEX_PIN12 : INOUT std_logic;
	iPEX_PIN13 : IN std_logic;
	bPEX_PIN14 : INOUT std_logic;
	bPEX_PIN16 : INOUT std_logic;
	bPEX_PIN20 : INOUT std_logic;
	iPEX_PIN23 : IN std_logic;
	iPEX_PIN25 : IN std_logic;
	bPEX_PIN28 : INOUT std_logic;
	bPEX_PIN30 : INOUT std_logic;
	iPEX_PIN31 : IN std_logic;
	bPEX_PIN32 : INOUT std_logic;
	iPEX_PIN33 : IN std_logic;
	bPEX_PIN42 : INOUT std_logic;
	bPEX_PIN44 : INOUT std_logic;
	bPEX_PIN45 : INOUT std_logic;
	bPEX_PIN46 : INOUT std_logic;
	bPEX_PIN47 : INOUT std_logic;
	bPEX_PIN48 : INOUT std_logic;
	bPEX_PIN49 : INOUT std_logic;
	bPEX_PIN51 : INOUT std_logic;
	bWM_PIO1 : INOUT std_logic;
	bWM_PIO2 : INOUT std_logic;
	bWM_PIO3 : INOUT std_logic;
	bWM_PIO4 : INOUT std_logic;
	bWM_PIO5 : INOUT std_logic;
	bWM_PIO7 : INOUT std_logic;
	bWM_PIO8 : INOUT std_logic;
	bWM_PIO18 : INOUT std_logic;
	bWM_PIO20 : INOUT std_logic;
	bWM_PIO21 : INOUT std_logic;
	bWM_PIO27 : INOUT std_logic;
	bWM_PIO28 : INOUT std_logic;
	bWM_PIO29 : INOUT std_logic;
	bWM_PIO31 : INOUT std_logic;
	iWM_PIO32 : IN std_logic;
	bWM_PIO34 : INOUT std_logic;
	bWM_PIO35 : INOUT std_logic;
	bWM_PIO36 : INOUT std_logic;
	iWM_TX : IN std_logic;
	oWM_RX : INOUT std_logic;
	oWM_RESET : INOUT std_logic;
	oHDMI_TX : OUT std_logic_vector(2 DOWNTO 0);
	oHDMI_CLK : OUT std_logic;
	bHDMI_SDA : INOUT std_logic;
	bHDMI_SCL : INOUT std_logic;
	iHDMI_HPD : IN std_logic;
	iMIPI_D : IN std_logic_vector(1 DOWNTO 0);
	iMIPI_CLK : IN std_logic;
	bMIPI_SDA : INOUT std_logic;
	bMIPI_SCL : INOUT std_logic;
	bMIPI_GP : INOUT std_logic_vector(1 DOWNTO 0);
	oFLASH_SCK : OUT std_logic;
	oFLASH_CS : OUT std_logic;
	oFLASH_MOSI : INOUT std_logic;
	iFLASH_MISO : INOUT std_logic;
	oFLASH_HOLD : INOUT std_logic;
	oFLASH_WP : INOUT std_logic
	);
END MKRVIDOR4000_top;

-- Design Ports Information
-- iRESETn	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iSAM_INT	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- oSAM_INT	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oSDRAM_CLK	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[0]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[2]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[4]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[5]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[8]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[9]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[10]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_ADDR[11]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_BA[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_BA[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_CASn	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_CKE	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_CSn	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_DQM[0]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_DQM[1]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_RASn	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oSDRAM_WEn	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- iPEX_PIN11	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iPEX_PIN13	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iPEX_PIN23	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iPEX_PIN25	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iPEX_PIN31	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iPEX_PIN33	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iWM_PIO32	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iWM_TX	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oHDMI_TX[0]	=>  Location: PIN_R16,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- oHDMI_TX[1]	=>  Location: PIN_K15,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- oHDMI_TX[2]	=>  Location: PIN_J15,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- oHDMI_CLK	=>  Location: PIN_N15,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- iHDMI_HPD	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iMIPI_D[0]	=>  Location: PIN_L2,	 I/O Standard: LVDS,	 Current Strength: Default
-- iMIPI_D[1]	=>  Location: PIN_J2,	 I/O Standard: LVDS,	 Current Strength: Default
-- iMIPI_CLK	=>  Location: PIN_M2,	 I/O Standard: LVDS,	 Current Strength: Default
-- oFLASH_SCK	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oFLASH_CS	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bSDRAM_DQ[0]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[1]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[2]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[3]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[4]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[5]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[6]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[7]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[8]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[9]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[10]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[11]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[12]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[13]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[14]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bSDRAM_DQ[15]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_AREF	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_A[0]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_A[1]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_A[2]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_A[3]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_A[4]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_A[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_A[6]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[0]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[1]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[8]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[9]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[10]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[11]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[12]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[13]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[14]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_RST	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN6	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN8	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN10	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN12	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN14	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN16	=>  Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN20	=>  Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN28	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN30	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN32	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN42	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN44	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN45	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN46	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN47	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN48	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN49	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bPEX_PIN51	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO1	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO2	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO3	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO4	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO5	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO7	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO8	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO18	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO20	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO21	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO27	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO28	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO29	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO31	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO34	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO35	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bWM_PIO36	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oWM_RX	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oWM_RESET	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bHDMI_SDA	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bHDMI_SCL	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bMIPI_SDA	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bMIPI_SCL	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bMIPI_GP[0]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMIPI_GP[1]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oFLASH_MOSI	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iFLASH_MISO	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oFLASH_HOLD	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oFLASH_WP	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[3]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[4]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[5]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[6]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bMKR_D[7]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- iCLK	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oHDMI_TX[0](n)	=>  Location: PIN_P16,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- oHDMI_TX[1](n)	=>  Location: PIN_K16,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- oHDMI_TX[2](n)	=>  Location: PIN_J16,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- oHDMI_CLK(n)	=>  Location: PIN_N16,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- iMIPI_D[0](n)	=>  Location: PIN_L1,	 I/O Standard: LVDS,	 Current Strength: Default
-- iMIPI_D[1](n)	=>  Location: PIN_J1,	 I/O Standard: LVDS,	 Current Strength: Default
-- iMIPI_CLK(n)	=>  Location: PIN_M1,	 I/O Standard: LVDS,	 Current Strength: Default


ARCHITECTURE structure OF MKRVIDOR4000_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_oHDMI_TX[0](n)\ : std_logic;
SIGNAL \ww_oHDMI_TX[1](n)\ : std_logic;
SIGNAL \ww_oHDMI_TX[2](n)\ : std_logic;
SIGNAL \ww_oHDMI_CLK(n)\ : std_logic;
SIGNAL \ww_iMIPI_D[0](n)\ : std_logic;
SIGNAL \ww_iMIPI_D[1](n)\ : std_logic;
SIGNAL \ww_iMIPI_CLK(n)\ : std_logic;
SIGNAL ww_iCLK : std_logic;
SIGNAL ww_iRESETn : std_logic;
SIGNAL ww_iSAM_INT : std_logic;
SIGNAL ww_oSAM_INT : std_logic;
SIGNAL ww_oSDRAM_CLK : std_logic;
SIGNAL ww_oSDRAM_ADDR : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_oSDRAM_BA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_oSDRAM_CASn : std_logic;
SIGNAL ww_oSDRAM_CKE : std_logic;
SIGNAL ww_oSDRAM_CSn : std_logic;
SIGNAL ww_oSDRAM_DQM : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_oSDRAM_RASn : std_logic;
SIGNAL ww_oSDRAM_WEn : std_logic;
SIGNAL ww_iPEX_PIN11 : std_logic;
SIGNAL ww_iPEX_PIN13 : std_logic;
SIGNAL ww_iPEX_PIN23 : std_logic;
SIGNAL ww_iPEX_PIN25 : std_logic;
SIGNAL ww_iPEX_PIN31 : std_logic;
SIGNAL ww_iPEX_PIN33 : std_logic;
SIGNAL ww_iWM_PIO32 : std_logic;
SIGNAL ww_iWM_TX : std_logic;
SIGNAL ww_oHDMI_TX : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_oHDMI_CLK : std_logic;
SIGNAL ww_iHDMI_HPD : std_logic;
SIGNAL ww_iMIPI_D : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_iMIPI_CLK : std_logic;
SIGNAL ww_oFLASH_SCK : std_logic;
SIGNAL ww_oFLASH_CS : std_logic;
SIGNAL \PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \iRESETn~input_o\ : std_logic;
SIGNAL \iSAM_INT~input_o\ : std_logic;
SIGNAL \iPEX_PIN11~input_o\ : std_logic;
SIGNAL \iPEX_PIN13~input_o\ : std_logic;
SIGNAL \iPEX_PIN23~input_o\ : std_logic;
SIGNAL \iPEX_PIN25~input_o\ : std_logic;
SIGNAL \iPEX_PIN31~input_o\ : std_logic;
SIGNAL \iPEX_PIN33~input_o\ : std_logic;
SIGNAL \iWM_PIO32~input_o\ : std_logic;
SIGNAL \iWM_TX~input_o\ : std_logic;
SIGNAL \iHDMI_HPD~input_o\ : std_logic;
SIGNAL \iMIPI_D[0]~input_o\ : std_logic;
SIGNAL \iMIPI_D[1]~input_o\ : std_logic;
SIGNAL \iMIPI_CLK~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \bSDRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \bMKR_AREF~input_o\ : std_logic;
SIGNAL \bMKR_A[0]~input_o\ : std_logic;
SIGNAL \bMKR_A[1]~input_o\ : std_logic;
SIGNAL \bMKR_A[2]~input_o\ : std_logic;
SIGNAL \bMKR_A[3]~input_o\ : std_logic;
SIGNAL \bMKR_A[4]~input_o\ : std_logic;
SIGNAL \bMKR_A[5]~input_o\ : std_logic;
SIGNAL \bMKR_A[6]~input_o\ : std_logic;
SIGNAL \bMKR_D[0]~input_o\ : std_logic;
SIGNAL \bMKR_D[1]~input_o\ : std_logic;
SIGNAL \bMKR_D[2]~input_o\ : std_logic;
SIGNAL \bMKR_D[8]~input_o\ : std_logic;
SIGNAL \bMKR_D[9]~input_o\ : std_logic;
SIGNAL \bMKR_D[10]~input_o\ : std_logic;
SIGNAL \bMKR_D[11]~input_o\ : std_logic;
SIGNAL \bMKR_D[12]~input_o\ : std_logic;
SIGNAL \bMKR_D[13]~input_o\ : std_logic;
SIGNAL \bMKR_D[14]~input_o\ : std_logic;
SIGNAL \bPEX_RST~input_o\ : std_logic;
SIGNAL \bPEX_PIN6~input_o\ : std_logic;
SIGNAL \bPEX_PIN8~input_o\ : std_logic;
SIGNAL \bPEX_PIN10~input_o\ : std_logic;
SIGNAL \bPEX_PIN12~input_o\ : std_logic;
SIGNAL \bPEX_PIN14~input_o\ : std_logic;
SIGNAL \bPEX_PIN16~input_o\ : std_logic;
SIGNAL \bPEX_PIN20~input_o\ : std_logic;
SIGNAL \bPEX_PIN28~input_o\ : std_logic;
SIGNAL \bPEX_PIN30~input_o\ : std_logic;
SIGNAL \bPEX_PIN32~input_o\ : std_logic;
SIGNAL \bPEX_PIN42~input_o\ : std_logic;
SIGNAL \bPEX_PIN44~input_o\ : std_logic;
SIGNAL \bPEX_PIN45~input_o\ : std_logic;
SIGNAL \bPEX_PIN46~input_o\ : std_logic;
SIGNAL \bPEX_PIN47~input_o\ : std_logic;
SIGNAL \bPEX_PIN48~input_o\ : std_logic;
SIGNAL \bPEX_PIN49~input_o\ : std_logic;
SIGNAL \bPEX_PIN51~input_o\ : std_logic;
SIGNAL \bWM_PIO1~input_o\ : std_logic;
SIGNAL \bWM_PIO2~input_o\ : std_logic;
SIGNAL \bWM_PIO3~input_o\ : std_logic;
SIGNAL \bWM_PIO4~input_o\ : std_logic;
SIGNAL \bWM_PIO5~input_o\ : std_logic;
SIGNAL \bWM_PIO7~input_o\ : std_logic;
SIGNAL \bWM_PIO8~input_o\ : std_logic;
SIGNAL \bWM_PIO18~input_o\ : std_logic;
SIGNAL \bWM_PIO20~input_o\ : std_logic;
SIGNAL \bWM_PIO21~input_o\ : std_logic;
SIGNAL \bWM_PIO27~input_o\ : std_logic;
SIGNAL \bWM_PIO28~input_o\ : std_logic;
SIGNAL \bWM_PIO29~input_o\ : std_logic;
SIGNAL \bWM_PIO31~input_o\ : std_logic;
SIGNAL \bWM_PIO34~input_o\ : std_logic;
SIGNAL \bWM_PIO35~input_o\ : std_logic;
SIGNAL \bWM_PIO36~input_o\ : std_logic;
SIGNAL \oWM_RX~input_o\ : std_logic;
SIGNAL \oWM_RESET~input_o\ : std_logic;
SIGNAL \bHDMI_SDA~input_o\ : std_logic;
SIGNAL \bHDMI_SCL~input_o\ : std_logic;
SIGNAL \bMIPI_SDA~input_o\ : std_logic;
SIGNAL \bMIPI_SCL~input_o\ : std_logic;
SIGNAL \bMIPI_GP[0]~input_o\ : std_logic;
SIGNAL \bMIPI_GP[1]~input_o\ : std_logic;
SIGNAL \oFLASH_MOSI~input_o\ : std_logic;
SIGNAL \iFLASH_MISO~input_o\ : std_logic;
SIGNAL \oFLASH_HOLD~input_o\ : std_logic;
SIGNAL \oFLASH_WP~input_o\ : std_logic;
SIGNAL \bMKR_D[3]~input_o\ : std_logic;
SIGNAL \bMKR_D[5]~input_o\ : std_logic;
SIGNAL \bMKR_D[6]~input_o\ : std_logic;
SIGNAL \bMKR_D[7]~input_o\ : std_logic;
SIGNAL \iCLK~input_o\ : std_logic;
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|count~6_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~7\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|count~7_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~9\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~10_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|count~5_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~11\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~12_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|count~4_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~13\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~14_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~7_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~15\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~6_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~8_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~17\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~18_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~3_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~3_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~9_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~1\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|count~10_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~3\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~4_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|count~9_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~5\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~6_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|count~8_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|count~3_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|count~11_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|count~12_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~19\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~20_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM1\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM5\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM3\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk_OTERM9\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~4_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~5_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM7_OTERM23\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_RTM026_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM7_OTERM25\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd2~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd1~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd1~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next~12_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector1~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~3_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector18~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|state.command~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|state~13_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack2~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|state.wr~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector24~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~6_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector24~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|state.mstr_ack~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|WideOr1~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~4_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector23~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector23~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~3_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|state~14_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_d~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector8~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_wr~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w1~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w2~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector9~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd1~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w4~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~3_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector21~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|state.stop~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector17~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector17~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_ena~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_ena~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|scl~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~14_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~9_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~15_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM15\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector12~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector10~4_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector13~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector15~4_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector14~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector14~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector16~4_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux2~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector11~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector11~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector9~4_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux2~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~12_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~11_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux3~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux3~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~8_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~10_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~3_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~4_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~5_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~7_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~13_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM13\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM11\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~2_RTM018_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM17\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~16_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector30~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector4~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector6~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Add0~1\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Add0~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector3~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Add0~3\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Add0~4_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector2~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Add0~5\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Add0~6_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector1~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Add0~7\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Add0~8_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector0~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Equal0~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|count~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~1\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|count~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~3\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~4_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~5\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~6_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~7\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~8_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~9\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~10_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~11\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~12_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~13\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~14_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~15\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~16_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~17\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~18_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~19\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~20_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~21\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~22_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Equal0~6_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~23\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~24_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~25\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~26_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~27\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~28_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~29\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~30_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~31\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~32_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~33\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~34_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~35\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~36_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~37\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~38_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~39\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~40_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~41\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~42_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~43\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~44_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~45\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~46_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~47\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~48_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~49\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~50_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~51\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~52_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~53\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~54_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Equal0~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~55\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~56_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~57\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~58_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~59\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~60_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~61\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Add0~62_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Equal0~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Equal0~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Equal0~3_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Equal0~4_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Equal0~7_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Equal0~8_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Equal0~9_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Equal0~5_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|Equal0~10_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|tmp~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|tmp~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[0]~10_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|Selector0~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|current_state.High_wait~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|Selector1~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|Selector1~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|current_state.TransferPauseHigh~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[0]~11\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[1]~12_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[1]~13\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[2]~14_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[2]~15\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[3]~16_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[3]~17\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[4]~18_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[4]~19\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[5]~20_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[5]~21\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[6]~22_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[6]~23\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[7]~24_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[7]~25\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index[8]~26_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|current_state~7_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|current_state.High_send~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector5~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector5~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|current_state~10_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|current_state.Set_output~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector6~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ : std_logic;
SIGNAL \bMKR_D[4]~input_o\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[16]~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~5_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[14]~2_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[14]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[13]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~6_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~9_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[5]~10_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[5]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[5]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~10_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[4]~11_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[4]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[4]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector22~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector21~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector11~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[6]~9_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[6]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[6]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector20~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~3_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[7]~8_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[7]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[7]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector19~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~8_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[9]~7_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[9]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[8]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector18~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[10]~6_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[10]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector17~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[11]~5_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[11]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[10]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector16~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~7_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[12]~4_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[12]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[11]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector15~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[13]~3_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[13]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[12]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector14~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector13~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[15]~1_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[15]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[14]~feeder_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector12~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector11~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector10~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector9~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector8~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|Selector7~0_combout\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|mosi~0_combout\ : std_logic;
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PLL_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|data_Index\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ADC_DAC_BlockConnection_inst|inst|output_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ADC_DAC_BlockConnection_inst|inst|data_Index\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ADC_DAC_BlockConnection_inst|inst1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \ADC_DAC_BlockConnection_inst|inst3|ALT_INV_current_state.TransferPauseHigh~q\ : std_logic;
SIGNAL \ADC_DAC_BlockConnection_inst|inst|ALT_INV_current_state.Idle~q\ : std_logic;

BEGIN

\oHDMI_TX[0](n)\ <= \ww_oHDMI_TX[0](n)\;
\oHDMI_TX[1](n)\ <= \ww_oHDMI_TX[1](n)\;
\oHDMI_TX[2](n)\ <= \ww_oHDMI_TX[2](n)\;
\oHDMI_CLK(n)\ <= \ww_oHDMI_CLK(n)\;
\ww_iMIPI_D[0](n)\ <= \iMIPI_D[0](n)\;
\ww_iMIPI_D[1](n)\ <= \iMIPI_D[1](n)\;
\ww_iMIPI_CLK(n)\ <= \iMIPI_CLK(n)\;
ww_iCLK <= iCLK;
ww_iRESETn <= iRESETn;
ww_iSAM_INT <= iSAM_INT;
oSAM_INT <= ww_oSAM_INT;
oSDRAM_CLK <= ww_oSDRAM_CLK;
oSDRAM_ADDR <= ww_oSDRAM_ADDR;
oSDRAM_BA <= ww_oSDRAM_BA;
oSDRAM_CASn <= ww_oSDRAM_CASn;
oSDRAM_CKE <= ww_oSDRAM_CKE;
oSDRAM_CSn <= ww_oSDRAM_CSn;
oSDRAM_DQM <= ww_oSDRAM_DQM;
oSDRAM_RASn <= ww_oSDRAM_RASn;
oSDRAM_WEn <= ww_oSDRAM_WEn;
ww_iPEX_PIN11 <= iPEX_PIN11;
ww_iPEX_PIN13 <= iPEX_PIN13;
ww_iPEX_PIN23 <= iPEX_PIN23;
ww_iPEX_PIN25 <= iPEX_PIN25;
ww_iPEX_PIN31 <= iPEX_PIN31;
ww_iPEX_PIN33 <= iPEX_PIN33;
ww_iWM_PIO32 <= iWM_PIO32;
ww_iWM_TX <= iWM_TX;
oHDMI_TX <= ww_oHDMI_TX;
oHDMI_CLK <= ww_oHDMI_CLK;
ww_iHDMI_HPD <= iHDMI_HPD;
ww_iMIPI_D <= iMIPI_D;
ww_iMIPI_CLK <= iMIPI_CLK;
oFLASH_SCK <= ww_oFLASH_SCK;
oFLASH_CS <= ww_oFLASH_CS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \iCLK~input_o\);

\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\PLL_inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(3));

\PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL_inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ADC_DAC_BlockConnection_inst|inst1|tmp~q\);
\ADC_DAC_BlockConnection_inst|inst3|ALT_INV_current_state.TransferPauseHigh~q\ <= NOT \ADC_DAC_BlockConnection_inst|inst3|current_state.TransferPauseHigh~q\;
\ADC_DAC_BlockConnection_inst|inst|ALT_INV_current_state.Idle~q\ <= NOT \ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\;

-- Location: IOOBUF_X0_Y5_N9
\oSAM_INT~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSAM_INT);

-- Location: IOOBUF_X35_Y29_N9
\oSDRAM_CLK~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_oSDRAM_CLK);

-- Location: IOOBUF_X32_Y29_N23
\oSDRAM_ADDR[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(0));

-- Location: IOOBUF_X32_Y29_N30
\oSDRAM_ADDR[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(1));

-- Location: IOOBUF_X28_Y29_N16
\oSDRAM_ADDR[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(2));

-- Location: IOOBUF_X35_Y29_N2
\oSDRAM_ADDR[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(3));

-- Location: IOOBUF_X39_Y29_N9
\oSDRAM_ADDR[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(4));

-- Location: IOOBUF_X39_Y29_N2
\oSDRAM_ADDR[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(5));

-- Location: IOOBUF_X39_Y29_N30
\oSDRAM_ADDR[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(6));

-- Location: IOOBUF_X37_Y29_N2
\oSDRAM_ADDR[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(7));

-- Location: IOOBUF_X32_Y29_N2
\oSDRAM_ADDR[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(8));

-- Location: IOOBUF_X23_Y29_N2
\oSDRAM_ADDR[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(9));

-- Location: IOOBUF_X37_Y29_N23
\oSDRAM_ADDR[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(10));

-- Location: IOOBUF_X32_Y29_N9
\oSDRAM_ADDR[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_ADDR(11));

-- Location: IOOBUF_X26_Y29_N23
\oSDRAM_BA[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_BA(0));

-- Location: IOOBUF_X26_Y29_N30
\oSDRAM_BA[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_BA(1));

-- Location: IOOBUF_X11_Y29_N9
\oSDRAM_CASn~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_CASn);

-- Location: IOOBUF_X21_Y29_N9
\oSDRAM_CKE~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_CKE);

-- Location: IOOBUF_X30_Y29_N16
\oSDRAM_CSn~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_CSn);

-- Location: IOOBUF_X11_Y29_N2
\oSDRAM_DQM[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_DQM(0));

-- Location: IOOBUF_X26_Y29_N16
\oSDRAM_DQM[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_DQM(1));

-- Location: IOOBUF_X23_Y29_N9
\oSDRAM_RASn~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_RASn);

-- Location: IOOBUF_X30_Y29_N23
\oSDRAM_WEn~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oSDRAM_WEn);

-- Location: IOOBUF_X41_Y3_N9
\oHDMI_TX[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oHDMI_TX(0),
	obar => \ww_oHDMI_TX[0](n)\);

-- Location: IOOBUF_X41_Y13_N23
\oHDMI_TX[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oHDMI_TX(1),
	obar => \ww_oHDMI_TX[1](n)\);

-- Location: IOOBUF_X41_Y13_N9
\oHDMI_TX[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oHDMI_TX(2),
	obar => \ww_oHDMI_TX[2](n)\);

-- Location: IOOBUF_X41_Y5_N2
\oHDMI_CLK~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oHDMI_CLK,
	obar => \ww_oHDMI_CLK(n)\);

-- Location: IOOBUF_X0_Y20_N16
\oFLASH_SCK~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oFLASH_SCK);

-- Location: IOOBUF_X0_Y24_N9
\oFLASH_CS~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oFLASH_CS);

-- Location: IOOBUF_X3_Y29_N16
\bSDRAM_DQ[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(0));

-- Location: IOOBUF_X3_Y29_N9
\bSDRAM_DQ[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(1));

-- Location: IOOBUF_X1_Y29_N2
\bSDRAM_DQ[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(2));

-- Location: IOOBUF_X3_Y29_N30
\bSDRAM_DQ[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(3));

-- Location: IOOBUF_X3_Y29_N2
\bSDRAM_DQ[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(4));

-- Location: IOOBUF_X5_Y29_N2
\bSDRAM_DQ[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(5));

-- Location: IOOBUF_X5_Y29_N16
\bSDRAM_DQ[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(6));

-- Location: IOOBUF_X9_Y29_N2
\bSDRAM_DQ[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(7));

-- Location: IOOBUF_X14_Y29_N30
\bSDRAM_DQ[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(8));

-- Location: IOOBUF_X14_Y29_N2
\bSDRAM_DQ[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(9));

-- Location: IOOBUF_X7_Y29_N9
\bSDRAM_DQ[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(10));

-- Location: IOOBUF_X14_Y29_N23
\bSDRAM_DQ[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(11));

-- Location: IOOBUF_X7_Y29_N30
\bSDRAM_DQ[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(12));

-- Location: IOOBUF_X14_Y29_N9
\bSDRAM_DQ[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(13));

-- Location: IOOBUF_X5_Y29_N23
\bSDRAM_DQ[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(14));

-- Location: IOOBUF_X9_Y29_N9
\bSDRAM_DQ[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bSDRAM_DQ(15));

-- Location: IOOBUF_X0_Y26_N16
\bMKR_AREF~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_AREF);

-- Location: IOOBUF_X0_Y25_N2
\bMKR_A[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_A(0));

-- Location: IOOBUF_X1_Y29_N23
\bMKR_A[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_A(1));

-- Location: IOOBUF_X11_Y29_N30
\bMKR_A[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_A(2));

-- Location: IOOBUF_X0_Y24_N16
\bMKR_A[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_A(3));

-- Location: IOOBUF_X1_Y29_N30
\bMKR_A[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_A(4));

-- Location: IOOBUF_X0_Y25_N16
\bMKR_A[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_A(5));

-- Location: IOOBUF_X0_Y21_N2
\bMKR_A[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_A(6));

-- Location: IOOBUF_X0_Y21_N23
\bMKR_D[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_D(0));

-- Location: IOOBUF_X1_Y0_N2
\bMKR_D[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_D(1));

-- Location: IOOBUF_X3_Y0_N30
\bMKR_D[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_D(2));

-- Location: IOOBUF_X41_Y19_N16
\bMKR_D[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_D(8));

-- Location: IOOBUF_X41_Y19_N9
\bMKR_D[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_D(9));

-- Location: IOOBUF_X41_Y27_N23
\bMKR_D[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_D(10));

-- Location: IOOBUF_X41_Y27_N16
\bMKR_D[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_D(11));

-- Location: IOOBUF_X41_Y19_N2
\bMKR_D[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_D(12));

-- Location: IOOBUF_X37_Y29_N16
\bMKR_D[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_D(13));

-- Location: IOOBUF_X28_Y29_N9
\bMKR_D[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMKR_D(14));

-- Location: IOOBUF_X28_Y0_N23
\bPEX_RST~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_RST);

-- Location: IOOBUF_X21_Y0_N30
\bPEX_PIN6~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN6);

-- Location: IOOBUF_X16_Y0_N16
\bPEX_PIN8~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN8);

-- Location: IOOBUF_X19_Y0_N2
\bPEX_PIN10~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN10);

-- Location: IOOBUF_X19_Y0_N9
\bPEX_PIN12~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN12);

-- Location: IOOBUF_X19_Y0_N30
\bPEX_PIN14~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN14);

-- Location: IOOBUF_X35_Y0_N23
\bPEX_PIN16~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN16);

-- Location: IOOBUF_X30_Y0_N16
\bPEX_PIN20~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN20);

-- Location: IOOBUF_X30_Y0_N2
\bPEX_PIN28~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN28);

-- Location: IOOBUF_X26_Y0_N2
\bPEX_PIN30~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN30);

-- Location: IOOBUF_X41_Y18_N2
\bPEX_PIN32~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN32);

-- Location: IOOBUF_X30_Y0_N9
\bPEX_PIN42~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN42);

-- Location: IOOBUF_X37_Y0_N9
\bPEX_PIN44~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN44);

-- Location: IOOBUF_X35_Y0_N2
\bPEX_PIN45~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN45);

-- Location: IOOBUF_X37_Y0_N2
\bPEX_PIN46~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN46);

-- Location: IOOBUF_X35_Y0_N9
\bPEX_PIN47~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN47);

-- Location: IOOBUF_X41_Y23_N2
\bPEX_PIN48~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN48);

-- Location: IOOBUF_X41_Y24_N9
\bPEX_PIN49~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN49);

-- Location: IOOBUF_X41_Y24_N2
\bPEX_PIN51~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bPEX_PIN51);

-- Location: IOOBUF_X26_Y0_N9
\bWM_PIO1~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO1);

-- Location: IOOBUF_X26_Y0_N30
\bWM_PIO2~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO2);

-- Location: IOOBUF_X37_Y0_N30
\bWM_PIO3~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO3);

-- Location: IOOBUF_X26_Y0_N16
\bWM_PIO4~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO4);

-- Location: IOOBUF_X7_Y0_N16
\bWM_PIO5~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO5);

-- Location: IOOBUF_X14_Y0_N23
\bWM_PIO7~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO7);

-- Location: IOOBUF_X7_Y0_N23
\bWM_PIO8~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO8);

-- Location: IOOBUF_X14_Y0_N2
\bWM_PIO18~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO18);

-- Location: IOOBUF_X14_Y0_N9
\bWM_PIO20~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO20);

-- Location: IOOBUF_X16_Y0_N30
\bWM_PIO21~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO21);

-- Location: IOOBUF_X23_Y0_N9
\bWM_PIO27~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO27);

-- Location: IOOBUF_X35_Y0_N16
\bWM_PIO28~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO28);

-- Location: IOOBUF_X26_Y0_N23
\bWM_PIO29~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO29);

-- Location: IOOBUF_X7_Y0_N30
\bWM_PIO31~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO31);

-- Location: IOOBUF_X7_Y0_N9
\bWM_PIO34~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO34);

-- Location: IOOBUF_X5_Y0_N2
\bWM_PIO35~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO35);

-- Location: IOOBUF_X0_Y5_N16
\bWM_PIO36~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bWM_PIO36);

-- Location: IOOBUF_X16_Y0_N23
\oWM_RX~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => oWM_RX);

-- Location: IOOBUF_X0_Y4_N23
\oWM_RESET~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => oWM_RESET);

-- Location: IOOBUF_X0_Y4_N2
\bHDMI_SDA~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bHDMI_SDA);

-- Location: IOOBUF_X0_Y5_N23
\bHDMI_SCL~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bHDMI_SCL);

-- Location: IOOBUF_X0_Y3_N2
\bMIPI_SDA~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMIPI_SDA);

-- Location: IOOBUF_X0_Y3_N9
\bMIPI_SCL~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMIPI_SCL);

-- Location: IOOBUF_X14_Y0_N16
\bMIPI_GP[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMIPI_GP(0));

-- Location: IOOBUF_X30_Y0_N23
\bMIPI_GP[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => bMIPI_GP(1));

-- Location: IOOBUF_X0_Y25_N9
\oFLASH_MOSI~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => oFLASH_MOSI);

-- Location: IOOBUF_X0_Y20_N23
\iFLASH_MISO~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => iFLASH_MISO);

-- Location: IOOBUF_X16_Y0_N9
\oFLASH_HOLD~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => oFLASH_HOLD);

-- Location: IOOBUF_X16_Y0_N2
\oFLASH_WP~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => oFLASH_WP);

-- Location: IOOBUF_X3_Y0_N16
\bMKR_D[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ADC_DAC_BlockConnection_inst|inst2|i2c|scl~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => bMKR_D(3));

-- Location: IOOBUF_X3_Y0_N9
\bMKR_D[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector30~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => bMKR_D(4));

-- Location: IOOBUF_X5_Y0_N9
\bMKR_D[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => bMKR_D(5));

-- Location: IOOBUF_X41_Y18_N23
\bMKR_D[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADC_DAC_BlockConnection_inst|inst|mosi~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => bMKR_D(6));

-- Location: IOOBUF_X41_Y18_N16
\bMKR_D[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ADC_DAC_BlockConnection_inst|inst|ALT_INV_current_state.Idle~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => bMKR_D(7));

-- Location: IOIBUF_X0_Y14_N1
\iCLK~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iCLK,
	o => \iCLK~input_o\);

-- Location: PLL_1
\PLL_inst|altpll_component|auto_generated|pll1\ : cyclone10lp_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 13,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 3,
	c1_initial => 4,
	c1_low => 3,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "c1",
	clk3_divide_by => 12,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 25,
	clk3_phase_shift => "5000",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20833,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 25,
	m_initial => 1,
	m_ph => 0,
	n => 2,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \PLL_inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \PLL_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \PLL_inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X9_Y6_N22
\ADC_DAC_BlockConnection_inst|inst2|i2c|count~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count~6_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~14_combout\ & (((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~14_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~6_combout\);

-- Location: FF_X9_Y6_N5
\ADC_DAC_BlockConnection_inst|inst2|i2c|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(7));

-- Location: LCCOMB_X11_Y6_N14
\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~6_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(3) & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~5\)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(3) & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~5\) # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~7\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~5\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(3),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~5\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~6_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~7\);

-- Location: LCCOMB_X11_Y6_N16
\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(4) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~7\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(4) & 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~7\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~9\ = CARRY((\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(4) & !\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(4),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~7\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~9\);

-- Location: LCCOMB_X10_Y6_N16
\ADC_DAC_BlockConnection_inst|inst2|i2c|count~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count~7_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\ & (((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~7_combout\);

-- Location: FF_X10_Y6_N17
\ADC_DAC_BlockConnection_inst|inst2|i2c|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(4));

-- Location: LCCOMB_X11_Y6_N18
\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~10_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(5) & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~9\)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(5) & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~9\) # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~11\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~9\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(5),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~9\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~10_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~11\);

-- Location: LCCOMB_X10_Y6_N28
\ADC_DAC_BlockConnection_inst|inst2|i2c|count~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count~5_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~10_combout\ & (((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~10_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~5_combout\);

-- Location: FF_X10_Y6_N31
\ADC_DAC_BlockConnection_inst|inst2|i2c|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(5));

-- Location: LCCOMB_X11_Y6_N20
\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~12_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(6) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~11\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(6) & 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~11\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~13\ = CARRY((\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(6) & !\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(6),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~11\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~12_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~13\);

-- Location: LCCOMB_X10_Y6_N8
\ADC_DAC_BlockConnection_inst|inst2|i2c|count~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count~4_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~12_combout\ & (((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~12_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~4_combout\);

-- Location: FF_X10_Y6_N13
\ADC_DAC_BlockConnection_inst|inst2|i2c|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(6));

-- Location: LCCOMB_X11_Y6_N22
\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~14_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(7) & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~13\)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(7) & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~13\) # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~15\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~13\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(7),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~13\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~14_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~15\);

-- Location: LCCOMB_X10_Y6_N26
\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~7_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~14_combout\ & (((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~14_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~7_combout\);

-- Location: LCCOMB_X11_Y6_N24
\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(8) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~15\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(8) & 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~15\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~17\ = CARRY((\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(8) & !\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(8),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~15\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~17\);

-- Location: LCCOMB_X10_Y6_N20
\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~6_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count~5_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\) # (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~6_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~5_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~6_combout\);

-- Location: LCCOMB_X10_Y6_N0
\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~8_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~7_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|count~4_combout\) # 
-- (\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~7_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~4_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~6_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~8_combout\);

-- Location: FF_X9_Y6_N15
\ADC_DAC_BlockConnection_inst|inst2|i2c|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(9));

-- Location: LCCOMB_X11_Y6_N26
\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~18_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(9) & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~17\)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(9) & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~17\) # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~19\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~17\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(9),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~17\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~18_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~19\);

-- Location: LCCOMB_X9_Y6_N0
\ADC_DAC_BlockConnection_inst|inst2|i2c|count~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~18_combout\ & (((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~18_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_combout\);

-- Location: LCCOMB_X10_Y6_N12
\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~3_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\ & \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~3_combout\);

-- Location: LCCOMB_X10_Y6_N18
\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~3_combout\ = (((\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~3_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~10_combout\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~12_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~10_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~3_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~3_combout\);

-- Location: LCCOMB_X10_Y6_N10
\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~9_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~3_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~3_combout\) # ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16_combout\ & 
-- !\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~3_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~14_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~3_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~9_combout\);

-- Location: LCCOMB_X10_Y6_N24
\ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~9_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~q\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~9_combout\ & ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk~2_combout\))))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk~2_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~9_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~0_combout\);

-- Location: LCCOMB_X10_Y6_N6
\ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count~12_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~q\)))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count~12_combout\ & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~8_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~q\)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~8_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~12_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~8_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~1_combout\);

-- Location: FF_X10_Y6_N7
\ADC_DAC_BlockConnection_inst|inst2|i2c|stretch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~q\);

-- Location: LCCOMB_X11_Y6_N8
\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(0) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~q\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(0) & 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~q\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~1\ = CARRY((\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(0) & !\ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(0),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|stretch~q\,
	datad => VCC,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~0_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~1\);

-- Location: LCCOMB_X11_Y6_N10
\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~2_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(1) & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~1\)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(1) & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~1\) # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~3\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~1\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(1),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~1\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~2_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~3\);

-- Location: LCCOMB_X11_Y6_N2
\ADC_DAC_BlockConnection_inst|inst2|i2c|count~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count~10_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~2_combout\ & (((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~2_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~10_combout\);

-- Location: FF_X11_Y6_N3
\ADC_DAC_BlockConnection_inst|inst2|i2c|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(1));

-- Location: LCCOMB_X11_Y6_N12
\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~4_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(2) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~3\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(2) & 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~3\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~5\ = CARRY((\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(2) & !\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(2),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~3\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~4_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~5\);

-- Location: LCCOMB_X11_Y6_N0
\ADC_DAC_BlockConnection_inst|inst2|i2c|count~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count~9_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~4_combout\ & (((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~4_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~9_combout\);

-- Location: FF_X11_Y6_N1
\ADC_DAC_BlockConnection_inst|inst2|i2c|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(2));

-- Location: LCCOMB_X11_Y6_N4
\ADC_DAC_BlockConnection_inst|inst2|i2c|count~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count~8_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~6_combout\ & (((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~6_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~8_combout\);

-- Location: FF_X11_Y6_N5
\ADC_DAC_BlockConnection_inst|inst2|i2c|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(3));

-- Location: LCCOMB_X10_Y6_N30
\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(3) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(6) & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(5) & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(3),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(6),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(5),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(4),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y6_N8
\ADC_DAC_BlockConnection_inst|inst2|i2c|count~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count~3_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16_combout\ & (((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~3_combout\);

-- Location: FF_X9_Y6_N27
\ADC_DAC_BlockConnection_inst|inst2|i2c|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(8));

-- Location: LCCOMB_X9_Y6_N14
\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(8) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(7) & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(9) & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(8),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(7),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(9),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(10),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y6_N30
\ADC_DAC_BlockConnection_inst|inst2|i2c|count~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count~11_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~0_combout\ & (((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~0_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~11_combout\);

-- Location: FF_X11_Y6_N31
\ADC_DAC_BlockConnection_inst|inst2|i2c|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(0));

-- Location: LCCOMB_X11_Y6_N6
\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(0) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(1) & \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(0),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(1),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(2),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\);

-- Location: LCCOMB_X9_Y6_N12
\ADC_DAC_BlockConnection_inst|inst2|i2c|count~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count~12_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~20_combout\ & (((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~2_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~0_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~1_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~20_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~12_combout\);

-- Location: FF_X9_Y6_N13
\ADC_DAC_BlockConnection_inst|inst2|i2c|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(10));

-- Location: LCCOMB_X11_Y6_N28
\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~20_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~19\ $ (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|count\(10),
	cin => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~19\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~20_combout\);

-- Location: FF_X11_Y6_N7
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_NEW_REG0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM1\);

-- Location: LCCOMB_X10_Y6_N22
\ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~6_combout\ & \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~6_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~0_combout\);

-- Location: LCCOMB_X10_Y6_N2
\ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~14_combout\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|count~4_combout\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~0_combout\ & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~0_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~14_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~4_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~5_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~1_combout\);

-- Location: LCCOMB_X9_Y6_N28
\ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~2_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_combout\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|count~12_combout\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|count~3_combout\ & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~12_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~3_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~2_combout\);

-- Location: FF_X9_Y6_N29
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_NEW_REG4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM5\);

-- Location: FF_X9_Y6_N31
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_NEW_REG2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|Equal0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM3\);

-- Location: LCCOMB_X10_Y6_N4
\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~10_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~6_combout\) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~6_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~10_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~0_combout\);

-- Location: LCCOMB_X9_Y6_N20
\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~18_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|count~6_combout\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~12_combout\ & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~0_combout\)))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~18_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~12_combout\) # 
-- ((\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~12_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~18_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~6_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~1_combout\);

-- Location: LCCOMB_X9_Y6_N24
\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~2_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16_combout\ & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~18_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~14_combout\) # 
-- (\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~1_combout\)))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~18_combout\ & 
-- !\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~14_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~16_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~18_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~2_combout\);

-- Location: FF_X9_Y6_N25
\ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk_NEW_REG8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk_OTERM9\);

-- Location: LCCOMB_X9_Y6_N30
\ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk~2_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM5\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM1\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM3\) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk_OTERM9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM1\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM5\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM3\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk_OTERM9\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk~2_combout\);

-- Location: LCCOMB_X8_Y5_N2
\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~feeder_combout\);

-- Location: FF_X8_Y5_N3
\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~q\);

-- Location: LCCOMB_X10_Y6_N14
\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~4_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count~4_combout\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|count~5_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\) # 
-- (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~8_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add0~6_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~4_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~5_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~4_combout\);

-- Location: LCCOMB_X9_Y6_N6
\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~5_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|count~6_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|count~3_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~4_combout\))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count~6_combout\ & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|count~3_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~6_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~3_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~4_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~3_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~5_combout\);

-- Location: FF_X9_Y6_N7
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM7_NEW_REG22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM7_OTERM23\);

-- Location: LCCOMB_X9_Y6_N2
\ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_RTM026\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_RTM026_combout\ = !\ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_RTM026_combout\);

-- Location: FF_X9_Y6_N3
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM7_NEW_REG24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|count~2_RTM026_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM7_OTERM25\);

-- Location: LCCOMB_X9_Y6_N16
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM7_OTERM23\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM3\)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk_OTERM9\))) 
-- # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM7_OTERM23\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM7_OTERM25\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM3\) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk_OTERM9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM7_OTERM23\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk_OTERM9\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM3\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM7_OTERM25\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~0_combout\);

-- Location: LCCOMB_X9_Y6_N18
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM5\ & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~0_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM3\) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM1\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM5\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_OTERM3\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1_combout\);

-- Location: FF_X9_Y6_N19
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\);

-- Location: LCCOMB_X9_Y6_N26
\ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\ & \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\);

-- Location: FF_X7_Y4_N27
\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~2_combout\,
	sload => VCC,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1));

-- Location: FF_X8_Y5_N13
\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w4~q\,
	sload => VCC,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd2~q\);

-- Location: LCCOMB_X8_Y5_N8
\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd1~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd1~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd2~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd1~feeder_combout\);

-- Location: FF_X8_Y5_N9
\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd1~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd1~q\);

-- Location: LCCOMB_X8_Y5_N16
\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next~12_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\ & \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd1~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next~12_combout\);

-- Location: FF_X8_Y5_N17
\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\);

-- Location: LCCOMB_X8_Y5_N0
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector1~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd2~q\) # ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd1~q\) # 
-- ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\ & \ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd2~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd1~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector1~0_combout\);

-- Location: FF_X8_Y5_N1
\ADC_DAC_BlockConnection_inst|inst2|address_gen|rw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\);

-- Location: LCCOMB_X10_Y4_N6
\ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) $ (((\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0) & \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\);

-- Location: LCCOMB_X6_Y4_N20
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) & !\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4),
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\);

-- Location: LCCOMB_X7_Y4_N28
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~3_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0) & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\ & 
-- !\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\)))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0) & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\ & 
-- !\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~3_combout\);

-- Location: FF_X7_Y4_N29
\ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~3_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\);

-- Location: LCCOMB_X6_Y4_N24
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector18~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector18~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\) # ((!\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\ & \ADC_DAC_BlockConnection_inst|inst2|i2c|state.command~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.command~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector18~0_combout\);

-- Location: FF_X6_Y4_N25
\ADC_DAC_BlockConnection_inst|inst2|i2c|state.command\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector18~0_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.command~q\);

-- Location: LCCOMB_X6_Y4_N6
\ADC_DAC_BlockConnection_inst|inst2|i2c|state~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|state~13_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.wr~q\ & 
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.wr~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|state~13_combout\);

-- Location: FF_X7_Y4_N3
\ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|state~13_combout\,
	sload => VCC,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack2~q\);

-- Location: LCCOMB_X8_Y4_N16
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack2~q\ & (\ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0) $ 
-- (!\ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack2~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0),
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~0_combout\);

-- Location: LCCOMB_X8_Y4_N24
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\ & !\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~1_combout\);

-- Location: LCCOMB_X8_Y4_N18
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~2_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~0_combout\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~1_combout\) # 
-- ((!\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\ & \ADC_DAC_BlockConnection_inst|inst2|i2c|state.wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~0_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.wr~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~2_combout\);

-- Location: FF_X8_Y4_N19
\ADC_DAC_BlockConnection_inst|inst2|i2c|state.wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~2_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.wr~q\);

-- Location: LCCOMB_X6_Y4_N14
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~0_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|state.command~q\ & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|state.wr~q\ & !\ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.command~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.wr~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~0_combout\);

-- Location: LCCOMB_X6_Y4_N16
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector24~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector24~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~0_combout\) # ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\ & 
-- ((!\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~0_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector24~0_combout\);

-- Location: LCCOMB_X8_Y4_N30
\ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~q\) # ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\ & (\ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\ & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~0_combout\);

-- Location: FF_X8_Y4_N31
\ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~q\);

-- Location: LCCOMB_X8_Y4_N22
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack2~q\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0) $ (\ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack2~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0),
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~0_combout\);

-- Location: LCCOMB_X7_Y4_N2
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~6_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|state.mstr_ack~q\ & !\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.mstr_ack~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~6_combout\);

-- Location: LCCOMB_X7_Y4_N6
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~0_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~6_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\) # 
-- (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~6_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~0_combout\);

-- Location: LCCOMB_X7_Y4_N12
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector24~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector24~1_combout\ = ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~0_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~2_combout\) # (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2))))) 
-- # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector24~0_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~2_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector24~1_combout\);

-- Location: FF_X7_Y4_N13
\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector24~1_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2));

-- Location: LCCOMB_X7_Y4_N10
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4) & (\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\ & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4),
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~0_combout\);

-- Location: FF_X7_Y4_N11
\ADC_DAC_BlockConnection_inst|inst2|i2c|state.mstr_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~0_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.mstr_ack~q\);

-- Location: LCCOMB_X8_Y4_N8
\ADC_DAC_BlockConnection_inst|inst2|i2c|WideOr1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|WideOr1~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~q\ & !\ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack2~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|WideOr1~0_combout\);

-- Location: LCCOMB_X8_Y4_N6
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|WideOr1~0_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|state.mstr_ack~q\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\)))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|WideOr1~0_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.mstr_ack~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|WideOr1~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\);

-- Location: LCCOMB_X8_Y4_N28
\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw~0_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\ & !\ADC_DAC_BlockConnection_inst|inst2|i2c|state.mstr_ack~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.mstr_ack~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw~0_combout\);

-- Location: LCCOMB_X9_Y4_N26
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~4_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\ & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0)) # ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\ & !\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~4_combout\);

-- Location: FF_X9_Y4_N27
\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~4_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0));

-- Location: LCCOMB_X7_Y4_N0
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~1_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~0_combout\ & ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~1_combout\);

-- Location: LCCOMB_X7_Y4_N4
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~2_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~1_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~0_combout\) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~0_combout\)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~1_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~0_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~2_combout\);

-- Location: FF_X7_Y4_N17
\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~2_combout\,
	sload => VCC,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0));

-- Location: LCCOMB_X6_Y4_N8
\ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~1_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3) $ ((((!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~1_combout\);

-- Location: LCCOMB_X6_Y4_N28
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~1_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~0_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4)) # 
-- ((!\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~0_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~1_combout\);

-- Location: LCCOMB_X7_Y4_N24
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector23~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector23~0_combout\ = ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~1_combout\) # ((!\ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\ & !\ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~q\))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~6_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector23~0_combout\);

-- Location: LCCOMB_X7_Y4_N20
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector23~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector23~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~1_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3) & \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector23~0_combout\)))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~1_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~1_combout\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3) & \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~1_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~1_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector23~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector23~1_combout\);

-- Location: FF_X7_Y4_N21
\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector23~1_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3));

-- Location: LCCOMB_X6_Y4_N30
\ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~2_combout\ = (((\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~2_combout\);

-- Location: LCCOMB_X6_Y4_N12
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~2_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~0_combout\ & (!\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\ & 
-- (\ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~2_combout\ $ (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~2_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~0_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~2_combout\);

-- Location: LCCOMB_X7_Y4_N18
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~3_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~2_combout\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~2_combout\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4) & 
-- !\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~2_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~2_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~3_combout\);

-- Location: FF_X7_Y4_N19
\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector22~3_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4));

-- Location: LCCOMB_X6_Y4_N18
\ADC_DAC_BlockConnection_inst|inst2|i2c|state~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|state~14_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.command~q\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) & 
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.command~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|state~14_combout\);

-- Location: FF_X6_Y4_N19
\ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|state~14_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\);

-- Location: LCCOMB_X8_Y4_N12
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~2_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\ & \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~2_combout\);

-- Location: LCCOMB_X7_Y4_N30
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~0_combout\) # ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~0_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1) $ 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~0_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~1_combout\);

-- Location: LCCOMB_X7_Y4_N14
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~2_combout\ = ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~0_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1)) # (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~2_combout\)))) 
-- # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector20~2_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~1_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~2_combout\);

-- Location: LCCOMB_X7_Y4_N22
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~2_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~2_combout\ & 
-- !\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector25~2_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector26~2_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector23~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_combout\);

-- Location: FF_X7_Y4_N23
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_NEW_REG20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\);

-- Location: FF_X7_Y4_N9
\ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_d~q\);

-- Location: LCCOMB_X7_Y4_N8
\ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\ & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4) & 
-- (!\ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_d~q\ & \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4),
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_d~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\);

-- Location: LCCOMB_X8_Y5_N4
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector8~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector8~0_combout\ = ((!\ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\ & \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_wr~q\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_wr~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector8~0_combout\);

-- Location: FF_X8_Y5_N5
\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_wr~q\);

-- Location: FF_X8_Y5_N25
\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_wr~q\,
	sload => VCC,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w1~q\);

-- Location: FF_X8_Y5_N21
\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w1~q\,
	sload => VCC,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w2~q\);

-- Location: LCCOMB_X8_Y5_N22
\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w2~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~feeder_combout\);

-- Location: FF_X8_Y5_N23
\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~q\);

-- Location: LCCOMB_X8_Y5_N26
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector9~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector9~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\) # ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\ & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~q\))) # (!\ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\ & (\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd1~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector9~0_combout\);

-- Location: FF_X8_Y5_N27
\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd1~q\);

-- Location: FF_X8_Y5_N11
\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd1~q\,
	sload => VCC,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|change_state_flag~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w4~q\);

-- Location: LCCOMB_X8_Y5_N10
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~q\ & ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\) # 
-- ((!\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w4~q\ & !\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w4~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~0_combout\);

-- Location: LCCOMB_X8_Y5_N12
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1)) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0)) # 
-- ((!\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd1~q\ & !\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd1~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_rd2~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~1_combout\);

-- Location: LCCOMB_X7_Y4_N26
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~2_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3)) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4)) # (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~2_combout\);

-- Location: LCCOMB_X8_Y5_N30
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~3_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~0_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~1_combout\) # 
-- (\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~0_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~1_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~2_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~3_combout\);

-- Location: FF_X8_Y5_N31
\ADC_DAC_BlockConnection_inst|inst2|address_gen|ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\);

-- Location: LCCOMB_X7_Y4_N16
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector21~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector21~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.mstr_ack~q\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack2~q\ & !\ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.mstr_ack~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack2~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector21~0_combout\);

-- Location: FF_X8_Y4_N9
\ADC_DAC_BlockConnection_inst|inst2|i2c|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector21~0_combout\,
	sload => VCC,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.stop~q\);

-- Location: LCCOMB_X8_Y4_N0
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector17~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector17~0_combout\ = ((\ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack2~q\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0) $ (\ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\)))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack2~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector17~0_combout\);

-- Location: LCCOMB_X8_Y4_N14
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector17~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector17~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.stop~q\) # ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\ & \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.stop~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector17~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector17~1_combout\);

-- Location: FF_X8_Y4_N15
\ADC_DAC_BlockConnection_inst|inst2|i2c|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector17~1_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\);

-- Location: LCCOMB_X9_Y6_N4
\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\ & !\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~0_combout\);

-- Location: LCCOMB_X9_Y4_N18
\ADC_DAC_BlockConnection_inst|inst2|i2c|scl_ena~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_ena~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~0_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\) # ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|state.stop~q\ & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_ena~q\)))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~0_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|scl_ena~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.stop~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_ena~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_ena~0_combout\);

-- Location: FF_X9_Y4_N19
\ADC_DAC_BlockConnection_inst|inst2|i2c|scl_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_ena~q\);

-- Location: LCCOMB_X9_Y4_N22
\ADC_DAC_BlockConnection_inst|inst2|i2c|scl~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|scl~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk~2_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|scl_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_clk~2_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|scl_ena~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|scl~1_combout\);

-- Location: LCCOMB_X9_Y4_N8
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~14_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0) & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~14_combout\);

-- Location: LCCOMB_X10_Y4_N12
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~9_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.command~q\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1) & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.command~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~9_combout\);

-- Location: LCCOMB_X9_Y4_N12
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~15_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~14_combout\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\ & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~14_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~9_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~15_combout\);

-- Location: FF_X9_Y4_N13
\ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_NEW_REG14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~15_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM15\);

-- Location: LCCOMB_X8_Y5_N14
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector12~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector12~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w2~q\) # ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(6) & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\) # (!\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w2~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(6),
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector12~0_combout\);

-- Location: FF_X8_Y5_N15
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(6));

-- Location: LCCOMB_X9_Y4_N2
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector10~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector10~4_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(6))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\ 
-- & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(6)) # ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(6) & !\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(6),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(6),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector10~4_combout\);

-- Location: FF_X9_Y4_N3
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector10~4_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(6));

-- Location: LCCOMB_X8_Y5_N18
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector13~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~q\) # ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(1) & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\) # (!\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(1),
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector13~0_combout\);

-- Location: FF_X8_Y5_N19
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(1));

-- Location: LCCOMB_X9_Y4_N14
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector15~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector15~4_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(1))))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(1)) # ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw~0_combout\ & \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw~0_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(1),
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(1),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector15~4_combout\);

-- Location: FF_X9_Y4_N15
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector15~4_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(1));

-- Location: LCCOMB_X8_Y5_N24
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector14~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector14~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w1~q\) # ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(0) & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\) # (!\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(0),
	datab => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w1~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector14~0_combout\);

-- Location: LCCOMB_X8_Y5_N6
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector14~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector14~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_wr~q\) # ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~q\) # 
-- (\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.command_wr~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector14~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector14~1_combout\);

-- Location: FF_X8_Y5_N7
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(0));

-- Location: LCCOMB_X9_Y4_N30
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector16~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector16~4_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(0))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\ 
-- & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(0)) # ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(0) & !\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(0),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(0),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector16~4_combout\);

-- Location: FF_X9_Y4_N31
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector16~4_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(0));

-- Location: LCCOMB_X10_Y4_N0
\ADC_DAC_BlockConnection_inst|inst2|i2c|Mux2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux2~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0) & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(0) & \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2))))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0) & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(1)) # ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(1),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(0),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux2~0_combout\);

-- Location: LCCOMB_X8_Y5_N20
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector11~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector11~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w2~q\) # ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(7) & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\) # (!\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.idle~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(7),
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w2~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector11~0_combout\);

-- Location: LCCOMB_X8_Y5_N28
\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector11~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector11~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~q\) # (\ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.w3~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector11~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector11~1_combout\);

-- Location: FF_X8_Y5_N29
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(7));

-- Location: LCCOMB_X9_Y4_N16
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector9~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector9~4_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(7))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\ 
-- & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(7)) # ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(7) & !\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector8~5_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(7),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(7),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector9~4_combout\);

-- Location: FF_X9_Y4_N17
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector9~4_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(7));

-- Location: LCCOMB_X10_Y4_N20
\ADC_DAC_BlockConnection_inst|inst2|i2c|Mux2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux2~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Mux2~0_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(7)) # (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2))))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Mux2~0_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(6) & ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(6),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux2~0_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(7),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux2~1_combout\);

-- Location: LCCOMB_X9_Y4_N10
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~12_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Mux2~1_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1) $ 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux2~1_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.slv_ack1~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~12_combout\);

-- Location: LCCOMB_X9_Y4_N24
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~11_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1) $ 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~11_combout\);

-- Location: LCCOMB_X10_Y4_N22
\ADC_DAC_BlockConnection_inst|inst2|i2c|Mux3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux3~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0) & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(7) & !\ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\)))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0) & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(6)) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(6),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(7),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux3~0_combout\);

-- Location: LCCOMB_X10_Y4_N18
\ADC_DAC_BlockConnection_inst|inst2|i2c|Mux3~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux3~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Mux3~0_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(0)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\)))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Mux3~0_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(1) & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(1),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_tx\(0),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux3~0_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux3~1_combout\);

-- Location: LCCOMB_X10_Y4_N4
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~8_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.wr~q\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) $ (((!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0) & 
-- !\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.wr~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~8_combout\);

-- Location: LCCOMB_X10_Y4_N30
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~10_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~9_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|Mux3~1_combout\ & \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~8_combout\)) 
-- # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~9_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|Mux3~1_combout\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~9_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Mux3~1_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~8_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Add1~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~10_combout\);

-- Location: LCCOMB_X8_Y4_N4
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~3_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0) $ (\ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|ena~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0),
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|rw~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~3_combout\);

-- Location: LCCOMB_X8_Y4_N2
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~4_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|state.command~q\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|state.wr~q\) # 
-- (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.command~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.wr~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~3_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~4_combout\);

-- Location: LCCOMB_X8_Y4_N26
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~5_combout\ = ((\ADC_DAC_BlockConnection_inst|inst2|i2c|state.stop~q\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\ & !\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.ready~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.stop~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~5_combout\);

-- Location: LCCOMB_X8_Y4_N20
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~7_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~4_combout\) # ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~16_combout\ & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~5_combout\) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~16_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~4_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~5_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~6_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~7_combout\);

-- Location: LCCOMB_X9_Y4_N0
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~13_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~12_combout\) # ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~11_combout\) # 
-- ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~10_combout\) # (\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~12_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~11_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~10_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~7_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~13_combout\);

-- Location: FF_X9_Y4_N1
\ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_NEW_REG12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~13_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM13\);

-- Location: FF_X9_Y4_N7
\ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_NEW_REG10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|addr_rw\(0),
	sload => VCC,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM11\);

-- Location: LCCOMB_X9_Y4_N28
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~1_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0) & (\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(6))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0) & ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(6),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(7),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~1_combout\);

-- Location: LCCOMB_X9_Y4_N4
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0) & (\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(0))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0) & ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(0),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_wr\(1),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~0_combout\);

-- Location: LCCOMB_X9_Y4_N20
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~2_RTM018\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~2_RTM018_combout\ = ((\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1) & ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~0_combout\))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1) & 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~1_combout\))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~1_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~0_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector19~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~2_RTM018_combout\);

-- Location: FF_X9_Y4_N21
\ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_NEW_REG16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~2_RTM018_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM17\);

-- Location: LCCOMB_X9_Y4_N6
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~16_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM13\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM17\ & ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM11\) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM15\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM13\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM11\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|sda_int_OTERM17\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~16_combout\);

-- Location: LCCOMB_X8_Y4_N10
\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector30~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector30~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\ & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|i2c|state.stop~q\ & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|state.stop~q\ & ((!\ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.stop~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.start~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector27~16_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Selector30~0_combout\);

-- Location: LCCOMB_X6_Y7_N20
\ADC_DAC_BlockConnection_inst|inst|Selector4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector4~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|data_Index\(0) & (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\)) # (!\ADC_DAC_BlockConnection_inst|inst|data_Index\(0) & 
-- ((\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst|data_Index\(0),
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector4~0_combout\);

-- Location: FF_X6_Y7_N21
\ADC_DAC_BlockConnection_inst|inst|data_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|data_Index\(0));

-- Location: LCCOMB_X6_Y7_N2
\ADC_DAC_BlockConnection_inst|inst|Selector6~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector6~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & ((!\ADC_DAC_BlockConnection_inst|inst|data_Index\(0)) # (!\ADC_DAC_BlockConnection_inst|inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|Equal0~0_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst|data_Index\(0),
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector6~1_combout\);

-- Location: LCCOMB_X5_Y7_N0
\ADC_DAC_BlockConnection_inst|inst|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Add0~1\ = CARRY(\ADC_DAC_BlockConnection_inst|inst|data_Index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|data_Index\(0),
	datad => VCC,
	cout => \ADC_DAC_BlockConnection_inst|inst|Add0~1\);

-- Location: LCCOMB_X5_Y7_N2
\ADC_DAC_BlockConnection_inst|inst|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Add0~2_combout\ = (\ADC_DAC_BlockConnection_inst|inst|data_Index\(1) & (!\ADC_DAC_BlockConnection_inst|inst|Add0~1\)) # (!\ADC_DAC_BlockConnection_inst|inst|data_Index\(1) & ((\ADC_DAC_BlockConnection_inst|inst|Add0~1\) 
-- # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst|Add0~3\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst|Add0~1\) # (!\ADC_DAC_BlockConnection_inst|inst|data_Index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|data_Index\(1),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst|Add0~1\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Add0~2_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst|Add0~3\);

-- Location: LCCOMB_X6_Y7_N4
\ADC_DAC_BlockConnection_inst|inst|Selector3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector3~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\ & ((\ADC_DAC_BlockConnection_inst|inst|data_Index\(1)) # ((\ADC_DAC_BlockConnection_inst|inst|Add0~2_combout\ & 
-- \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\)))) # (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\ & (\ADC_DAC_BlockConnection_inst|inst|Add0~2_combout\ & 
-- ((\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst|Add0~2_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst|data_Index\(1),
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector3~0_combout\);

-- Location: FF_X6_Y7_N5
\ADC_DAC_BlockConnection_inst|inst|data_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|data_Index\(1));

-- Location: LCCOMB_X5_Y7_N4
\ADC_DAC_BlockConnection_inst|inst|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Add0~4_combout\ = (\ADC_DAC_BlockConnection_inst|inst|data_Index\(2) & (\ADC_DAC_BlockConnection_inst|inst|Add0~3\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst|data_Index\(2) & 
-- (!\ADC_DAC_BlockConnection_inst|inst|Add0~3\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst|Add0~5\ = CARRY((\ADC_DAC_BlockConnection_inst|inst|data_Index\(2) & !\ADC_DAC_BlockConnection_inst|inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst|data_Index\(2),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst|Add0~3\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Add0~4_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst|Add0~5\);

-- Location: LCCOMB_X6_Y7_N18
\ADC_DAC_BlockConnection_inst|inst|Selector2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector2~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\ & ((\ADC_DAC_BlockConnection_inst|inst|data_Index\(2)) # ((\ADC_DAC_BlockConnection_inst|inst|Add0~4_combout\ & 
-- \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\)))) # (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\ & (\ADC_DAC_BlockConnection_inst|inst|Add0~4_combout\ & 
-- ((\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst|Add0~4_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst|data_Index\(2),
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector2~0_combout\);

-- Location: FF_X6_Y7_N19
\ADC_DAC_BlockConnection_inst|inst|data_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|data_Index\(2));

-- Location: LCCOMB_X5_Y7_N6
\ADC_DAC_BlockConnection_inst|inst|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Add0~6_combout\ = (\ADC_DAC_BlockConnection_inst|inst|data_Index\(3) & (!\ADC_DAC_BlockConnection_inst|inst|Add0~5\)) # (!\ADC_DAC_BlockConnection_inst|inst|data_Index\(3) & ((\ADC_DAC_BlockConnection_inst|inst|Add0~5\) 
-- # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst|Add0~7\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst|Add0~5\) # (!\ADC_DAC_BlockConnection_inst|inst|data_Index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst|data_Index\(3),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst|Add0~5\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Add0~6_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst|Add0~7\);

-- Location: LCCOMB_X6_Y7_N8
\ADC_DAC_BlockConnection_inst|inst|Selector1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector1~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\ & ((\ADC_DAC_BlockConnection_inst|inst|data_Index\(3)) # ((\ADC_DAC_BlockConnection_inst|inst|Add0~6_combout\ & 
-- \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\)))) # (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\ & (\ADC_DAC_BlockConnection_inst|inst|Add0~6_combout\ & 
-- ((\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst|Add0~6_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst|data_Index\(3),
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector1~0_combout\);

-- Location: FF_X6_Y7_N9
\ADC_DAC_BlockConnection_inst|inst|data_Index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|data_Index\(3));

-- Location: LCCOMB_X5_Y7_N8
\ADC_DAC_BlockConnection_inst|inst|Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Add0~8_combout\ = \ADC_DAC_BlockConnection_inst|inst|Add0~7\ $ (!\ADC_DAC_BlockConnection_inst|inst|data_Index\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst|data_Index\(4),
	cin => \ADC_DAC_BlockConnection_inst|inst|Add0~7\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Add0~8_combout\);

-- Location: LCCOMB_X6_Y7_N6
\ADC_DAC_BlockConnection_inst|inst|Selector0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector0~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\ & ((\ADC_DAC_BlockConnection_inst|inst|data_Index\(4)) # ((\ADC_DAC_BlockConnection_inst|inst|Selector6~1_combout\ & 
-- \ADC_DAC_BlockConnection_inst|inst|Add0~8_combout\)))) # (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\ & (\ADC_DAC_BlockConnection_inst|inst|Selector6~1_combout\ & ((\ADC_DAC_BlockConnection_inst|inst|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst|Selector6~1_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst|data_Index\(4),
	datad => \ADC_DAC_BlockConnection_inst|inst|Add0~8_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector0~0_combout\);

-- Location: FF_X6_Y7_N7
\ADC_DAC_BlockConnection_inst|inst|data_Index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|data_Index\(4));

-- Location: LCCOMB_X6_Y7_N12
\ADC_DAC_BlockConnection_inst|inst|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Equal0~0_combout\ = (!\ADC_DAC_BlockConnection_inst|inst|data_Index\(4) & (\ADC_DAC_BlockConnection_inst|inst|data_Index\(2) & (\ADC_DAC_BlockConnection_inst|inst|data_Index\(3) & 
-- \ADC_DAC_BlockConnection_inst|inst|data_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|data_Index\(4),
	datab => \ADC_DAC_BlockConnection_inst|inst|data_Index\(2),
	datac => \ADC_DAC_BlockConnection_inst|inst|data_Index\(3),
	datad => \ADC_DAC_BlockConnection_inst|inst|data_Index\(1),
	combout => \ADC_DAC_BlockConnection_inst|inst|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y28_N14
\ADC_DAC_BlockConnection_inst|inst1|count~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|count~1_combout\ = (!\ADC_DAC_BlockConnection_inst|inst1|count\(0) & !\ADC_DAC_BlockConnection_inst|inst1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_DAC_BlockConnection_inst|inst1|count\(0),
	datad => \ADC_DAC_BlockConnection_inst|inst1|Equal0~10_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|count~1_combout\);

-- Location: FF_X19_Y28_N15
\ADC_DAC_BlockConnection_inst|inst1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(0));

-- Location: LCCOMB_X20_Y28_N0
\ADC_DAC_BlockConnection_inst|inst1|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~1\ = CARRY(!\ADC_DAC_BlockConnection_inst|inst1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(0),
	datad => VCC,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~1\);

-- Location: LCCOMB_X20_Y28_N2
\ADC_DAC_BlockConnection_inst|inst1|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~2_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(1) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~1\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(1) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~1\) # 
-- (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~3\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~1\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(1),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~1\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~2_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~3\);

-- Location: LCCOMB_X19_Y28_N6
\ADC_DAC_BlockConnection_inst|inst1|count~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|count~0_combout\ = (!\ADC_DAC_BlockConnection_inst|inst1|Equal0~10_combout\ & \ADC_DAC_BlockConnection_inst|inst1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|Equal0~10_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst1|Add0~2_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|count~0_combout\);

-- Location: FF_X19_Y28_N7
\ADC_DAC_BlockConnection_inst|inst1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(1));

-- Location: LCCOMB_X20_Y28_N4
\ADC_DAC_BlockConnection_inst|inst1|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~4_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(2) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~3\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(2) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~3\ 
-- & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~5\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(2) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(2),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~3\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~4_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~5\);

-- Location: FF_X20_Y28_N5
\ADC_DAC_BlockConnection_inst|inst1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(2));

-- Location: LCCOMB_X20_Y28_N6
\ADC_DAC_BlockConnection_inst|inst1|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~6_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(3) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~5\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(3) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~5\) # 
-- (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~7\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~5\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(3),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~5\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~6_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~7\);

-- Location: FF_X20_Y28_N7
\ADC_DAC_BlockConnection_inst|inst1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(3));

-- Location: LCCOMB_X20_Y28_N8
\ADC_DAC_BlockConnection_inst|inst1|Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~8_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(4) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~7\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(4) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~7\ 
-- & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~9\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(4) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(4),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~7\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~8_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~9\);

-- Location: FF_X20_Y28_N9
\ADC_DAC_BlockConnection_inst|inst1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(4));

-- Location: LCCOMB_X20_Y28_N10
\ADC_DAC_BlockConnection_inst|inst1|Add0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~10_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(5) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~9\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(5) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~9\) # 
-- (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~11\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~9\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(5),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~9\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~10_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~11\);

-- Location: FF_X20_Y28_N11
\ADC_DAC_BlockConnection_inst|inst1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(5));

-- Location: LCCOMB_X20_Y28_N12
\ADC_DAC_BlockConnection_inst|inst1|Add0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~12_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(6) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~11\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(6) & 
-- (!\ADC_DAC_BlockConnection_inst|inst1|Add0~11\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~13\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(6) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(6),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~11\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~12_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~13\);

-- Location: FF_X20_Y28_N13
\ADC_DAC_BlockConnection_inst|inst1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(6));

-- Location: LCCOMB_X20_Y28_N14
\ADC_DAC_BlockConnection_inst|inst1|Add0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~14_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(7) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~13\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(7) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~13\) # 
-- (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~15\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~13\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(7),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~13\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~14_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~15\);

-- Location: FF_X20_Y28_N15
\ADC_DAC_BlockConnection_inst|inst1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(7));

-- Location: LCCOMB_X20_Y28_N16
\ADC_DAC_BlockConnection_inst|inst1|Add0~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~16_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(8) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~15\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(8) & 
-- (!\ADC_DAC_BlockConnection_inst|inst1|Add0~15\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~17\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(8) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(8),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~15\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~16_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~17\);

-- Location: FF_X20_Y28_N17
\ADC_DAC_BlockConnection_inst|inst1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(8));

-- Location: LCCOMB_X20_Y28_N18
\ADC_DAC_BlockConnection_inst|inst1|Add0~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~18_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(9) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~17\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(9) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~17\) # 
-- (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~19\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~17\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(9),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~17\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~18_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~19\);

-- Location: FF_X20_Y28_N19
\ADC_DAC_BlockConnection_inst|inst1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(9));

-- Location: LCCOMB_X20_Y28_N20
\ADC_DAC_BlockConnection_inst|inst1|Add0~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~20_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(10) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~19\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(10) & 
-- (!\ADC_DAC_BlockConnection_inst|inst1|Add0~19\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~21\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(10) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(10),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~19\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~20_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~21\);

-- Location: FF_X20_Y28_N21
\ADC_DAC_BlockConnection_inst|inst1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(10));

-- Location: LCCOMB_X20_Y28_N22
\ADC_DAC_BlockConnection_inst|inst1|Add0~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~22_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(11) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~21\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(11) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~21\) 
-- # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~23\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~21\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(11),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~21\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~22_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~23\);

-- Location: FF_X20_Y28_N23
\ADC_DAC_BlockConnection_inst|inst1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(11));

-- Location: LCCOMB_X19_Y28_N10
\ADC_DAC_BlockConnection_inst|inst1|Equal0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Equal0~6_combout\ = (!\ADC_DAC_BlockConnection_inst|inst1|count\(8) & (!\ADC_DAC_BlockConnection_inst|inst1|count\(9) & (!\ADC_DAC_BlockConnection_inst|inst1|count\(10) & 
-- !\ADC_DAC_BlockConnection_inst|inst1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(8),
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(9),
	datac => \ADC_DAC_BlockConnection_inst|inst1|count\(10),
	datad => \ADC_DAC_BlockConnection_inst|inst1|count\(11),
	combout => \ADC_DAC_BlockConnection_inst|inst1|Equal0~6_combout\);

-- Location: LCCOMB_X20_Y28_N24
\ADC_DAC_BlockConnection_inst|inst1|Add0~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~24_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(12) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~23\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(12) & 
-- (!\ADC_DAC_BlockConnection_inst|inst1|Add0~23\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~25\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(12) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(12),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~23\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~24_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~25\);

-- Location: FF_X20_Y28_N25
\ADC_DAC_BlockConnection_inst|inst1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(12));

-- Location: LCCOMB_X20_Y28_N26
\ADC_DAC_BlockConnection_inst|inst1|Add0~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~26_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(13) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~25\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(13) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~25\) 
-- # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~27\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~25\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(13),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~25\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~26_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~27\);

-- Location: FF_X20_Y28_N27
\ADC_DAC_BlockConnection_inst|inst1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(13));

-- Location: LCCOMB_X20_Y28_N28
\ADC_DAC_BlockConnection_inst|inst1|Add0~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~28_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(14) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~27\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(14) & 
-- (!\ADC_DAC_BlockConnection_inst|inst1|Add0~27\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~29\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(14) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(14),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~27\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~28_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~29\);

-- Location: FF_X20_Y28_N29
\ADC_DAC_BlockConnection_inst|inst1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(14));

-- Location: LCCOMB_X20_Y28_N30
\ADC_DAC_BlockConnection_inst|inst1|Add0~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~30_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(15) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~29\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(15) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~29\) 
-- # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~31\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~29\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(15),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~29\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~30_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~31\);

-- Location: FF_X20_Y28_N31
\ADC_DAC_BlockConnection_inst|inst1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(15));

-- Location: LCCOMB_X20_Y27_N0
\ADC_DAC_BlockConnection_inst|inst1|Add0~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~32_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(16) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~31\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(16) & 
-- (!\ADC_DAC_BlockConnection_inst|inst1|Add0~31\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~33\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(16) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(16),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~31\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~32_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~33\);

-- Location: FF_X20_Y27_N1
\ADC_DAC_BlockConnection_inst|inst1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(16));

-- Location: LCCOMB_X20_Y27_N2
\ADC_DAC_BlockConnection_inst|inst1|Add0~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~34_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(17) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~33\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(17) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~33\) 
-- # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~35\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~33\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(17),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~33\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~34_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~35\);

-- Location: FF_X20_Y27_N3
\ADC_DAC_BlockConnection_inst|inst1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(17));

-- Location: LCCOMB_X20_Y27_N4
\ADC_DAC_BlockConnection_inst|inst1|Add0~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~36_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(18) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~35\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(18) & 
-- (!\ADC_DAC_BlockConnection_inst|inst1|Add0~35\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~37\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(18) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(18),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~35\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~36_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~37\);

-- Location: FF_X20_Y27_N5
\ADC_DAC_BlockConnection_inst|inst1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(18));

-- Location: LCCOMB_X20_Y27_N6
\ADC_DAC_BlockConnection_inst|inst1|Add0~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~38_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(19) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~37\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(19) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~37\) 
-- # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~39\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~37\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(19),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~37\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~38_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~39\);

-- Location: FF_X20_Y27_N7
\ADC_DAC_BlockConnection_inst|inst1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(19));

-- Location: LCCOMB_X20_Y27_N8
\ADC_DAC_BlockConnection_inst|inst1|Add0~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~40_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(20) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~39\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(20) & 
-- (!\ADC_DAC_BlockConnection_inst|inst1|Add0~39\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~41\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(20) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(20),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~39\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~40_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~41\);

-- Location: FF_X20_Y27_N9
\ADC_DAC_BlockConnection_inst|inst1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(20));

-- Location: LCCOMB_X20_Y27_N10
\ADC_DAC_BlockConnection_inst|inst1|Add0~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~42_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(21) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~41\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(21) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~41\) 
-- # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~43\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~41\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(21),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~41\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~42_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~43\);

-- Location: FF_X20_Y27_N11
\ADC_DAC_BlockConnection_inst|inst1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(21));

-- Location: LCCOMB_X20_Y27_N12
\ADC_DAC_BlockConnection_inst|inst1|Add0~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~44_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(22) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~43\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(22) & 
-- (!\ADC_DAC_BlockConnection_inst|inst1|Add0~43\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~45\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(22) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(22),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~43\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~44_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~45\);

-- Location: FF_X20_Y27_N13
\ADC_DAC_BlockConnection_inst|inst1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(22));

-- Location: LCCOMB_X20_Y27_N14
\ADC_DAC_BlockConnection_inst|inst1|Add0~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~46_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(23) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~45\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(23) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~45\) 
-- # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~47\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~45\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(23),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~45\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~46_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~47\);

-- Location: FF_X20_Y27_N15
\ADC_DAC_BlockConnection_inst|inst1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(23));

-- Location: LCCOMB_X20_Y27_N16
\ADC_DAC_BlockConnection_inst|inst1|Add0~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~48_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(24) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~47\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(24) & 
-- (!\ADC_DAC_BlockConnection_inst|inst1|Add0~47\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~49\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(24) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(24),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~47\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~48_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~49\);

-- Location: FF_X20_Y27_N17
\ADC_DAC_BlockConnection_inst|inst1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(24));

-- Location: LCCOMB_X20_Y27_N18
\ADC_DAC_BlockConnection_inst|inst1|Add0~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~50_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(25) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~49\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(25) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~49\) 
-- # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~51\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~49\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(25),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~49\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~50_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~51\);

-- Location: FF_X20_Y27_N19
\ADC_DAC_BlockConnection_inst|inst1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(25));

-- Location: LCCOMB_X20_Y27_N20
\ADC_DAC_BlockConnection_inst|inst1|Add0~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~52_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(26) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~51\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(26) & 
-- (!\ADC_DAC_BlockConnection_inst|inst1|Add0~51\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~53\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(26) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(26),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~51\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~52_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~53\);

-- Location: FF_X20_Y27_N21
\ADC_DAC_BlockConnection_inst|inst1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(26));

-- Location: LCCOMB_X20_Y27_N22
\ADC_DAC_BlockConnection_inst|inst1|Add0~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~54_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(27) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~53\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(27) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~53\) 
-- # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~55\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~53\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(27),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~53\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~54_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~55\);

-- Location: FF_X20_Y27_N23
\ADC_DAC_BlockConnection_inst|inst1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(27));

-- Location: LCCOMB_X19_Y27_N12
\ADC_DAC_BlockConnection_inst|inst1|Equal0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Equal0~1_combout\ = (!\ADC_DAC_BlockConnection_inst|inst1|count\(27) & (!\ADC_DAC_BlockConnection_inst|inst1|count\(25) & (!\ADC_DAC_BlockConnection_inst|inst1|count\(26) & 
-- !\ADC_DAC_BlockConnection_inst|inst1|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(27),
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(25),
	datac => \ADC_DAC_BlockConnection_inst|inst1|count\(26),
	datad => \ADC_DAC_BlockConnection_inst|inst1|count\(24),
	combout => \ADC_DAC_BlockConnection_inst|inst1|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y27_N24
\ADC_DAC_BlockConnection_inst|inst1|Add0~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~56_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(28) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~55\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(28) & 
-- (!\ADC_DAC_BlockConnection_inst|inst1|Add0~55\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~57\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(28) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(28),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~55\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~56_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~57\);

-- Location: FF_X20_Y27_N25
\ADC_DAC_BlockConnection_inst|inst1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(28));

-- Location: LCCOMB_X20_Y27_N26
\ADC_DAC_BlockConnection_inst|inst1|Add0~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~58_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(29) & (!\ADC_DAC_BlockConnection_inst|inst1|Add0~57\)) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(29) & ((\ADC_DAC_BlockConnection_inst|inst1|Add0~57\) 
-- # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~59\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst1|Add0~57\) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(29),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~57\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~58_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~59\);

-- Location: FF_X20_Y27_N27
\ADC_DAC_BlockConnection_inst|inst1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(29));

-- Location: LCCOMB_X20_Y27_N28
\ADC_DAC_BlockConnection_inst|inst1|Add0~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~60_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|count\(30) & (\ADC_DAC_BlockConnection_inst|inst1|Add0~59\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst1|count\(30) & 
-- (!\ADC_DAC_BlockConnection_inst|inst1|Add0~59\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~61\ = CARRY((\ADC_DAC_BlockConnection_inst|inst1|count\(30) & !\ADC_DAC_BlockConnection_inst|inst1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(30),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~59\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~60_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst1|Add0~61\);

-- Location: FF_X20_Y27_N29
\ADC_DAC_BlockConnection_inst|inst1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(30));

-- Location: LCCOMB_X20_Y27_N30
\ADC_DAC_BlockConnection_inst|inst1|Add0~62\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Add0~62_combout\ = \ADC_DAC_BlockConnection_inst|inst1|count\(31) $ (\ADC_DAC_BlockConnection_inst|inst1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(31),
	cin => \ADC_DAC_BlockConnection_inst|inst1|Add0~61\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Add0~62_combout\);

-- Location: FF_X20_Y27_N31
\ADC_DAC_BlockConnection_inst|inst1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|count\(31));

-- Location: LCCOMB_X19_Y27_N18
\ADC_DAC_BlockConnection_inst|inst1|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Equal0~0_combout\ = (!\ADC_DAC_BlockConnection_inst|inst1|count\(29) & (!\ADC_DAC_BlockConnection_inst|inst1|count\(30) & (!\ADC_DAC_BlockConnection_inst|inst1|count\(31) & 
-- !\ADC_DAC_BlockConnection_inst|inst1|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(29),
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(30),
	datac => \ADC_DAC_BlockConnection_inst|inst1|count\(31),
	datad => \ADC_DAC_BlockConnection_inst|inst1|count\(28),
	combout => \ADC_DAC_BlockConnection_inst|inst1|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y27_N4
\ADC_DAC_BlockConnection_inst|inst1|Equal0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Equal0~2_combout\ = (!\ADC_DAC_BlockConnection_inst|inst1|count\(23) & (!\ADC_DAC_BlockConnection_inst|inst1|count\(21) & (!\ADC_DAC_BlockConnection_inst|inst1|count\(20) & 
-- !\ADC_DAC_BlockConnection_inst|inst1|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(23),
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(21),
	datac => \ADC_DAC_BlockConnection_inst|inst1|count\(20),
	datad => \ADC_DAC_BlockConnection_inst|inst1|count\(22),
	combout => \ADC_DAC_BlockConnection_inst|inst1|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y27_N10
\ADC_DAC_BlockConnection_inst|inst1|Equal0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Equal0~3_combout\ = (!\ADC_DAC_BlockConnection_inst|inst1|count\(18) & (!\ADC_DAC_BlockConnection_inst|inst1|count\(19) & (!\ADC_DAC_BlockConnection_inst|inst1|count\(16) & 
-- !\ADC_DAC_BlockConnection_inst|inst1|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(18),
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(19),
	datac => \ADC_DAC_BlockConnection_inst|inst1|count\(16),
	datad => \ADC_DAC_BlockConnection_inst|inst1|count\(17),
	combout => \ADC_DAC_BlockConnection_inst|inst1|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y27_N0
\ADC_DAC_BlockConnection_inst|inst1|Equal0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Equal0~4_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|Equal0~1_combout\ & (\ADC_DAC_BlockConnection_inst|inst1|Equal0~0_combout\ & (\ADC_DAC_BlockConnection_inst|inst1|Equal0~2_combout\ & 
-- \ADC_DAC_BlockConnection_inst|inst1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|Equal0~1_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst1|Equal0~0_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst1|Equal0~2_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst1|Equal0~3_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y28_N18
\ADC_DAC_BlockConnection_inst|inst1|Equal0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Equal0~7_combout\ = (!\ADC_DAC_BlockConnection_inst|inst1|count\(5) & (!\ADC_DAC_BlockConnection_inst|inst1|count\(7) & (!\ADC_DAC_BlockConnection_inst|inst1|count\(4) & !\ADC_DAC_BlockConnection_inst|inst1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(5),
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(7),
	datac => \ADC_DAC_BlockConnection_inst|inst1|count\(4),
	datad => \ADC_DAC_BlockConnection_inst|inst1|count\(6),
	combout => \ADC_DAC_BlockConnection_inst|inst1|Equal0~7_combout\);

-- Location: LCCOMB_X19_Y28_N12
\ADC_DAC_BlockConnection_inst|inst1|Equal0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Equal0~8_combout\ = (!\ADC_DAC_BlockConnection_inst|inst1|count\(2) & !\ADC_DAC_BlockConnection_inst|inst1|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(2),
	datad => \ADC_DAC_BlockConnection_inst|inst1|count\(3),
	combout => \ADC_DAC_BlockConnection_inst|inst1|Equal0~8_combout\);

-- Location: LCCOMB_X19_Y28_N4
\ADC_DAC_BlockConnection_inst|inst1|Equal0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Equal0~9_combout\ = (!\ADC_DAC_BlockConnection_inst|inst1|count\(1) & (\ADC_DAC_BlockConnection_inst|inst1|Equal0~7_combout\ & (!\ADC_DAC_BlockConnection_inst|inst1|count\(0) & 
-- \ADC_DAC_BlockConnection_inst|inst1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(1),
	datab => \ADC_DAC_BlockConnection_inst|inst1|Equal0~7_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst1|count\(0),
	datad => \ADC_DAC_BlockConnection_inst|inst1|Equal0~8_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Equal0~9_combout\);

-- Location: LCCOMB_X19_Y28_N24
\ADC_DAC_BlockConnection_inst|inst1|Equal0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Equal0~5_combout\ = (!\ADC_DAC_BlockConnection_inst|inst1|count\(12) & (!\ADC_DAC_BlockConnection_inst|inst1|count\(14) & (!\ADC_DAC_BlockConnection_inst|inst1|count\(15) & 
-- !\ADC_DAC_BlockConnection_inst|inst1|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|count\(12),
	datab => \ADC_DAC_BlockConnection_inst|inst1|count\(14),
	datac => \ADC_DAC_BlockConnection_inst|inst1|count\(15),
	datad => \ADC_DAC_BlockConnection_inst|inst1|count\(13),
	combout => \ADC_DAC_BlockConnection_inst|inst1|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y28_N20
\ADC_DAC_BlockConnection_inst|inst1|Equal0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|Equal0~10_combout\ = (\ADC_DAC_BlockConnection_inst|inst1|Equal0~6_combout\ & (\ADC_DAC_BlockConnection_inst|inst1|Equal0~4_combout\ & (\ADC_DAC_BlockConnection_inst|inst1|Equal0~9_combout\ & 
-- \ADC_DAC_BlockConnection_inst|inst1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst1|Equal0~6_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst1|Equal0~4_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst1|Equal0~9_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst1|Equal0~5_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|Equal0~10_combout\);

-- Location: LCCOMB_X19_Y28_N0
\ADC_DAC_BlockConnection_inst|inst1|tmp~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst1|tmp~0_combout\ = \ADC_DAC_BlockConnection_inst|inst1|tmp~q\ $ (\ADC_DAC_BlockConnection_inst|inst1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_DAC_BlockConnection_inst|inst1|tmp~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst1|Equal0~10_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst1|tmp~0_combout\);

-- Location: FF_X19_Y28_N1
\ADC_DAC_BlockConnection_inst|inst1|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst1|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst1|tmp~q\);

-- Location: CLKCTRL_G10
\ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X7_Y7_N6
\ADC_DAC_BlockConnection_inst|inst3|data_Index[0]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[0]~10_combout\ = \ADC_DAC_BlockConnection_inst|inst3|data_Index\(0) $ (VCC)
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[0]~11\ = CARRY(\ADC_DAC_BlockConnection_inst|inst3|data_Index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(0),
	datad => VCC,
	combout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[0]~10_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[0]~11\);

-- Location: LCCOMB_X7_Y7_N4
\ADC_DAC_BlockConnection_inst|inst3|Selector0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|Selector0~0_combout\ = ((\ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\ & \ADC_DAC_BlockConnection_inst|inst3|current_state.High_wait~q\)) # (!\ADC_DAC_BlockConnection_inst|inst3|current_state.High_send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst3|current_state.High_wait~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst3|current_state.High_send~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst3|Selector0~0_combout\);

-- Location: FF_X7_Y7_N5
\ADC_DAC_BlockConnection_inst|inst3|current_state.High_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst3|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst3|current_state.High_wait~q\);

-- Location: LCCOMB_X7_Y7_N2
\ADC_DAC_BlockConnection_inst|inst3|LessThan0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|LessThan0~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst3|data_Index\(3)) # ((\ADC_DAC_BlockConnection_inst|inst3|data_Index\(2) & ((\ADC_DAC_BlockConnection_inst|inst3|data_Index\(0)) # 
-- (\ADC_DAC_BlockConnection_inst|inst3|data_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(0),
	datab => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(2),
	datac => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(1),
	datad => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(3),
	combout => \ADC_DAC_BlockConnection_inst|inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X7_Y7_N0
\ADC_DAC_BlockConnection_inst|inst3|LessThan0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|LessThan0~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst3|data_Index\(7) & (\ADC_DAC_BlockConnection_inst|inst3|data_Index\(6) & (\ADC_DAC_BlockConnection_inst|inst3|data_Index\(4) & 
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(7),
	datab => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(6),
	datac => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(4),
	datad => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(5),
	combout => \ADC_DAC_BlockConnection_inst|inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X7_Y7_N24
\ADC_DAC_BlockConnection_inst|inst3|Selector1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|Selector1~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst3|current_state.TransferPauseHigh~q\ & (((!\ADC_DAC_BlockConnection_inst|inst3|LessThan0~1_combout\) # 
-- (!\ADC_DAC_BlockConnection_inst|inst3|LessThan0~0_combout\)) # (!\ADC_DAC_BlockConnection_inst|inst3|data_Index\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(8),
	datab => \ADC_DAC_BlockConnection_inst|inst3|LessThan0~0_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst3|current_state.TransferPauseHigh~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst3|LessThan0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst3|Selector1~0_combout\);

-- Location: LCCOMB_X7_Y7_N26
\ADC_DAC_BlockConnection_inst|inst3|Selector1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|Selector1~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst3|Selector1~0_combout\) # ((!\ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\ & \ADC_DAC_BlockConnection_inst|inst3|current_state.High_wait~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst3|current_state.High_wait~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst3|Selector1~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst3|Selector1~1_combout\);

-- Location: FF_X7_Y7_N27
\ADC_DAC_BlockConnection_inst|inst3|current_state.TransferPauseHigh\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst3|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst3|current_state.TransferPauseHigh~q\);

-- Location: FF_X7_Y7_N7
\ADC_DAC_BlockConnection_inst|inst3|data_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst3|data_Index[0]~10_combout\,
	sclr => \ADC_DAC_BlockConnection_inst|inst3|ALT_INV_current_state.TransferPauseHigh~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(0));

-- Location: LCCOMB_X7_Y7_N8
\ADC_DAC_BlockConnection_inst|inst3|data_Index[1]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[1]~12_combout\ = (\ADC_DAC_BlockConnection_inst|inst3|data_Index\(1) & (!\ADC_DAC_BlockConnection_inst|inst3|data_Index[0]~11\)) # (!\ADC_DAC_BlockConnection_inst|inst3|data_Index\(1) & 
-- ((\ADC_DAC_BlockConnection_inst|inst3|data_Index[0]~11\) # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[1]~13\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst3|data_Index[0]~11\) # (!\ADC_DAC_BlockConnection_inst|inst3|data_Index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(1),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst3|data_Index[0]~11\,
	combout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[1]~12_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[1]~13\);

-- Location: FF_X7_Y7_N9
\ADC_DAC_BlockConnection_inst|inst3|data_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst3|data_Index[1]~12_combout\,
	sclr => \ADC_DAC_BlockConnection_inst|inst3|ALT_INV_current_state.TransferPauseHigh~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(1));

-- Location: LCCOMB_X7_Y7_N10
\ADC_DAC_BlockConnection_inst|inst3|data_Index[2]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[2]~14_combout\ = (\ADC_DAC_BlockConnection_inst|inst3|data_Index\(2) & (\ADC_DAC_BlockConnection_inst|inst3|data_Index[1]~13\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst3|data_Index\(2) & 
-- (!\ADC_DAC_BlockConnection_inst|inst3|data_Index[1]~13\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[2]~15\ = CARRY((\ADC_DAC_BlockConnection_inst|inst3|data_Index\(2) & !\ADC_DAC_BlockConnection_inst|inst3|data_Index[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(2),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst3|data_Index[1]~13\,
	combout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[2]~14_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[2]~15\);

-- Location: FF_X7_Y7_N11
\ADC_DAC_BlockConnection_inst|inst3|data_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst3|data_Index[2]~14_combout\,
	sclr => \ADC_DAC_BlockConnection_inst|inst3|ALT_INV_current_state.TransferPauseHigh~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(2));

-- Location: LCCOMB_X7_Y7_N12
\ADC_DAC_BlockConnection_inst|inst3|data_Index[3]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[3]~16_combout\ = (\ADC_DAC_BlockConnection_inst|inst3|data_Index\(3) & (!\ADC_DAC_BlockConnection_inst|inst3|data_Index[2]~15\)) # (!\ADC_DAC_BlockConnection_inst|inst3|data_Index\(3) & 
-- ((\ADC_DAC_BlockConnection_inst|inst3|data_Index[2]~15\) # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[3]~17\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst3|data_Index[2]~15\) # (!\ADC_DAC_BlockConnection_inst|inst3|data_Index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(3),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst3|data_Index[2]~15\,
	combout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[3]~16_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[3]~17\);

-- Location: FF_X7_Y7_N13
\ADC_DAC_BlockConnection_inst|inst3|data_Index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst3|data_Index[3]~16_combout\,
	sclr => \ADC_DAC_BlockConnection_inst|inst3|ALT_INV_current_state.TransferPauseHigh~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(3));

-- Location: LCCOMB_X7_Y7_N14
\ADC_DAC_BlockConnection_inst|inst3|data_Index[4]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[4]~18_combout\ = (\ADC_DAC_BlockConnection_inst|inst3|data_Index\(4) & (\ADC_DAC_BlockConnection_inst|inst3|data_Index[3]~17\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst3|data_Index\(4) & 
-- (!\ADC_DAC_BlockConnection_inst|inst3|data_Index[3]~17\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[4]~19\ = CARRY((\ADC_DAC_BlockConnection_inst|inst3|data_Index\(4) & !\ADC_DAC_BlockConnection_inst|inst3|data_Index[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(4),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst3|data_Index[3]~17\,
	combout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[4]~18_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[4]~19\);

-- Location: FF_X7_Y7_N15
\ADC_DAC_BlockConnection_inst|inst3|data_Index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst3|data_Index[4]~18_combout\,
	sclr => \ADC_DAC_BlockConnection_inst|inst3|ALT_INV_current_state.TransferPauseHigh~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(4));

-- Location: LCCOMB_X7_Y7_N16
\ADC_DAC_BlockConnection_inst|inst3|data_Index[5]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[5]~20_combout\ = (\ADC_DAC_BlockConnection_inst|inst3|data_Index\(5) & (!\ADC_DAC_BlockConnection_inst|inst3|data_Index[4]~19\)) # (!\ADC_DAC_BlockConnection_inst|inst3|data_Index\(5) & 
-- ((\ADC_DAC_BlockConnection_inst|inst3|data_Index[4]~19\) # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[5]~21\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst3|data_Index[4]~19\) # (!\ADC_DAC_BlockConnection_inst|inst3|data_Index\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(5),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst3|data_Index[4]~19\,
	combout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[5]~20_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[5]~21\);

-- Location: FF_X7_Y7_N17
\ADC_DAC_BlockConnection_inst|inst3|data_Index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst3|data_Index[5]~20_combout\,
	sclr => \ADC_DAC_BlockConnection_inst|inst3|ALT_INV_current_state.TransferPauseHigh~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(5));

-- Location: LCCOMB_X7_Y7_N18
\ADC_DAC_BlockConnection_inst|inst3|data_Index[6]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[6]~22_combout\ = (\ADC_DAC_BlockConnection_inst|inst3|data_Index\(6) & (\ADC_DAC_BlockConnection_inst|inst3|data_Index[5]~21\ $ (GND))) # (!\ADC_DAC_BlockConnection_inst|inst3|data_Index\(6) & 
-- (!\ADC_DAC_BlockConnection_inst|inst3|data_Index[5]~21\ & VCC))
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[6]~23\ = CARRY((\ADC_DAC_BlockConnection_inst|inst3|data_Index\(6) & !\ADC_DAC_BlockConnection_inst|inst3|data_Index[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(6),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst3|data_Index[5]~21\,
	combout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[6]~22_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[6]~23\);

-- Location: FF_X7_Y7_N19
\ADC_DAC_BlockConnection_inst|inst3|data_Index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst3|data_Index[6]~22_combout\,
	sclr => \ADC_DAC_BlockConnection_inst|inst3|ALT_INV_current_state.TransferPauseHigh~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(6));

-- Location: LCCOMB_X7_Y7_N20
\ADC_DAC_BlockConnection_inst|inst3|data_Index[7]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[7]~24_combout\ = (\ADC_DAC_BlockConnection_inst|inst3|data_Index\(7) & (!\ADC_DAC_BlockConnection_inst|inst3|data_Index[6]~23\)) # (!\ADC_DAC_BlockConnection_inst|inst3|data_Index\(7) & 
-- ((\ADC_DAC_BlockConnection_inst|inst3|data_Index[6]~23\) # (GND)))
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[7]~25\ = CARRY((!\ADC_DAC_BlockConnection_inst|inst3|data_Index[6]~23\) # (!\ADC_DAC_BlockConnection_inst|inst3|data_Index\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(7),
	datad => VCC,
	cin => \ADC_DAC_BlockConnection_inst|inst3|data_Index[6]~23\,
	combout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[7]~24_combout\,
	cout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[7]~25\);

-- Location: FF_X7_Y7_N21
\ADC_DAC_BlockConnection_inst|inst3|data_Index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst3|data_Index[7]~24_combout\,
	sclr => \ADC_DAC_BlockConnection_inst|inst3|ALT_INV_current_state.TransferPauseHigh~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(7));

-- Location: LCCOMB_X7_Y7_N22
\ADC_DAC_BlockConnection_inst|inst3|data_Index[8]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|data_Index[8]~26_combout\ = \ADC_DAC_BlockConnection_inst|inst3|data_Index\(8) $ (!\ADC_DAC_BlockConnection_inst|inst3|data_Index[7]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(8),
	cin => \ADC_DAC_BlockConnection_inst|inst3|data_Index[7]~25\,
	combout => \ADC_DAC_BlockConnection_inst|inst3|data_Index[8]~26_combout\);

-- Location: FF_X7_Y7_N23
\ADC_DAC_BlockConnection_inst|inst3|data_Index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst3|data_Index[8]~26_combout\,
	sclr => \ADC_DAC_BlockConnection_inst|inst3|ALT_INV_current_state.TransferPauseHigh~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(8));

-- Location: LCCOMB_X7_Y7_N28
\ADC_DAC_BlockConnection_inst|inst3|current_state~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst3|current_state~7_combout\ = (((!\ADC_DAC_BlockConnection_inst|inst3|LessThan0~1_combout\) # (!\ADC_DAC_BlockConnection_inst|inst3|current_state.TransferPauseHigh~q\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst3|LessThan0~0_combout\)) # (!\ADC_DAC_BlockConnection_inst|inst3|data_Index\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst3|data_Index\(8),
	datab => \ADC_DAC_BlockConnection_inst|inst3|LessThan0~0_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst3|current_state.TransferPauseHigh~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst3|LessThan0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst3|current_state~7_combout\);

-- Location: FF_X7_Y7_N29
\ADC_DAC_BlockConnection_inst|inst3|current_state.High_send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADC_DAC_BlockConnection_inst|inst1|tmp~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst3|current_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst3|current_state.High_send~q\);

-- Location: LCCOMB_X6_Y7_N16
\ADC_DAC_BlockConnection_inst|inst|Selector5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector5~0_combout\ = (!\ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\ & \ADC_DAC_BlockConnection_inst|inst3|current_state.High_send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst3|current_state.High_send~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector5~0_combout\);

-- Location: LCCOMB_X6_Y7_N26
\ADC_DAC_BlockConnection_inst|inst|Selector5~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector5~1_combout\ = (!\ADC_DAC_BlockConnection_inst|inst|Selector5~0_combout\ & (((!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\) # (!\ADC_DAC_BlockConnection_inst|inst|data_Index\(0))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|Equal0~0_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst|data_Index\(0),
	datac => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst|Selector5~0_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector5~1_combout\);

-- Location: FF_X6_Y7_N27
\ADC_DAC_BlockConnection_inst|inst|current_state.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\);

-- Location: LCCOMB_X6_Y7_N30
\ADC_DAC_BlockConnection_inst|inst|current_state~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|current_state~10_combout\ = (!\ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\ & !\ADC_DAC_BlockConnection_inst|inst3|current_state.High_send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst3|current_state.High_send~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|current_state~10_combout\);

-- Location: FF_X6_Y7_N31
\ADC_DAC_BlockConnection_inst|inst|current_state.Set_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|current_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|current_state.Set_output~q\);

-- Location: LCCOMB_X6_Y7_N10
\ADC_DAC_BlockConnection_inst|inst|Selector6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector6~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.Set_output~q\) # ((\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & ((!\ADC_DAC_BlockConnection_inst|inst|data_Index\(0)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|Equal0~0_combout\,
	datab => \ADC_DAC_BlockConnection_inst|inst|data_Index\(0),
	datac => \ADC_DAC_BlockConnection_inst|inst|current_state.Set_output~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector6~0_combout\);

-- Location: FF_X6_Y7_N11
\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\);

-- Location: LCCOMB_X6_Y7_N22
\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~feeder_combout\);

-- Location: FF_X6_Y7_N23
\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\);

-- Location: IOIBUF_X3_Y0_N8
\bMKR_D[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(4),
	o => \bMKR_D[4]~input_o\);

-- Location: LCCOMB_X9_Y6_N10
\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\ & !\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|state.rd~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~1_combout\);

-- Location: LCCOMB_X5_Y4_N16
\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~2_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~2_combout\);

-- Location: LCCOMB_X5_Y4_N26
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[16]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[16]~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~2_combout\ & (\bMKR_D[4]~input_o\)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~2_combout\ & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bMKR_D[4]~input_o\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(16),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~2_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[16]~0_combout\);

-- Location: FF_X5_Y4_N27
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(16));

-- Location: LCCOMB_X6_Y6_N12
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\ & (\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~0_combout\ & \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk_prev~q\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~0_combout\,
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_clk~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\);

-- Location: FF_X6_Y6_N13
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(16),
	sload => VCC,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(16));

-- Location: FF_X6_Y6_N21
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(16),
	sload => VCC,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(15));

-- Location: LCCOMB_X6_Y4_N10
\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~5_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1) & \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~5_combout\);

-- Location: LCCOMB_X5_Y4_N6
\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3) & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4) & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\);

-- Location: LCCOMB_X5_Y4_N22
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[14]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[14]~2_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~5_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\ & (\bMKR_D[4]~input_o\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(14)))))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~5_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bMKR_D[4]~input_o\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~5_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(14),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[14]~2_combout\);

-- Location: FF_X5_Y4_N23
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(14));

-- Location: LCCOMB_X6_Y6_N18
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[14]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(14),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[14]~feeder_combout\);

-- Location: FF_X6_Y6_N19
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[14]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(14));

-- Location: LCCOMB_X6_Y6_N0
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[13]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(14),
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[13]~feeder_combout\);

-- Location: FF_X6_Y6_N1
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[13]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(13));

-- Location: LCCOMB_X5_Y4_N14
\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~6_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1) & !\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~6_combout\);

-- Location: LCCOMB_X5_Y4_N18
\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~9_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3) & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4) & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~9_combout\);

-- Location: LCCOMB_X5_Y4_N24
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[5]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[5]~10_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~6_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~9_combout\ & (\bMKR_D[4]~input_o\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~9_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(5)))))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~6_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bMKR_D[4]~input_o\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~6_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(5),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~9_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[5]~10_combout\);

-- Location: FF_X5_Y4_N25
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(5));

-- Location: LCCOMB_X4_Y6_N12
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[5]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(5),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[5]~feeder_combout\);

-- Location: FF_X4_Y6_N13
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[5]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(5));

-- Location: LCCOMB_X4_Y6_N4
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[5]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(5),
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[5]~feeder_combout\);

-- Location: FF_X4_Y6_N5
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[5]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(5));

-- Location: LCCOMB_X5_Y4_N20
\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~10_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\ & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4) & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|Equal0~0_OTERM21\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~10_combout\);

-- Location: LCCOMB_X5_Y4_N8
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[4]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[4]~11_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~10_combout\ & (\bMKR_D[4]~input_o\)) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~10_combout\ & 
-- ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bMKR_D[4]~input_o\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(4),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~10_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[4]~11_combout\);

-- Location: FF_X5_Y4_N9
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(4));

-- Location: LCCOMB_X4_Y6_N10
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[4]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(4),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[4]~feeder_combout\);

-- Location: FF_X4_Y6_N11
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[4]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(4));

-- Location: LCCOMB_X4_Y6_N14
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[4]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(4),
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[4]~feeder_combout\);

-- Location: FF_X4_Y6_N15
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[4]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(4));

-- Location: LCCOMB_X6_Y7_N14
\ADC_DAC_BlockConnection_inst|inst|current_state~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\) # (!\ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_low~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\);

-- Location: LCCOMB_X5_Y6_N0
\ADC_DAC_BlockConnection_inst|inst|Selector22~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector22~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(4) & ((\ADC_DAC_BlockConnection_inst|inst|current_state.Set_output~q\) # ((\ADC_DAC_BlockConnection_inst|inst|output_data\(0) & 
-- \ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\)))) # (!\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(4) & (((\ADC_DAC_BlockConnection_inst|inst|output_data\(0) & \ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(4),
	datab => \ADC_DAC_BlockConnection_inst|inst|current_state.Set_output~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst|output_data\(0),
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector22~0_combout\);

-- Location: FF_X5_Y6_N1
\ADC_DAC_BlockConnection_inst|inst|output_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(0));

-- Location: LCCOMB_X5_Y6_N30
\ADC_DAC_BlockConnection_inst|inst|Selector21~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector21~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & ((\ADC_DAC_BlockConnection_inst|inst|output_data\(0)))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & (\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(5),
	datad => \ADC_DAC_BlockConnection_inst|inst|output_data\(0),
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector21~0_combout\);

-- Location: LCCOMB_X5_Y6_N2
\ADC_DAC_BlockConnection_inst|inst|Selector11~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector11~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.Set_output~q\) # (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_DAC_BlockConnection_inst|inst|current_state.Set_output~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector11~1_combout\);

-- Location: FF_X5_Y6_N31
\ADC_DAC_BlockConnection_inst|inst|output_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector21~0_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(1));

-- Location: LCCOMB_X5_Y4_N4
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[6]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[6]~9_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~5_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~9_combout\ & (\bMKR_D[4]~input_o\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~9_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(6)))))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~5_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bMKR_D[4]~input_o\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~5_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(6),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~9_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[6]~9_combout\);

-- Location: FF_X5_Y4_N5
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(6));

-- Location: LCCOMB_X4_Y6_N18
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[6]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(6),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[6]~feeder_combout\);

-- Location: FF_X4_Y6_N19
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[6]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(6));

-- Location: LCCOMB_X4_Y6_N8
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[6]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(6),
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[6]~feeder_combout\);

-- Location: FF_X4_Y6_N9
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[6]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(6));

-- Location: LCCOMB_X5_Y6_N16
\ADC_DAC_BlockConnection_inst|inst|Selector20~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector20~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & (\ADC_DAC_BlockConnection_inst|inst|output_data\(1))) # (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ 
-- & ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst|output_data\(1),
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(6),
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector20~0_combout\);

-- Location: FF_X5_Y6_N17
\ADC_DAC_BlockConnection_inst|inst|output_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector20~0_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(2));

-- Location: LCCOMB_X5_Y4_N2
\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~3_combout\ = (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1) & !\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~3_combout\);

-- Location: LCCOMB_X5_Y4_N10
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[7]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[7]~8_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~3_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~9_combout\ & (\bMKR_D[4]~input_o\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~9_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(7)))))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~3_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bMKR_D[4]~input_o\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~3_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(7),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~9_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[7]~8_combout\);

-- Location: FF_X5_Y4_N11
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(7));

-- Location: LCCOMB_X6_Y6_N24
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[7]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(7),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[7]~feeder_combout\);

-- Location: FF_X6_Y6_N25
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[7]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(7));

-- Location: LCCOMB_X6_Y6_N8
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[7]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(7),
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[7]~feeder_combout\);

-- Location: FF_X6_Y6_N9
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[7]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(7));

-- Location: LCCOMB_X5_Y6_N14
\ADC_DAC_BlockConnection_inst|inst|Selector19~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector19~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & (\ADC_DAC_BlockConnection_inst|inst|output_data\(2))) # (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ 
-- & ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst|output_data\(2),
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(7),
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector19~0_combout\);

-- Location: FF_X5_Y6_N15
\ADC_DAC_BlockConnection_inst|inst|output_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector19~0_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(3));

-- Location: LCCOMB_X6_Y4_N2
\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~8_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3) & (!\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4) & (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2) & 
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(3),
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(4),
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(2),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~1_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~8_combout\);

-- Location: LCCOMB_X6_Y4_N22
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[9]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[9]~7_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~6_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~8_combout\ & (\bMKR_D[4]~input_o\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~8_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(9)))))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~6_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~6_combout\,
	datab => \bMKR_D[4]~input_o\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(9),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~8_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[9]~7_combout\);

-- Location: FF_X6_Y4_N23
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(9));

-- Location: LCCOMB_X6_Y6_N28
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[9]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(9),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[9]~feeder_combout\);

-- Location: FF_X6_Y6_N29
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[9]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(9));

-- Location: LCCOMB_X6_Y6_N4
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[8]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(9),
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[8]~feeder_combout\);

-- Location: FF_X6_Y6_N5
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[8]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(8));

-- Location: LCCOMB_X5_Y6_N26
\ADC_DAC_BlockConnection_inst|inst|Selector18~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector18~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & (\ADC_DAC_BlockConnection_inst|inst|output_data\(3))) # (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ 
-- & ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst|output_data\(3),
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(8),
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector18~0_combout\);

-- Location: FF_X5_Y6_N27
\ADC_DAC_BlockConnection_inst|inst|output_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector18~0_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(4));

-- Location: LCCOMB_X6_Y4_N4
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[10]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[10]~6_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~5_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~8_combout\ & (\bMKR_D[4]~input_o\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~8_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(10)))))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~5_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~5_combout\,
	datab => \bMKR_D[4]~input_o\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(10),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~8_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[10]~6_combout\);

-- Location: FF_X6_Y4_N5
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(10));

-- Location: LCCOMB_X6_Y6_N30
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[10]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(10),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[10]~feeder_combout\);

-- Location: FF_X6_Y6_N31
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[10]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(10));

-- Location: FF_X6_Y6_N27
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(10),
	sload => VCC,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(9));

-- Location: LCCOMB_X5_Y6_N22
\ADC_DAC_BlockConnection_inst|inst|Selector17~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector17~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & (\ADC_DAC_BlockConnection_inst|inst|output_data\(4))) # (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ 
-- & ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst|output_data\(4),
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(9),
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector17~0_combout\);

-- Location: FF_X5_Y6_N23
\ADC_DAC_BlockConnection_inst|inst|output_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector17~0_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(5));

-- Location: LCCOMB_X6_Y4_N26
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[11]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[11]~5_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~3_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~8_combout\ & (\bMKR_D[4]~input_o\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~8_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(11)))))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~3_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~3_combout\,
	datab => \bMKR_D[4]~input_o\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(11),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~8_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[11]~5_combout\);

-- Location: FF_X6_Y4_N27
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(11));

-- Location: LCCOMB_X6_Y6_N16
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[11]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(11),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[11]~feeder_combout\);

-- Location: FF_X6_Y6_N17
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[11]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(11));

-- Location: LCCOMB_X6_Y6_N22
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[10]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(11),
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[10]~feeder_combout\);

-- Location: FF_X6_Y6_N23
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[10]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(10));

-- Location: LCCOMB_X5_Y6_N24
\ADC_DAC_BlockConnection_inst|inst|Selector16~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector16~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & (\ADC_DAC_BlockConnection_inst|inst|output_data\(5))) # (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ 
-- & ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst|output_data\(5),
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(10),
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector16~0_combout\);

-- Location: FF_X5_Y6_N25
\ADC_DAC_BlockConnection_inst|inst|output_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector16~0_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(6));

-- Location: LCCOMB_X5_Y4_N28
\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~7_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1) & \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(1),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|bit_cnt\(0),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~7_combout\);

-- Location: LCCOMB_X5_Y4_N30
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[12]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[12]~4_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~7_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\ & (\bMKR_D[4]~input_o\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(12)))))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~7_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bMKR_D[4]~input_o\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~7_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(12),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[12]~4_combout\);

-- Location: FF_X5_Y4_N31
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(12));

-- Location: LCCOMB_X6_Y6_N6
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[12]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(12),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[12]~feeder_combout\);

-- Location: FF_X6_Y6_N7
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[12]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(12));

-- Location: LCCOMB_X6_Y6_N14
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[11]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(12),
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[11]~feeder_combout\);

-- Location: FF_X6_Y6_N15
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[11]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(11));

-- Location: LCCOMB_X5_Y6_N20
\ADC_DAC_BlockConnection_inst|inst|Selector15~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector15~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & (\ADC_DAC_BlockConnection_inst|inst|output_data\(6))) # (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ 
-- & ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst|output_data\(6),
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(11),
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector15~0_combout\);

-- Location: FF_X5_Y6_N21
\ADC_DAC_BlockConnection_inst|inst|output_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector15~0_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(7));

-- Location: LCCOMB_X5_Y4_N12
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[13]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[13]~3_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~6_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\ & (\bMKR_D[4]~input_o\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(13)))))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~6_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bMKR_D[4]~input_o\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~6_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(13),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[13]~3_combout\);

-- Location: FF_X5_Y4_N13
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(13));

-- Location: LCCOMB_X6_Y6_N2
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[13]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(13),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[13]~feeder_combout\);

-- Location: FF_X6_Y6_N3
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[13]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(13));

-- Location: LCCOMB_X6_Y6_N10
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[12]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(13),
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[12]~feeder_combout\);

-- Location: FF_X6_Y6_N11
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[12]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(12));

-- Location: LCCOMB_X5_Y6_N28
\ADC_DAC_BlockConnection_inst|inst|Selector14~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector14~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & (\ADC_DAC_BlockConnection_inst|inst|output_data\(7))) # (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ 
-- & ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst|output_data\(7),
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(12),
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector14~0_combout\);

-- Location: FF_X5_Y6_N29
\ADC_DAC_BlockConnection_inst|inst|output_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector14~0_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(8));

-- Location: LCCOMB_X5_Y6_N4
\ADC_DAC_BlockConnection_inst|inst|Selector13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector13~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & ((\ADC_DAC_BlockConnection_inst|inst|output_data\(8)))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & (\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(13),
	datad => \ADC_DAC_BlockConnection_inst|inst|output_data\(8),
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector13~0_combout\);

-- Location: FF_X5_Y6_N5
\ADC_DAC_BlockConnection_inst|inst|output_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector13~0_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(9));

-- Location: LCCOMB_X5_Y4_N0
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[15]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[15]~1_combout\ = (\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~3_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\ & (\bMKR_D[4]~input_o\)) # 
-- (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\ & ((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(15)))))) # (!\ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~3_combout\ & (((\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bMKR_D[4]~input_o\,
	datab => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~3_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(15),
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|Decoder0~4_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[15]~1_combout\);

-- Location: FF_X5_Y4_N1
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(15));

-- Location: LCCOMB_X4_Y6_N20
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[15]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rx\(15),
	combout => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[15]~feeder_combout\);

-- Location: FF_X4_Y6_N21
\ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[15]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(15));

-- Location: LCCOMB_X4_Y6_N22
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[14]~feeder_combout\ = \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DAC_BlockConnection_inst|inst2|i2c|data_rd\(15),
	combout => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[14]~feeder_combout\);

-- Location: FF_X4_Y6_N23
\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd[14]~feeder_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst2|address_gen|state_next.rd2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(14));

-- Location: LCCOMB_X5_Y6_N8
\ADC_DAC_BlockConnection_inst|inst|Selector12~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector12~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & (\ADC_DAC_BlockConnection_inst|inst|output_data\(9))) # (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ 
-- & ((\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst|output_data\(9),
	datad => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(14),
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector12~0_combout\);

-- Location: FF_X5_Y6_N9
\ADC_DAC_BlockConnection_inst|inst|output_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector12~0_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(10));

-- Location: LCCOMB_X5_Y6_N12
\ADC_DAC_BlockConnection_inst|inst|Selector11~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector11~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & ((\ADC_DAC_BlockConnection_inst|inst|output_data\(10)))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & (\ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst2|address_gen|data_rd\(15),
	datac => \ADC_DAC_BlockConnection_inst|inst|output_data\(10),
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector11~0_combout\);

-- Location: FF_X5_Y6_N13
\ADC_DAC_BlockConnection_inst|inst|output_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector11~0_combout\,
	ena => \ADC_DAC_BlockConnection_inst|inst|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(11));

-- Location: LCCOMB_X5_Y6_N6
\ADC_DAC_BlockConnection_inst|inst|Selector10~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector10~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|output_data\(11) & (((\ADC_DAC_BlockConnection_inst|inst|output_data\(12)) # (!\ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\)))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst|output_data\(11) & (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & ((\ADC_DAC_BlockConnection_inst|inst|output_data\(12)) # (!\ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|output_data\(11),
	datab => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst|output_data\(12),
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector10~0_combout\);

-- Location: FF_X5_Y6_N7
\ADC_DAC_BlockConnection_inst|inst|output_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(12));

-- Location: LCCOMB_X5_Y6_N10
\ADC_DAC_BlockConnection_inst|inst|Selector9~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector9~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|output_data\(12) & (((\ADC_DAC_BlockConnection_inst|inst|output_data\(13)) # (!\ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\)))) # 
-- (!\ADC_DAC_BlockConnection_inst|inst|output_data\(12) & (!\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\ & ((\ADC_DAC_BlockConnection_inst|inst|output_data\(13)) # (!\ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|output_data\(12),
	datab => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst|output_data\(13),
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector9~0_combout\);

-- Location: FF_X5_Y6_N11
\ADC_DAC_BlockConnection_inst|inst|output_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(13));

-- Location: LCCOMB_X5_Y6_N18
\ADC_DAC_BlockConnection_inst|inst|Selector8~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector8~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|output_data\(13) & ((\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\) # ((\ADC_DAC_BlockConnection_inst|inst|output_data\(14) & 
-- \ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\)))) # (!\ADC_DAC_BlockConnection_inst|inst|output_data\(13) & (((\ADC_DAC_BlockConnection_inst|inst|output_data\(14) & \ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|output_data\(13),
	datab => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst|output_data\(14),
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector8~0_combout\);

-- Location: FF_X5_Y6_N19
\ADC_DAC_BlockConnection_inst|inst|output_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(14));

-- Location: LCCOMB_X6_Y7_N24
\ADC_DAC_BlockConnection_inst|inst|Selector7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|Selector7~0_combout\ = (\ADC_DAC_BlockConnection_inst|inst|output_data\(14) & ((\ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\) # ((\ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\ & 
-- \ADC_DAC_BlockConnection_inst|inst|output_data\(15))))) # (!\ADC_DAC_BlockConnection_inst|inst|output_data\(14) & (\ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\ & (\ADC_DAC_BlockConnection_inst|inst|output_data\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|output_data\(14),
	datab => \ADC_DAC_BlockConnection_inst|inst|current_state~9_combout\,
	datac => \ADC_DAC_BlockConnection_inst|inst|output_data\(15),
	datad => \ADC_DAC_BlockConnection_inst|inst|current_state.TrasmitCfg_high~q\,
	combout => \ADC_DAC_BlockConnection_inst|inst|Selector7~0_combout\);

-- Location: FF_X6_Y7_N25
\ADC_DAC_BlockConnection_inst|inst|output_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ADC_DAC_BlockConnection_inst|inst|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ADC_DAC_BlockConnection_inst|inst|output_data\(15));

-- Location: LCCOMB_X6_Y7_N28
\ADC_DAC_BlockConnection_inst|inst|mosi~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \ADC_DAC_BlockConnection_inst|inst|mosi~0_combout\ = (!\ADC_DAC_BlockConnection_inst|inst|current_state.Set_output~q\ & (\ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\ & \ADC_DAC_BlockConnection_inst|inst|output_data\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_DAC_BlockConnection_inst|inst|current_state.Set_output~q\,
	datac => \ADC_DAC_BlockConnection_inst|inst|current_state.Idle~q\,
	datad => \ADC_DAC_BlockConnection_inst|inst|output_data\(15),
	combout => \ADC_DAC_BlockConnection_inst|inst|mosi~0_combout\);

-- Location: CLKCTRL_G4
\PLL_inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL_inst|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y14_N8
\iRESETn~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iRESETn,
	o => \iRESETn~input_o\);

-- Location: IOIBUF_X41_Y9_N15
\iSAM_INT~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSAM_INT,
	o => \iSAM_INT~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\iPEX_PIN11~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPEX_PIN11,
	o => \iPEX_PIN11~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\iPEX_PIN13~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPEX_PIN13,
	o => \iPEX_PIN13~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\iPEX_PIN23~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPEX_PIN23,
	o => \iPEX_PIN23~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\iPEX_PIN25~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPEX_PIN25,
	o => \iPEX_PIN25~input_o\);

-- Location: IOIBUF_X19_Y29_N1
\iPEX_PIN31~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPEX_PIN31,
	o => \iPEX_PIN31~input_o\);

-- Location: IOIBUF_X19_Y29_N8
\iPEX_PIN33~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iPEX_PIN33,
	o => \iPEX_PIN33~input_o\);

-- Location: IOIBUF_X41_Y14_N1
\iWM_PIO32~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iWM_PIO32,
	o => \iWM_PIO32~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\iWM_TX~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iWM_TX,
	o => \iWM_TX~input_o\);

-- Location: IOIBUF_X41_Y15_N22
\iHDMI_HPD~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iHDMI_HPD,
	o => \iHDMI_HPD~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\iMIPI_D[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iMIPI_D(0),
	ibar => \ww_iMIPI_D[0](n)\,
	o => \iMIPI_D[0]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\iMIPI_D[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iMIPI_D(1),
	ibar => \ww_iMIPI_D[1](n)\,
	o => \iMIPI_D[1]~input_o\);

-- Location: IOIBUF_X0_Y14_N15
\iMIPI_CLK~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iMIPI_CLK,
	ibar => \ww_iMIPI_CLK(n)\,
	o => \iMIPI_CLK~input_o\);

-- Location: IOIBUF_X3_Y29_N15
\bSDRAM_DQ[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(0),
	o => \bSDRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X3_Y29_N8
\bSDRAM_DQ[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(1),
	o => \bSDRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X1_Y29_N1
\bSDRAM_DQ[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(2),
	o => \bSDRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X3_Y29_N29
\bSDRAM_DQ[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(3),
	o => \bSDRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X3_Y29_N1
\bSDRAM_DQ[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(4),
	o => \bSDRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\bSDRAM_DQ[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(5),
	o => \bSDRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X5_Y29_N15
\bSDRAM_DQ[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(6),
	o => \bSDRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X9_Y29_N1
\bSDRAM_DQ[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(7),
	o => \bSDRAM_DQ[7]~input_o\);

-- Location: IOIBUF_X14_Y29_N29
\bSDRAM_DQ[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(8),
	o => \bSDRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X14_Y29_N1
\bSDRAM_DQ[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(9),
	o => \bSDRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\bSDRAM_DQ[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(10),
	o => \bSDRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X14_Y29_N22
\bSDRAM_DQ[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(11),
	o => \bSDRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X7_Y29_N29
\bSDRAM_DQ[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(12),
	o => \bSDRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X14_Y29_N8
\bSDRAM_DQ[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(13),
	o => \bSDRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X5_Y29_N22
\bSDRAM_DQ[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(14),
	o => \bSDRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X9_Y29_N8
\bSDRAM_DQ[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bSDRAM_DQ(15),
	o => \bSDRAM_DQ[15]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\bMKR_AREF~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_AREF,
	o => \bMKR_AREF~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\bMKR_A[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_A(0),
	o => \bMKR_A[0]~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\bMKR_A[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_A(1),
	o => \bMKR_A[1]~input_o\);

-- Location: IOIBUF_X11_Y29_N29
\bMKR_A[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_A(2),
	o => \bMKR_A[2]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\bMKR_A[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_A(3),
	o => \bMKR_A[3]~input_o\);

-- Location: IOIBUF_X1_Y29_N29
\bMKR_A[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_A(4),
	o => \bMKR_A[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\bMKR_A[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_A(5),
	o => \bMKR_A[5]~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\bMKR_A[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_A(6),
	o => \bMKR_A[6]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\bMKR_D[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(0),
	o => \bMKR_D[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\bMKR_D[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(1),
	o => \bMKR_D[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\bMKR_D[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(2),
	o => \bMKR_D[2]~input_o\);

-- Location: IOIBUF_X41_Y19_N15
\bMKR_D[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(8),
	o => \bMKR_D[8]~input_o\);

-- Location: IOIBUF_X41_Y19_N8
\bMKR_D[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(9),
	o => \bMKR_D[9]~input_o\);

-- Location: IOIBUF_X41_Y27_N22
\bMKR_D[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(10),
	o => \bMKR_D[10]~input_o\);

-- Location: IOIBUF_X41_Y27_N15
\bMKR_D[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(11),
	o => \bMKR_D[11]~input_o\);

-- Location: IOIBUF_X41_Y19_N1
\bMKR_D[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(12),
	o => \bMKR_D[12]~input_o\);

-- Location: IOIBUF_X37_Y29_N15
\bMKR_D[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(13),
	o => \bMKR_D[13]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\bMKR_D[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(14),
	o => \bMKR_D[14]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\bPEX_RST~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_RST,
	o => \bPEX_RST~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\bPEX_PIN6~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN6,
	o => \bPEX_PIN6~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\bPEX_PIN8~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN8,
	o => \bPEX_PIN8~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\bPEX_PIN10~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN10,
	o => \bPEX_PIN10~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\bPEX_PIN12~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN12,
	o => \bPEX_PIN12~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\bPEX_PIN14~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN14,
	o => \bPEX_PIN14~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\bPEX_PIN16~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN16,
	o => \bPEX_PIN16~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\bPEX_PIN20~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN20,
	o => \bPEX_PIN20~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\bPEX_PIN28~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN28,
	o => \bPEX_PIN28~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\bPEX_PIN30~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN30,
	o => \bPEX_PIN30~input_o\);

-- Location: IOIBUF_X41_Y18_N1
\bPEX_PIN32~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN32,
	o => \bPEX_PIN32~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\bPEX_PIN42~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN42,
	o => \bPEX_PIN42~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\bPEX_PIN44~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN44,
	o => \bPEX_PIN44~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\bPEX_PIN45~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN45,
	o => \bPEX_PIN45~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\bPEX_PIN46~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN46,
	o => \bPEX_PIN46~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\bPEX_PIN47~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN47,
	o => \bPEX_PIN47~input_o\);

-- Location: IOIBUF_X41_Y23_N1
\bPEX_PIN48~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN48,
	o => \bPEX_PIN48~input_o\);

-- Location: IOIBUF_X41_Y24_N8
\bPEX_PIN49~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN49,
	o => \bPEX_PIN49~input_o\);

-- Location: IOIBUF_X41_Y24_N1
\bPEX_PIN51~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bPEX_PIN51,
	o => \bPEX_PIN51~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\bWM_PIO1~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO1,
	o => \bWM_PIO1~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\bWM_PIO2~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO2,
	o => \bWM_PIO2~input_o\);

-- Location: IOIBUF_X37_Y0_N29
\bWM_PIO3~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO3,
	o => \bWM_PIO3~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\bWM_PIO4~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO4,
	o => \bWM_PIO4~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\bWM_PIO5~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO5,
	o => \bWM_PIO5~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\bWM_PIO7~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO7,
	o => \bWM_PIO7~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\bWM_PIO8~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO8,
	o => \bWM_PIO8~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\bWM_PIO18~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO18,
	o => \bWM_PIO18~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\bWM_PIO20~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO20,
	o => \bWM_PIO20~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\bWM_PIO21~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO21,
	o => \bWM_PIO21~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\bWM_PIO27~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO27,
	o => \bWM_PIO27~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\bWM_PIO28~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO28,
	o => \bWM_PIO28~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\bWM_PIO29~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO29,
	o => \bWM_PIO29~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\bWM_PIO31~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO31,
	o => \bWM_PIO31~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\bWM_PIO34~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO34,
	o => \bWM_PIO34~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\bWM_PIO35~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO35,
	o => \bWM_PIO35~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\bWM_PIO36~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bWM_PIO36,
	o => \bWM_PIO36~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\oWM_RX~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => oWM_RX,
	o => \oWM_RX~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\oWM_RESET~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => oWM_RESET,
	o => \oWM_RESET~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\bHDMI_SDA~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bHDMI_SDA,
	o => \bHDMI_SDA~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\bHDMI_SCL~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bHDMI_SCL,
	o => \bHDMI_SCL~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\bMIPI_SDA~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMIPI_SDA,
	o => \bMIPI_SDA~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\bMIPI_SCL~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMIPI_SCL,
	o => \bMIPI_SCL~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\bMIPI_GP[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMIPI_GP(0),
	o => \bMIPI_GP[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\bMIPI_GP[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMIPI_GP(1),
	o => \bMIPI_GP[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N8
\oFLASH_MOSI~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => oFLASH_MOSI,
	o => \oFLASH_MOSI~input_o\);

-- Location: IOIBUF_X0_Y20_N22
\iFLASH_MISO~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => iFLASH_MISO,
	o => \iFLASH_MISO~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\oFLASH_HOLD~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => oFLASH_HOLD,
	o => \oFLASH_HOLD~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\oFLASH_WP~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => oFLASH_WP,
	o => \oFLASH_WP~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\bMKR_D[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(3),
	o => \bMKR_D[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\bMKR_D[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(5),
	o => \bMKR_D[5]~input_o\);

-- Location: IOIBUF_X41_Y18_N22
\bMKR_D[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(6),
	o => \bMKR_D[6]~input_o\);

-- Location: IOIBUF_X41_Y18_N15
\bMKR_D[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bMKR_D(7),
	o => \bMKR_D[7]~input_o\);
END structure;


