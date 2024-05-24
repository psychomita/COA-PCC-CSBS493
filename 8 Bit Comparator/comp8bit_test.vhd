--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:23:35 05/24/2024
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/Others/comp8bit/comp8bit_test.vhd
-- Project Name:  comp8bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comp8bit_rtl
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
 
ENTITY comp8bit_test IS
END comp8bit_test;
 
ARCHITECTURE behavior OF comp8bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comp8bit_rtl
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         e : OUT  std_logic;
         g : OUT  std_logic;
         l : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal e : std_logic;
   signal g : std_logic;
   signal l : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comp8bit_rtl PORT MAP (
          a => a,
          b => b,
          e => e,
          g => g,
          l => l
        );

   -- Stimulus process
   stim_proc: process
   begin		
      a<="10101010";
		b<="10101010";
		wait for 1 ps;
		a<="10101010";
		b<="01010101";
		wait for 1 ps;
		a<="10101111";
		b<="10100000";
		wait for 1 ps;
		a<="00110011";
		b<="10010011";
		wait for 1 ps;
		a<="10100101";
		b<="10101001";
		wait for 1 ps;
   end process;

END;
