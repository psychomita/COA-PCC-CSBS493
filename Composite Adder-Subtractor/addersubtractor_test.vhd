--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:47:21 03/20/2024
-- Design Name:   
-- Module Name:   /home/ise/Desktop/addersubtractor/addersubtractor_test.vhd
-- Project Name:  addersubtractor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: addersubtractor_rtl
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
 
ENTITY addersubtractor_test IS
END addersubtractor_test;
 
ARCHITECTURE behavior OF addersubtractor_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT addersubtractor_rtl
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         sel : IN  std_logic;
         sd : OUT  std_logic_vector(3 downto 0);
         cb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal sd : std_logic_vector(3 downto 0);
   signal cb : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: addersubtractor_rtl PORT MAP (
          a => a,
          b => b,
          sel => sel,
          sd => sd,
          cb => cb
        );

   -- Stimulus process
   stim_proc: process
   begin		
      a<="0100";
		b<="1111";
		sel<='0';
		wait for 1 ps;
		a<="0111";
		b<="0011";
		sel<='0';
		wait for 1 ps;
		a<="1100";
		b<="0010";
		sel<='1';
		wait for 1 ps;
		a<="1101";
		b<="0001";
		sel<='1';
		wait for 1 ps;	
   end process;

END;
