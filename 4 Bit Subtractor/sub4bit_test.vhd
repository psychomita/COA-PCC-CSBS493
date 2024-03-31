--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:58:37 03/12/2024
-- Design Name:   
-- Module Name:   /home/ise/Subtractor_4bit/sub4bit_test.vhd
-- Project Name:  Subtractor_4bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sub4bit_rtl
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
 
ENTITY sub4bit_test IS
END sub4bit_test;
 
ARCHITECTURE behavior OF sub4bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sub4bit_rtl
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         bin : IN  std_logic;
         diff : OUT  std_logic_vector(3 downto 0);
         bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal bin : std_logic := '0';

 	--Outputs
   signal diff : std_logic_vector(3 downto 0);
   signal bout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sub4bit_rtl PORT MAP (
          a => a,
          b => b,
          bin => bin,
          diff => diff,
          bout => bout
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      a<="0001";
		b<="0010";
		bin<='0';
		wait for 1 ps;
		a<="0100";
		b<="1010";
		bin<='0';
		wait for 1 ps;
		a<="1101";
		b<="1111";
		bin<='1';
		wait for 1 ps;
		a<="1001";
		b<="0011";
		bin<='1';
		wait for 1 ps;
   end process;

END;
