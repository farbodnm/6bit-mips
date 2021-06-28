--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:13:29 06/28/2021
-- Design Name:   
-- Module Name:   D:/Projects/Xilinx/6bit-mips/Reg/REG_Test.vhd
-- Project Name:  Reg
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: REG
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
 
ENTITY REG_Test IS
END REG_Test;
 
ARCHITECTURE behavior OF REG_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REG
    PORT(
         I_CLK : IN  std_logic;
         I_LD : IN  std_logic;
         I_N : IN  std_logic_vector(5 downto 0);
         O_ZR : OUT  std_logic;
         O_UT : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_CLK : std_logic := '0';
   signal I_LD : std_logic := '0';
   signal I_N : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal O_ZR : std_logic;
   signal O_UT : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant I_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REG PORT MAP (
          I_CLK => I_CLK,
          I_LD => I_LD,
          I_N => I_N,
          O_ZR => O_ZR,
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
		I_LD <= '0';

      -- insert stimulus here 
		wait for I_CLK_period*10;
		I_LD <= '1';
		I_N <= "001100";
		
		wait for I_CLK_period*10;
		I_LD <= '0';
		I_N <= "110000";

      wait;
   end process;

END;
