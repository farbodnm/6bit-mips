library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity ALU is
  port(
    I_CMD: in std_logic;
    I_N1: in std_logic_vector(5 downto 0);
    I_N2: in std_logic_vector(5 downto 0);
    O_RES: out std_logic_vector(5 downto 0)
  );
end ALU;

architecture Behavorial of ALU is
  signal temp: std_logic_vector(5 downto 0);
  begin
    process(I_CMD, I_N1, I_N2)
    begin
      if I_CMD = '0' then
        temp <= I_N1 + I_N2;
      else
        temp <= I_N1 - I_N2;
      end if;
    end process;
    O_RES <= temp;
  end Behavorial;
  