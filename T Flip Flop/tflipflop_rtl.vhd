----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:59:27 05/24/2024 
-- Design Name: 
-- Module Name:    tflipflop_rtl - Behavioral 
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

entity tflipflop_rtl is
    Port ( T : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
			  QBar: out STD_LOGIC );
end tflipflop_rtl;

architecture Behavioral of tflipflop_rtl is

signal temp:STD_LOGIC:='0';

begin

	process(Clk,Reset)	
	begin
		if Reset='1' then
			temp <= '0';
		elsif rising_edge(clk) then
			if T='1' then
				temp <= not temp;
			end if;
		end if;
	end process;
	
Q <= temp;
QBar <= not temp;

end Behavioral;

