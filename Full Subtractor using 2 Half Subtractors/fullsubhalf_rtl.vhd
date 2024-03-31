----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:46:46 03/12/2024 
-- Design Name: 
-- Module Name:    fullsubhalf_rtl - Behavioral 
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

entity fullsubhalf_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           Diff : out  STD_LOGIC;
           Bout : out  STD_LOGIC);
end fullsubhalf_rtl;

architecture Behavioral of fullsubhalf_rtl is

component halfsub_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           borr : out  STD_LOGIC);
end component;

signal temp,b1,b2 : STD_LOGIC := '0';

begin

HS0: halfsub_rtl port map(a=>A, b=>B, diff=>temp, borr=>b1);
HS1: halfsub_rtl port map(a=>temp, b=>Bin, diff=>Diff, borr=>b2);

Bout <= b1 or b2;

end Behavioral;

