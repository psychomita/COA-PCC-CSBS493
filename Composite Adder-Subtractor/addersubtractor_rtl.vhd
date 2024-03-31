----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:21:50 03/20/2024 
-- Design Name: 
-- Module Name:    addersubtractor_rtl - Behavioral 
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

entity addersubtractor_rtl is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC;
           sd : out  STD_LOGIC_VECTOR (3 downto 0);
           cb : out  STD_LOGIC);
end addersubtractor_rtl;

architecture Behavioral of addersubtractor_rtl is

component xor_rtl is
    Port ( p : in  STD_LOGIC;
           q : in  STD_LOGIC;
           r : out  STD_LOGIC);
end component;

component fulladder_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;

signal b1,b2,b3,b4,temp1,temp2,temp3: STD_LOGIC:='0';

begin

XOR1: xor_rtl port map(p=>b(0),q=>sel,r=>b1);
ADDSUB1: fulladder_rtl port map(A=>a(0),B=>b1,Cin=>sel,Sum=>sd(0),Cout=>temp1); 

XOR2: xor_rtl port map(p=>b(1),q=>sel,r=>b2);
ADDSUB2: fulladder_rtl port map(A=>a(1),B=>b2,Cin=>temp1,Sum=>sd(1),Cout=>temp2);

XOR3: xor_rtl port map(p=>b(2),q=>sel,r=>b3);
ADDSUB3: fulladder_rtl port map(A=>a(2),B=>b3,Cin=>temp2,Sum=>sd(2),Cout=>temp3);

XOR4: xor_rtl port map(p=>b(3),q=>sel,r=>b4);
ADDSUB4: fulladder_rtl port map(A=>a(3),B=>b4,Cin=>temp3,Sum=>sd(3),Cout=>cb);


end Behavioral;

