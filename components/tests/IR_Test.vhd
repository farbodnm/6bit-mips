--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:28:36 06/28/2021
-- Design Name:   
-- Module Name:   D:/Projects/Xilinx/6bit-mips/Ir/IR_Test.vhd
-- Project Name:  Ir
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IR
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
 
ENTITY IR_Test IS
END IR_Test;
 
ARCHITECTURE behavior OF IR_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IR
    PORT(
         I_CLK : IN  std_logic;
         I_LD : IN  std_logic;
         I_N : IN  std_logic_vector(5 downto 0);
         O_UT : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_CLK : std_logic := '0';
   signal I_LD : std_logic := '0';
   signal I_N : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal O_UT : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant I_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IR PORT MAP (
          I_CLK => I_CLK,
          I_LD => I_LD,
          I_N => I_N,
          O_UT => O_UT
        );

   -- Clock process definitions
   I_CLK_process :process
   begin
		I_CLK <= '0';
		wait for I_CLK_period/2;
		I_CLK <= '1';
		wait for I_CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for I_CLK_period*10;
		I_N <= "001100";
		I_LD <= '1';
		
		wait for I_CLK_period*10;
		I_LD <= '0';
		I_N <= "110011";
		
		wait for I_CLK_period*10;
		I_LD <= '1';
		
		wait for I_CLK_period*10;
		I_LD <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
