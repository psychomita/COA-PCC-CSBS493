----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:37:51 05/25/2024 
-- Design Name: 
-- Module Name:    mux8to1_rtl - Behavioral 
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

entity mux8to1_rtl is
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC);
end mux8to1_rtl;

architecture Behavioral of mux8to1_rtl is

component mux2to1_rtl is
    Port ( D2 : in  STD_LOGIC_VECTOR (1 downto 0);
           S2 : in  STD_LOGIC;
           Y2 : out  STD_LOGIC);
end component;

component mux4to1_rtl is
    Port ( D4 : in  STD_LOGIC_VECTOR (3 downto 0);
           S4 : in  STD_LOGIC_VECTOR (1 downto 0);
           Y4 : out  STD_LOGIC);
end component;

signal y0,y1:STD_LOGIC:='0';

begin

MUX4_0: mux4to1_rtl port map (D4 => D(3 downto 0), S4 => S(1 downto 0), Y4 => y0);
MUX4_1: mux4to1_rtl port map (D4 => D(7 downto 4), S4 => S(1 downto 0), Y4 => y1);
MUX2: mux2to1_rtl port map (D2 => (y0,y1), S2 => S(2), Y2 => Y);

end Behavioral;

