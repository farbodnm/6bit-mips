--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:48:49 06/29/2021
-- Design Name:   
-- Module Name:   D:/Projects/Xilinx/6bit-mips/Ctl/CTL_Test.vhd
-- Project Name:  Ctl
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CTL
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
 
ENTITY CTL_Test IS
END CTL_Test;
 
ARCHITECTURE behavior OF CTL_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CTL
    PORT(
         I_CLK : IN  std_logic;
         I_RES : IN  std_logic;
         I_ZR0 : IN  std_logic;
         I_ZR1 : IN  std_logic;
         I_ZR2 : IN  std_logic;
         I_ZR3 : IN  std_logic;
         I_ROUTIR : IN  std_logic_vector(5 downto 0);
         O_LD0 : OUT  std_logic;
         O_LD1 : OUT  std_logic;
         O_LD2 : OUT  std_logic;
         O_LD3 : OUT  std_logic;
         O_S00 : OUT  std_logic;
         O_S01 : OUT  std_logic;
         O_S10 : OUT  std_logic;
         O_S11 : OUT  std_logic;
         O_LDPC : OUT  std_logic;
         O_LDIR : OUT  std_logic;
         O_BUS_SEL : OUT  std_logic;
         O_CMD : OUT  std_logic;
         O_INC : OUT  std_logic;
         O_RST : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I_CLK : std_logic := '0';
   signal I_RES : std_logic := '0';
   signal I_ZR0 : std_logic := '0';
   signal I_ZR1 : std_logic := '0';
   signal I_ZR2 : std_logic := '0';
   signal I_ZR3 : std_logic := '0';
   signal I_ROUTIR : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal O_LD0 : std_logic;
   signal O_LD1 : std_logic;
   signal O_LD2 : std_logic;
   signal O_LD3 : std_logic;
   signal O_S00 : std_logic;
   signal O_S01 : std_logic;
   signal O_S10 : std_logic;
   signal O_S11 : std_logic;
   signal O_LDPC : std_logic;
   signal O_LDIR : std_logic;
   signal O_BUS_SEL : std_logic;
   signal O_CMD : std_logic;
   signal O_INC : std_logic;
   signal O_RST : std_logic;

   -- Clock period definitions
   constant I_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CTL PORT MAP (
          I_CLK => I_CLK,
          I_RES => I_RES,
          I_ZR0 => I_ZR0,
          I_ZR1 => I_ZR1,
          I_ZR2 => I_ZR2,
          I_ZR3 => I_ZR3,
          I_ROUTIR => I_ROUTIR,
          O_LD0 => O_LD0,
          O_LD1 => O_LD1,
          O_LD2 => O_LD2,
          O_LD3 => O_LD3,
          O_S00 => O_S00,
          O_S01 => O_S01,
          O_S10 => O_S10,
          O_S11 => O_S11,
          O_LDPC => O_LDPC,
          O_LDIR => O_LDIR,
          O_BUS_SEL => O_BUS_SEL,
          O_CMD => O_CMD,
          O_INC => O_INC,
          O_RST => O_RST
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
      wait for I_CLK_period;
		I_ROUTIR <= "000000";
		
		wait for I_CLK_period;
		I_ROUTIR <= "000000";
		
		wait for I_CLK_period;
		I_ROUTIR <= "000100";
		
		wait for I_CLK_period;
		I_ROUTIR <= "000100";
		
		wait for I_CLK_period;
		I_ROUTIR <= "010001";

      -- insert stimulus here 

      wait;
   end process;

END;
