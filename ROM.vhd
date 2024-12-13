-- VHDL netlist generated by SCUBA Diamond (64-bit) 3.12.1.454
-- Module  Version: 6.5
--C:\lscc\diamond\3.12\ispfpga\bin\nt64\scuba.exe -w -n ROM -lang vhdl -synth synplify -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -rdata_width 8 -data_width 8 -num_rows 4096 -cascade 11 -memfile c:/kevan/a3041/p3041/rom.mem -memformat hex 

-- Fri Dec 13 10:31:02 2024

library IEEE;
use IEEE.std_logic_1164.all;
-- synopsys translate_off
library MACHXO2;
use MACHXO2.components.all;
-- synopsys translate_on

entity ROM is
    port (
        WrAddress: in  std_logic_vector(11 downto 0); 
        RdAddress: in  std_logic_vector(11 downto 0); 
        Data: in  std_logic_vector(7 downto 0); 
        WE: in  std_logic; 
        RdClock: in  std_logic; 
        RdClockEn: in  std_logic; 
        Reset: in  std_logic; 
        WrClock: in  std_logic; 
        WrClockEn: in  std_logic; 
        Q: out  std_logic_vector(7 downto 0));
end ROM;

architecture Structure of ROM is

    -- internal signal declarations
    signal scuba_vhi: std_logic;
    signal scuba_vlo: std_logic;

    -- local component declarations
    component VHI
        port (Z: out  std_logic);
    end component;
    component VLO
        port (Z: out  std_logic);
    end component;
    component DP8KC
        generic (INIT_DATA : in String; INITVAL_1F : in String; 
                INITVAL_1E : in String; INITVAL_1D : in String; 
                INITVAL_1C : in String; INITVAL_1B : in String; 
                INITVAL_1A : in String; INITVAL_19 : in String; 
                INITVAL_18 : in String; INITVAL_17 : in String; 
                INITVAL_16 : in String; INITVAL_15 : in String; 
                INITVAL_14 : in String; INITVAL_13 : in String; 
                INITVAL_12 : in String; INITVAL_11 : in String; 
                INITVAL_10 : in String; INITVAL_0F : in String; 
                INITVAL_0E : in String; INITVAL_0D : in String; 
                INITVAL_0C : in String; INITVAL_0B : in String; 
                INITVAL_0A : in String; INITVAL_09 : in String; 
                INITVAL_08 : in String; INITVAL_07 : in String; 
                INITVAL_06 : in String; INITVAL_05 : in String; 
                INITVAL_04 : in String; INITVAL_03 : in String; 
                INITVAL_02 : in String; INITVAL_01 : in String; 
                INITVAL_00 : in String; ASYNC_RESET_RELEASE : in String; 
                RESETMODE : in String; GSR : in String; 
                WRITEMODE_B : in String; WRITEMODE_A : in String; 
                CSDECODE_B : in String; CSDECODE_A : in String; 
                REGMODE_B : in String; REGMODE_A : in String; 
                DATA_WIDTH_B : in Integer; DATA_WIDTH_A : in Integer);
        port (DIA8: in  std_logic; DIA7: in  std_logic; 
            DIA6: in  std_logic; DIA5: in  std_logic; 
            DIA4: in  std_logic; DIA3: in  std_logic; 
            DIA2: in  std_logic; DIA1: in  std_logic; 
            DIA0: in  std_logic; ADA12: in  std_logic; 
            ADA11: in  std_logic; ADA10: in  std_logic; 
            ADA9: in  std_logic; ADA8: in  std_logic; 
            ADA7: in  std_logic; ADA6: in  std_logic; 
            ADA5: in  std_logic; ADA4: in  std_logic; 
            ADA3: in  std_logic; ADA2: in  std_logic; 
            ADA1: in  std_logic; ADA0: in  std_logic; CEA: in  std_logic; 
            OCEA: in  std_logic; CLKA: in  std_logic; WEA: in  std_logic; 
            CSA2: in  std_logic; CSA1: in  std_logic; 
            CSA0: in  std_logic; RSTA: in  std_logic; 
            DIB8: in  std_logic; DIB7: in  std_logic; 
            DIB6: in  std_logic; DIB5: in  std_logic; 
            DIB4: in  std_logic; DIB3: in  std_logic; 
            DIB2: in  std_logic; DIB1: in  std_logic; 
            DIB0: in  std_logic; ADB12: in  std_logic; 
            ADB11: in  std_logic; ADB10: in  std_logic; 
            ADB9: in  std_logic; ADB8: in  std_logic; 
            ADB7: in  std_logic; ADB6: in  std_logic; 
            ADB5: in  std_logic; ADB4: in  std_logic; 
            ADB3: in  std_logic; ADB2: in  std_logic; 
            ADB1: in  std_logic; ADB0: in  std_logic; CEB: in  std_logic; 
            OCEB: in  std_logic; CLKB: in  std_logic; WEB: in  std_logic; 
            CSB2: in  std_logic; CSB1: in  std_logic; 
            CSB0: in  std_logic; RSTB: in  std_logic; 
            DOA8: out  std_logic; DOA7: out  std_logic; 
            DOA6: out  std_logic; DOA5: out  std_logic; 
            DOA4: out  std_logic; DOA3: out  std_logic; 
            DOA2: out  std_logic; DOA1: out  std_logic; 
            DOA0: out  std_logic; DOB8: out  std_logic; 
            DOB7: out  std_logic; DOB6: out  std_logic; 
            DOB5: out  std_logic; DOB4: out  std_logic; 
            DOB3: out  std_logic; DOB2: out  std_logic; 
            DOB1: out  std_logic; DOB0: out  std_logic);
    end component;
    attribute MEM_LPC_FILE : string; 
    attribute MEM_INIT_FILE : string; 
    attribute MEM_LPC_FILE of ROM_0_0_0_3 : label is "ROM.lpc";
    attribute MEM_INIT_FILE of ROM_0_0_0_3 : label is "rom.mem";
    attribute MEM_LPC_FILE of ROM_0_0_1_2 : label is "ROM.lpc";
    attribute MEM_INIT_FILE of ROM_0_0_1_2 : label is "rom.mem";
    attribute MEM_LPC_FILE of ROM_0_0_2_1 : label is "ROM.lpc";
    attribute MEM_INIT_FILE of ROM_0_0_2_1 : label is "rom.mem";
    attribute MEM_LPC_FILE of ROM_0_0_3_0 : label is "ROM.lpc";
    attribute MEM_INIT_FILE of ROM_0_0_3_0 : label is "rom.mem";
    attribute NGD_DRC_MASK : integer;
    attribute NGD_DRC_MASK of Structure : architecture is 1;

