library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CPU is
   port ( CLK : in    std_logic; 
          RES : in    std_logic);
end CPU;

architecture BEHAVIORAL of CPU is
   signal ALURes      : std_logic_vector (5 downto 0);
   signal BUS_Sel     : std_logic;
   signal CMD         : std_logic;
   signal DBUS        : std_logic_vector (5 downto 0);
   signal INC         : std_logic;
   signal LDIR        : std_logic;
   signal LDPC        : std_logic;
   signal LD0         : std_logic;
   signal LD1         : std_logic;
   signal LD2         : std_logic;
   signal LD3         : std_logic;
   signal MData       : std_logic_vector (5 downto 0);
   signal MEM_ADDRESS : std_logic_vector (5 downto 0);
   signal Mux40out    : std_logic_vector (5 downto 0);
   signal Mux41out    : std_logic_vector (5 downto 0);
   signal ROUTIR      : std_logic_vector (5 downto 0);
   signal ROUT0       : std_logic_vector (5 downto 0);
   signal ROUT1       : std_logic_vector (5 downto 0);
   signal ROUT2       : std_logic_vector (5 downto 0);
   signal ROUT3       : std_logic_vector (5 downto 0);
   signal RST         : std_logic;
   signal S00         : std_logic;
   signal S01         : std_logic;
   signal S10         : std_logic;
   signal S11         : std_logic;
   signal ZR0         : std_logic;
   signal ZR1         : std_logic;
   signal ZR2         : std_logic;
   signal ZR3         : std_logic;
   component ALU
      port ( I_CMD : in    std_logic; 
             I_N1  : in    std_logic_vector (5 downto 0); 
             I_N2  : in    std_logic_vector (5 downto 0); 
             O_RES : out   std_logic_vector (5 downto 0));
   end component;
   
   component CTL
      port ( I_CLK     : in    std_logic; 
             I_RES     : in    std_logic; 
             I_ZR0     : in    std_logic; 
             I_ZR1     : in    std_logic; 
             I_ZR2     : in    std_logic; 
             I_ZR3     : in    std_logic; 
             I_ROUTIR  : in    std_logic_vector (5 downto 0); 
             O_LD0     : out   std_logic; 
             O_LD1     : out   std_logic; 
             O_LD2     : out   std_logic; 
             O_LD3     : out   std_logic; 
             O_S00     : out   std_logic; 
             O_S01     : out   std_logic; 
             O_S10     : out   std_logic; 
             O_S11     : out   std_logic; 
             O_LDPC    : out   std_logic; 
             O_LDIR    : out   std_logic; 
             O_BUS_SEL : out   std_logic; 
             O_CMD     : out   std_logic; 
             O_INC     : out   std_logic; 
             O_RST     : out   std_logic);
   end component;
   
   component IR
      port ( I_CLK : in    std_logic; 
             I_LD  : in    std_logic; 
             I_N   : in    std_logic_vector (5 downto 0); 
             O_UT  : out   std_logic_vector (5 downto 0));
   end component;
   
   component MEM
      port ( I_ADDRESS : in    std_logic_vector (5 downto 0); 
             O_DATA    : out   std_logic_vector (5 downto 0));
   end component;
   
   component MUX2
      port ( I_SELECT : in    std_logic; 
             I_MDATA  : in    std_logic_vector (5 downto 0); 
             I_ALURES : in    std_logic_vector (5 downto 0); 
             O_BUS    : out   std_logic_vector (5 downto 0));
   end component;
   
   component MUX4
      port ( I_S0    : in    std_logic; 
             I_S1    : in    std_logic; 
             I_ROUT0 : in    std_logic_vector (5 downto 0); 
             I_ROUT1 : in    std_logic_vector (5 downto 0); 
             I_ROUT2 : in    std_logic_vector (5 downto 0); 
             I_ROUT3 : in    std_logic_vector (5 downto 0); 
             O_UT    : out   std_logic_vector (5 downto 0));
   end component;
   
   component PC
      port ( I_CLK : in    std_logic; 
             I_LD  : in    std_logic; 
             I_INC : in    std_logic; 
             I_RST : in    std_logic; 
             I_N   : in    std_logic_vector (5 downto 0); 
             O_UT  : out   std_logic_vector (5 downto 0));
   end component;
   
   component REG
      port ( I_CLK : in    std_logic; 
             I_LD  : in    std_logic; 
             I_N   : in    std_logic_vector (5 downto 0); 
             O_ZR  : out   std_logic; 
             O_UT  : out   std_logic_vector (5 downto 0));
   end component;
   
