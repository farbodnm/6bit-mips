library IEEE;
use IEEE.STD_LOGiC_1164.all;

entity MUX4 is
  port(
    I_ROUT0: in std_logic_vector(5 downto 0);
    I_ROUT1: in std_logic_vector(5 downto 0);
    I_ROUT2: in std_logic_vector(5 downto 0);
    I_ROUT3: in std_logic_vector(5 downto 0);
    I_S0: in std_logic;
    I_S1: in std_logic;
    O_UT: out std_logic_vector(5 downto 0)
  );
end MUX4;

architecture Behavorial of MUX4 is
  begin
    process (I_ROUT0, I_ROUT1, I_ROUT2, I_ROUT3, I_S0, I_S1)
    begin
      if I_S0 = '0' then
        if I_S1 = '0' then
          O_UT <= I_ROUT0;
        else
          O_UT <= I_ROUT1;
        end if;
      else
        if I_S1 = '0' then
          O_UT <= I_ROUT2;
        else
          O_UT <= I_ROUT3;
        end if;
      end if;
    end process;
  end Behavorial;