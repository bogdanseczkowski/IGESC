<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_5(7:0)" />
        <signal name="XLXN_8" />
        <signal name="SPWM" />
        <signal name="XLXN_174" />
        <signal name="XLXN_181(7:0)" />
        <signal name="CLKIN" />
        <signal name="XLXN_50" />
        <signal name="XLXN_178(7:0)" />
        <signal name="XLXN_179(7:0)" />
        <signal name="XLXN_201(7:0)" />
        <signal name="XLXN_204" />
        <signal name="XLXN_206" />
        <signal name="XLXN_207(7:0)" />
        <signal name="XLXN_208(7:0)" />
        <signal name="DIRA" />
        <port polarity="Output" name="SPWM" />
        <port polarity="Input" name="CLKIN" />
        <port polarity="Output" name="DIRA" />
        <blockdef name="IP">
            <timestamp>2019-4-13T14:49:19</timestamp>
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
            <rect width="512" x="32" y="32" height="312" />
        </blockdef>
        <blockdef name="PWM">
            <timestamp>2019-4-24T20:12:3</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="CLK">
            <timestamp>2019-4-13T13:32:43</timestamp>
            <rect width="336" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-208" y2="-208" x1="400" />
            <line x2="464" y1="-128" y2="-128" x1="400" />
            <line x2="464" y1="-48" y2="-48" x1="400" />
        </blockdef>
        <blockdef name="DIV">
            <timestamp>2019-4-24T13:42:20</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="ADDR">
            <timestamp>2019-4-24T13:45:54</timestamp>
            <rect width="64" x="368" y="20" height="24" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="304" x="64" y="-192" height="256" />
            <line x2="368" y1="-160" y2="-160" x1="432" />
        </blockdef>
        <blockdef name="AMP">
            <timestamp>2019-4-24T21:11:3</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="IP" name="XLXI_1">
            <blockpin signalname="XLXN_201(7:0)" name="addra(7:0)" />
            <blockpin signalname="XLXN_204" name="clka" />
            <blockpin signalname="XLXN_207(7:0)" name="douta(7:0)" />
        </block>
        <block symbolname="constant" name="XLXI_4">
            <attr value="80" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_5(7:0)" name="O" />
        </block>
        <block symbolname="PWM" name="XLXI_3">
            <blockpin signalname="XLXN_204" name="CLK" />
            <blockpin signalname="XLXN_8" name="RUN" />
            <blockpin signalname="XLXN_5(7:0)" name="PERIOD(7:0)" />
            <blockpin signalname="XLXN_208(7:0)" name="DUTY(7:0)" />
            <blockpin signalname="SPWM" name="PWM" />
            <blockpin signalname="XLXN_206" name="INT" />
        </block>
        <block symbolname="constant" name="XLXI_7">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="DIV" name="XLXI_118">
            <blockpin signalname="XLXN_174" name="CLK" />
            <blockpin signalname="XLXN_181(7:0)" name="PERIOD(7:0)" />
            <blockpin signalname="XLXN_204" name="GEN" />
        </block>
        <block symbolname="constant" name="XLXI_122">
            <attr value="FF" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_181(7:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_30">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="CLK" name="XLXI_29">
            <blockpin name="RST_IN" />
            <blockpin signalname="CLKIN" name="CLKIN_IN" />
            <blockpin signalname="XLXN_50" name="CE_IN" />
            <blockpin name="PRE_IN" />
            <blockpin name="CLR_IN" />
            <blockpin name="DDR_CLK2X_OUT" />
            <blockpin name="CLKIN_IBUFG_OUT" />
            <blockpin signalname="XLXN_174" name="CLK2X_OUT" />
            <blockpin name="CLK2X180_OUT" />
        </block>
        <block symbolname="ADDR" name="XLXI_119">
            <blockpin signalname="XLXN_178(7:0)" name="PERIOD(7:0)" />
            <blockpin signalname="XLXN_179(7:0)" name="ADDR_GAP(7:0)" />
            <blockpin signalname="XLXN_201(7:0)" name="OADDR(7:0)" />
            <blockpin signalname="XLXN_206" name="CLK" />
        </block>
        <block symbolname="constant" name="XLXI_120">
            <attr value="04" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_179(7:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_121">
            <attr value="FF" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_178(7:0)" name="O" />
        </block>
        <block symbolname="AMP" name="XLXI_123">
            <blockpin signalname="XLXN_207(7:0)" name="IDUTY(7:0)" />
            <blockpin signalname="DIRA" name="DIR" />
            <blockpin signalname="XLXN_208(7:0)" name="ODUTY(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_5(7:0)">
            <wire x2="2880" y1="704" y2="704" x1="2816" />
        </branch>
        <instance x="2672" y="672" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2880" y="800" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_8">
            <wire x2="2880" y1="640" y2="640" x1="2672" />
        </branch>
        <branch name="SPWM">
            <wire x2="3296" y1="576" y2="576" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="3296" y="576" name="SPWM" orien="R0" />
        <instance x="2528" y="608" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1184" y="1040" name="XLXI_118" orien="R0">
        </instance>
        <branch name="XLXN_174">
            <wire x2="848" y1="944" y2="944" x1="832" />
            <wire x2="1168" y1="944" y2="944" x1="848" />
            <wire x2="1184" y1="944" y2="944" x1="1168" />
        </branch>
        <instance x="1008" y="976" name="XLXI_122" orien="R0">
        </instance>
        <branch name="XLXN_181(7:0)">
            <wire x2="1184" y1="1008" y2="1008" x1="1152" />
        </branch>
        <branch name="CLKIN">
            <wire x2="352" y1="848" y2="848" x1="176" />
            <wire x2="368" y1="848" y2="848" x1="352" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="368" y1="912" y2="912" x1="336" />
        </branch>
        <instance x="192" y="880" name="XLXI_30" orien="R0">
        </instance>
        <instance x="368" y="1072" name="XLXI_29" orien="R0">
        </instance>
        <iomarker fontsize="28" x="176" y="848" name="CLKIN" orien="R180" />
        <instance x="1536" y="448" name="XLXI_119" orien="R0">
        </instance>
        <instance x="1376" y="384" name="XLXI_120" orien="R0">
        </instance>
        <instance x="1232" y="320" name="XLXI_121" orien="R0">
        </instance>
        <branch name="XLXN_178(7:0)">
            <wire x2="1392" y1="352" y2="352" x1="1376" />
            <wire x2="1536" y1="352" y2="352" x1="1392" />
        </branch>
        <branch name="XLXN_179(7:0)">
            <wire x2="1536" y1="416" y2="416" x1="1520" />
        </branch>
        <branch name="XLXN_201(7:0)">
            <wire x2="1984" y1="560" y2="560" x1="1904" />
            <wire x2="1904" y1="560" y2="752" x1="1904" />
            <wire x2="1984" y1="752" y2="752" x1="1904" />
            <wire x2="1984" y1="480" y2="480" x1="1968" />
            <wire x2="1984" y1="480" y2="560" x1="1984" />
        </branch>
        <branch name="XLXN_204">
            <wire x2="1648" y1="944" y2="944" x1="1568" />
            <wire x2="1984" y1="944" y2="944" x1="1648" />
            <wire x2="1648" y1="576" y2="944" x1="1648" />
            <wire x2="2880" y1="576" y2="576" x1="1648" />
        </branch>
        <branch name="XLXN_206">
            <wire x2="3280" y1="288" y2="288" x1="1968" />
            <wire x2="3280" y1="288" y2="768" x1="3280" />
            <wire x2="3280" y1="768" y2="768" x1="3264" />
        </branch>
        <instance x="1984" y="672" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2496" y="1360" name="XLXI_123" orien="R0">
        </instance>
        <branch name="XLXN_207(7:0)">
            <wire x2="2432" y1="1168" y2="1264" x1="2432" />
            <wire x2="2496" y1="1264" y2="1264" x1="2432" />
            <wire x2="2640" y1="1168" y2="1168" x1="2432" />
            <wire x2="2640" y1="752" y2="752" x1="2560" />
            <wire x2="2640" y1="752" y2="1168" x1="2640" />
        </branch>
        <branch name="XLXN_208(7:0)">
            <wire x2="2880" y1="768" y2="768" x1="2816" />
            <wire x2="2816" y1="768" y2="864" x1="2816" />
            <wire x2="2944" y1="864" y2="864" x1="2816" />
            <wire x2="2944" y1="864" y2="1328" x1="2944" />
            <wire x2="2944" y1="1328" y2="1328" x1="2880" />
        </branch>
        <branch name="DIRA">
            <wire x2="2912" y1="1264" y2="1264" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="2912" y="1264" name="DIRA" orien="R0" />
    </sheet>
</drawing>