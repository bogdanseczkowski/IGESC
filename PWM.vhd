------------------------------------------------------------------------------------
-- Engineer: Bogdan Seczkowski
-- Create Date:    22:59:33 04/24/2019 
-- Module Name:    PWM - Behavioral
-- Design Name: PWM
-- Project Name: IGESC
-- Target Devices: xc3s500e-4fg320
-- Description: 
--	This is used to synthesize impulses
-- Revision: 0.01
-- Revision 0.01 - Initial logic
-- Additional Comments: 
-- To DO:
-- run flag
------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM is
    Port ( CLK : in  STD_LOGIC;
           PERIOD : in  unsigned (7 downto 0);
           DUTY : in  unsigned (7 downto 0);
           PWM : out  STD_LOGIC;
			  INT : out STD_LOGIC;
			  RUN : in STD_LOGIC);
end PWM;

architecture Behavioral of PWM is
	signal PERIOD_CNT : unsigned (7 downto 0);
begin
	PROCESS (CLK)
	BEGIN
		IF(rising_edge(CLK))THEN
			IF(PERIOD_CNT<PERIOD) THEN
			PERIOD_CNT<= PERIOD_CNT + 1;
			INT<='1';
			ELSE
			PERIOD_CNT <= "00000000";
			INT<='0';
			END IF;
		END IF;
		IF(PERIOD_CNT<DUTY)THEN PWM<='1';
		ELSE PWM<='0';
		END IF;
	END PROCESS;
	

end Behavioral;

