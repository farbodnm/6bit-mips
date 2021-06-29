library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CTL is
  port(
    I_CLK: in std_logic;
    I_RES: in std_logic;
    I_ZR0: in std_logic;
    I_ZR1: in std_logic;
    I_ZR2: in std_logic;
    I_ZR3: in std_logic;
    I_ROUTIR: in std_logic_vector(5 downto 0);
    O_LD0: out std_logic;
    O_LD1: out std_logic;
    O_LD2: out std_logic;
    O_LD3: out std_logic;
    O_S00: out std_logic;
    O_S01: out std_logic;
    O_S10: out std_logic;
    O_S11: out std_logic;
    O_LDPC: out std_logic;
    O_LDIR: out std_logic;
    O_BUS_SEL: out std_logic;
    O_CMD: out std_logic;
    O_INC: out std_logic;
    O_RST: out std_logic
  );
end CTL;

architecture Behavorial of CTL is
  type state is (S0, S1, S2, S3, S4, S5, S6, S7, check_ins);
  signal pr_state, nx_state : state;
  signal LD0: std_logic;
  signal LD1: std_logic;
  signal LD2: std_logic;
  signal LD3: std_logic;
  signal S00: std_logic;
  signal S01: std_logic;
  signal S10: std_logic;
  signal S11: std_logic;
  signal LDPC: std_logic;
  signal LDIR: std_logic;
  signal BUS_SEL: std_logic := '0';
  signal CMD: std_logic;
  signal INC: std_logic;
  signal RST: std_logic;
  begin
    S01 <= I_ROUTIR(2);
    S00 <= I_ROUTIR(3);
    
    S11 <= I_ROUTIR(0);
    S10 <= I_ROUTIR(1);

    CMD <= '0' when I_ROUTIR(5 downto 4) = "01" else '1';

    process (I_RES, I_CLK)
    begin
        if (I_RES='1') then
            pr_state <= S0;
        elsif rising_edge(I_CLK) then
            pr_state <= nx_state;
        end if;
    end process;

    process (pr_state, I_ROUTIR, I_ZR0, I_ZR1, I_ZR2, I_ZR3)
    begin
        LD0 <= '0';
        LD1 <= '0';
        LD2 <= '0';
        LD3 <= '0';
        LDIR <= '0';
        LDPC <= '0';
        BUS_SEL <= '0';

        case pr_state is
            when S0 =>
              RST <= '1';
              nx_state <= S1;
            when S1 =>
              RST <= '0';
              LDIR <= '1';
              INC <= '1';
              BUS_SEL <= '0';
              nx_state <= check_ins;
            when check_ins =>
              RST <= '0';
              LDIR <='0';
              INC <= '0';
              case I_ROUTIR(5 downto 4) is
                when "00" =>
                  if I_ROUTIR(1 downto 0) = "11" then
                    nx_state <= S2;
                  else
                    nx_state <= S3;
                  end if;
                when "01" =>
                  nx_state <= S4;
                when "10" =>
                  nx_state <= S5;
                when others =>
                  case I_ROUTIR(3 downto 2) is
                    when "00" =>
                      if (I_ZR0 = '1') then
                        nx_state <= S7;
                      else
                        nx_state <= S6;
                      end if;
                    when "01" =>
                      if (I_ZR1 = '1') then
                        nx_state <= S7;
                      else
                        nx_state <= S6;
                      end if;
                    when "10" =>
                      if (I_ZR2 = '1') then
                        nx_state <= S7;
                      else
                        nx_state <= S6;
                      end if;
                    when others =>
                      if (I_ZR3 = '1') then
                        nx_state <= S7;
                      else
                        nx_state <= S6;
                      end if;
                    end case;
                end case;
            when S2 =>
              RST <= '0';
              nx_state <= S2;
            when S3 =>
              RST <= '0';
              INC <= '1';
              BUS_SEL <= '0';
              case I_ROUTIR(3 downto 2) is
                when "00" =>
                  LD0 <= '1';
                when "01" =>
                  LD1 <= '1';
                when "10" =>
                  LD2 <= '1';
                when others =>
                  LD3 <= '1';
              end case;
              nx_state <= S1;
            when S4 =>
              RST <= '0';
              BUS_SEL <= '1';
              INC <= '0';
              case I_ROUTIR(3 downto 2) is
                when "00" =>
                  LD0 <= '1';
                when "01" =>
                  LD1 <= '1';
                when "10" =>
                  LD2 <= '1';
                when others =>
                  LD3 <= '1';
              end case;
              nx_state <= S1;
            when S5 =>
              RST <= '0';
              BUS_SEL <= '1';
              INC <= '0';
              case I_ROUTIR(3 downto 2) is
                when "00" =>
                  LD0 <= '1';
                when "01" =>
                  LD1 <= '1';
                when "10" =>
                  LD2 <= '1';
                when others =>
                  LD3 <= '1';
              end case;
              nx_state <= S1;
            when S6 =>
              RST <= '0';
              LDPC <= '1';
              INC <= '0';
              BUS_SEL <= '0';
              nx_state <= S1;
            when S7 =>
              RST <= '0';
              INC <= '1';
              nx_state <= S1;
        end case;
    end process;
    
    O_LD0 <= LD0;
    O_LD1 <= LD1;
    O_LD2 <= LD2;
    O_LD3 <= LD3;
    O_S00 <= S00;
    O_S01 <= S01;
    O_S10 <= S10;
    O_S11 <= S11;
    O_LDPC <= LDPC;
    O_LDIR <= LDIR;
    O_BUS_SEL <= BUS_SEL;
    O_CMD <= CMD;
    O_INC <= INC;
    O_RST <= RST;
  end Behavorial;