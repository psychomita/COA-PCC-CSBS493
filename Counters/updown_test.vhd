--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:01:23 05/13/2024
-- Design Name:   
-- Module Name:   /home/ise/Desktop/13031122026- Assignment 10/UpDown_Counter/updown_test.vhd
-- Project Name:  UpDown_Counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: updown_rtl
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
 
ENTITY updown_test IS
END updown_test;
 
ARCHITECTURE behavior OF updown_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT updown_rtl
    PORT(
         UpDown : IN  std_logic;
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal UpDown : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: updown_rtl PORT MAP (
          UpDown => UpDown,
          Reset => Reset,
          Clk => Clk,
          Count => Count
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
		wait for 2 ps;
		
		counter1: for i in 0 to 15 loop
			Reset <= '0';
			UpDown <= '0';
			wait for 2 ps;
		end loop;
		
		counter2: for i in 0 to 15 loop
			Reset <= '0';
			UpDown <= '1';
			wait for 2 ps;
		end loop;

   end process;

END;
