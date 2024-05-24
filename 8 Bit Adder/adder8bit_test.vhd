--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:25:54 05/24/2024
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/Others/adder8bit/adder8bit_test.vhd
-- Project Name:  adder8bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder8bit_rtl
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
 
ENTITY adder8bit_test IS
END adder8bit_test;
 
ARCHITECTURE behavior OF adder8bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder8bit_rtl
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         cin : IN  std_logic;
         s : OUT  std_logic_vector(7 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(7 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder8bit_rtl PORT MAP (
          a => a,
          b => b,
          cin => cin,
          s => s,
          cout => cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      
		a<="00011101";
		b<="10101010";
		cin<='0';
		wait for 1 ps;
		a<="11001010";
		b<="00011000";
		cin<='1';
		wait for 1 ps;
   
	end process;

END;
