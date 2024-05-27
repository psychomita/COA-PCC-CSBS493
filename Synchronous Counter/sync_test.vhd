--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:13:38 05/26/2024
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/Others/synchronous/sync_test.vhd
-- Project Name:  synchronous
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sync_rtl
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
 
ENTITY sync_test IS
END sync_test;
 
ARCHITECTURE behavior OF sync_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sync_rtl
    PORT(
         Clock : IN  std_logic;
         Qn : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clock : std_logic := '0';

 	--Outputs
   signal Qn : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sync_rtl PORT MAP (
          Clock => Clock,
          Qn => Qn
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 1 ps;
   end process;

END;
