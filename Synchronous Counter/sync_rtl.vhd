----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:01:34 05/26/2024 
-- Design Name: 
-- Module Name:    sync_rtl - Behavioral 
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

entity sync_rtl is
    Port ( Clock : in  STD_LOGIC;
           Qn : out  STD_LOGIC_VECTOR (3 downto 0));
end sync_rtl;

architecture Behavioral of sync_rtl is

component jk_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

signal temp : STD_LOGIC_VECTOR (3 downto 0);
signal t2,t3 : STD_LOGIC := '0';

begin

D0: jk_rtl port map (J=>'1',K=>'1',Clk=>Clock,Q=>temp(0));

D1: jk_rtl port map (J=>temp(0),K=>temp(0),Clk=>Clock,Q=>temp(1));

t2 <= temp(0) and temp(1); 
D2: jk_rtl port map (J=>t2,K=>t2,Clk=>Clock,Q=>temp(2));

t3 <= temp(2) and t2; 
D3: jk_rtl port map (J=>t3,K=>t3,Clk=>Clock,Q=>temp(3));

Qn <= temp;

end Behavioral;

