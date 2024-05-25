--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:53:48 05/25/2024
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/Others/mux8to1/mux8to1_test.vhd
-- Project Name:  mux8to1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux8to1_rtl
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
 
ENTITY mux8to1_test IS
END mux8to1_test;
 
ARCHITECTURE behavior OF mux8to1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux8to1_rtl
    PORT(
         D : IN  std_logic_vector(7 downto 0);
         S : IN  std_logic_vector(2 downto 0);
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(7 downto 0) := (others => '0');
   signal S : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux8to1_rtl PORT MAP (
          D => D,
          S => S,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      S <= "010";
		D <= "00001010";
		wait for 1 ps;
		S <= "101";
		D <= "11001010";
		wait for 1 ps;
		S <= "111";
		D <= "11111010";
		wait for 1 ps;
		S <= "000";
		D <= "10101010";
		wait for 1 ps;
   end process;

END;
