--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:09:12 03/31/2024
-- Design Name:   
-- Module Name:   /home/ise/Desktop/Comparator_4bit/comparator_test.vhd
-- Project Name:  Comparator_4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparator_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY comparator_test IS
END comparator_test;
 
ARCHITECTURE behavior OF comparator_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparator_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         E : OUT  std_logic;
         G : OUT  std_logic;
         L : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal E : std_logic;
   signal G : std_logic;
   signal L : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator_rtl PORT MAP (
          A => A,
          B => B,
          E => E,
          G => G,
          L => L
        );


   -- Stimulus process
   stim_proc: process
   begin		
      A <= "1111";
		B <= "1111";
		wait for 1 ps;
		A <= "0000";
		B <= "1111";
		wait for 1 ps;
		A <= "1111";
		B <= "0000";
		wait for 1 ps;
		A <= "1001";
		B <= "0110";
		wait for 1 ps;
   end process;

END;
