----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:05:57 05/24/2024 
-- Design Name: 
-- Module Name:    adder8bit_rtl - Behavioral 
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

entity adder8bit_rtl is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (7 downto 0);
           cout : out  STD_LOGIC);
end adder8bit_rtl;

architecture Behavioral of adder8bit_rtl is

component fulladder_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;

signal c1,c2,c3,c4,c5,c6,c7:STD_LOGIC:='0';

begin

FA0 : fulladder_rtl port map(A=>a(0),B=>b(0),Cin=>cin,Sum=>s(0),Cout=>c1);
FA1 : fulladder_rtl port map(A=>a(1),B=>b(1),Cin=>c1,Sum=>s(1),Cout=>c2);
FA2 : fulladder_rtl port map(A=>a(2),B=>b(2),Cin=>c2,Sum=>s(2),Cout=>c3);
FA3 : fulladder_rtl port map(A=>a(3),B=>b(3),Cin=>c3,Sum=>s(3),Cout=>c4);
FA4 : fulladder_rtl port map(A=>a(4),B=>b(4),Cin=>c4,Sum=>s(4),Cout=>c5);
FA5 : fulladder_rtl port map(A=>a(5),B=>b(5),Cin=>c5,Sum=>s(5),Cout=>c6);
FA6 : fulladder_rtl port map(A=>a(6),B=>b(6),Cin=>c6,Sum=>s(6),Cout=>c7);
FA7 : fulladder_rtl port map(A=>a(7),B=>b(7),Cin=>c7,Sum=>s(7),Cout=>cout);

end Behavioral;

