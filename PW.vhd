----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:36:41 04/12/2019 
-- Design Name: 
-- Module Name:    PWM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PWM is
    Port ( CLK : in  STD_LOGIC;
           PERIOD : in  STD_LOGIC_VECTOR (8 downto 0);
           DUTY : in  STD_LOGIC_VECTOR (8 downto 0);
           PWM : out  STD_LOGIC;
			  INT : out STD_LOGIC;
			  RUN : in STD_LOGIC;
end PWM;

architecture Behavioral of PWM is
	signal PERIOD_CNT : STD_LOGIC_VECTOR (8 downto 0);
	signal SCALED : STD_LOGIC;
begin
	PROCESS (CLK)
		IF(rising_edge(CLK))THEN
			IF(PERIOD_CNT<PERIOD) PERIOD_CNT<= PERIOD_CNT + 1;
			ELSE PERIOD_CNT <= 0;
		END IF;
		PWM<=COUNTER<DUTY;
	END PROCESS;
	

end Behavioral;

