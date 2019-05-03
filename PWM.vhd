------------------------------------------------------------------------------------
-- Engineer: Bogdan Seczkowski
-- Create Date:    22:59:33 04/24/2019 
-- Module Name:    PWM - Behavioral
-- Design Name: PWM
-- Project Name: IGESC
-- Target Devices: xc3s500e-4fg320
-- Description: 
--	This is used to synthesize impulses
-- Revision: 0.02
-- Revision 0.01 - Initial logic
-- Revision 0.02 - 3PHASE + RUN
-- Additional Comments: 
-- TO DO:
-- Counter Reset
------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM is
    Port ( CLK : in  STD_LOGIC;
           PERIOD : in  unsigned (7 downto 0);
           DUTYU : in  unsigned (7 downto 0);
			  DUTYV : in  unsigned (7 downto 0);
			  DUTYW : in  unsigned (7 downto 0);
           PWMU : out  STD_LOGIC;
			  PWMV : out  STD_LOGIC;
			  PWMW : out  STD_LOGIC;
			  INT : out STD_LOGIC;
			  RUN : in STD_LOGIC);
end PWM;

architecture Behavioral of PWM is
	signal PERIOD_CNT : unsigned (7 downto 0);
begin
	PROCESS (CLK)
	BEGIN
		IF(rising_edge(CLK) AND RUN = '1')THEN
			IF(PERIOD_CNT<PERIOD) THEN
			PERIOD_CNT<= PERIOD_CNT + 1;
			INT<='1';
			ELSE
			PERIOD_CNT <= "00000000";
			INT<='0';
			END IF;
		END IF;
		IF(PERIOD_CNT<DUTYU AND RUN = '1')THEN PWMU<='1';
		ELSE PWMU<='0';
		END IF;
		IF(PERIOD_CNT<DUTYV AND RUN = '1')THEN PWMV<='1';
		ELSE PWMV<='0';
		END IF;
		IF(PERIOD_CNT<DUTYW AND RUN = '1')THEN PWMW<='1';
		ELSE PWMW<='0';
		END IF;
	END PROCESS;
	

end Behavioral;

