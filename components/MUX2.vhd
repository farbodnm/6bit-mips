library IEEE;
use IEEE.STD_LOGiC_1164.all;

entity MUX2 is
  port(
    I_MDATA: in std_logic_vector(5 downto 0);
    I_ALURES: in std_logic_vector(5 downto 0);
    I_SELECT: in std_logic;
    O_BUS: out std_logic_vector(5 downto 0)
  );
end MUX2;

architecture Behavorial of MUX2 is
  begin
    process (I_MDATA, I_ALURES, I_SELECT)
    begin
      if I_SELECT = '0' then
        O_BUS <= I_MDATA;
      else
        O_BUS <= I_ALURES;
      end if;
    end process;
  end Behavorial;