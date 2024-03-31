--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:57:01 03/12/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13031122026- Assignment 5/Full_using_half/fullsubhalf_test.vhd
-- Project Name:  Full_using_half
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fullsubhalf_rtl
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
 
ENTITY fullsubhalf_test IS
END fullsubhalf_test;
 
ARCHITECTURE behavior OF fullsubhalf_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullsubhalf_rtl
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Bin : IN  std_logic;
         Diff : OUT  std_logic;
         Bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Bin : std_logic := '0';

 	--Outputs
   signal Diff : std_logic;
   signal Bout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullsubhalf_rtl PORT MAP (
          A => A,
          B => B,
          Bin => Bin,
          Diff => Diff,
          Bout => Bout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      A<='0';
		B<='0';
		Bin<='0';
		wait for 1 ps;
		A<='0';
		B<='0';
		Bin<='1';
		wait for 1 ps;
		A<='0';
		B<='1';
		Bin<='0';
		wait for 1 ps;
		A<='0';
		B<='1';
		Bin<='1';
		wait for 1 ps;
		A<='1';
		B<='0';
		Bin<='0';
		wait for 1 ps;
		A<='1';
		B<='0';
		Bin<='1';
		wait for 1 ps;
		A<='1';
		B<='1';
		Bin<='0';
		wait for 1 ps;
		A<='1';
		B<='1';
		Bin<='1';
		wait for 1 ps;
   end process;

END;
