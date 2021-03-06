--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : xaw2vhdl
--  /   /         Filename : CLK.vhd
-- /___/   /\     Timestamp : 04/13/2019 15:32:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: xaw2vhdl-st C:\work\SPWM\ipcore_dir\.\CLK.xaw C:\work\SPWM\ipcore_dir\.\CLK
--Design Name: CLK
--Device: xc3s500e-fg320-4
--
-- Module CLK
-- Generated by Xilinx Architecture Wizard
-- Written for synthesis tool: XST

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CLK is
   port ( CE_IN           : in    std_logic; 
          CLKIN_IN        : in    std_logic; 
          CLR_IN          : in    std_logic; 
          PRE_IN          : in    std_logic; 
          RST_IN          : in    std_logic; 
          CLKIN_IBUFG_OUT : out   std_logic; 
          CLK2X_OUT       : out   std_logic; 
          CLK2X180_OUT    : out   std_logic; 
          DDR_CLK2X_OUT   : out   std_logic);
end CLK;

architecture BEHAVIORAL of CLK is
   signal CLKIN_IBUFG     : std_logic;
   signal CLK2X_BUF       : std_logic;
   signal CLK2X180_BUF    : std_logic;
   signal C0_IN           : std_logic;
   signal C1_IN           : std_logic;
   signal GND_BIT         : std_logic;
   signal VCC_BIT         : std_logic;
begin
   GND_BIT <= '0';
   VCC_BIT <= '1';
   CLKIN_IBUFG_OUT <= CLKIN_IBUFG;
   CLK2X_OUT <= C0_IN;
   CLK2X180_OUT <= C1_IN;
   CLKIN_IBUFG_INST : IBUFG
      port map (I=>CLKIN_IN,
                O=>CLKIN_IBUFG);
   
   CLK2X_BUFG_INST : BUFG
      port map (I=>CLK2X_BUF,
                O=>C0_IN);
   
   CLK2X180_BUFG_INST : BUFG
      port map (I=>CLK2X180_BUF,
                O=>C1_IN);
   
   DCM_SP_INST : DCM_SP
   generic map( CLK_FEEDBACK => "2X",
            CLKDV_DIVIDE => 2.0,
            CLKFX_DIVIDE => 1,
            CLKFX_MULTIPLY => 4,
            CLKIN_DIVIDE_BY_2 => FALSE,
            CLKIN_PERIOD => 20.000,
            CLKOUT_PHASE_SHIFT => "NONE",
            DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
            DFS_FREQUENCY_MODE => "LOW",
            DLL_FREQUENCY_MODE => "LOW",
            DUTY_CYCLE_CORRECTION => TRUE,
            FACTORY_JF => x"C080",
            PHASE_SHIFT => 0,
            STARTUP_WAIT => FALSE)
      port map (CLKFB=>C0_IN,
                CLKIN=>CLKIN_IBUFG,
                DSSEN=>GND_BIT,
                PSCLK=>GND_BIT,
                PSEN=>GND_BIT,
                PSINCDEC=>GND_BIT,
                RST=>RST_IN,
                CLKDV=>open,
                CLKFX=>open,
                CLKFX180=>open,
                CLK0=>open,
                CLK2X=>CLK2X_BUF,
                CLK2X180=>CLK2X180_BUF,
                CLK90=>open,
                CLK180=>open,
                CLK270=>open,
                LOCKED=>open,
                PSDONE=>open,
                STATUS=>open);
   
   OFDDRCPE_INST : OFDDRCPE
      port map (CE=>CE_IN,
                CLR=>CLR_IN,
                C0=>C0_IN,
                C1=>C1_IN,
                D0=>VCC_BIT,
                D1=>GND_BIT,
                PRE=>PRE_IN,
                Q=>DDR_CLK2X_OUT);
   
end BEHAVIORAL;


