----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:12 04/06/2024 
-- Design Name: 
-- Module Name:    d_rtl - Behavioral 
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

entity d_rtl is
    Port ( D : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qbar : out  STD_LOGIC);
end d_rtl;

architecture Behavioral of d_rtl is

signal temp:STD_LOGIC:='0';

begin

	process(D,Clk,Reset)
	begin
		if (Reset = '1') then
			temp <= '0';
		elsif (rising_edge(Clk)) then
			temp <= D;
		end if;
	end process;
	
	Q <= temp;
	QBar <= not temp;

end Behavioral;

