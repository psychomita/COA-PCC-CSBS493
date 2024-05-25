----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:27:29 05/25/2024 
-- Design Name: 
-- Module Name:    mux16to1_rtl - Behavioral 
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

entity mux16to1_rtl is
    Port ( D : in  STD_LOGIC_VECTOR (15 downto 0);
           S : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC);
end mux16to1_rtl;

architecture Structural of mux16to1_rtl is

component mux2to1_rtl is
    Port ( D2 : in  STD_LOGIC_VECTOR (1 downto 0);
           S2 : in  STD_LOGIC;
           Y2 : out  STD_LOGIC);
end component;

component mux8to1_rtl is
    Port ( D8 : in  STD_LOGIC_VECTOR (7 downto 0);
           S8 : in  STD_LOGIC_VECTOR (2 downto 0);
           Y8 : out  STD_LOGIC);
end component;

component mux4to1_rtl is
    Port ( D4 : in  STD_LOGIC_VECTOR (3 downto 0);
           S4 : in  STD_LOGIC_VECTOR (1 downto 0);
           Y4 : out  STD_LOGIC);
end component;

signal temp : STD_LOGIC_VECTOR(1 downto 0);

begin

MUX8_0: mux8to1_rtl port map (D8 => D(7 downto 0), S8 => S(2 downto 0), Y8 => temp(0));
MUX8_1: mux8to1_rtl port map (D8 => D(15 downto 8), S8 => S(2 downto 0), Y8 => temp(1));
MUX2: mux2to1_rtl port map (D2 => temp, S2 => S(3), Y2 => Y);

end Structural;