begin
   ArithmeticLogicUnit : ALU
      port map (I_CMD=>CMD,
                I_N1(5 downto 0)=>Mux40out(5 downto 0),
                I_N2(5 downto 0)=>Mux41out(5 downto 0),
                O_RES(5 downto 0)=>ALURes(5 downto 0));
   
   Control : CTL
      port map (I_CLK=>CLK,
                I_RES=>RES,
                I_ROUTIR(5 downto 0)=>ROUTIR(5 downto 0),
                I_ZR0=>ZR0,
                I_ZR1=>ZR1,
                I_ZR2=>ZR2,
                I_ZR3=>ZR3,
                O_BUS_SEL=>BUS_Sel,
                O_CMD=>CMD,
                O_INC=>INC,
                O_LDIR=>LDIR,
                O_LDPC=>LDPC,
                O_LD0=>LD0,
                O_LD1=>LD1,
                O_LD2=>LD2,
                O_LD3=>LD3,
                O_RST=>RST,
                O_S00=>S00,
                O_S01=>S01,
                O_S10=>S10,
                O_S11=>S11);
   
   InstructionsRegister : IR
      port map (I_CLK=>CLK,
                I_LD=>LDIR,
                I_N(5 downto 0)=>DBUS(5 downto 0),
                O_UT(5 downto 0)=>ROUTIR(5 downto 0));
   
   Memory : MEM
      port map (I_ADDRESS(5 downto 0)=>MEM_ADDRESS(5 downto 0),
                O_DATA(5 downto 0)=>MData(5 downto 0));
   
   Multiplexer2 : MUX2
      port map (I_ALURES(5 downto 0)=>ALURes(5 downto 0),
                I_MDATA(5 downto 0)=>MData(5 downto 0),
                I_SELECT=>BUS_Sel,
                O_BUS(5 downto 0)=>DBUS(5 downto 0));
   
   Mux40 : MUX4
      port map (I_ROUT0(5 downto 0)=>ROUT0(5 downto 0),
                I_ROUT1(5 downto 0)=>ROUT1(5 downto 0),
                I_ROUT2(5 downto 0)=>ROUT2(5 downto 0),
                I_ROUT3(5 downto 0)=>ROUT3(5 downto 0),
                I_S0=>S00,
                I_S1=>S01,
                O_UT(5 downto 0)=>Mux40out(5 downto 0));
   
   Mux41 : MUX4
      port map (I_ROUT0(5 downto 0)=>ROUT0(5 downto 0),
                I_ROUT1(5 downto 0)=>ROUT1(5 downto 0),
                I_ROUT2(5 downto 0)=>ROUT2(5 downto 0),
                I_ROUT3(5 downto 0)=>ROUT3(5 downto 0),
                I_S0=>S10,
                I_S1=>S11,
                O_UT(5 downto 0)=>Mux41out(5 downto 0));
   
   ProgramCounter : PC
      port map (I_CLK=>CLK,
                I_INC=>INC,
                I_LD=>LDPC,
                I_N(5 downto 0)=>DBUS(5 downto 0),
                I_RST=>RST,
                O_UT(5 downto 0)=>MEM_ADDRESS(5 downto 0));
   
   R0 : REG
      port map (I_CLK=>CLK,
                I_LD=>LD0,
                I_N(5 downto 0)=>DBUS(5 downto 0),
                O_UT(5 downto 0)=>ROUT0(5 downto 0),
                O_ZR=>ZR0);
   
   R1 : REG
      port map (I_CLK=>CLK,
                I_LD=>LD1,
                I_N(5 downto 0)=>DBUS(5 downto 0),
                O_UT(5 downto 0)=>ROUT1(5 downto 0),
                O_ZR=>ZR1);
   
   R2 : REG
      port map (I_CLK=>CLK,
                I_LD=>LD2,
                I_N(5 downto 0)=>DBUS(5 downto 0),
                O_UT(5 downto 0)=>ROUT2(5 downto 0),
                O_ZR=>ZR2);
   
   R3 : REG
      port map (I_CLK=>CLK,
                I_LD=>LD3,
                I_N(5 downto 0)=>DBUS(5 downto 0),
                O_UT(5 downto 0)=>ROUT3(5 downto 0),
                O_ZR=>ZR3);
   
end BEHAVIORAL;