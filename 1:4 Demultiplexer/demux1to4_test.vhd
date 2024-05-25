--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:29:16 05/25/2024
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/Others/demux4to1/demux4to1_test.vhd
-- Project Name:  demux4to1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: demux4to1_rtl
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
 
ENTITY demux4to1_test IS
END demux4to1_test;
 
ARCHITECTURE behavior OF demux4to1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT demux4to1_rtl
    PORT(
         D4 : IN  std_logic;
         S4 : IN  std_logic_vector(1 downto 0);
         Y4 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D4 : std_logic := '0';
   signal S4 : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Y4 : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: demux4to1_rtl PORT MAP (
          D4 => D4,
          S4 => S4,
          Y4 => Y4
        );

   -- Stimulus process
   stim_proc: process
   begin		
      D4 <= '1';
		S4 <= "00";
		wait for 1 ps;
		D4 <= '1';
		S4 <= "01";
		wait for 1 ps;
		D4 <= '1';
		S4 <= "10";
		wait for 1 ps;
		D4 <= '1';
		S4 <= "11";
		wait for 1 ps;
   end process;

END;
