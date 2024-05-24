----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:55 05/24/2024 
-- Design Name: 
-- Module Name:    comp8bit_rtl - Behavioral 
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

entity comp8bit_rtl is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           e : out  STD_LOGIC;
           g : out  STD_LOGIC;
           l : out  STD_LOGIC);
end comp8bit_rtl;

architecture Behavioral of comp8bit_rtl is

component comparator_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           E : out  STD_LOGIC;
           G : out  STD_LOGIC;
           L : out  STD_LOGIC);
end component;

signal e0,e1,g0,g1,l0,l1:STD_LOGIC:='0';

begin

COMP1: comparator_rtl port map(A=>a(7 downto 4),B=>b(7 downto 4),E=>e1,G=>g1,L=>l1);
COMP0: comparator_rtl port map(A=>a(3 downto 0),B=>b(3 downto 0),E=>e0,G=>g0,L=>l0);

e <= e1 and e0;
g <= g1 or (e1 and g0);
l <= l1 or (e1 and l0);

end Behavioral;

