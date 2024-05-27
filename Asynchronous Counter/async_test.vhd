--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:50:32 05/26/2024
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/Others/asynchronous/async_test.vhd
-- Project Name:  asynchronous
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: async_rtl
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
 
ENTITY async_test IS
END async_test;
 
ARCHITECTURE behavior OF async_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT async_rtl
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
   constant Clock_period : time := 1 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: async_rtl PORT MAP (
          Clock => Clock,
          Qn => Qn
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period;
		Clock <= '1';
		wait for Clock_period;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		wait for 1 ps;

      wait;
   end process;

END;
