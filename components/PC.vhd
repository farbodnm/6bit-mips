library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity PC is
  port(
    I_CLK: in std_logic;
    I_LD: in std_logic;
    I_INC: in std_logic;
    I_RST: in std_logic;
    I_N: in std_logic_vector(5 downto 0);
    O_UT: out std_logic_vector(5 downto 0)
  );
end PC;

architecture Behavorial of PC is
  signal temp: std_logic_vector(5 downto 0) := "000000";
  begin
    process(I_CLK, I_LD, I_INC, I_RST, I_N)
    begin
      if rising_edge(I_CLK) then
        if I_LD = '1' then
          temp <= I_N;
        elsif I_INC = '1' then
          temp <= temp + "000001";
        end if;
      end if;

      if I_RST = '1' then
        temp <= "000000";
      end if;
    end process;
    O_UT <= temp;
  end Behavorial;
