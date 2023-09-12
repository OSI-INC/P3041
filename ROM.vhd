-- VHDL netlist generated by SCUBA Diamond (64-bit) 3.12.1.454
-- Module  Version: 6.5
--C:\lscc\diamond\3.12\ispfpga\bin\nt64\scuba.exe -w -n ROM -lang vhdl -synth synplify -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -rdata_width 8 -data_width 8 -num_rows 4096 -cascade 11 -memfile c:/kevan/a3041/p3041/rom.mem -memformat hex 

-- Tue Sep 12 10:37:40 2023

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
        INITVAL_0D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0C=> "0x0000000000000190881A0301A020390A204050860024505C11068210B01908C181D8401E0B510606", 
        INITVAL_0B=> "0x00407062C60284118C140C2080A28008045028160A01000284018840187B022040361808A1402CDA", 
        INITVAL_0A=> "0x002840205A0C0B4042960166818E7010831108260302D146131841C18C141B66016E1D1841018C14", 
        INITVAL_09=> "0x19297024F10E069104D30245805AE3042821187701841008B6014310783100C080AAC40B88A0C0B6", 
        INITVAL_08=> "0x1185F000530288502840028C51905C08AC00B8C51905C08AC00B8090C0B611867018611081001060", 
        INITVAL_07=> "0x10AC110C080A281168C61A0B41C0D41C018038C704204000611009312051084EE00C79100B408CD0", 
        INITVAL_06=> "0x1EE440AA0310C20098D1036420DE5010E0E18AB8088031883110A2D0420400453162E30200E022E1", 
        INITVAL_05=> "0x028EC0F0841023B1C614008C0020871A04401C31080600081408C1F086CC086CC0C0F30881008C50", 
        INITVAL_04=> "0x0D86118A01020001C810050501C8100504008821080100586000C310B81100A140C20E0A24408218", 
        INITVAL_03=> "0x002420202B0280B13001092411186F0086000A0808044022490828C0DE080A2040A01C022020E2C1", 
        INITVAL_02=> "0x0C201012C701268108311383110A1408284048441A0850C0C4010701B8401BA60000100386009239", 
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
        INITVAL_0D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0C=> "0x0000000000000140A81400054010441EA140448600AD406261030610305410C1802021110400282A", 
        INITVAL_0B=> "0x0105700A960B2650AA510AA080C2800EA0603A740500000044080000100906A14000560AA5012008", 
        INITVAL_0A=> "0x14206020520A20011A250202202C051280100834128401105402C5000810122510005802C5000810", 
        INITVAL_09=> "0x0A0A8100001144508808128540808908A46042500B26101205030851026510A1D0CC280C4D00A202", 
        INITVAL_08=> "0x042400AA410A05703042020460486208C240C4060406200C200C4500A202042700AA550AC100A051", 
        INITVAL_07=> "0x10C29000580C289068241A283008070084504408126541AC4002C540027500665020C00181002805", 
        INITVAL_06=> "0x102010E05000011010400A014020000885608242000D50281108214026541AA41120080005700A70", 
        INITVAL_05=> "0x0A06400400108190845012A3F1EA9706A970A8250124F1FA490845C1AAC9082C9080611A85002E05", 
        INITVAL_04=> "0x0025A1282501EC1004501002100450100211282510A58104050A8051826512E180AA080420C08450", 
        INITVAL_03=> "0x0CA050A040018400025501815002400B24112815082C40420C02A01080550C20C084580CAC400086", 
        INITVAL_02=> "0x000C4040010382210805182550AE180C254062440A2440A25502A410002100005052541020514A40", 
        INITVAL_01=> "0x0280508AD4012000EA091AE501A80019A45000640025C082080822018811040C400010140C6020C7", 
        INITVAL_00=> "0x0281000E15020050A006080570204110207008640284500885062800801400C10182100041403804", 
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
        INITVAL_0D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_0C=> "0x000000000000000008400104001060002440C0040A20408811008510084008A1D100010820308804", 
        INITVAL_0B=> "0x08207082450285108A14082140A2D80A2860287012878082EE1DCEE02813182440FEFF0881100608", 
        INITVAL_0A=> "0x0028602200022C0030010382000EC10886110850008701001300A1910C11180111801F00A1110C11", 
        INITVAL_09=> "0x18450076000020008E04040040E0C1000460007C0286102001030010605110A180200808080022C2", 
        INITVAL_08=> "0x0004C02045022440204402204000400080008004000400080008000022C20007C028510081110011", 
        INITVAL_07=> "0x0080001A140A2D00668019C81006B9006BB100E00721E0880308CAA148410308D03E821DEA9088D1", 
        INITVAL_06=> "0x004940FA1001E911C2A5026461203108A181FED003C4601C0E1C0EA0F21E08CAA07E400F01908294", 
        INITVAL_05=> "0x0348F1A01E00CA316811008FF1A2041A205036410207F1E8700F01308CD008CD008C8F00A1108ED1", 
        INITVAL_04=> "0x1FEFF0084111EC1180191000118019080010084110811180C1008411E05108810082180021008A10", 
        INITVAL_03=> "0x0A204020500007006041028010204C0284108810082040821400210098100821008A100A20700004", 
        INITVAL_02=> "0x000060180002820008411E05108810082040C00400204002440284110001100C100011080C1154AA", 
        INITVAL_01=> "0x088D1122040C6F4002100081100EAE020510348F1FEF009CE00F00E00EB801C07174100600402200", 
        INITVAL_00=> "0x0201E0081003C06154A81F07D010611C28710C8F1FEB901CFB17CC21C0EE0740E1F6B80F06A15020", 
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
        INITVAL_0C=> "0x0000000000000000000002000020100000006000000000080002000020000000C000401000100600", 
        INITVAL_0B=> "0x0000300000000000000000000000C000000000200A0010000000000000000000000000000001060C", 
        INITVAL_0A=> "0x0000000080080C0008040183000640000000001002030180010000800000000401800D0000000000", 
        INITVAL_09=> "0x1824400601080010060006010060C30020300034000000180401800020000000800A0002080080C3", 
        INITVAL_08=> "0x0000400000000000000000001000100020002001000100020002080080C300034000000000000040", 
        INITVAL_07=> "0x0020802800000C8068201A0C30080300800020040000000405000000000000000000410081000040", 
        INITVAL_06=> "0x10200068080480000040002000401000000000200000000010002040000000000000800000400040", 
        INITVAL_05=> "0x0000004000000000800000055080000800000800000150A00000001002C0002C0000000000000640", 
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
