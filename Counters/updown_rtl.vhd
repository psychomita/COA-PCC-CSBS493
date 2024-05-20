----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:43:40 05/13/2024 
-- Design Name: 
-- Module Name:    updown_rtl - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity updown_rtl is
    Port ( UpDown : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Count : out  STD_LOGIC_VECTOR (3 downto 0));
end updown_rtl;

architecture Behavioral of updown_rtl is

signal temp : STD_LOGIC_VECTOR (3 downto 0);

begin

process(UpDown, Reset, Clk)

begin
	if (Reset = '1') then
		temp <= "0000";
	elsif (RISING_EDGE(Clk)) then
		if (UpDown = '0') then
			temp <= temp + 1;
		else
			temp <= temp - 1;
		end if;
	end if;

end process;

Count <= temp;

end Behavioral;
