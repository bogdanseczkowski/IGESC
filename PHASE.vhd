------------------------------------------------------------------------------------
-- Engineer: Bogdan Seczkowski
-- Create Date:    22:59:33 04/24/2019 
-- Module Name:    PHASE - Behavioral
-- Design Name: PWM
-- Project Name: IGESC
-- Target Devices: xc3s500e-4fg320
-- Description: 
--	This is used to offset lookup table for each phase
-- Revision: 0.02
-- Revision 0.01 - Initial logic
-- Revision 0.02 - 3phase extension 
-- Additional Comments: 
------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity PHASE is
Port ( CLK : in  STD_LOGIC;
       ADDRU: OUT  unsigned (7 downto 0);
		 ADDRV: OUT  unsigned (7 downto 0);
		 ADDRW: OUT  unsigned (7 downto 0);
       ADDR : IN  unsigned (7 downto 0));
end PHASE;

architecture Behavioral of PHASE is
begin
			ADDRU <= ADDR;
			ADDRV <= ADDR + 85;
			ADDRW <= ADDR + 170;
end Behavioral;

