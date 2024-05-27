----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:41:44 05/26/2024 
-- Design Name: 
-- Module Name:    async_rtl - Behavioral 
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

entity async_rtl is
    Port ( Clock : in  STD_LOGIC;
           Qn : out  STD_LOGIC_VECTOR (3 downto 0));
end async_rtl;

architecture Behavioral of async_rtl is

component jk_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

signal temp:STD_LOGIC_VECTOR(3 downto 0);

begin

D0: jk_rtl port map(J=>'1',K=>'1',Clk=>Clock,Q=>temp(0));
D1: jk_rtl port map(J=>'1',K=>'1',Clk=>temp(0),Q=>temp(1));
D2: jk_rtl port map(J=>'1',K=>'1',Clk=>temp(1),Q=>temp(2));
D3: jk_rtl port map(J=>'1',K=>'1',Clk=>temp(2),Q=>temp(3));

Qn <= temp;

end Behavioral;

