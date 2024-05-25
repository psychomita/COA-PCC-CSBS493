--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:59:15 05/25/2024
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/Others/demux1to16/demux1to16_test.vhd
-- Project Name:  demux1to16
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: demux1to16_rtl
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
 
ENTITY demux1to16_test IS
END demux1to16_test;
 
ARCHITECTURE behavior OF demux1to16_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT demux1to16_rtl
    PORT(
         D : IN  std_logic;
         S : IN  std_logic_vector(3 downto 0);
         Y : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal S : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: demux1to16_rtl PORT MAP (
          D => D,
          S => S,
          Y => Y
        );


   -- Stimulus process
   stim_proc: process
   begin		
		D <= '1';
		S <= "0000";
		wait for 1 ps;
		D <= '1';
		S <= "0010";
		wait for 1 ps;
		D <= '1';
		S <= "1010";
		wait for 1 ps;
		D <= '1';
		S <= "1111";
		wait for 1 ps;
		D <= '1';
		S <= "0001";
		wait for 1 ps;
   end process;

END;
