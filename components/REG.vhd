library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity REG is
  port(
    I_CLK: in std_logic;
    I_LD: in std_logic;
    I_N: in std_logic_vector(5 downto 0);
    O_ZR: out std_logic;
    O_UT: out std_logic_vector(5 downto 0)
  );
end REG;

architecture Behavorial of REG is
  signal temp : std_logic_vector(5 downto 0) := "000000";
  begin
    process(I_CLK, I_LD, I_N)
    begin
      if rising_edge(I_CLK) then
        if I_LD = '1' then
          temp <= I_N;
        end if;
      end if;

      if temp = "000000" then
        O_ZR <= '1';
      else
        O_ZR <= '0';
      end if;
    end process;
    O_UT <= temp;
  end Behavorial;
