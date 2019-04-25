----------------------------------------------------------------------------------
-- Engineer: Bogdan Seczkowski
-- 
-- Create Date:    14:44:18 04/24/2019 
-- Design Name: Frequency divider
-- Module Name:    div - Behavioral 
-- Project Name: IGESC
-- Target Devices: xc3s500e-4fg320
-- Description: 
--	This frequency divider is used to create clock for SPWM synthesis
-- Revision: 0.01
-- Revision 0.01 - Basic Divider
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DIV is
    Port ( CLK : in  STD_LOGIC;
           PERIOD : in  unsigned (7 downto 0);
           GEN : out  STD_LOGIC);
end DIV;

architecture Behav of DIV is
	signal PERIOD_CNT : unsigned (7 downto 0);
begin
	PROCESS (CLK)
	BEGIN
		IF(rising_edge(CLK))THEN
			IF(PERIOD_CNT<PERIOD) THEN
			PERIOD_CNT<= PERIOD_CNT + 1;
			GEN<='0';
			ELSE
			PERIOD_CNT <= "00000000";
			GEN<='1';
			END IF;
		END IF;
	END PROCESS;
end Behav;

