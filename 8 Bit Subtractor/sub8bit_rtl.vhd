----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:47:42 05/24/2024 
-- Design Name: 
-- Module Name:    sub8bit_rtl - Behavioral 
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

entity sub8bit_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Bin : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR (7 downto 0);
           Bout : out  STD_LOGIC);
end sub8bit_rtl;

architecture Behavioral of sub8bit_rtl is

component fullsub_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end component;

signal b1,b2,b3,b4,b5,b6,b7:STD_LOGIC:='0';

begin

FS0: fullsub_rtl port map(a=>A(0),b=>B(0),bin=>Bin,diff=>D(0),bout=>b1);
FS1: fullsub_rtl port map(a=>A(1),b=>B(1),bin=>b1,diff=>D(1),bout=>b2);
FS2: fullsub_rtl port map(a=>A(2),b=>B(2),bin=>b2,diff=>D(2),bout=>b3);
FS3: fullsub_rtl port map(a=>A(3),b=>B(3),bin=>b3,diff=>D(3),bout=>b4);
FS4: fullsub_rtl port map(a=>A(4),b=>B(4),bin=>b4,diff=>D(4),bout=>b5);
FS5: fullsub_rtl port map(a=>A(5),b=>B(5),bin=>b5,diff=>D(5),bout=>b6);
FS6: fullsub_rtl port map(a=>A(6),b=>B(6),bin=>b6,diff=>D(6),bout=>b7);
FS7: fullsub_rtl port map(a=>A(7),b=>B(7),bin=>b7,diff=>D(7),bout=>Bout);

end Behavioral;

