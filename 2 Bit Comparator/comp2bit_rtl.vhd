----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:32:35 05/24/2024 
-- Design Name: 
-- Module Name:    comp2bit_rtl - Behavioral 
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

entity comp2bit_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
           E : out  STD_LOGIC;
           G : out  STD_LOGIC;
           L : out  STD_LOGIC);
end comp2bit_rtl;

architecture Behavioral of comp2bit_rtl is

signal e0,e1,g0,g1,l0,l1:STD_LOGIC:='0';

begin

e1 <= A(1) xnor B(1);
e0 <= A(0) xnor B(0);
E <= e1 and e0;

g1 <= A(1) and (not B(1));
g0 <= A(0) and (not B(0)) and e1;
G <= g1 or g0;

l1 <= (not A(1)) and B(1);
l0 <= (not A(0)) and B(0) and e1;
L <= l1 or l0;

end Behavioral;

