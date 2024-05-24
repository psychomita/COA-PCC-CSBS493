--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:24:37 05/24/2024
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/Others/sub8bit/sub8bit_test.vhd
-- Project Name:  sub8bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sub8bit_rtl
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
 
ENTITY sub8bit_test IS
END sub8bit_test;
 
ARCHITECTURE behavior OF sub8bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sub8bit_rtl
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Bin : IN  std_logic;
         D : OUT  std_logic_vector(7 downto 0);
         Bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Bin : std_logic := '0';

 	--Outputs
   signal D : std_logic_vector(7 downto 0);
   signal Bout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sub8bit_rtl PORT MAP (
          A => A,
          B => B,
          Bin => Bin,
          D => D,
          Bout => Bout
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      
		A<="11111111";
		B<="01010101";
		Bin<='0';
		wait for 1 ps;
		A<="10100101";
		B<="00001111";
		Bin<='1';
		wait for 1 ps;
   
	end process;

END;
