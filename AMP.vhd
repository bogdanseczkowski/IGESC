------------------------------------------------------------------------------------
-- Engineer: Bogdan Seczkowski
-- Create Date:    22:59:33 04/24/2019 
-- Module Name:    AMP - Behavioral
-- Design Name: Amplitude phase detection
-- Project Name: IGESC
-- Target Devices: xc3s500e-4fg320
-- Description: 
--	This is used to detect if pulse has to be negative or positive and offset duty value
-- Revision: 0.01
-- Revision 0.01 - Initial logic
-- Additional Comments: 
------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AMP is
    Port ( IDUTY : in  unsigned (7 downto 0);
           ODUTY : out  unsigned (7 downto 0);
           DIR : out  STD_LOGIC);
end AMP;

architecture Behavioral of AMP is

begin
	ODUTY(6 downto 0) <= IDUTY(6 downto 0) WHEN IDUTY(7) = '1' ELSE 127-IDUTY(6 downto 0);
	DIR <= IDUTY(7);
end Behavioral;

