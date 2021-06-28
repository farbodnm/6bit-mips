--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:08:02 06/28/2021
-- Design Name:   
-- Module Name:   D:/Projects/Xilinx/6bit-mips/Pc/PC_Test.vhd
-- Project Name:  Pc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC
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
 
ENTITY PC_Test IS
END PC_Test;
 
ARCHITECTURE behavior OF PC_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         I_CLK : IN  std_logic;
         I_LD : IN  std_logic;
         I_INC : IN  std_logic;
         I_RST : IN  std_logic;
         I_N : IN  std_logic_vector(5 downto 0);
         O_UT : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_CLK : std_logic := '0';
   signal I_LD : std_logic := '0';
   signal I_INC : std_logic := '0';
   signal I_RST : std_logic := '0';
   signal I_N : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal O_UT : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant I_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          I_CLK => I_CLK,
          I_LD => I_LD,
          I_INC => I_INC,
          I_RST => I_RST,
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
		I_INC <= '1';
		
		wait for I_CLK_period*10;
		I_INC <= '0';
		I_N <= "001101";
		I_LD <= '1';
		
		wait for I_CLK_period*10;
		I_LD <= '0';
		I_N <= "110110";
		I_RST <= '1';
		
		wait for I_CLK_period*10;
		I_RST <= '0';
		I_INC <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
