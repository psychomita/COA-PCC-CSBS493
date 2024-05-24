--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:14:44 05/24/2024
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/Others/tflipflop/tflipflop_test.vhd
-- Project Name:  tflipflop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: tflipflop_rtl
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
 
ENTITY tflipflop_test IS
END tflipflop_test;
 
ARCHITECTURE behavior OF tflipflop_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT tflipflop_rtl
    PORT(
         T : IN  std_logic;
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Q : OUT  std_logic;
         QBar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QBar : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tflipflop_rtl PORT MAP (
          T => T,
          Clk => Clk,
          Reset => Reset,
          Q => Q,
          QBar => QBar
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin		
      Reset <= '1';
		wait for Clk_period;
		T <= '0';
		Reset <= '0';
		wait for Clk_period;
		T <= '1';
		Reset <= '0';
		wait for Clk_period;
   end process;

END;
