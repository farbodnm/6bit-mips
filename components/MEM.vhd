library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MEM is
  port(
    I_ADDRESS: in std_logic_vector(5 downto 0);
    O_DATA: out std_logic_vector(5 downto 0)
  );
end MEM;

architecture Behavorial of MEM is
  type mem_array is array(0 to 63) of std_logic_vector(5 downto 0);
  constant ROM : mem_array := (
    "000000", "000101", "000100", "000011",
    "010001", "000000", "000000", "000000",
    "000000", "000000", "000000", "000000",
    "000000", "000000", "000000", "000000",
    "000000", "000000", "000000", "000000",
    "000000", "000000", "000000", "000000",
    "000000", "000000", "000000", "000000",
    "000000", "000000", "000000", "000000",
    "000000", "000000", "000000", "000000",
    "000000", "000000", "000000", "000000",
    "000000", "000000", "000000", "000000",
    "000000", "000000", "000000", "000000",
    "000000", "000000", "000000", "000000",
    "000000", "000000", "000000", "000000",
    "000000", "000000", "000000", "000000",
    "000000", "000000", "000000", "000000"
  );
  begin
    process(I_ADDRESS)
    begin
      O_DATA <= ROM(to_integer(unsigned(I_ADDRESS(5 downto 0))));
    end process;
  end Behavorial;