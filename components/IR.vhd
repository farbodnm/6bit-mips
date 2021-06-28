library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity IR is
  port(
    I_CLK: in std_logic;
    I_LD: in std_logic;
    I_N: in std_logic_vector(5 downto 0);
    O_UT: out std_logic_vector(5 downto 0)
  );
end IR;

architecture Behavorial of IR is
  signal temp: std_logic_vector(5 downto 0);
  begin
    process(I_CLK, I_LD, I_N)
    begin
      if rising_edge(I_CLK) then
        if I_LD = '1' then
          temp <= I_N;
        end if;
      end if;

      O_UT <= temp;
    end process;
  end Behavorial;