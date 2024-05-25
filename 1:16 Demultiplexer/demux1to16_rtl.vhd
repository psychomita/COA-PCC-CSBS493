----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:35:19 05/25/2024 
-- Design Name: 
-- Module Name:    demux1to16_rtl - Behavioral 
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

entity demux1to16_rtl is
    Port ( D : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (15 downto 0));
end demux1to16_rtl;

architecture Structural of demux1to16_rtl is

component demux1to2_rtl is
    Port ( D2 : in  STD_LOGIC;
           S2: in  STD_LOGIC;
           Y2 : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

component demux_rtl is
    Port ( D8 : in  STD_LOGIC;
           S8 : in  STD_LOGIC_VECTOR (2 downto 0);
           Y8 : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal temp: STD_LOGIC_VECTOR (1 downto 0);
signal Y0,Y1: STD_LOGIC_VECTOR (7 downto 0);

begin

U1: demux1to2_rtl port map (D2 => D, S2 => S(3), Y2 => temp);
U2: demux_rtl port map (D8 => temp(0), S8 => S(2 downto 0), Y8 => Y0);
U3: demux_rtl port map (D8 => temp(1), S8 => S(2 downto 0), Y8 => Y1);

Y <= Y1 & Y0;

end Structural;

