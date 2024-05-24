--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:38:31 05/24/2024
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/Others/comp2bit/comp2bit_test.vhd
-- Project Name:  comp2bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comp2bit_rtl
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
 
ENTITY comp2bit_test IS
END comp2bit_test;
 
ARCHITECTURE behavior OF comp2bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comp2bit_rtl
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         E : OUT  std_logic;
         G : OUT  std_logic;
         L : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal E : std_logic;
   signal G : std_logic;
   signal L : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comp2bit_rtl PORT MAP (
          A => A,
          B => B,
          E => E,
          G => G,
          L => L
        );

   -- Stimulus process
   stim_proc: process
   begin		
      
		A<="11";
		B<="01";
		wait for 1 ps;
		A<="10";
		B<="10";
		wait for 1 ps;
		A<="00";
		B<="11";
		wait for 1 ps;
   end process;

END;
