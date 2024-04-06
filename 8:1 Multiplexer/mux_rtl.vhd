----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:03:48 04/03/2024 
-- Design Name: 
-- Module Name:    mux_rtl - Behavioral 
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

entity mux_rtl is
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC);
end mux_rtl;

architecture Behavioral of mux_rtl is

begin

process(S,D)
	begin 
	case S is
		when "000" => Y <= D(0);
		when "001" => Y <= D(1);
		when "010" => Y <= D(2);
		when "011" => Y <= D(3);
		when "100" => Y <= D(4);
		when "101" => Y <= D(5);
		when "110" => Y <= D(6);
		when others => Y <= D(7);
	end case;
end process;

end Behavioral;

