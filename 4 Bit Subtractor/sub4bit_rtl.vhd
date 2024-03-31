----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:46 03/12/2024 
-- Design Name: 
-- Module Name:    sub4bit_rtl - Behavioral 
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

entity sub4bit_rtl is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           bin : in  STD_LOGIC;
           diff : out  STD_LOGIC_VECTOR (3 downto 0);
           bout : out  STD_LOGIC);
end sub4bit_rtl;

architecture Behavioral of sub4bit_rtl is
component fullsub_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           Diff : out  STD_LOGIC;
           Bout : out  STD_LOGIC);
end component;

signal b1,b2,b3:STD_LOGIC:='0';

begin
FS0: fullsub_rtl port map(A=>a(0),B=>b(0),Bin=>bin,Diff=>diff(0),Bout=>b1);
FS1: fullsub_rtl port map(A=>a(1),B=>b(1),Bin=>b1,Diff=>diff(1),Bout=>b2);
FS2: fullsub_rtl port map(A=>a(2),B=>b(2),Bin=>b2,Diff=>diff(2),Bout=>b3);
FS3: fullsub_rtl port map(A=>a(3),B=>b(3),Bin=>b3,Diff=>diff(3),Bout=>bout);
end Behavioral;

