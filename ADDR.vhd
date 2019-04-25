----------------------------------------------------------------------------------
-- Engineer: Bogdan Seczkowski
-- Create Date:    14:44:18 04/24/2019 
-- Design Name: Adress counter
-- Module Name:    ADDR - Behavioral 
-- Project Name: IGESC
-- Target Devices: xc3s500e-4fg320
-- Description: 
--	This is used to count current sample of waveform
-- Revision: 0.02
-- Revision 0.01 - Basic impulse cunter
-- Revision 0.02 - Added sample number divider
-- Additional Comments: 
-- To DO:
-- direction change
------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ADDR is
    Port ( CLK : in  STD_LOGIC;
           PERIOD : in  unsigned (7 downto 0);
			  ADDR_GAP : in  unsigned (7 downto 0);
           OADDR : out  unsigned (7 downto 0));
end ADDR;

architecture Behav of ADDR is
	signal PERIOD_CNT : unsigned (7 downto 0);
	signal ADDR_CNT : unsigned (7 downto 0);
begin
	PROCESS (CLK)
	BEGIN
		IF(rising_edge(CLK)) THEN
			IF(PERIOD_CNT<PERIOD) THEN
			PERIOD_CNT<= PERIOD_CNT + 1;
			ELSE
			PERIOD_CNT <= "00000000";
			ADDR_CNT <= ADDR_CNT + ADDR_GAP;
			OADDR<=ADDR_CNT;
			END IF;
			IF(ADDR_CNT = "11111111")THEN
			END IF;
		END IF;
	END PROCESS;
	

end Behav;
