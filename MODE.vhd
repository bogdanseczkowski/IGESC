----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:39:47 04/27/2019 
-- Design Name: 
-- Module Name:    MODE - Behavioral 
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

entity MODE is
    Port ( BREAK : in  STD_LOGIC;
           RUN : in  STD_LOGIC;
           ENA : in  STD_LOGIC;
           PWMU : in  STD_LOGIC;
           PWMV : in  STD_LOGIC;
           PWMW : in  STD_LOGIC;
           DIRU : in  STD_LOGIC;
           DIRV : in  STD_LOGIC;
           DIRW : in  STD_LOGIC;
           OPWMU : out  STD_LOGIC;
           OPWMV : out  STD_LOGIC;
           OPWMW : out  STD_LOGIC;
           ODIRU : out  STD_LOGIC;
           ODIRV : out  STD_LOGIC;
           ODIRW : out  STD_LOGIC);
end MODE;

architecture Behavioral of MODE is

begin
	

end Behavioral;