begin
    -- component instantiation statements
    scuba_vhi_inst: VHI
        port map (Z=>scuba_vhi);

    ROM_0_0_0_3: DP8KC
        generic map (INIT_DATA=> "STATIC", ASYNC_RESET_RELEASE=> "SYNC", 
        INITVAL_1F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1C=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1B=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1A=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_19=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_18=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_17=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_16=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_15=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_14=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_13=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_12=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_11=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_10=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000002", 
        INITVAL_0C=> "0x0A20210C021080A0A84100C21100510948409A080AC020A28605610078ED0C0C1100810807303861", 
        INITVAL_0B=> "0x0881C0C24602085030050224502C50020011080C1080C0F6110081B03045028141BE161B00D0C018", 
        INITVAL_0A=> "0x0820D14C03084990C0351187701043030400C2801AC31078211986108AB6006711B8210186108899", 
        INITVAL_09=> "0x0E20F02E261300D1E625100DA02418030C70E0C4020CB0C063026C30206000A5C08AC014C030B0C5", 
        INITVAL_08=> "0x1E005062480A2440024C0B8851885C00ACC0B8851885C00AC812C030B0C60E0C603041010860105C", 
        INITVAL_07=> "0x0306010A180364C0DA030DC0D0DC01102CC0E411020611009312051084EE00C79100B408CD01EE44", 
        INITVAL_06=> "0x0AA0310C20098D1036420DE5010E0E18AB808843020C6028B410844128EC0F044088EC0F0C400684", 
        INITVAL_05=> "0x0F0450761E0422009CF818A010600410ED1028E30280600045022871A6CC086CC0C0F30881008C50", 
        INITVAL_04=> "0x0D86118A01020001C810050501C8100504008821080100586000C310B81100A140C20E0A24408218", 
        INITVAL_03=> "0x002420202B0280B13001092411186F0086000A0808044022490828C0DE080A2040A01C022020E2C1", 
        INITVAL_02=> "0x0C201012C701258108311383110A1408284048441A0850C0C4010701B8401BA60000100386009239", 
        INITVAL_01=> "0x08AD0182450161812201102141885418841008EC0D8600806C08C08102C6010C30220C04207020C2", 
        INITVAL_00=> "0x03604086100088209C4E180460001112006000EC1B495028060044F0861801008014100602707065", 
        CSDECODE_B=> "0b000", CSDECODE_A=> "0b000", WRITEMODE_B=> "NORMAL", 
        WRITEMODE_A=> "NORMAL", GSR=> "ENABLED", RESETMODE=> "ASYNC", 
        REGMODE_B=> "NOREG", REGMODE_A=> "NOREG", DATA_WIDTH_B=>  2, 
        DATA_WIDTH_A=>  2)
        port map (DIA8=>scuba_vlo, DIA7=>scuba_vlo, DIA6=>scuba_vlo, 
            DIA5=>Data(1), DIA4=>scuba_vlo, DIA3=>scuba_vlo, 
            DIA2=>Data(0), DIA1=>scuba_vlo, DIA0=>scuba_vlo, 
            ADA12=>WrAddress(11), ADA11=>WrAddress(10), 
            ADA10=>WrAddress(9), ADA9=>WrAddress(8), ADA8=>WrAddress(7), 
            ADA7=>WrAddress(6), ADA6=>WrAddress(5), ADA5=>WrAddress(4), 
            ADA4=>WrAddress(3), ADA3=>WrAddress(2), ADA2=>WrAddress(1), 
            ADA1=>WrAddress(0), ADA0=>scuba_vlo, CEA=>WrClockEn, 
            OCEA=>WrClockEn, CLKA=>WrClock, WEA=>WE, CSA2=>scuba_vlo, 
            CSA1=>scuba_vlo, CSA0=>scuba_vlo, RSTA=>Reset, 
            DIB8=>scuba_vlo, DIB7=>scuba_vlo, DIB6=>scuba_vlo, 
            DIB5=>scuba_vlo, DIB4=>scuba_vlo, DIB3=>scuba_vlo, 
            DIB2=>scuba_vlo, DIB1=>scuba_vlo, DIB0=>scuba_vlo, 
            ADB12=>RdAddress(11), ADB11=>RdAddress(10), 
            ADB10=>RdAddress(9), ADB9=>RdAddress(8), ADB8=>RdAddress(7), 
            ADB7=>RdAddress(6), ADB6=>RdAddress(5), ADB5=>RdAddress(4), 
            ADB4=>RdAddress(3), ADB3=>RdAddress(2), ADB2=>RdAddress(1), 
            ADB1=>RdAddress(0), ADB0=>scuba_vlo, CEB=>RdClockEn, 
            OCEB=>RdClockEn, CLKB=>RdClock, WEB=>scuba_vlo, 
            CSB2=>scuba_vlo, CSB1=>scuba_vlo, CSB0=>scuba_vlo, 
            RSTB=>Reset, DOA8=>open, DOA7=>open, DOA6=>open, DOA5=>open, 
            DOA4=>open, DOA3=>open, DOA2=>open, DOA1=>open, DOA0=>open, 
            DOB8=>open, DOB7=>open, DOB6=>open, DOB5=>open, DOB4=>open, 
            DOB3=>open, DOB2=>open, DOB1=>Q(1), DOB0=>Q(0));

    ROM_0_0_1_2: DP8KC
        generic map (INIT_DATA=> "STATIC", ASYNC_RESET_RELEASE=> "SYNC", 
        INITVAL_1F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1C=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1B=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1A=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_19=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_18=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_17=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_16=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_15=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_14=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_13=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_12=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_11=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_10=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0D=> "0x0000000000000000000000000000000000000000000000000000000000000000000000000000000D", 
        INITVAL_0C=> "0x02A0D0001D0041907A45008A11027501C5808C1808C1D04286048080845000A0A1043508A700B265", 
        INITVAL_0B=> "0x12C550AA150A08603005002870082800000088400000801235028000AC550A0D2000A41286009410", 
        INITVAL_0A=> "0x0C20904A18010120A281042600B24002041092460088508265000410021503005102650004101A0A", 
        INITVAL_09=> "0x01020000B40A8600144508C04168540A41500A96020D00A2480B0160B0510AC421082500A1802414", 
        INITVAL_08=> "0x00A5402A050E2840420408444048420882008404040420082900A180241700A550AA610120503042", 
        INITVAL_07=> "0x1A00510C181A64309A1000040080440A020012310264002C54002750066502040018100280500201", 
        INITVAL_06=> "0x0E05800011010400A014060000885608242000400A04500850098440A06400440080640040002AC1", 
        INITVAL_05=> "0x0B814032001002100C501282509EFC12E320A8420A0941FEC20A097062C9082C9080611A85002E05", 
        INITVAL_04=> "0x0025A1282501EC1004501002100450100211282510A58104050A8051826512E180AA080420C08450", 
        INITVAL_03=> "0x0CA050A040018400025501815002400B24112815082C40420C02A01080550C20C084580CAC400086", 
        INITVAL_02=> "0x000C4040010381210805182550AE180C254062440A2440A25502A410002100005052541020514A40", 
        INITVAL_01=> "0x0280508AD4012000EA091AE501A80019A45000640025C082080822018811040C400010140C6020C7", 
        INITVAL_00=> "0x0281000E15020050A006080570204110207008640284500885062800801400C10182100041403814", 
        CSDECODE_B=> "0b000", CSDECODE_A=> "0b000", WRITEMODE_B=> "NORMAL", 
        WRITEMODE_A=> "NORMAL", GSR=> "ENABLED", RESETMODE=> "ASYNC", 
        REGMODE_B=> "NOREG", REGMODE_A=> "NOREG", DATA_WIDTH_B=>  2, 
        DATA_WIDTH_A=>  2)
        port map (DIA8=>scuba_vlo, DIA7=>scuba_vlo, DIA6=>scuba_vlo, 
            DIA5=>Data(3), DIA4=>scuba_vlo, DIA3=>scuba_vlo, 
            DIA2=>Data(2), DIA1=>scuba_vlo, DIA0=>scuba_vlo, 
            ADA12=>WrAddress(11), ADA11=>WrAddress(10), 
            ADA10=>WrAddress(9), ADA9=>WrAddress(8), ADA8=>WrAddress(7), 
            ADA7=>WrAddress(6), ADA6=>WrAddress(5), ADA5=>WrAddress(4), 
            ADA4=>WrAddress(3), ADA3=>WrAddress(2), ADA2=>WrAddress(1), 
            ADA1=>WrAddress(0), ADA0=>scuba_vlo, CEA=>WrClockEn, 
            OCEA=>WrClockEn, CLKA=>WrClock, WEA=>WE, CSA2=>scuba_vlo, 
            CSA1=>scuba_vlo, CSA0=>scuba_vlo, RSTA=>Reset, 
            DIB8=>scuba_vlo, DIB7=>scuba_vlo, DIB6=>scuba_vlo, 
            DIB5=>scuba_vlo, DIB4=>scuba_vlo, DIB3=>scuba_vlo, 
            DIB2=>scuba_vlo, DIB1=>scuba_vlo, DIB0=>scuba_vlo, 
            ADB12=>RdAddress(11), ADB11=>RdAddress(10), 
            ADB10=>RdAddress(9), ADB9=>RdAddress(8), ADB8=>RdAddress(7), 
            ADB7=>RdAddress(6), ADB6=>RdAddress(5), ADB5=>RdAddress(4), 
            ADB4=>RdAddress(3), ADB3=>RdAddress(2), ADB2=>RdAddress(1), 
            ADB1=>RdAddress(0), ADB0=>scuba_vlo, CEB=>RdClockEn, 
            OCEB=>RdClockEn, CLKB=>RdClock, WEB=>scuba_vlo, 
            CSB2=>scuba_vlo, CSB1=>scuba_vlo, CSB0=>scuba_vlo, 
            RSTB=>Reset, DOA8=>open, DOA7=>open, DOA6=>open, DOA5=>open, 
            DOA4=>open, DOA3=>open, DOA2=>open, DOA1=>open, DOA0=>open, 
            DOB8=>open, DOB7=>open, DOB6=>open, DOB5=>open, DOB4=>open, 
            DOB3=>open, DOB2=>open, DOB1=>Q(3), DOB0=>Q(2));

    ROM_0_0_2_1: DP8KC
        generic map (INIT_DATA=> "STATIC", ASYNC_RESET_RELEASE=> "SYNC", 
        INITVAL_1F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1C=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1B=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1A=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_19=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_18=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_17=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_16=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_15=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_14=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_13=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_12=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_11=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_10=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000004", 
        INITVAL_0C=> "0x00214004140041C000510300102841024040821408214022470E0000C0801A201020410207402851", 
        INITVAL_0B=> "0x08A140A2440224503A840C2850A0940F0411DCEE1DC14026C10887F1FE4402243008100087010018", 
        INITVAL_0A=> "0x0C2100021C002C0022C20007C02846030460004701001060511306102001038011E0510306103825", 
        INITVAL_09=> "0x086B000810008701040008E0C020040C00718246022000228002605030511821010A0C0021C04004", 
        INITVAL_08=> "0x182040A21408204082100A0050005000A000A0050005000A000021C0400718245020410300102050", 
        INITVAL_07=> "0x080D108A1D08639018EC0403B1403B1720E0869710A0308CAA148410308D03EC21DEA9088D108494", 
        INITVAL_06=> "0x0FA1001E911C2A5026461203108A181FED003C1C0703B106A91CAE11548F1A01E0B48F1A01E00C50", 
        INITVAL_05=> "0x0CA06146F400E81150ED0084107EF5008D4022B4022071FE5C03C041ACD008CD008C8F00A1108ED1", 
        INITVAL_04=> "0x1FEFF0084111EC1180191000118019080010084110811180C1008411E05108810082180021008A10", 
        INITVAL_03=> "0x0A204020500007006041028010204C0284108810082040821400210098100821008A100A20700004", 
        INITVAL_02=> "0x000060180002820008411E05108810082040C00400204002440284110001100C100011080C1154AA", 
        INITVAL_01=> "0x088D1122040C6F4002100081100EAE020510348F1FEF009CE00F00E00EB801C07174100600402200", 
        INITVAL_00=> "0x0201E0081003C06154A81F07D010611C28710C8F1FEB901CFB17CC21C0EE0740E1F6B80F06A15030", 
        CSDECODE_B=> "0b000", CSDECODE_A=> "0b000", WRITEMODE_B=> "NORMAL", 
        WRITEMODE_A=> "NORMAL", GSR=> "ENABLED", RESETMODE=> "ASYNC", 
        REGMODE_B=> "NOREG", REGMODE_A=> "NOREG", DATA_WIDTH_B=>  2, 
        DATA_WIDTH_A=>  2)
        port map (DIA8=>scuba_vlo, DIA7=>scuba_vlo, DIA6=>scuba_vlo, 
            DIA5=>Data(5), DIA4=>scuba_vlo, DIA3=>scuba_vlo, 
            DIA2=>Data(4), DIA1=>scuba_vlo, DIA0=>scuba_vlo, 
            ADA12=>WrAddress(11), ADA11=>WrAddress(10), 
            ADA10=>WrAddress(9), ADA9=>WrAddress(8), ADA8=>WrAddress(7), 
            ADA7=>WrAddress(6), ADA6=>WrAddress(5), ADA5=>WrAddress(4), 
            ADA4=>WrAddress(3), ADA3=>WrAddress(2), ADA2=>WrAddress(1), 
            ADA1=>WrAddress(0), ADA0=>scuba_vlo, CEA=>WrClockEn, 
            OCEA=>WrClockEn, CLKA=>WrClock, WEA=>WE, CSA2=>scuba_vlo, 
            CSA1=>scuba_vlo, CSA0=>scuba_vlo, RSTA=>Reset, 
            DIB8=>scuba_vlo, DIB7=>scuba_vlo, DIB6=>scuba_vlo, 
            DIB5=>scuba_vlo, DIB4=>scuba_vlo, DIB3=>scuba_vlo, 
            DIB2=>scuba_vlo, DIB1=>scuba_vlo, DIB0=>scuba_vlo, 
            ADB12=>RdAddress(11), ADB11=>RdAddress(10), 
            ADB10=>RdAddress(9), ADB9=>RdAddress(8), ADB8=>RdAddress(7), 
            ADB7=>RdAddress(6), ADB6=>RdAddress(5), ADB5=>RdAddress(4), 
            ADB4=>RdAddress(3), ADB3=>RdAddress(2), ADB2=>RdAddress(1), 
            ADB1=>RdAddress(0), ADB0=>scuba_vlo, CEB=>RdClockEn, 
            OCEB=>RdClockEn, CLKB=>RdClock, WEB=>scuba_vlo, 
            CSB2=>scuba_vlo, CSB1=>scuba_vlo, CSB0=>scuba_vlo, 
            RSTB=>Reset, DOA8=>open, DOA7=>open, DOA6=>open, DOA5=>open, 
            DOA4=>open, DOA3=>open, DOA2=>open, DOA1=>open, DOA0=>open, 
            DOB8=>open, DOB7=>open, DOB6=>open, DOB5=>open, DOB4=>open, 
            DOB3=>open, DOB2=>open, DOB1=>Q(5), DOB0=>Q(4));

    scuba_vlo_inst: VLO
        port map (Z=>scuba_vlo);

    ROM_0_0_3_0: DP8KC
        generic map (INIT_DATA=> "STATIC", ASYNC_RESET_RELEASE=> "SYNC", 
        INITVAL_1F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1C=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1B=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1A=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_19=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_18=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_17=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_16=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_15=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_14=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_13=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_12=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_11=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_10=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0C=> "0x000000080000804000000180000000002000080000800000030001004000080C0000000003000000", 
        INITVAL_0B=> "0x00000000000000001800000020605000200000000000000000000000000000083000200203018000", 
        INITVAL_0A=> "0x000080080C00040080C30003400000000010020301800020001000000804018001A0000000001814", 
        INITVAL_09=> "0x080300280002030006010060C060100600308000000C0080C0002000000010050002080080C06000", 
        INITVAL_08=> "0x080000000000000000000200100010002000200100010002080080C0600308000000000000400010", 
        INITVAL_07=> "0x102400000C1064201A0C060400604000200080200040500000000000000000041008100004010200", 
        INITVAL_06=> "0x06808048000004000200040100000000020000000004000810010000000004000000000400000200", 
        INITVAL_05=> "0x020000000800000000100000002A580006000040000010AA80000000C2C0002C0000000000000640", 
        INITVAL_04=> "0x00000000000AA4008004080400800008040000000000008040000001A00000000000000000000000", 
        INITVAL_03=> "0x0000000000020000200001800000040000000000000000000C000000080000000000000000200202", 
        INITVAL_02=> "0x002010100401830000001A0000000000000020000800008000000001804018040000000004000000", 
        INITVAL_01=> "0x00040000000000C00005000000001000000000000000002000000000000000000000040400000080", 
        INITVAL_00=> "0x00800000040000000000000250000008001000000000000040020010020008000080000000001820", 
        CSDECODE_B=> "0b000", CSDECODE_A=> "0b000", WRITEMODE_B=> "NORMAL", 
        WRITEMODE_A=> "NORMAL", GSR=> "ENABLED", RESETMODE=> "ASYNC", 
        REGMODE_B=> "NOREG", REGMODE_A=> "NOREG", DATA_WIDTH_B=>  2, 
        DATA_WIDTH_A=>  2)
        port map (DIA8=>scuba_vlo, DIA7=>scuba_vlo, DIA6=>scuba_vlo, 
            DIA5=>Data(7), DIA4=>scuba_vlo, DIA3=>scuba_vlo, 
            DIA2=>Data(6), DIA1=>scuba_vlo, DIA0=>scuba_vlo, 
            ADA12=>WrAddress(11), ADA11=>WrAddress(10), 
            ADA10=>WrAddress(9), ADA9=>WrAddress(8), ADA8=>WrAddress(7), 
            ADA7=>WrAddress(6), ADA6=>WrAddress(5), ADA5=>WrAddress(4), 
            ADA4=>WrAddress(3), ADA3=>WrAddress(2), ADA2=>WrAddress(1), 
            ADA1=>WrAddress(0), ADA0=>scuba_vlo, CEA=>WrClockEn, 
            OCEA=>WrClockEn, CLKA=>WrClock, WEA=>WE, CSA2=>scuba_vlo, 
            CSA1=>scuba_vlo, CSA0=>scuba_vlo, RSTA=>Reset, 
            DIB8=>scuba_vlo, DIB7=>scuba_vlo, DIB6=>scuba_vlo, 
            DIB5=>scuba_vlo, DIB4=>scuba_vlo, DIB3=>scuba_vlo, 
            DIB2=>scuba_vlo, DIB1=>scuba_vlo, DIB0=>scuba_vlo, 
            ADB12=>RdAddress(11), ADB11=>RdAddress(10), 
            ADB10=>RdAddress(9), ADB9=>RdAddress(8), ADB8=>RdAddress(7), 
            ADB7=>RdAddress(6), ADB6=>RdAddress(5), ADB5=>RdAddress(4), 
            ADB4=>RdAddress(3), ADB3=>RdAddress(2), ADB2=>RdAddress(1), 
            ADB1=>RdAddress(0), ADB0=>scuba_vlo, CEB=>RdClockEn, 
            OCEB=>RdClockEn, CLKB=>RdClock, WEB=>scuba_vlo, 
            CSB2=>scuba_vlo, CSB1=>scuba_vlo, CSB0=>scuba_vlo, 
            RSTB=>Reset, DOA8=>open, DOA7=>open, DOA6=>open, DOA5=>open, 
            DOA4=>open, DOA3=>open, DOA2=>open, DOA1=>open, DOA0=>open, 
            DOB8=>open, DOB7=>open, DOB6=>open, DOB5=>open, DOB4=>open, 
            DOB3=>open, DOB2=>open, DOB1=>Q(7), DOB0=>Q(6));

end Structure;

-- synopsys translate_off
library MACHXO2;
configuration Structure_CON of ROM is
    for Structure
        for all:VHI use entity MACHXO2.VHI(V); end for;
        for all:VLO use entity MACHXO2.VLO(V); end for;
        for all:DP8KC use entity MACHXO2.DP8KC(V); end for;
    end for;
end Structure_CON;

-- synopsys translate_on
