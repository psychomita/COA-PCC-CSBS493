--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:40:29 04/06/2024
-- Design Name:   
-- Module Name:   /home/ise/D_FlipFlop/d_test.vhd
-- Project Name:  D_FlipFlop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d_rtl
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
 
ENTITY d_test IS
END d_test;
 
ARCHITECTURE behavior OF d_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d_rtl
    PORT(
         D : IN  std_logic;
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Q : OUT  std_logic;
         Qbar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qbar : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 1 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d_rtl PORT MAP (
          D => D,
          Reset => Reset,
          Clk => Clk,
          Q => Q,
          Qbar => Qbar
        );

   -- Stimulus process
   stim_proc: process
   begin		
      Reset <= '1';
		wait for Clk_period;
		D <= '0';
		Reset <= '0';
		wait for Clk_period;
		D <= '1';
		Reset <= '0';
		wait for Clk_period;
   end process;

END;
