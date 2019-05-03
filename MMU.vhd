------------------------------------------------------------------------------------
-- Engineer: Bogdan Seczkowski
-- Create Date:    22:59:33 04/24/2019 
-- Module Name:    MMU - Behavioral
-- Design Name: MMU
-- Project Name: IGESC
-- Target Devices: xc3s500e-4fg320
-- Description: 
--	This is used to divide one lookup table for 3 separate channels.
-- Revision: 0.02
-- Revision 0.01 - Initial logic
-- Revision 0.02 - 3phase extension
-- Additional Comments: 
-- known issues: value update is delayed by max 3 clock cycles
------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity MMU is
Port ( TRIG : IN STD_LOGIC;
		 CLK : IN  STD_LOGIC;
       ADDRU: IN unsigned (7 downto 0);
		 ADDRV: IN  unsigned (7 downto 0);
		 ADDRW: IN  unsigned (7 downto 0);
		 DATAU: OUT  unsigned (7 downto 0);
		 DATAV: OUT  unsigned (7 downto 0);
		 DATAW: OUT unsigned (7 downto 0);
		 DATA : IN  unsigned (7 downto 0);
       ADDR : OUT  unsigned (7 downto 0));
		 
end MMU;

architecture Behavioral of MMU is
signal CNT:	integer range 0 to 3;
begin
	PROCESS(CLK,TRIG)
	BEGIN
		IF(TRIG='1')THEN
			CNT<=0;
		ELSIF(rising_edge(CLK))THEN
			CNT<=CNT+1;
		END IF;
		END PROCESS;
		PROCESS(CNT)
		BEGIN
		CASE CNT IS
			WHEN 0 =>
				ADDR <= ADDRU;
				DATAU <= DATA;
			WHEN 1 =>
				ADDR <= ADDRV;
				DATAV <= DATA;
			WHEN 2 =>
				ADDR <= ADDRW;
				DATAW <= DATA;
			WHEN others =>
				ADDR <= ADDRW;
				DATAW <= DATA;
		END CASE;	
		END PROCESS;
end Behavioral;

