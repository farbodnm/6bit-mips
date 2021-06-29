library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CPU is
  port (
    I_CLK   : in std_logic;
    I_RST : in std_logic
  );
end entity;

architecture Behavioral of CPU is
signal LD0, LD1, LD2, LD3, LDPC, LDIR, S00, S01, S10, S11, BUS_SEL, CMD, INC, RST, ZR0, ZR1, ZR2, ZR3: std_logic := '0';
signal ROUT0, ROUT1, ROUT2, ROUT3, ADDRESS, ROUTIR, BUS_6, MData, ALURes, ALUIN0, ALUIN1 : std_logic_vector(5 downto 0):="000000";
begin

  R0: Entity work.REG(Behavioral)
    port map(I_CLK => I_CLK, I_LD => LD0, I_N => BUS_6, O_ZR => ZR0, O_UT => ROUT0);

  R1: Entity work.REG(Behavioral)
    port map(I_CLK => I_CLK, I_LD => LD1, I_N => BUS_6, O_ZR => ZR1, O_UT => ROUT1);

  R2: Entity work.REG(Behavioral)
    port map(I_CLK => I_CLK, I_LD => LD2, I_N => BUS_6, O_ZR => ZR2, O_UT => ROUT2);

  R3: Entity work.REG(Behavioral)
    port map(I_CLK => I_CLK, I_LD => LD3, I_N => BUS_6, O_ZR => ZR3, O_UT => ROUT3);

  PC: Entity work.PC(Behavioral)
    port map(I_CLK => I_CLK, I_LD => LDPC, I_INC => INC, I_RST => RST, I_N => BUS_6, O_UT => ADDRESS);

  IR: Entity work.IR(Behavioral)
    port map(I_CLK => I_CLK, I_LD => LDIR, I_N => BUS_6, O_UT => ROUTIR);

  Memory: Entity work.MEM(Behavioral)
    port map(I_ADDRESS => ADDRESS, O_DATA => MData);

  MUX2: Entity work.MUX2(Behavioral)
    port map(I_MDATA => MData, I_ALURES => ALURes, I_SELECT => BUS_SEL, O_BUS => BUS_6);
  
  MUX40: Entity work.MUX4(Behavioral)
    port map(I_ROUT0 => ROUT0, I_ROUT1 => ROUT1, I_ROUT2 => ROUT2, I_ROUT3 => ROUT3, I_S0 => S00, I_S1 => S01, O_UT => ALUIN0);
  
  MUX41: Entity work.MUX4(Behavioral)
    port map(I_ROUT0 => ROUT0, I_ROUT1 => ROUT1, I_ROUT2 => ROUT2, I_ROUT3 => ROUT3, I_S0 => S10, I_S1 => S11, O_UT => ALUIN1);
  
  ALU: Entity work.ALU(Behavioral)
    port map(I_CMD => CMD, I_N1 => ALUIN0, I_N2 =< ALUIN1, O_RES => ALURes);

  CTL: Entity work.CTL(Behavioral)
    port map(I_CLK => I_CLK, I_RES => I_RST, I_ZR0 => ZR0, I_ZR1 => ZR1, I_ZR2 => ZR2, I_ZR3 => ZR3, I_ROUTIR => ROUTIR, O_LD0 => LD0, O_LD1 => LD1, O_LD2 => LD2, O_LD3 => LD3, O_S00 => S00, O_S01 => S01, O_S10 => S10, O_S11 => S11, O_LDPC => LDPC, O_LDIR => LDIR, O_BUS_SEL => BUS_SEL, O_CMD => CMD, O_INC => INC, O_RST => RST);

end architecture;