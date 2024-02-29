--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:29:31 01/31/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13031122026- Assignment 2/half_adder/halfadder_test.vhd
-- Project Name:  half_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: halfadder_rtl
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
 
ENTITY halfadder_test IS
END halfadder_test;
 
ARCHITECTURE behavior OF halfadder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT halfadder_rtl
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Sum : OUT  std_logic;
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal Carry : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: halfadder_rtl PORT MAP (
          A => A,
          B => B,
          Sum => Sum,
          Carry => Carry
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      A<='0';
		B<='0';
		wait for 1 ps;
		A<='0';
		B<='1';
		wait for 1 ps;
		A<='1';
		B<='0';
		wait for 1 ps;
		A<='1';
		B<='1';
		wait for 1 ps;
   end process;

END;
