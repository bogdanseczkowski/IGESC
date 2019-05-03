------------------------------------------------------------------------------------
-- Engineer: Bogdan Seczkowski
-- Create Date:    22:59:33 04/24/2019 
-- Module Name:    AMP - Behavioral
-- Design Name: Amplitude phase detection
-- Project Name: IGESC
-- Target Devices: xc3s500e-4fg320
-- Description: 
--	This is used to detect if pulse has to be negative or positive and offset duty value
-- Revision: 0.02
-- Revision 0.01 - Initial logic
-- Revision 0.02 - 3PHASE extension
-- Additional Comments: 
-- This comoponent is boged due to bad lookup table data choice
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
    Port ( IDUTYU : in  unsigned (7 downto 0);
           ODUTYU : out  unsigned (7 downto 0);
			  IDUTYV : in  unsigned (7 downto 0);
           ODUTYV : out  unsigned (7 downto 0);
			  IDUTYW : in  unsigned (7 downto 0);
           ODUTYW : out  unsigned (7 downto 0);
           DIRU : out  STD_LOGIC;
			  DIRV : out  STD_LOGIC;
			  DIRW : out  STD_LOGIC);
end AMP;

architecture Behavioral of AMP is

begin
	ODUTYU(6 downto 0) <= IDUTYU(6 downto 0) WHEN IDUTYU(7) = '1' ELSE 127-IDUTYU(6 downto 0);
	DIRU <= IDUTYU(7);
	ODUTYV(6 downto 0) <= IDUTYV(6 downto 0) WHEN IDUTYV(7) = '1' ELSE 127-IDUTYV(6 downto 0);
	DIRV <= IDUTYV(7);
	ODUTYW(6 downto 0) <= IDUTYW(6 downto 0) WHEN IDUTYW(7) = '1' ELSE 127-IDUTYW(6 downto 0);
	DIRW <= IDUTYW(7);
end Behavioral;

