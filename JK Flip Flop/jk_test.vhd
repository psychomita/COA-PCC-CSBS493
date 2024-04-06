--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:52:32 04/06/2024
-- Design Name:   
-- Module Name:   /home/ise/JK_FlipFlop/jk_test.vhd
-- Project Name:  JK_FlipFlop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jk_rtl
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
 
ENTITY jk_test IS
END jk_test;
 
ARCHITECTURE behavior OF jk_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT jk_rtl
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Q : OUT  std_logic;
         QBar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QBar : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 1 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jk_rtl PORT MAP (
          J => J,
          K => K,
          Reset => Reset,
          Clk => Clk,
          Q => Q,
          QBar => QBar
        );

   -- Stimulus process
   stim_proc: process
   begin		
      Reset <= '1';
		wait for Clk_period;
		J <= '0';
		K <= '0';
		Reset <= '0';
		wait for Clk_period;
		J <= '0';
		K <= '1';
		Reset <= '0';
		wait for Clk_period;
		J <= '1';
		K <= '0';
		Reset <= '0';
		wait for Clk_period;
		J <= '1';
		K <= '1';
		Reset <= '0';
		wait for Clk_period;
   end process;

END;
