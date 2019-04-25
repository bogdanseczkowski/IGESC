------------------------------------------------------------------------------------
-- Engineer: Bogdan Seczkowski
-- Create Date:    22:59:33 04/24/2019 
-- Module Name:    MMU - Behavioral
-- Design Name: MMU
-- Project Name: IGESC
-- Target Devices: xc3s500e-4fg320
-- Description: 
--	This is used to divide one lookup table for 3 separate channels.
-- Revision: 0.01
-- Revision 0.01 - Initial logic
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
signal CNT :  unsigned (2 downto 0);
begin
	PROCESS(CLK)
	BEGIN
		IF(rising_edge(CLK) AND TRIG)THEN
			CNT <= "00";
		ELSIF(rising_edge(CLK) AND CNT < 3)
			CASE CNT IS
				WHEN "00" =>
					ADDR <= ADDRU;
					DATAU <= DATA;
				WHEN "01" =>
					ADDR <= ADDRV;
					DATAV <= DATA;
				WHEN "10" =>
					ADDR <= ADDRW;
					DATAW <= DATA;
			END CASE;	
		END IF;
		IF(falling_edge(CLK)AND CNT < 3)THEN
			CNT<=CNT+1;
		END IF;
	END PROCESS

end Behavioral;

