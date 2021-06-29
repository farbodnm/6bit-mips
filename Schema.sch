<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="BUS_Sel" />
        <signal name="DBUS(5:0)" />
        <signal name="LDPC" />
        <signal name="LDIR" />
        <signal name="LD0" />
        <signal name="LD1" />
        <signal name="LD2" />
        <signal name="LD3" />
        <signal name="MEM_ADDRESS(5:0)" />
        <signal name="MData(5:0)" />
        <signal name="ALURes(5:0)" />
        <signal name="INC" />
        <signal name="RST" />
        <signal name="ROUT0(5:0)" />
        <signal name="ROUT1(5:0)" />
        <signal name="ROUT3(5:0)" />
        <signal name="ROUT2(5:0)" />
        <signal name="S00" />
        <signal name="S01" />
        <signal name="S10" />
        <signal name="S11" />
        <signal name="Mux40out(5:0)" />
        <signal name="Mux41out(5:0)" />
        <signal name="CMD" />
        <signal name="ROUTIR(5:0)" />
        <signal name="ZR0" />
        <signal name="ZR1" />
        <signal name="ZR2" />
        <signal name="ZR3" />
        <signal name="CLK" />
        <signal name="RES" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RES" />
        <blockdef name="ALU">
            <timestamp>2021-6-29T10:28:10</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="REG">
            <timestamp>2021-6-29T10:28:40</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PC">
            <timestamp>2021-6-29T10:28:36</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="IR">
            <timestamp>2021-6-29T10:28:19</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="MUX2">
            <timestamp>2021-6-29T10:28:28</timestamp>
            <rect width="304" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
        </blockdef>
        <blockdef name="CTL">
            <timestamp>2021-6-29T10:28:14</timestamp>
            <rect width="304" x="64" y="-896" height="896" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-864" y2="-864" x1="368" />
            <line x2="432" y1="-800" y2="-800" x1="368" />
            <line x2="432" y1="-736" y2="-736" x1="368" />
            <line x2="432" y1="-672" y2="-672" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="MUX4">
            <timestamp>2021-6-29T10:28:32</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
        </blockdef>
        <blockdef name="MEM">
            <timestamp>2021-6-29T10:28:23</timestamp>
            <rect width="336" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <block symbolname="MUX2" name="Multiplexer2">
            <blockpin signalname="BUS_Sel" name="I_SELECT" />
            <blockpin signalname="MData(5:0)" name="I_MDATA(5:0)" />
            <blockpin signalname="ALURes(5:0)" name="I_ALURES(5:0)" />
            <blockpin signalname="DBUS(5:0)" name="O_BUS(5:0)" />
        </block>
        <block symbolname="CTL" name="Control">
            <blockpin signalname="CLK" name="I_CLK" />
            <blockpin signalname="RES" name="I_RES" />
            <blockpin signalname="ZR0" name="I_ZR0" />
            <blockpin signalname="ZR1" name="I_ZR1" />
            <blockpin signalname="ZR2" name="I_ZR2" />
            <blockpin signalname="ZR3" name="I_ZR3" />
            <blockpin signalname="ROUTIR(5:0)" name="I_ROUTIR(5:0)" />
            <blockpin signalname="LD0" name="O_LD0" />
            <blockpin signalname="LD1" name="O_LD1" />
            <blockpin signalname="LD2" name="O_LD2" />
            <blockpin signalname="LD3" name="O_LD3" />
            <blockpin signalname="S00" name="O_S00" />
            <blockpin signalname="S01" name="O_S01" />
            <blockpin signalname="S10" name="O_S10" />
            <blockpin signalname="S11" name="O_S11" />
            <blockpin signalname="LDPC" name="O_LDPC" />
            <blockpin signalname="LDIR" name="O_LDIR" />
            <blockpin signalname="BUS_Sel" name="O_BUS_SEL" />
            <blockpin signalname="CMD" name="O_CMD" />
            <blockpin signalname="INC" name="O_INC" />
            <blockpin signalname="RST" name="O_RST" />
        </block>
        <block symbolname="PC" name="ProgramCounter">
            <blockpin signalname="CLK" name="I_CLK" />
            <blockpin signalname="LDPC" name="I_LD" />
            <blockpin signalname="INC" name="I_INC" />
            <blockpin signalname="RST" name="I_RST" />
            <blockpin signalname="DBUS(5:0)" name="I_N(5:0)" />
            <blockpin signalname="MEM_ADDRESS(5:0)" name="O_UT(5:0)" />
        </block>
        <block symbolname="IR" name="InstructionsRegister">
            <blockpin signalname="CLK" name="I_CLK" />
            <blockpin signalname="LDIR" name="I_LD" />
            <blockpin signalname="DBUS(5:0)" name="I_N(5:0)" />
            <blockpin signalname="ROUTIR(5:0)" name="O_UT(5:0)" />
        </block>
        <block symbolname="REG" name="R2">
            <blockpin signalname="CLK" name="I_CLK" />
            <blockpin signalname="LD2" name="I_LD" />
            <blockpin signalname="DBUS(5:0)" name="I_N(5:0)" />
            <blockpin signalname="ZR2" name="O_ZR" />
            <blockpin signalname="ROUT2(5:0)" name="O_UT(5:0)" />
        </block>
        <block symbolname="REG" name="R3">
            <blockpin signalname="CLK" name="I_CLK" />
            <blockpin signalname="LD3" name="I_LD" />
            <blockpin signalname="DBUS(5:0)" name="I_N(5:0)" />
            <blockpin signalname="ZR3" name="O_ZR" />
            <blockpin signalname="ROUT3(5:0)" name="O_UT(5:0)" />
        </block>
        <block symbolname="REG" name="R1">
            <blockpin signalname="CLK" name="I_CLK" />
            <blockpin signalname="LD1" name="I_LD" />
            <blockpin signalname="DBUS(5:0)" name="I_N(5:0)" />
            <blockpin signalname="ZR1" name="O_ZR" />
            <blockpin signalname="ROUT1(5:0)" name="O_UT(5:0)" />
        </block>
        <block symbolname="REG" name="R0">
            <blockpin signalname="CLK" name="I_CLK" />
            <blockpin signalname="LD0" name="I_LD" />
            <blockpin signalname="DBUS(5:0)" name="I_N(5:0)" />
            <blockpin signalname="ZR0" name="O_ZR" />
            <blockpin signalname="ROUT0(5:0)" name="O_UT(5:0)" />
        </block>
        <block symbolname="MUX4" name="Mux40">
            <blockpin signalname="S00" name="I_S0" />
            <blockpin signalname="S01" name="I_S1" />
            <blockpin signalname="ROUT0(5:0)" name="I_ROUT0(5:0)" />
            <blockpin signalname="ROUT1(5:0)" name="I_ROUT1(5:0)" />
            <blockpin signalname="ROUT2(5:0)" name="I_ROUT2(5:0)" />
            <blockpin signalname="ROUT3(5:0)" name="I_ROUT3(5:0)" />
            <blockpin signalname="Mux40out(5:0)" name="O_UT(5:0)" />
        </block>
        <block symbolname="MUX4" name="Mux41">
            <blockpin signalname="S10" name="I_S0" />
            <blockpin signalname="S11" name="I_S1" />
            <blockpin signalname="ROUT0(5:0)" name="I_ROUT0(5:0)" />
            <blockpin signalname="ROUT1(5:0)" name="I_ROUT1(5:0)" />
            <blockpin signalname="ROUT2(5:0)" name="I_ROUT2(5:0)" />
            <blockpin signalname="ROUT3(5:0)" name="I_ROUT3(5:0)" />
            <blockpin signalname="Mux41out(5:0)" name="O_UT(5:0)" />
        </block>
        <block symbolname="ALU" name="ArithmeticLogicUnit">
            <blockpin signalname="CMD" name="I_CMD" />
            <blockpin signalname="Mux40out(5:0)" name="I_N1(5:0)" />
            <blockpin signalname="Mux41out(5:0)" name="I_N2(5:0)" />
            <blockpin signalname="ALURes(5:0)" name="O_RES(5:0)" />
        </block>
        <block symbolname="MEM" name="Memory">
            <blockpin signalname="MEM_ADDRESS(5:0)" name="I_ADDRESS(5:0)" />
            <blockpin signalname="MData(5:0)" name="O_DATA(5:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1760" y="1632" name="ProgramCounter" orien="R0">
        </instance>
        <instance x="1760" y="912" name="R2" orien="R0">
        </instance>
        <instance x="1760" y="1200" name="R3" orien="R0">
        </instance>
        <instance x="1760" y="624" name="R1" orien="R0">
        </instance>
        <instance x="1760" y="336" name="R0" orien="R0">
        </instance>
        <instance x="2384" y="1376" name="Memory" orien="R0">
        </instance>
        <instance x="192" y="1024" name="Control" orien="R0">
        </instance>
        <instance x="1136" y="960" name="Multiplexer2" orien="R0">
        </instance>
        <branch name="BUS_Sel">
            <wire x2="1136" y1="800" y2="800" x1="624" />
        </branch>
        <branch name="LDPC">
            <wire x2="1680" y1="672" y2="672" x1="624" />
            <wire x2="1680" y1="672" y2="1408" x1="1680" />
            <wire x2="1760" y1="1408" y2="1408" x1="1680" />
        </branch>
        <branch name="LD1">
            <wire x2="1728" y1="224" y2="224" x1="624" />
            <wire x2="1728" y1="224" y2="528" x1="1728" />
            <wire x2="1760" y1="528" y2="528" x1="1728" />
        </branch>
        <branch name="LD2">
            <wire x2="1712" y1="288" y2="288" x1="624" />
            <wire x2="1712" y1="288" y2="816" x1="1712" />
            <wire x2="1760" y1="816" y2="816" x1="1712" />
        </branch>
        <branch name="LD3">
            <wire x2="1696" y1="352" y2="352" x1="624" />
            <wire x2="1696" y1="352" y2="1104" x1="1696" />
            <wire x2="1760" y1="1104" y2="1104" x1="1696" />
        </branch>
        <branch name="DBUS(5:0)">
            <wire x2="1600" y1="800" y2="800" x1="1568" />
            <wire x2="1600" y1="800" y2="880" x1="1600" />
            <wire x2="1760" y1="880" y2="880" x1="1600" />
            <wire x2="1600" y1="880" y2="1168" x1="1600" />
            <wire x2="1760" y1="1168" y2="1168" x1="1600" />
            <wire x2="1600" y1="1168" y2="1600" x1="1600" />
            <wire x2="1760" y1="1600" y2="1600" x1="1600" />
            <wire x2="1600" y1="1600" y2="1888" x1="1600" />
            <wire x2="1760" y1="1888" y2="1888" x1="1600" />
            <wire x2="1760" y1="304" y2="304" x1="1600" />
            <wire x2="1600" y1="304" y2="592" x1="1600" />
            <wire x2="1600" y1="592" y2="800" x1="1600" />
            <wire x2="1760" y1="592" y2="592" x1="1600" />
        </branch>
        <branch name="LDIR">
            <wire x2="1664" y1="736" y2="736" x1="624" />
            <wire x2="1664" y1="736" y2="1824" x1="1664" />
            <wire x2="1760" y1="1824" y2="1824" x1="1664" />
        </branch>
        <instance x="1760" y="1920" name="InstructionsRegister" orien="R0">
        </instance>
        <branch name="MEM_ADDRESS(5:0)">
            <wire x2="2384" y1="1344" y2="1344" x1="2144" />
        </branch>
        <branch name="MData(5:0)">
            <wire x2="1104" y1="864" y2="1952" x1="1104" />
            <wire x2="2896" y1="1952" y2="1952" x1="1104" />
            <wire x2="1136" y1="864" y2="864" x1="1104" />
            <wire x2="2896" y1="1344" y2="1344" x1="2848" />
            <wire x2="2896" y1="1344" y2="1952" x1="2896" />
        </branch>
        <branch name="ALURes(5:0)">
            <wire x2="1136" y1="928" y2="928" x1="1088" />
            <wire x2="1088" y1="928" y2="1968" x1="1088" />
            <wire x2="3424" y1="1968" y2="1968" x1="1088" />
            <wire x2="3424" y1="176" y2="176" x1="3360" />
            <wire x2="3424" y1="176" y2="1968" x1="3424" />
        </branch>
        <instance x="2416" y="528" name="Mux40" orien="R0">
        </instance>
        <instance x="2416" y="1024" name="Mux41" orien="R0">
        </instance>
        <instance x="2976" y="336" name="ArithmeticLogicUnit" orien="R0">
        </instance>
        <branch name="INC">
            <wire x2="1072" y1="928" y2="928" x1="624" />
            <wire x2="1072" y1="928" y2="1472" x1="1072" />
            <wire x2="1760" y1="1472" y2="1472" x1="1072" />
        </branch>
        <branch name="RST">
            <wire x2="1056" y1="992" y2="992" x1="624" />
            <wire x2="1056" y1="992" y2="1536" x1="1056" />
            <wire x2="1760" y1="1536" y2="1536" x1="1056" />
        </branch>
        <branch name="ROUT1(5:0)">
            <wire x2="2384" y1="592" y2="592" x1="2144" />
            <wire x2="2384" y1="592" y2="864" x1="2384" />
            <wire x2="2416" y1="864" y2="864" x1="2384" />
            <wire x2="2384" y1="368" y2="592" x1="2384" />
            <wire x2="2416" y1="368" y2="368" x1="2384" />
        </branch>
        <branch name="ROUT3(5:0)">
            <wire x2="2352" y1="1168" y2="1168" x1="2144" />
            <wire x2="2352" y1="496" y2="992" x1="2352" />
            <wire x2="2352" y1="992" y2="1168" x1="2352" />
            <wire x2="2416" y1="992" y2="992" x1="2352" />
            <wire x2="2416" y1="496" y2="496" x1="2352" />
        </branch>
        <branch name="ROUT2(5:0)">
            <wire x2="2368" y1="880" y2="880" x1="2144" />
            <wire x2="2368" y1="880" y2="928" x1="2368" />
            <wire x2="2416" y1="928" y2="928" x1="2368" />
            <wire x2="2368" y1="432" y2="880" x1="2368" />
            <wire x2="2416" y1="432" y2="432" x1="2368" />
        </branch>
        <branch name="S00">
            <wire x2="1680" y1="416" y2="416" x1="624" />
            <wire x2="1680" y1="96" y2="416" x1="1680" />
            <wire x2="2400" y1="96" y2="96" x1="1680" />
            <wire x2="2400" y1="96" y2="176" x1="2400" />
            <wire x2="2416" y1="176" y2="176" x1="2400" />
        </branch>
        <branch name="S01">
            <wire x2="1664" y1="480" y2="480" x1="624" />
            <wire x2="1664" y1="80" y2="480" x1="1664" />
            <wire x2="2384" y1="80" y2="80" x1="1664" />
            <wire x2="2384" y1="80" y2="240" x1="2384" />
            <wire x2="2400" y1="240" y2="240" x1="2384" />
            <wire x2="2416" y1="240" y2="240" x1="2400" />
        </branch>
        <branch name="S10">
            <wire x2="1648" y1="544" y2="544" x1="624" />
            <wire x2="1648" y1="64" y2="544" x1="1648" />
            <wire x2="2336" y1="64" y2="64" x1="1648" />
            <wire x2="2336" y1="64" y2="672" x1="2336" />
            <wire x2="2400" y1="672" y2="672" x1="2336" />
            <wire x2="2416" y1="672" y2="672" x1="2400" />
        </branch>
        <branch name="S11">
            <wire x2="1632" y1="608" y2="608" x1="624" />
            <wire x2="1632" y1="48" y2="608" x1="1632" />
            <wire x2="2320" y1="48" y2="48" x1="1632" />
            <wire x2="2320" y1="48" y2="176" x1="2320" />
            <wire x2="2320" y1="176" y2="736" x1="2320" />
            <wire x2="2400" y1="736" y2="736" x1="2320" />
            <wire x2="2416" y1="736" y2="736" x1="2400" />
        </branch>
        <branch name="Mux40out(5:0)">
            <wire x2="2944" y1="176" y2="176" x1="2800" />
            <wire x2="2944" y1="176" y2="240" x1="2944" />
            <wire x2="2976" y1="240" y2="240" x1="2944" />
        </branch>
        <branch name="Mux41out(5:0)">
            <wire x2="2944" y1="672" y2="672" x1="2800" />
            <wire x2="2944" y1="304" y2="672" x1="2944" />
            <wire x2="2976" y1="304" y2="304" x1="2944" />
        </branch>
        <branch name="CMD">
            <wire x2="1088" y1="864" y2="864" x1="624" />
            <wire x2="1088" y1="32" y2="864" x1="1088" />
            <wire x2="2960" y1="32" y2="32" x1="1088" />
            <wire x2="2960" y1="32" y2="176" x1="2960" />
            <wire x2="2976" y1="176" y2="176" x1="2960" />
        </branch>
        <branch name="ROUTIR(5:0)">
            <wire x2="160" y1="928" y2="1984" x1="160" />
            <wire x2="2176" y1="1984" y2="1984" x1="160" />
            <wire x2="192" y1="928" y2="928" x1="160" />
            <wire x2="2160" y1="1760" y2="1760" x1="2144" />
            <wire x2="2176" y1="1760" y2="1760" x1="2160" />
            <wire x2="2176" y1="1760" y2="1984" x1="2176" />
        </branch>
        <branch name="ZR0">
            <wire x2="144" y1="416" y2="2000" x1="144" />
            <wire x2="2304" y1="2000" y2="2000" x1="144" />
            <wire x2="192" y1="416" y2="416" x1="144" />
            <wire x2="2160" y1="176" y2="176" x1="2144" />
            <wire x2="2304" y1="176" y2="176" x1="2160" />
            <wire x2="2304" y1="176" y2="2000" x1="2304" />
        </branch>
        <branch name="ZR1">
            <wire x2="128" y1="544" y2="2016" x1="128" />
            <wire x2="2288" y1="2016" y2="2016" x1="128" />
            <wire x2="192" y1="544" y2="544" x1="128" />
            <wire x2="2160" y1="464" y2="464" x1="2144" />
            <wire x2="2288" y1="464" y2="464" x1="2160" />
            <wire x2="2288" y1="464" y2="752" x1="2288" />
            <wire x2="2288" y1="752" y2="2016" x1="2288" />
        </branch>
        <branch name="ZR2">
            <wire x2="112" y1="672" y2="2032" x1="112" />
            <wire x2="2272" y1="2032" y2="2032" x1="112" />
            <wire x2="192" y1="672" y2="672" x1="112" />
            <wire x2="2160" y1="752" y2="752" x1="2144" />
            <wire x2="2272" y1="752" y2="752" x1="2160" />
            <wire x2="2272" y1="752" y2="2032" x1="2272" />
        </branch>
        <branch name="ZR3">
            <wire x2="96" y1="800" y2="2048" x1="96" />
            <wire x2="2256" y1="2048" y2="2048" x1="96" />
            <wire x2="192" y1="800" y2="800" x1="96" />
            <wire x2="2160" y1="1040" y2="1040" x1="2144" />
            <wire x2="2256" y1="1040" y2="1040" x1="2160" />
            <wire x2="2256" y1="1040" y2="2048" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="672" y="1040" name="CLK" orien="R180" />
        <branch name="CLK">
            <wire x2="80" y1="160" y2="1760" x1="80" />
            <wire x2="960" y1="1760" y2="1760" x1="80" />
            <wire x2="1760" y1="1760" y2="1760" x1="960" />
            <wire x2="192" y1="160" y2="160" x1="80" />
            <wire x2="960" y1="1040" y2="1040" x1="672" />
            <wire x2="1744" y1="1040" y2="1040" x1="960" />
            <wire x2="1760" y1="1040" y2="1040" x1="1744" />
            <wire x2="960" y1="1040" y2="1344" x1="960" />
            <wire x2="960" y1="1344" y2="1760" x1="960" />
            <wire x2="1760" y1="1344" y2="1344" x1="960" />
            <wire x2="1760" y1="176" y2="176" x1="960" />
            <wire x2="960" y1="176" y2="464" x1="960" />
            <wire x2="1760" y1="464" y2="464" x1="960" />
            <wire x2="960" y1="464" y2="752" x1="960" />
            <wire x2="960" y1="752" y2="1040" x1="960" />
            <wire x2="1760" y1="752" y2="752" x1="960" />
        </branch>
        <branch name="LD0">
            <wire x2="960" y1="160" y2="160" x1="624" />
            <wire x2="1744" y1="160" y2="160" x1="960" />
            <wire x2="1744" y1="160" y2="240" x1="1744" />
            <wire x2="1760" y1="240" y2="240" x1="1744" />
        </branch>
        <branch name="RES">
            <wire x2="192" y1="288" y2="288" x1="176" />
        </branch>
        <iomarker fontsize="28" x="176" y="288" name="RES" orien="R180" />
        <branch name="ROUT0(5:0)">
            <wire x2="2400" y1="304" y2="304" x1="2144" />
            <wire x2="2416" y1="304" y2="304" x1="2400" />
            <wire x2="2400" y1="304" y2="800" x1="2400" />
            <wire x2="2416" y1="800" y2="800" x1="2400" />
        </branch>
    </sheet>
</drawing>