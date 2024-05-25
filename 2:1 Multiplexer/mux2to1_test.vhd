--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:15:46 05/25/2024
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/Others/mux2to1/mux2to1_test.vhd
-- Project Name:  mux2to1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux2to1_rtl
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
 
ENTITY mux2to1_test IS
END mux2to1_test;
 
ARCHITECTURE behavior OF mux2to1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2to1_rtl
    PORT(
         D2 : IN  std_logic_vector(1 downto 0);
         S2 : IN  std_logic;
         Y2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D2 : std_logic_vector(1 downto 0) := (others => '0');
   signal S2 : std_logic := '0';

 	--Outputs
   signal Y2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2to1_rtl PORT MAP (
          D2 => D2,
          S2 => S2,
          Y2 => Y2
        );

   -- Stimulus process
   stim_proc: process
   begin		
      S2 <= '0';
		D2 <= "01";
		wait for 1 ps;
		S2 <= '1';
		D2 <= "01";
		wait for 1 ps;
   end process;

END;
