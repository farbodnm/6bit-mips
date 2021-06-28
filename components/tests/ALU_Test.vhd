--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:22:31 06/29/2021
-- Design Name:   
-- Module Name:   D:/Projects/Xilinx/6bit-mips/Alu/ALU_Test.vhd
-- Project Name:  Alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALU_Test IS
END ALU_Test;
 
ARCHITECTURE behavior OF ALU_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         I_CMD : IN  std_logic;
         I_N1 : IN  std_logic_vector(5 downto 0);
         I_N2 : IN  std_logic_vector(5 downto 0);
         O_RES : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_CMD : std_logic := '0';
   signal I_N1 : std_logic_vector(5 downto 0) := (others => '0');
   signal I_N2 : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal O_RES : std_logic_vector(5 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          I_CMD => I_CMD,
          I_N1 => I_N1,
          I_N2 => I_N2,
          O_RES => O_RES
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		I_CMD <= '0';
		I_N1 <= "000101";
		I_N2 <= "000011";
		
		wait for 100 ns;	
		I_CMD <= '1';
		
		wait for 100ns;
		I_N1 <= "000011";
		I_N2 <= "001111";
      -- insert stimulus here 

      wait;
   end process;

END;
