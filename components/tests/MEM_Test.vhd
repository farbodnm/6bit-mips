--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:39:15 06/29/2021
-- Design Name:   
-- Module Name:   D:/Projects/Xilinx/6bit-mips/Mem/MEM_Test.vhd
-- Project Name:  Mem
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MEM
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
 
ENTITY MEM_Test IS
END MEM_Test;
 
ARCHITECTURE behavior OF MEM_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEM
    PORT(
         I_ADDRESS : IN  std_logic_vector(5 downto 0);
         O_DATA : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_ADDRESS : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal O_DATA : std_logic_vector(5 downto 0);
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEM PORT MAP (
          I_ADDRESS => I_ADDRESS,
          O_DATA => O_DATA
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		I_ADDRESS <= "000000";
		
		wait for 100 ns;
		I_ADDRESS <= "000001";
		
		wait for 100 ns;
		I_ADDRESS <= "000010";
		
		wait for 100 ns;
		I_ADDRESS <= "000011";
		
		wait for 100 ns;
		I_ADDRESS <= "000100";
      -- insert stimulus here 

      wait;
   end process;

END;
