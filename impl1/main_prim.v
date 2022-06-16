// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Tue Apr 12 11:02:06 2022
//
// Verilog Description of module main
//

module main (RP, RCK, SDO, XEN, TP1, TP2, TP3, TP4, OND, ONL, 
            NCS, SCK, xdac);   // c:/kevan/a3041/p3041a/main.vhd(27[8:12])
    input RP;   // c:/kevan/a3041/p3041a/main.vhd(29[3:5])
    input RCK;   // c:/kevan/a3041/p3041a/main.vhd(30[3:6])
    input SDO;   // c:/kevan/a3041/p3041a/main.vhd(31[3:6])
    output XEN;   // c:/kevan/a3041/p3041a/main.vhd(33[3:6])
    output TP1;   // c:/kevan/a3041/p3041a/main.vhd(34[3:6])
    output TP2;   // c:/kevan/a3041/p3041a/main.vhd(35[3:6])
    output TP3;   // c:/kevan/a3041/p3041a/main.vhd(36[3:6])
    output TP4;   // c:/kevan/a3041/p3041a/main.vhd(37[3:6])
    output OND;   // c:/kevan/a3041/p3041a/main.vhd(38[3:6])
    output ONL;   // c:/kevan/a3041/p3041a/main.vhd(39[3:6])
    output NCS;   // c:/kevan/a3041/p3041a/main.vhd(40[3:6])
    output SCK;   // c:/kevan/a3041/p3041a/main.vhd(41[3:6])
    output [4:0]xdac;   // c:/kevan/a3041/p3041a/main.vhd(43[3:7])
    
    wire SAI /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(700[12:17])
    wire FCK /* synthesis is_clock=1, SET_AS_NETWORK=FCK, nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(111[14:17])
    wire TXD /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(121[3:6])
    wire RESET_N_280 /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(104[43:48])
    wire SAA /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(134[3:6])
    wire SAD /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(135[3:6])
    wire FCK_keep_N_428 /* synthesis is_inv_clock=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(111[9:12])
    wire TXA_N_148 /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(120[3:6])
    wire [10:0]cpu_addr_9__N_375 /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(164[9:17])
    wire [10:0]cpu_addr /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(164[9:17])
    wire CK_keep_N_7 /* synthesis is_inv_clock=1, is_clock=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(154[9:18])
    wire TCK /* synthesis is_clock=1, SET_AS_NETWORK=TCK */ ;   // c:/kevan/a3041/p3041a/main.vhd(111[9:12])
    wire RCK_N_79 /* synthesis is_clock=1, is_inv_clock=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(513[11:18])
    wire CK /* synthesis SET_AS_NETWORK=RCK_c_1, is_clock=1, nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(111[19:21])
    
    wire VCC_net, RP_c, TP1_c, NCS_c, SCK_c, xdac_c_0, USERSTDBY, 
        CLRFLAG, SFLAG, CS, TXB, n40186, n38;
    wire [3:0]tck_divisor;   // c:/kevan/a3041/p3041a/main.vhd(145[9:20])
    wire [7:0]prog_data;   // c:/kevan/a3041/p3041a/main.vhd(154[9:18])
    wire [11:0]prog_addr;   // c:/kevan/a3041/p3041a/main.vhd(155[9:18])
    wire [7:0]ram_out;   // c:/kevan/a3041/p3041a/main.vhd(159[9:16])
    wire [7:0]ram_in;   // c:/kevan/a3041/p3041a/main.vhd(159[18:24])
    
    wire RAMWR;
    wire [7:0]cpu_data_in;   // c:/kevan/a3041/p3041a/main.vhd(163[23:34])
    
    wire CPUWR, CPUDS, n40185, CPUSTOF, n40184, n40183, RPS, IC, 
        TC, RBD, CRCERR, BYTERR, BITS, CPA, CPRST;
    wire [2:0]\PowerUp.state ;   // c:/kevan/a3041/p3041a/main.vhd(234[12:17])
    
    wire RESET_N_368, CLRFLAG_N_279;
    wire [2:0]\PowerUp.state_2__N_58 ;
    
    wire TCK_keep_N_426, n5;
    wire [4:0]\Sensor_Controller.state ;   // c:/kevan/a3041/p3041a/main.vhd(596[12:17])
    
    wire CS_N_275, SCK_N_277;
    wire [4:0]\Sensor_Controller.state_4__N_88 ;
    
    wire SAA_N_372, SAD_N_373, SAA_N_369;
    wire [5:0]\Sample_Transmitter.state ;   // c:/kevan/a3041/p3041a/main.vhd(700[12:17])
    
    wire TCK_keep_enable_2, n32277, TXB_N_317, \Sample_Transmitter.state_5__N_127 , 
        TXA_N_424, TP1_N_272;
    wire [6:0]\Initiate_Command.counter ;   // c:/kevan/a3041/p3041a/main.vhd(828[12:19])
    
    wire IC_N_394, n839, n840, n841, n842, n843, n844, n845;
    wire [6:0]\Initiate_Command.counter_6__N_156 ;
    wire [8:0]\Terminate_Command.counter ;   // c:/kevan/a3041/p3041a/main.vhd(849[12:19])
    
    wire RPS_N_182, TC_N_396, n876, n877, n878, n879, n880, n881, 
        n882, n883, n884;
    wire [8:0]\Terminate_Command.counter_8__N_172 ;
    wire [5:0]\Byte_Receiver.next_state ;   // c:/kevan/a3041/p3041a/main.vhd(882[19:29])
    
    wire \Byte_Receiver.no_stop_bit , BYTERR_N_402, n955, n956, n957, 
        n958, n959, n960, n983, n31990, \Byte_Receiver.next_state_5__N_201 ;
    wire [5:0]\Byte_Receiver.next_state_5__N_195 ;
    wire [5:0]\Byte_Receiver.next_state_5__N_183 ;
    wire [15:0]\Error_Check.crc ;   // c:/kevan/a3041/p3041a/main.vhd(1006[12:15])
    wire [15:0]\Error_Check.crc_15__N_218 ;
    wire [4:0]\Command_Processor.state ;   // c:/kevan/a3041/p3041a/main.vhd(1071[12:17])
    wire [9:0]\Command_Processor.addr ;   // c:/kevan/a3041/p3041a/main.vhd(1072[12:16])
    
    wire RBI_N_397;
    wire [2:0]\Command_Processor.state_4__N_268 ;
    wire [2:0]\Command_Processor.state_4__N_234 ;
    
    wire CPA_N_421;
    wire [6:0]\CPU.opcode ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(392[12:18])
    wire [7:0]\CPU.state ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(394[12:17])
    
    wire n20690;
    wire [5:0]\CPU.state_7__N_709 ;
    
    wire n34880, n20129, n41, n29176, n31749, n40528, n6, n63, 
        n31976, n31974, n29120, n29119, n29118, n29115, n3376, 
        n15141, n42, n6_adj_1345, n14741, n14734, n14748, n47, 
        n46, n49, n50, n52, n51, n54, n53, n55, n10, n15139, 
        n32107, n15339, n9099, n15241, n31, n48, n30, n43, n14009, 
        n32, n35, n33, n34, n12, n9082, n5_adj_1346, n4, n10_adj_1347, 
        n5_adj_1348, n9075, n12_adj_1349, n37813, n37812, n8, n31517, 
        n53_adj_1350, n55_adj_1351, n10_adj_1352, n31842, n30969, 
        n35209, n35208, n35207, n35206, n35205, n31932, n10_adj_1353, 
        n20699, n20731, n29365, n20697, n33819, n40475, n40474, 
        n40473, n40472, n19895, n35059, n35058, n35057, n35055, 
        n35054, n29546, n35053, n35045, n35044, n35043, n35041, 
        n35040, n35039, n35037, n35036, n35035, n23424, n32108, 
        n24913, n23426, n31790, n34988, n34986, n34985, n32805, 
        n29114, n32804, n29124, n23462, n25310, n24606, RCK_c_1_enable_12, 
        n93, n32777, n32776, n29123, n32761, n25531, n29122, n40529, 
        n34882, n34881, n29183, n29399, n29182, n29181, n29180, 
        n33799, n19843, n29179, n29117, n32733, n29178, n32025, 
        n29113, n6_adj_1354, n29177, n34816, n32033, n7, n40188, 
        n40187;
    
    VHI i2 (.Z(VCC_net));
    INV i27787 (.A(CK), .Z(CK_keep_N_7));
    FD1S3JX USERSTDBY_549 (.D(n4), .CK(CK), .PD(\PowerUp.state [2]), .Q(USERSTDBY));   // c:/kevan/a3041/p3041a/main.vhd(236[3] 247[10])
    defparam USERSTDBY_549.GSR = "ENABLED";
    FD1S3JX RESET_550 (.D(RESET_N_368), .CK(CK), .PD(CPUSTOF), .Q(RESET_N_280));   // c:/kevan/a3041/p3041a/main.vhd(236[3] 247[10])
    defparam RESET_550.GSR = "ENABLED";
    FD1S3AX TCK_552 (.D(TCK_keep_N_426), .CK(FCK_keep_N_428), .Q(TCK));   // c:/kevan/a3041/p3041a/main.vhd(274[3:68])
    defparam TCK_552.GSR = "ENABLED";
    ring_oscillator Fast_CK (.FCK(FCK), .\tck_divisor[3] (tck_divisor[3]), 
            .SAA_keep(SAA), .n10(n10_adj_1353), .TXD_keep(TXD));   // c:/kevan/a3041/p3041a/main.vhd(264[12:34])
    FD1S3DX \Sensor_Controller.state_i0  (.D(\Sensor_Controller.state_4__N_88 [0]), 
            .CK(TCK), .CD(RESET_N_280), .Q(\Sensor_Controller.state [0])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam \Sensor_Controller.state_i0 .GSR = "ENABLED";
    FD1S3AX SAD_611 (.D(SAD_N_373), .CK(TCK), .Q(SAD));   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam SAD_611.GSR = "ENABLED";
    FD1S3AX SAA_612 (.D(SAA_N_369), .CK(TCK), .Q(SAA));   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam SAA_612.GSR = "ENABLED";
    FD1S3JX TXB_613 (.D(TXB_N_317), .CK(TCK), .PD(n32025), .Q(TXB)) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(711[3] 778[10])
    defparam TXB_613.GSR = "ENABLED";
    FD1S3AX TXD_614 (.D(\Sample_Transmitter.state_5__N_127 ), .CK(TCK), 
            .Q(TXD));   // c:/kevan/a3041/p3041a/main.vhd(711[3] 778[10])
    defparam TXD_614.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(\Byte_Receiver.next_state [2]), .B(\Byte_Receiver.next_state [1]), 
         .Z(n23462)) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam i1_2_lut.init = 16'heeee;
    FD1S3AX \Byte_Receiver.next_state_i0  (.D(\Byte_Receiver.next_state_5__N_183 [0]), 
            .CK(CK), .Q(\Byte_Receiver.next_state [0])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam \Byte_Receiver.next_state_i0 .GSR = "ENABLED";
    FD1S3JX \Byte_Receiver.no_stop_bit_626  (.D(BYTERR_N_402), .CK(CK), 
            .PD(n15339), .Q(\Byte_Receiver.no_stop_bit )) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam \Byte_Receiver.no_stop_bit_626 .GSR = "ENABLED";
    FD1S3AX BYTERR_627 (.D(BYTERR_N_402), .CK(CK), .Q(BYTERR)) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam BYTERR_627.GSR = "ENABLED";
    FD1S3JX BITS_630 (.D(n31517), .CK(CK), .PD(n29546), .Q(BITS)) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam BITS_630.GSR = "ENABLED";
    FD1S3JX CRCERR_635 (.D(n40475), .CK(CK), .PD(IC), .Q(CRCERR)) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam CRCERR_635.GSR = "ENABLED";
    LUT4 n35205_bdd_2_lut (.A(n35205), .B(\Command_Processor.state [1]), 
         .Z(n35206)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n35205_bdd_2_lut.init = 16'heeee;
    FD1S3AX \Command_Processor.state_i1  (.D(\Command_Processor.state_4__N_234 [0]), 
            .CK(CK), .Q(\Command_Processor.state [0])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1060[2] 1166[14])
    defparam \Command_Processor.state_i1 .GSR = "ENABLED";
    LUT4 RBD_bdd_4_lut_27575 (.A(RBD), .B(\Command_Processor.state [2]), 
         .C(n32033), .D(TC), .Z(n35205)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam RBD_bdd_4_lut_27575.init = 16'h0311;
    FD1S3AX RBI_638 (.D(RBI_N_397), .CK(CK), .Q(\Byte_Receiver.next_state_5__N_195 [5])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1060[2] 1166[14])
    defparam RBI_638.GSR = "ENABLED";
    FD1S3AX CLRFLAG_548 (.D(CLRFLAG_N_279), .CK(CK), .Q(CLRFLAG));   // c:/kevan/a3041/p3041a/main.vhd(236[3] 247[10])
    defparam CLRFLAG_548.GSR = "ENABLED";
    FD1S3BX CPRST_556 (.D(n40528), .CK(CK_keep_N_7), .PD(RESET_N_280), 
            .Q(CPRST)) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(387[3] 433[10])
    defparam CPRST_556.GSR = "ENABLED";
    FD1S1B RESET_I_0_646_i2 (.D(n40528), .CK(SAI), .PD(RESET_N_280), .Q(tck_divisor[3])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(329[2] 434[14])
    defparam RESET_I_0_646_i2.GSR = "ENABLED";
    PCU Power_Controller (.USERSTDBY(USERSTDBY), .CLRFLAG(CLRFLAG), .SFLAG(SFLAG), 
        .GND_net(SAI)) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(226[20:30])
    OFS1P3DX SCK_609 (.D(SCK_N_277), .SP(TCK_keep_enable_2), .SCLK(TCK), 
            .CD(SAI), .Q(SCK_c));   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam SCK_609.GSR = "ENABLED";
    LUT4 \Command_Processor.state_4__N_268_0__bdd_3_lut_25562  (.A(\Command_Processor.state_4__N_268 [0]), 
         .B(CPRST), .C(n35208), .Z(n35209)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam \Command_Processor.state_4__N_268_0__bdd_3_lut_25562 .init = 16'hdcdc;
    LUT4 i1_2_lut_adj_391 (.A(\Byte_Receiver.next_state [0]), .B(n93), .Z(n15339)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam i1_2_lut_adj_391.init = 16'h4444;
    ROM128X1A mux_168_Mux_0 (.AD0(prog_data[0]), .AD1(prog_data[1]), .AD2(prog_data[2]), 
            .AD3(prog_data[3]), .AD4(prog_data[4]), .AD5(prog_data[5]), 
            .AD6(prog_data[6]), .DO0(\CPU.state_7__N_709 [0])) /* synthesis initstate=0x7F1507FF06FF8055000000FF3F007001 */ ;
    defparam mux_168_Mux_0.initval = 128'h7F1507FF06FF8055000000FF3F007001;
    ROM128X1A mux_168_Mux_1 (.AD0(prog_data[0]), .AD1(prog_data[1]), .AD2(prog_data[2]), 
            .AD3(prog_data[3]), .AD4(prog_data[4]), .AD5(prog_data[5]), 
            .AD6(prog_data[6]), .DO0(\CPU.state_7__N_709 [1])) /* synthesis initstate=0x80EAF800F9007FAAFC00FC00C03F81FE */ ;
    defparam mux_168_Mux_1.initval = 128'h80EAF800F9007FAAFC00FC00C03F81FE;
    FD1S3IX \Terminate_Command.counter__i8  (.D(\Terminate_Command.counter_8__N_172 [8]), 
            .CK(CK), .CD(RPS), .Q(\Terminate_Command.counter [8])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(847[2] 864[14])
    defparam \Terminate_Command.counter__i8 .GSR = "ENABLED";
    FD1S3IX \Initiate_Command.counter__i0  (.D(\Initiate_Command.counter_6__N_156 [0]), 
            .CK(CK), .CD(RPS_N_182), .Q(\Initiate_Command.counter [0])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(826[2] 843[14])
    defparam \Initiate_Command.counter__i0 .GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n23426), .B(\Byte_Receiver.no_stop_bit ), .C(n23462), 
         .D(\Byte_Receiver.next_state [5]), .Z(BYTERR_N_402)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hccc8;
    FD1S3IX \Terminate_Command.counter__i7  (.D(n877), .CK(CK), .CD(n20699), 
            .Q(\Terminate_Command.counter [7])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(847[2] 864[14])
    defparam \Terminate_Command.counter__i7 .GSR = "ENABLED";
    LUT4 i2_2_lut (.A(\Byte_Receiver.next_state [4]), .B(\Byte_Receiver.next_state [1]), 
         .Z(n6_adj_1354)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(\Byte_Receiver.next_state [0]), .B(\Byte_Receiver.next_state [1]), 
         .C(\Byte_Receiver.next_state [4]), .D(n8), .Z(n31517)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(882[19:29])
    defparam i3_4_lut.init = 16'h0400;
    IB RCK_pad (.I(RCK), .O(CK));   // c:/kevan/a3041/p3041a/main.vhd(30[3:6])
    IB RP_pad (.I(RP), .O(RP_c));   // c:/kevan/a3041/p3041a/main.vhd(29[3:5])
    OB xdac_pad_0 (.I(xdac_c_0), .O(xdac[0]));   // c:/kevan/a3041/p3041a/main.vhd(43[3:7])
    OB xdac_pad_1 (.I(SAI), .O(xdac[1]));   // c:/kevan/a3041/p3041a/main.vhd(43[3:7])
    OB xdac_pad_2 (.I(SAI), .O(xdac[2]));   // c:/kevan/a3041/p3041a/main.vhd(43[3:7])
    OB xdac_pad_3 (.I(SAI), .O(xdac[3]));   // c:/kevan/a3041/p3041a/main.vhd(43[3:7])
    OB xdac_pad_4 (.I(SAI), .O(xdac[4]));   // c:/kevan/a3041/p3041a/main.vhd(43[3:7])
    OB SCK_pad (.I(SCK_c), .O(SCK));   // c:/kevan/a3041/p3041a/main.vhd(41[3:6])
    OB NCS_pad (.I(NCS_c), .O(NCS));   // c:/kevan/a3041/p3041a/main.vhd(40[3:6])
    OB ONL_pad (.I(SAI), .O(ONL));   // c:/kevan/a3041/p3041a/main.vhd(39[3:6])
    OB OND_pad (.I(CPA), .O(OND));   // c:/kevan/a3041/p3041a/main.vhd(38[3:6])
    FD1S3IX \Terminate_Command.counter__i6  (.D(\Terminate_Command.counter_8__N_172 [6]), 
            .CK(CK), .CD(RPS), .Q(\Terminate_Command.counter [6])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(847[2] 864[14])
    defparam \Terminate_Command.counter__i6 .GSR = "ENABLED";
    FD1S3IX \Terminate_Command.counter__i5  (.D(n879), .CK(CK), .CD(n20699), 
            .Q(\Terminate_Command.counter [5])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(847[2] 864[14])
    defparam \Terminate_Command.counter__i5 .GSR = "ENABLED";
    FD1S3IX \Terminate_Command.counter__i4  (.D(n880), .CK(CK), .CD(n20699), 
            .Q(\Terminate_Command.counter [4])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(847[2] 864[14])
    defparam \Terminate_Command.counter__i4 .GSR = "ENABLED";
    FD1S3IX \Terminate_Command.counter__i3  (.D(\Terminate_Command.counter_8__N_172 [3]), 
            .CK(CK), .CD(RPS), .Q(\Terminate_Command.counter [3])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(847[2] 864[14])
    defparam \Terminate_Command.counter__i3 .GSR = "ENABLED";
    LUT4 n15139_bdd_4_lut_27702 (.A(\Byte_Receiver.next_state [1]), .B(RPS), 
         .C(n15141), .D(TC), .Z(n35035)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam n15139_bdd_4_lut_27702.init = 16'hafac;
    FD1S3IX \Terminate_Command.counter__i2  (.D(n882), .CK(CK), .CD(n20699), 
            .Q(\Terminate_Command.counter [2])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(847[2] 864[14])
    defparam \Terminate_Command.counter__i2 .GSR = "ENABLED";
    FD1S3IX \Terminate_Command.counter__i1  (.D(n883), .CK(CK), .CD(n20699), 
            .Q(\Terminate_Command.counter [1])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(847[2] 864[14])
    defparam \Terminate_Command.counter__i1 .GSR = "ENABLED";
    LUT4 i22_3_lut (.A(\Byte_Receiver.next_state [3]), .B(\Byte_Receiver.next_state [5]), 
         .C(\Byte_Receiver.next_state [2]), .Z(n8)) /* synthesis lut_function=(!(A (B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(882[19:29])
    defparam i22_3_lut.init = 16'h3636;
    LUT4 n15139_bdd_2_lut_24395 (.A(n15141), .B(n959), .Z(n35036)) /* synthesis lut_function=((B)+!A) */ ;
    defparam n15139_bdd_2_lut_24395.init = 16'hdddd;
    FD1S3IX RBD_628 (.D(\Byte_Receiver.next_state_5__N_201 ), .CK(CK), .CD(TC), 
            .Q(RBD)) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam RBD_628.GSR = "ENABLED";
    FD1S3IX TC_623 (.D(TC_N_396), .CK(CK), .CD(RPS), .Q(TC)) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(847[2] 864[14])
    defparam TC_623.GSR = "ENABLED";
    FD1S3IX IC_621 (.D(IC_N_394), .CK(CK), .CD(RPS_N_182), .Q(IC)) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(826[2] 843[14])
    defparam IC_621.GSR = "ENABLED";
    LUT4 i5043_2_lut (.A(\PowerUp.state [0]), .B(\PowerUp.state [1]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5043_2_lut.init = 16'h8888;
    FD1S3JX \Error_Check.crc_i13  (.D(\Error_Check.crc_15__N_218 [13]), .CK(CK), 
            .PD(IC), .Q(\Error_Check.crc [13])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i13 .GSR = "ENABLED";
    FD1S3JX \Error_Check.crc_i12  (.D(\Error_Check.crc_15__N_218 [12]), .CK(CK), 
            .PD(IC), .Q(\Error_Check.crc [12])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i12 .GSR = "ENABLED";
    FD1S3JX \Error_Check.crc_i11  (.D(\Error_Check.crc_15__N_218 [11]), .CK(CK), 
            .PD(IC), .Q(\Error_Check.crc [11])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i11 .GSR = "ENABLED";
    FD1S3JX \Error_Check.crc_i10  (.D(\Error_Check.crc_15__N_218 [10]), .CK(CK), 
            .PD(IC), .Q(\Error_Check.crc [10])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i10 .GSR = "ENABLED";
    OB TP3_pad (.I(SAI), .O(TP3));   // c:/kevan/a3041/p3041a/main.vhd(36[3:6])
    OB TP2_pad (.I(RESET_N_280), .O(TP2));   // c:/kevan/a3041/p3041a/main.vhd(35[3:6])
    LUT4 i14515_2_lut (.A(\Command_Processor.state_4__N_268 [0]), .B(CPRST), 
         .Z(\Command_Processor.state_4__N_234 [0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(1152[3:46])
    defparam i14515_2_lut.init = 16'h2222;
    OB TP1_pad (.I(TP1_c), .O(TP1));   // c:/kevan/a3041/p3041a/main.vhd(34[3:6])
    FD1S3IX \PowerUp.state_i1  (.D(\PowerUp.state_2__N_58 [1]), .CK(CK), 
            .CD(n5_adj_1346), .Q(\PowerUp.state [1])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(236[3] 247[10])
    defparam \PowerUp.state_i1 .GSR = "ENABLED";
    OB XEN_pad (.I(TXA_N_148), .O(XEN));   // c:/kevan/a3041/p3041a/main.vhd(33[3:6])
    FD1S3AX \Byte_Receiver.next_state_i5  (.D(\Byte_Receiver.next_state_5__N_183 [5]), 
            .CK(CK), .Q(\Byte_Receiver.next_state [5])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam \Byte_Receiver.next_state_i5 .GSR = "ENABLED";
    LUT4 n61_bdd_3_lut_24398_4_lut (.A(\Byte_Receiver.next_state [5]), .B(\Byte_Receiver.next_state [4]), 
         .C(n35037), .D(n23424), .Z(\Byte_Receiver.next_state_5__N_183 [1])) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam n61_bdd_3_lut_24398_4_lut.init = 16'hff70;
    LUT4 n61_bdd_3_lut_24403_4_lut (.A(\Byte_Receiver.next_state [5]), .B(\Byte_Receiver.next_state [4]), 
         .C(n35041), .D(n23424), .Z(\Byte_Receiver.next_state_5__N_183 [2])) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam n61_bdd_3_lut_24403_4_lut.init = 16'hff70;
    OB TP4_pad (.I(SAI), .O(TP4));   // c:/kevan/a3041/p3041a/main.vhd(37[3:6])
    LUT4 n61_bdd_3_lut_24412_4_lut (.A(\Byte_Receiver.next_state [5]), .B(\Byte_Receiver.next_state [4]), 
         .C(n35045), .D(n23424), .Z(\Byte_Receiver.next_state_5__N_183 [3])) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam n61_bdd_3_lut_24412_4_lut.init = 16'hff70;
    PFUMX i24415 (.BLUT(n35058), .ALUT(n35057), .C0(n15139), .Z(n35059));
    LUT4 \Sensor_Controller.state_4__I_0_661_i31_4_lut_4_lut  (.A(\Sensor_Controller.state [2]), 
         .B(n20129), .C(\Sensor_Controller.state [4]), .D(\Sensor_Controller.state [0]), 
         .Z(CS_N_275)) /* synthesis lut_function=(!(A (C)+!A !(B+(C+(D))))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(611[4] 667[13])
    defparam \Sensor_Controller.state_4__I_0_661_i31_4_lut_4_lut .init = 16'h5f5e;
    LUT4 n61_bdd_3_lut_24417_4_lut (.A(\Byte_Receiver.next_state [5]), .B(\Byte_Receiver.next_state [4]), 
         .C(n35055), .D(n23424), .Z(\Byte_Receiver.next_state_5__N_183 [4])) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam n61_bdd_3_lut_24417_4_lut.init = 16'hff70;
    LUT4 n61_bdd_3_lut_4_lut (.A(\Byte_Receiver.next_state [5]), .B(\Byte_Receiver.next_state [4]), 
         .C(n35059), .D(n23424), .Z(\Byte_Receiver.next_state_5__N_183 [5])) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam n61_bdd_3_lut_4_lut.init = 16'hff70;
    FD1S3AX \Byte_Receiver.next_state_i4  (.D(\Byte_Receiver.next_state_5__N_183 [4]), 
            .CK(CK), .Q(\Byte_Receiver.next_state [4])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam \Byte_Receiver.next_state_i4 .GSR = "ENABLED";
    LUT4 \Sample_Transmitter.state_4815_mux_6_i2_3_lut_4_lut  (.A(SAI), .B(\Sample_Transmitter.state_5__N_127 ), 
         .C(n14009), .D(n34), .Z(n42)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(724[4] 741[13])
    defparam \Sample_Transmitter.state_4815_mux_6_i2_3_lut_4_lut .init = 16'h8f80;
    LUT4 \Sample_Transmitter.state_4815_mux_6_i3_3_lut_4_lut  (.A(SAI), .B(\Sample_Transmitter.state_5__N_127 ), 
         .C(n14009), .D(n33), .Z(n41)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(724[4] 741[13])
    defparam \Sample_Transmitter.state_4815_mux_6_i3_3_lut_4_lut .init = 16'h8f80;
    FD1S3AX \Byte_Receiver.next_state_i3  (.D(\Byte_Receiver.next_state_5__N_183 [3]), 
            .CK(CK), .Q(\Byte_Receiver.next_state [3])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam \Byte_Receiver.next_state_i3 .GSR = "ENABLED";
    FD1S3AX \Byte_Receiver.next_state_i2  (.D(\Byte_Receiver.next_state_5__N_183 [2]), 
            .CK(CK), .Q(\Byte_Receiver.next_state [2])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam \Byte_Receiver.next_state_i2 .GSR = "ENABLED";
    LUT4 \Sample_Transmitter.state_4815_mux_6_i6_3_lut_4_lut  (.A(SAI), .B(\Sample_Transmitter.state_5__N_127 ), 
         .C(n14009), .D(n30), .Z(n38)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(724[4] 741[13])
    defparam \Sample_Transmitter.state_4815_mux_6_i6_3_lut_4_lut .init = 16'h8f80;
    FD1S3AX \Byte_Receiver.next_state_i1  (.D(\Byte_Receiver.next_state_5__N_183 [1]), 
            .CK(CK), .Q(\Byte_Receiver.next_state [1])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam \Byte_Receiver.next_state_i1 .GSR = "ENABLED";
    FD1S3AX \Sample_Transmitter.state_4815__i0  (.D(n43), .CK(TCK), .Q(\Sample_Transmitter.state [0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(740[20:25])
    defparam \Sample_Transmitter.state_4815__i0 .GSR = "ENABLED";
    LUT4 i4_4_lut (.A(TXA_N_148), .B(SAI), .C(SAD), .D(SAI), .Z(n10_adj_1353)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(263[24:71])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i21994_3_lut (.A(n32107), .B(n32108), .C(n15139), .Z(n983)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i21994_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut (.A(\Sample_Transmitter.state [0]), .B(\Sample_Transmitter.state [2]), 
         .C(n10), .D(\Sample_Transmitter.state [1]), .Z(TXA_N_424)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfbff;
    LUT4 i2_3_lut (.A(\Sample_Transmitter.state [4]), .B(\Sample_Transmitter.state [5]), 
         .C(\Sample_Transmitter.state [3]), .Z(n10)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(771[12:27])
    defparam i2_3_lut.init = 16'hfbfb;
    FD1S3AX \Command_Processor.addr_4818__i0  (.D(n55), .CK(CK), .Q(\Command_Processor.addr [0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818__i0 .GSR = "ENABLED";
    PFUMX i24410 (.BLUT(n35054), .ALUT(n35053), .C0(n15139), .Z(n35055));
    FD1S3AX \Command_Processor.state_i3  (.D(\Command_Processor.state_4__N_234 [2]), 
            .CK(CK), .Q(\Command_Processor.state [2])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1060[2] 1166[14])
    defparam \Command_Processor.state_i3 .GSR = "ENABLED";
    LUT4 \Sample_Transmitter.state_5__I_0_668_i12_1_lut_4_lut  (.A(\Sample_Transmitter.state [0]), 
         .B(\Sample_Transmitter.state [2]), .C(n10), .D(\Sample_Transmitter.state [1]), 
         .Z(\Sample_Transmitter.state_5__N_127 )) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(771[12:27])
    defparam \Sample_Transmitter.state_5__I_0_668_i12_1_lut_4_lut .init = 16'h0400;
    PFUMX i24401 (.BLUT(n35044), .ALUT(n35043), .C0(n15139), .Z(n35045));
    LUT4 i14492_2_lut (.A(CPUDS), .B(CPUWR), .Z(RAMWR)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(351[4] 355[11])
    defparam i14492_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(\Sensor_Controller.state [2]), .B(\Sensor_Controller.state [1]), 
         .C(\Sensor_Controller.state [3]), .Z(n19843)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(668[12:22])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i23841_3_lut (.A(RESET_N_280), .B(\Sensor_Controller.state [4]), 
         .C(n9099), .Z(TCK_keep_enable_2)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i23841_3_lut.init = 16'h1515;
    LUT4 \Sensor_Controller.state_4__I_0_694_i31_4_lut  (.A(n19843), .B(\Sensor_Controller.state [1]), 
         .C(\Sensor_Controller.state [4]), .D(\Sensor_Controller.state [0]), 
         .Z(SCK_N_277)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B (C)+!B !((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(611[4] 667[13])
    defparam \Sensor_Controller.state_4__I_0_694_i31_4_lut .init = 16'h3f05;
    PFUMX i24396 (.BLUT(n35040), .ALUT(n35039), .C0(n15139), .Z(n35041));
    LUT4 TCK_keep_I_0_1_lut (.A(TCK), .Z(TCK_keep_N_426)) /* synthesis lut_function=(!(A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(274[49:58])
    defparam TCK_keep_I_0_1_lut.init = 16'h5555;
    LUT4 i21992_3_lut (.A(RPS), .B(n960), .C(n15141), .Z(n32107)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;
    defparam i21992_3_lut.init = 16'hc5c5;
    LUT4 i23852_2_lut_4_lut (.A(\Sample_Transmitter.state [0]), .B(\Sample_Transmitter.state [1]), 
         .C(\Sample_Transmitter.state [2]), .D(n10), .Z(n32025)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i23852_2_lut_4_lut.init = 16'h001e;
    LUT4 n15139_bdd_3_lut_24408 (.A(\Byte_Receiver.next_state [3]), .B(TC), 
         .C(n15141), .Z(n35043)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n15139_bdd_3_lut_24408.init = 16'hacac;
    FD1S3AX \Command_Processor.state_i2  (.D(\Command_Processor.state_4__N_234 [1]), 
            .CK(CK), .Q(\Command_Processor.state [1])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1060[2] 1166[14])
    defparam \Command_Processor.state_i2 .GSR = "ENABLED";
    PFUMX i24393 (.BLUT(n35036), .ALUT(n35035), .C0(n15139), .Z(n35037));
    LUT4 i1_4_lut_adj_392 (.A(\Byte_Receiver.next_state [2]), .B(n23426), 
         .C(\Byte_Receiver.next_state [5]), .D(\Byte_Receiver.next_state [1]), 
         .Z(n15141)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_392.init = 16'hdffe;
    FD1S3DX \Sensor_Controller.state_i4  (.D(\Sensor_Controller.state_4__N_88 [4]), 
            .CK(TCK), .CD(RESET_N_280), .Q(\Sensor_Controller.state [4])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam \Sensor_Controller.state_i4 .GSR = "ENABLED";
    LUT4 RBD_bdd_4_lut_27579 (.A(n33819), .B(\Command_Processor.addr [6]), 
         .C(\Command_Processor.addr [8]), .D(\Command_Processor.addr [9]), 
         .Z(n40184)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam RBD_bdd_4_lut_27579.init = 16'hbfff;
    LUT4 i23811_2_lut_3_lut (.A(\PowerUp.state [1]), .B(\PowerUp.state [2]), 
         .C(\PowerUp.state [0]), .Z(CLRFLAG_N_279)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(241[8:17])
    defparam i23811_2_lut_3_lut.init = 16'h1010;
    LUT4 i23711_2_lut_3_lut (.A(\PowerUp.state [1]), .B(\PowerUp.state [2]), 
         .C(\PowerUp.state [0]), .Z(n5_adj_1346)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(241[8:17])
    defparam i23711_2_lut_3_lut.init = 16'h0101;
    LUT4 i23816_2_lut_3_lut (.A(\Command_Processor.state [1]), .B(\Command_Processor.state [2]), 
         .C(\Command_Processor.state [0]), .Z(RBI_N_397)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(1081[7:21])
    defparam i23816_2_lut_3_lut.init = 16'h1010;
    LUT4 equal_721_i5_2_lut_3_lut (.A(\Command_Processor.state [1]), .B(\Command_Processor.state [2]), 
         .C(\Command_Processor.state [0]), .Z(n5)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(1081[7:21])
    defparam equal_721_i5_2_lut_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut (.A(\Byte_Receiver.next_state [2]), .B(n6_adj_1354), 
         .C(\Byte_Receiver.next_state [3]), .D(\Byte_Receiver.next_state [5]), 
         .Z(n93)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    PFUMX i27580 (.BLUT(n40188), .ALUT(n40183), .C0(\Command_Processor.state [2]), 
          .Z(\Command_Processor.state_4__N_268 [0]));
    PFUMX i27577 (.BLUT(n40185), .ALUT(n40184), .C0(\Command_Processor.state [0]), 
          .Z(n40186));
    LUT4 i5110_2_lut_3_lut (.A(\Sensor_Controller.state [2]), .B(\Sensor_Controller.state [1]), 
         .C(\Sensor_Controller.state [0]), .Z(n14741)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(609[18:23])
    defparam i5110_2_lut_3_lut.init = 16'h8080;
    LUT4 i5117_2_lut_4_lut (.A(\Sensor_Controller.state [3]), .B(\Sensor_Controller.state [2]), 
         .C(\Sensor_Controller.state [1]), .D(\Sensor_Controller.state [0]), 
         .Z(n14748)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(609[18:23])
    defparam i5117_2_lut_4_lut.init = 16'h8000;
    LUT4 i23164_4_lut (.A(\Error_Check.crc [14]), .B(RPS), .C(BITS), .D(n6), 
         .Z(n32733)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(1036[14:39])
    defparam i23164_4_lut.init = 16'h8000;
    LUT4 n15139_bdd_2_lut_24409 (.A(n15141), .B(n957), .Z(n35044)) /* synthesis lut_function=((B)+!A) */ ;
    defparam n15139_bdd_2_lut_24409.init = 16'hdddd;
    LUT4 n1320_bdd_2_lut_24301_3_lut (.A(CRCERR), .B(BYTERR), .C(\Command_Processor.state [2]), 
         .Z(n34881)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n1320_bdd_2_lut_24301_3_lut.init = 16'h1010;
    LUT4 i21910_4_lut (.A(\Error_Check.crc [11]), .B(\Error_Check.crc [14]), 
         .C(\Error_Check.crc [0]), .D(n31842), .Z(n53_adj_1350)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i21910_4_lut.init = 16'h0001;
    FD1S3DX \Sensor_Controller.state_i3  (.D(\Sensor_Controller.state_4__N_88 [3]), 
            .CK(TCK), .CD(RESET_N_280), .Q(\Sensor_Controller.state [3])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam \Sensor_Controller.state_i3 .GSR = "ENABLED";
    FD1S3DX \Sensor_Controller.state_i2  (.D(\Sensor_Controller.state_4__N_88 [2]), 
            .CK(TCK), .CD(RESET_N_280), .Q(\Sensor_Controller.state [2])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam \Sensor_Controller.state_i2 .GSR = "ENABLED";
    FD1S3DX \Sensor_Controller.state_i1  (.D(\Sensor_Controller.state_4__N_88 [1]), 
            .CK(TCK), .CD(RESET_N_280), .Q(\Sensor_Controller.state [1])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam \Sensor_Controller.state_i1 .GSR = "ENABLED";
    RAM RAM (.CK_keep_N_7(CK_keep_N_7), .VCC_net(VCC_net), .TP2_c(RESET_N_280), 
        .RAMWR(RAMWR), .Address({cpu_addr_9__N_375[9:0]}), .ram_in({ram_in}), 
        .ram_out({ram_out}), .GND_net(SAI)) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(280[8:18])
    FD1P3AX CS_608 (.D(CS_N_275), .SP(TCK_keep_enable_2), .CK(TCK), .Q(CS));   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam CS_608.GSR = "ENABLED";
    OFS1P3IX xdac_i1 (.D(TP1_N_272), .SP(VCC_net), .SCLK(FCK), .CD(n20697), 
            .Q(xdac_c_0));   // c:/kevan/a3041/p3041a/main.vhd(790[2] 815[14])
    defparam xdac_i1.GSR = "ENABLED";
    LUT4 n15139_bdd_2_lut_24414 (.A(n15141), .B(n956), .Z(n35054)) /* synthesis lut_function=((B)+!A) */ ;
    defparam n15139_bdd_2_lut_24414.init = 16'hdddd;
    LUT4 i14666_2_lut (.A(ram_out[2]), .B(CPUWR), .Z(cpu_data_in[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(351[4] 355[11])
    defparam i14666_2_lut.init = 16'h2222;
    PFUMX i24299 (.BLUT(n34881), .ALUT(n34880), .C0(\Command_Processor.state [0]), 
          .Z(n34882));
    FD1S3IX \Initiate_Command.counter__i2  (.D(n843), .CK(CK), .CD(n20731), 
            .Q(\Initiate_Command.counter [2])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(826[2] 843[14])
    defparam \Initiate_Command.counter__i2 .GSR = "ENABLED";
    FD1S3IX \Initiate_Command.counter__i3  (.D(n842), .CK(CK), .CD(n20731), 
            .Q(\Initiate_Command.counter [3])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(826[2] 843[14])
    defparam \Initiate_Command.counter__i3 .GSR = "ENABLED";
    FD1S3IX \Initiate_Command.counter__i4  (.D(n841), .CK(CK), .CD(n20731), 
            .Q(\Initiate_Command.counter [4])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(826[2] 843[14])
    defparam \Initiate_Command.counter__i4 .GSR = "ENABLED";
    FD1S3IX \Initiate_Command.counter__i5  (.D(n840), .CK(CK), .CD(n20731), 
            .Q(\Initiate_Command.counter [5])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(826[2] 843[14])
    defparam \Initiate_Command.counter__i5 .GSR = "ENABLED";
    FD1S3IX \Initiate_Command.counter__i6  (.D(\Initiate_Command.counter_6__N_156 [6]), 
            .CK(CK), .CD(RPS_N_182), .Q(\Initiate_Command.counter [6])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(826[2] 843[14])
    defparam \Initiate_Command.counter__i6 .GSR = "ENABLED";
    LUT4 i21822_2_lut_3_lut_4_lut (.A(\Byte_Receiver.next_state [3]), .B(\Byte_Receiver.next_state [4]), 
         .C(\Byte_Receiver.next_state [5]), .D(n23462), .Z(n31932)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam i21822_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i13403_3_lut_3_lut_4_lut (.A(\Byte_Receiver.next_state [3]), .B(\Byte_Receiver.next_state [4]), 
         .C(\Byte_Receiver.next_state [5]), .D(n23462), .Z(n15139)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C+(D)))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam i13403_3_lut_3_lut_4_lut.init = 16'he0e1;
    LUT4 i14667_2_lut (.A(ram_out[1]), .B(CPUWR), .Z(cpu_data_in[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(351[4] 355[11])
    defparam i14667_2_lut.init = 16'h2222;
    LUT4 i23830_2_lut (.A(IC_N_394), .B(RPS), .Z(n20731)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(826[2] 843[14])
    defparam i23830_2_lut.init = 16'hbbbb;
    LUT4 i14747_2_lut (.A(n839), .B(IC_N_394), .Z(\Initiate_Command.counter_6__N_156 [6])) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(832[4] 838[11])
    defparam i14747_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_393 (.A(\Byte_Receiver.next_state [3]), .B(\Byte_Receiver.next_state [4]), 
         .C(\Byte_Receiver.next_state [0]), .Z(n23426)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam i1_2_lut_3_lut_adj_393.init = 16'hefef;
    LUT4 i23120_2_lut_4_lut (.A(\Byte_Receiver.next_state [4]), .B(n32107), 
         .C(n32108), .D(n15139), .Z(n32776)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i23120_2_lut_4_lut.init = 16'h5044;
    LUT4 i14508_2_lut (.A(ram_out[7]), .B(CPUWR), .Z(cpu_data_in[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(351[4] 355[11])
    defparam i14508_2_lut.init = 16'h2222;
    LUT4 i10575_1_lut (.A(TXA_N_148), .Z(n20697)) /* synthesis lut_function=(!(A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(120[3:6])
    defparam i10575_1_lut.init = 16'h5555;
    LUT4 TXB_I_0_2_lut (.A(TXB), .B(TCK), .Z(TP1_N_272)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(808[10:29])
    defparam TXB_I_0_2_lut.init = 16'h6666;
    FD1S3AX \Sample_Transmitter.state_4815__i1  (.D(n42), .CK(TCK), .Q(\Sample_Transmitter.state [1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(740[20:25])
    defparam \Sample_Transmitter.state_4815__i1 .GSR = "ENABLED";
    LUT4 i23405_2_lut_2_lut (.A(RPS), .B(TC), .Z(n32804)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i23405_2_lut_2_lut.init = 16'hdddd;
    LUT4 i23376_4_lut_4_lut (.A(\Byte_Receiver.next_state_5__N_195 [5]), .B(\Byte_Receiver.next_state [0]), 
         .C(n31932), .D(RPS), .Z(n32805)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;
    defparam i23376_4_lut_4_lut.init = 16'hccce;
    LUT4 n15139_bdd_3_lut_24413 (.A(\Byte_Receiver.next_state [4]), .B(TC), 
         .C(n15141), .Z(n35053)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n15139_bdd_3_lut_24413.init = 16'hacac;
    FD1S3AX \Sample_Transmitter.state_4815__i2  (.D(n41), .CK(TCK), .Q(\Sample_Transmitter.state [2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(740[20:25])
    defparam \Sample_Transmitter.state_4815__i2 .GSR = "ENABLED";
    FD1S3IX \Sample_Transmitter.state_4815__i4  (.D(n31), .CK(TCK), .CD(n14009), 
            .Q(\Sample_Transmitter.state [4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(740[20:25])
    defparam \Sample_Transmitter.state_4815__i4 .GSR = "ENABLED";
    FD1S3AX \Sample_Transmitter.state_4815__i5  (.D(n38), .CK(TCK), .Q(\Sample_Transmitter.state [5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(740[20:25])
    defparam \Sample_Transmitter.state_4815__i5 .GSR = "ENABLED";
    LUT4 CPRST_bdd_3_lut (.A(CPRST), .B(\Command_Processor.state [2]), .C(n34816), 
         .Z(\Command_Processor.state_4__N_234 [1])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam CPRST_bdd_3_lut.init = 16'h1010;
    LUT4 i23223_4_lut (.A(\Byte_Receiver.next_state_5__N_195 [5]), .B(n6_adj_1354), 
         .C(\Byte_Receiver.next_state [2]), .D(\Byte_Receiver.next_state [0]), 
         .Z(n32777)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i23223_4_lut.init = 16'h8000;
    FD1S3AX \Command_Processor.addr_4818__i1  (.D(n54), .CK(CK), .Q(\Command_Processor.addr [1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818__i1 .GSR = "ENABLED";
    LUT4 i23181_2_lut_3_lut_4_lut (.A(\Byte_Receiver.next_state [2]), .B(\Byte_Receiver.next_state [4]), 
         .C(\Byte_Receiver.next_state [1]), .D(\Byte_Receiver.next_state_5__N_195 [5]), 
         .Z(n32761)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i23181_2_lut_3_lut_4_lut.init = 16'hff7f;
    FD1S3AX \Command_Processor.addr_4818__i2  (.D(n53), .CK(CK), .Q(\Command_Processor.addr [2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818__i2 .GSR = "ENABLED";
    FD1S3AX \Command_Processor.addr_4818__i3  (.D(n52), .CK(CK), .Q(\Command_Processor.addr [3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818__i3 .GSR = "ENABLED";
    FD1S3AX \Command_Processor.addr_4818__i4  (.D(n51), .CK(CK), .Q(\Command_Processor.addr [4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818__i4 .GSR = "ENABLED";
    FD1S3AX \Command_Processor.addr_4818__i5  (.D(n50), .CK(CK), .Q(\Command_Processor.addr [5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818__i5 .GSR = "ENABLED";
    FD1S3AX \Command_Processor.addr_4818__i6  (.D(n49), .CK(CK), .Q(\Command_Processor.addr [6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818__i6 .GSR = "ENABLED";
    FD1S3AX \Command_Processor.addr_4818__i7  (.D(n48), .CK(CK), .Q(\Command_Processor.addr [7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818__i7 .GSR = "ENABLED";
    FD1S3AX \Command_Processor.addr_4818__i8  (.D(n47), .CK(CK), .Q(\Command_Processor.addr [8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818__i8 .GSR = "ENABLED";
    FD1S3AX \Command_Processor.addr_4818__i9  (.D(n46), .CK(CK), .Q(\Command_Processor.addr [9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818__i9 .GSR = "ENABLED";
    LUT4 n15139_bdd_3_lut_27706 (.A(\Byte_Receiver.next_state [5]), .B(TC), 
         .C(n15141), .Z(n35057)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n15139_bdd_3_lut_27706.init = 16'hacac;
    LUT4 n15139_bdd_2_lut_27707 (.A(n15141), .B(n955), .Z(n35058)) /* synthesis lut_function=((B)+!A) */ ;
    defparam n15139_bdd_2_lut_27707.init = 16'hdddd;
    LUT4 m0_lut (.Z(n40528)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    LUT4 i23886_2_lut_3_lut (.A(\PowerUp.state [2]), .B(\PowerUp.state [0]), 
         .C(\PowerUp.state [1]), .Z(RESET_N_368)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i23886_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i2_3_lut_4_lut_adj_394 (.A(\Byte_Receiver.next_state [0]), .B(\Byte_Receiver.next_state [4]), 
         .C(\Byte_Receiver.next_state [1]), .D(\Byte_Receiver.next_state [5]), 
         .Z(n29546)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_394.init = 16'h0040;
    LUT4 \Command_Processor.state_0__bdd_3_lut_25559_4_lut  (.A(\Command_Processor.state [1]), 
         .B(\Command_Processor.state [2]), .C(CRCERR), .D(BYTERR), .Z(n35207)) /* synthesis lut_function=(A (B)+!A ((C+(D))+!B)) */ ;
    defparam \Command_Processor.state_0__bdd_3_lut_25559_4_lut .init = 16'hddd9;
    LUT4 i14509_3_lut_4_lut (.A(n9075), .B(n9082), .C(n14741), .D(\Sensor_Controller.state [3]), 
         .Z(\Sensor_Controller.state_4__N_88 [3])) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(611[4] 667[13])
    defparam i14509_3_lut_4_lut.init = 16'h0110;
    LUT4 i23743_3_lut_4_lut (.A(\Sample_Transmitter.state [1]), .B(\Sample_Transmitter.state [2]), 
         .C(n10_adj_1347), .D(\Sample_Transmitter.state [0]), .Z(n29365)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(774[12:28])
    defparam i23743_3_lut_4_lut.init = 16'h0001;
    LUT4 i23889_3_lut_4_lut (.A(\Sample_Transmitter.state [4]), .B(\Sample_Transmitter.state [5]), 
         .C(\Sample_Transmitter.state [3]), .D(\Sample_Transmitter.state [2]), 
         .Z(TXB_N_317)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(744[30:53])
    defparam i23889_3_lut_4_lut.init = 16'h0111;
    LUT4 \Sample_Transmitter.state_5__I_0_712_i10_2_lut_3_lut  (.A(\Sample_Transmitter.state [4]), 
         .B(\Sample_Transmitter.state [5]), .C(\Sample_Transmitter.state [3]), 
         .Z(n10_adj_1347)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(744[30:53])
    defparam \Sample_Transmitter.state_5__I_0_712_i10_2_lut_3_lut .init = 16'hfefe;
    LUT4 i3_4_lut_adj_395 (.A(n5_adj_1348), .B(\Command_Processor.addr [5]), 
         .C(\Command_Processor.addr [2]), .D(\Command_Processor.addr [3]), 
         .Z(n33819)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i3_4_lut_adj_395.init = 16'hbfff;
    LUT4 i1_4_lut_adj_396 (.A(\Command_Processor.addr [1]), .B(\Command_Processor.addr [0]), 
         .C(\Command_Processor.addr [7]), .D(\Command_Processor.addr [4]), 
         .Z(n5_adj_1348)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_396.init = 16'hdfff;
    LUT4 i14505_3_lut_4_lut (.A(n9075), .B(n9082), .C(\Sensor_Controller.state [0]), 
         .D(\Sensor_Controller.state [1]), .Z(\Sensor_Controller.state_4__N_88 [1])) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(611[4] 667[13])
    defparam i14505_3_lut_4_lut.init = 16'h0110;
    LUT4 RBD_bdd_4_lut_27576 (.A(\Command_Processor.state [1]), .B(\Command_Processor.state [0]), 
         .C(BYTERR), .D(CRCERR), .Z(n40183)) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;
    defparam RBD_bdd_4_lut_27576.init = 16'h4445;
    LUT4 \Error_Check.crc_9__bdd_4_lut_27753  (.A(\Error_Check.crc [15]), 
         .B(\Error_Check.crc [3]), .C(\Error_Check.crc [1]), .D(n40473), 
         .Z(n40474)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam \Error_Check.crc_9__bdd_4_lut_27753 .init = 16'hfffe;
    LUT4 i2_2_lut_3_lut (.A(\Command_Processor.state [1]), .B(n34882), .C(CPRST), 
         .Z(\Command_Processor.state_4__N_234 [2])) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h0404;
    LUT4 \Error_Check.crc_9__bdd_4_lut_27752  (.A(\Error_Check.crc [5]), .B(\Error_Check.crc [2]), 
         .C(\Error_Check.crc [7]), .D(n40472), .Z(n40473)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam \Error_Check.crc_9__bdd_4_lut_27752 .init = 16'hfffe;
    LUT4 CPRST_bdd_4_lut (.A(\Command_Processor.state [1]), .B(\Command_Processor.state [0]), 
         .C(TC), .D(RBD), .Z(n34816)) /* synthesis lut_function=(!(A (B)+!A ((C+!(D))+!B))) */ ;
    defparam CPRST_bdd_4_lut.init = 16'h2622;
    LUT4 i1_2_lut_adj_397 (.A(BITS), .B(IC), .Z(RCK_c_1_enable_12)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_397.init = 16'heeee;
    LUT4 i23849_4_lut (.A(\PowerUp.state [0]), .B(\PowerUp.state [1]), .C(\PowerUp.state [2]), 
         .D(SFLAG), .Z(\PowerUp.state_2__N_58 [0])) /* synthesis lut_function=((B (C+!(D))+!B !((D)+!C))+!A) */ ;   // c:/kevan/a3041/p3041a/main.vhd(241[4] 246[36])
    defparam i23849_4_lut.init = 16'hd5fd;
    LUT4 \Sample_Transmitter.state_1__bdd_4_lut  (.A(\Sample_Transmitter.state [1]), 
         .B(\Sample_Transmitter.state [0]), .C(SAI), .D(n37812), .Z(n37813)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam \Sample_Transmitter.state_1__bdd_4_lut .init = 16'h1000;
    LUT4 \Sample_Transmitter.state_1__bdd_4_lut_26015  (.A(\Sample_Transmitter.state [2]), 
         .B(\Sample_Transmitter.state [4]), .C(\Sample_Transmitter.state [5]), 
         .D(\Sample_Transmitter.state [3]), .Z(n37812)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam \Sample_Transmitter.state_1__bdd_4_lut_26015 .init = 16'h0001;
    LUT4 i493_2_lut (.A(RPS), .B(\Error_Check.crc [0]), .Z(\Error_Check.crc_15__N_218 [15])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(1029[21:49])
    defparam i493_2_lut.init = 16'h6666;
    LUT4 \Error_Check.crc_9__bdd_4_lut_27751  (.A(\Error_Check.crc [6]), .B(n55_adj_1351), 
         .C(\Error_Check.crc [10]), .D(\Error_Check.crc [12]), .Z(n40472)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam \Error_Check.crc_9__bdd_4_lut_27751 .init = 16'hfffb;
    LUT4 i21735_2_lut (.A(BITS), .B(RPS), .Z(n31842)) /* synthesis lut_function=(A (B)) */ ;
    defparam i21735_2_lut.init = 16'h8888;
    LUT4 i14732_2_lut (.A(n876), .B(TC_N_396), .Z(\Terminate_Command.counter_8__N_172 [8])) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(853[4] 859[11])
    defparam i14732_2_lut.init = 16'heeee;
    LUT4 i23899_4_lut (.A(n31990), .B(n12_adj_1349), .C(\Terminate_Command.counter [2]), 
         .D(\Terminate_Command.counter [0]), .Z(TC_N_396)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i23899_4_lut.init = 16'h0002;
    LUT4 i1_3_lut_4_lut (.A(\Command_Processor.state [1]), .B(n34882), .C(\Command_Processor.state_4__N_234 [0]), 
         .D(\Command_Processor.state_4__N_234 [1]), .Z(CPA_N_421)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_3_lut_4_lut.init = 16'hffbf;
    LUT4 i21880_3_lut (.A(\Terminate_Command.counter [3]), .B(\Terminate_Command.counter [8]), 
         .C(\Terminate_Command.counter [6]), .Z(n31990)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i21880_3_lut.init = 16'h8080;
    LUT4 i5_4_lut (.A(\Terminate_Command.counter [5]), .B(\Terminate_Command.counter [4]), 
         .C(\Terminate_Command.counter [1]), .D(\Terminate_Command.counter [7]), 
         .Z(n12_adj_1349)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 RPS_I_0_1_lut (.A(RPS), .Z(RPS_N_182)) /* synthesis lut_function=(!(A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(852[6:13])
    defparam RPS_I_0_1_lut.init = 16'h5555;
    LUT4 i14501_2_lut (.A(n845), .B(IC_N_394), .Z(\Initiate_Command.counter_6__N_156 [0])) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(832[4] 838[11])
    defparam i14501_2_lut.init = 16'heeee;
    LUT4 i23823_4_lut (.A(\Initiate_Command.counter [4]), .B(n10_adj_1352), 
         .C(\Initiate_Command.counter [0]), .D(\Initiate_Command.counter [6]), 
         .Z(IC_N_394)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(832[8:26])
    defparam i23823_4_lut.init = 16'h1000;
    LUT4 i4_4_lut_adj_398 (.A(\Initiate_Command.counter [2]), .B(\Initiate_Command.counter [5]), 
         .C(\Initiate_Command.counter [3]), .D(\Initiate_Command.counter [1]), 
         .Z(n10_adj_1352)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_398.init = 16'hfffe;
    LUT4 i1_2_lut_adj_399 (.A(\Error_Check.crc [11]), .B(\Error_Check.crc [0]), 
         .Z(n6)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(1036[14:39])
    defparam i1_2_lut_adj_399.init = 16'h8888;
    PFUMX i12 (.BLUT(n32776), .ALUT(n32777), .C0(\Byte_Receiver.next_state [3]), 
          .Z(n30969));
    LUT4 i14835_2_lut (.A(\Command_Processor.state [0]), .B(\Command_Processor.state [1]), 
         .Z(n24913)) /* synthesis lut_function=(A (B)) */ ;
    defparam i14835_2_lut.init = 16'h8888;
    LUT4 \Error_Check.crc_9__bdd_4_lut  (.A(\Error_Check.crc [9]), .B(\Error_Check.crc [8]), 
         .C(\Error_Check.crc [4]), .D(n40474), .Z(n40475)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam \Error_Check.crc_9__bdd_4_lut .init = 16'hfffe;
    LUT4 i1_2_lut_adj_400 (.A(RPS), .B(TC_N_396), .Z(n20699)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_400.init = 16'heeee;
    LUT4 CS_I_0_1_lut (.A(CS), .Z(NCS_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(674[23:29])
    defparam CS_I_0_1_lut.init = 16'h5555;
    LUT4 m1_lut (.Z(n40529)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i14740_2_lut (.A(n878), .B(TC_N_396), .Z(\Terminate_Command.counter_8__N_172 [6])) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(853[4] 859[11])
    defparam i14740_2_lut.init = 16'heeee;
    LUT4 i14744_2_lut (.A(n881), .B(TC_N_396), .Z(\Terminate_Command.counter_8__N_172 [3])) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(853[4] 859[11])
    defparam i14744_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_401 (.A(\Byte_Receiver.next_state [0]), .B(n93), .Z(\Byte_Receiver.next_state_5__N_201 )) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam i1_2_lut_adj_401.init = 16'h8888;
    INV i27786 (.A(FCK), .Z(FCK_keep_N_428));
    INV i27785 (.A(CK), .Z(RCK_N_79));
    LUT4 mux_494_i14_4_lut (.A(\Error_Check.crc [13]), .B(\Error_Check.crc [14]), 
         .C(BITS), .D(\Error_Check.crc [0]), .Z(\Error_Check.crc_15__N_218 [13])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(1022[4] 1031[11])
    defparam mux_494_i14_4_lut.init = 16'h3aca;
    LUT4 mux_494_i13_4_lut (.A(\Error_Check.crc [12]), .B(\Error_Check.crc [13]), 
         .C(BITS), .D(\Error_Check.crc [0]), .Z(\Error_Check.crc_15__N_218 [12])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(1022[4] 1031[11])
    defparam mux_494_i13_4_lut.init = 16'h3aca;
    LUT4 mux_494_i12_3_lut (.A(\Error_Check.crc [11]), .B(\Error_Check.crc [12]), 
         .C(BITS), .Z(\Error_Check.crc_15__N_218 [11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(1022[4] 1031[11])
    defparam mux_494_i12_3_lut.init = 16'hcaca;
    LUT4 mux_494_i11_4_lut (.A(\Error_Check.crc [10]), .B(\Error_Check.crc [11]), 
         .C(BITS), .D(\Error_Check.crc [0]), .Z(\Error_Check.crc_15__N_218 [10])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(1022[4] 1031[11])
    defparam mux_494_i11_4_lut.init = 16'h3aca;
    LUT4 i14491_2_lut (.A(ram_out[0]), .B(CPUWR), .Z(cpu_data_in[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(351[4] 355[11])
    defparam i14491_2_lut.init = 16'h2222;
    LUT4 i23844_4_lut (.A(SFLAG), .B(\PowerUp.state [0]), .C(\PowerUp.state [2]), 
         .D(\PowerUp.state [1]), .Z(\PowerUp.state_2__N_58 [1])) /* synthesis lut_function=((B (C+!(D))+!B (D))+!A) */ ;
    defparam i23844_4_lut.init = 16'hf7dd;
    LUT4 i1_4_lut_adj_402 (.A(\Byte_Receiver.next_state [5]), .B(\Byte_Receiver.next_state [4]), 
         .C(n32761), .D(\Byte_Receiver.next_state [3]), .Z(n23424)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(881[2] 996[14])
    defparam i1_4_lut_adj_402.init = 16'ha088;
    FD1S3AX \PowerUp.state_i2  (.D(n33799), .CK(CK), .Q(\PowerUp.state [2])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(236[3] 247[10])
    defparam \PowerUp.state_i2 .GSR = "ENABLED";
    LUT4 \Sample_Transmitter.state_4815_mux_6_i1_3_lut  (.A(n37813), .B(n35), 
         .C(n14009), .Z(n43)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(740[20:25])
    defparam \Sample_Transmitter.state_4815_mux_6_i1_3_lut .init = 16'hacac;
    LUT4 n1320_bdd_3_lut (.A(TC), .B(\Command_Processor.state [2]), .C(n32033), 
         .Z(n34880)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam n1320_bdd_3_lut.init = 16'hecec;
    VLO i1 (.Z(SAI));
    TSALL TSALL_INST (.TSALL(SAI));
    LUT4 i23903_2_lut_3_lut (.A(n4), .B(\PowerUp.state [2]), .C(SFLAG), 
         .Z(n33799)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i23903_2_lut_3_lut.init = 16'he0e0;
    FD1S3IX \Sample_Transmitter.state_4815__i3  (.D(n32), .CK(TCK), .CD(n14009), 
            .Q(\Sample_Transmitter.state [3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(740[20:25])
    defparam \Sample_Transmitter.state_4815__i3 .GSR = "ENABLED";
    FD1S3IX \Initiate_Command.counter__i1  (.D(n844), .CK(CK), .CD(n20731), 
            .Q(\Initiate_Command.counter [1])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(826[2] 843[14])
    defparam \Initiate_Command.counter__i1 .GSR = "ENABLED";
    \OSR8_CPU(12,11,0,3,768,240)  CPU (.CK_keep(CK), .TP2_c(RESET_N_280), 
            .cpu_data_in({cpu_data_in}), .n15241(n15241), .prog_data({prog_data}), 
            .\CPU.state[0] (\CPU.state [0]), .prog_addr({prog_addr}), .GND_net(SAI), 
            .\cpu_addr_9__N_375[0] (cpu_addr_9__N_375[0]), .ram_in({ram_in}), 
            .CPUWR(CPUWR), .CPUDS(CPUDS), .\CPU.opcode[5] (\CPU.opcode [5]), 
            .n3376(n3376), .ram_out({ram_out}), .\CPU.state[3] (\CPU.state [3]), 
            .\CPU.state[2] (\CPU.state [2]), .n6(n6_adj_1345), .n19895(n19895), 
            .n34986(n34986), .n25531(n25531), .n12(n12), .\CPU.opcode[6] (\CPU.opcode [6]), 
            .\CPU.state[1] (\CPU.state [1]), .n24606(n24606), .n20690(n20690), 
            .n25310(n25310), .n63(n63), .\cpu_addr_9__N_375[1] (cpu_addr_9__N_375[1]), 
            .\cpu_addr_9__N_375[2] (cpu_addr_9__N_375[2]), .\cpu_addr_9__N_375[3] (cpu_addr_9__N_375[3]), 
            .\cpu_addr_9__N_375[4] (cpu_addr_9__N_375[4]), .\cpu_addr_9__N_375[5] (cpu_addr_9__N_375[5]), 
            .\cpu_addr_9__N_375[6] (cpu_addr_9__N_375[6]), .\cpu_addr_9__N_375[7] (cpu_addr_9__N_375[7]), 
            .\cpu_addr_9__N_375[8] (cpu_addr_9__N_375[8]), .\cpu_addr_9__N_375[9] (cpu_addr_9__N_375[9]), 
            .\cpu_addr[10] (cpu_addr[10]), .\CPU.state_7__N_709[1] (\CPU.state_7__N_709 [1]), 
            .\CPU.state_7__N_709[0] (\CPU.state_7__N_709 [0]), .n31749(n31749), 
            .CPUSTOF(CPUSTOF), .n40529(n40529));   // c:/kevan/a3041/p3041a/main.vhd(301[8:23])
    CCU2D add_395_7 (.A0(\Initiate_Command.counter [5]), .B0(SAI), .C0(SAI), 
          .D0(SAI), .A1(\Initiate_Command.counter [6]), .B1(SAI), .C1(SAI), 
          .D1(SAI), .CIN(n29115), .S0(n840), .S1(n839));   // c:/kevan/a3041/p3041a/main.vhd(836[16:23])
    defparam add_395_7.INIT0 = 16'h5aaa;
    defparam add_395_7.INIT1 = 16'h5aaa;
    defparam add_395_7.INJECT1_0 = "NO";
    defparam add_395_7.INJECT1_1 = "NO";
    LUT4 i21919_4_lut (.A(n5), .B(n31974), .C(n31790), .D(n31976), .Z(n32033)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i21919_4_lut.init = 16'haaa8;
    CCU2D add_425_1 (.A0(SAI), .B0(SAI), .C0(SAI), .D0(SAI), .A1(\Byte_Receiver.next_state [0]), 
          .B1(SAI), .C1(SAI), .D1(SAI), .COUT(n29122), .S1(n960));   // c:/kevan/a3041/p3041a/main.vhd(918[18:23])
    defparam add_425_1.INIT0 = 16'hF000;
    defparam add_425_1.INIT1 = 16'h5555;
    defparam add_425_1.INJECT1_0 = "NO";
    defparam add_425_1.INJECT1_1 = "NO";
    LUT4 i21864_4_lut (.A(\Command_Processor.addr [6]), .B(\Command_Processor.addr [7]), 
         .C(\Command_Processor.addr [8]), .D(\Command_Processor.addr [9]), 
         .Z(n31974)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i21864_4_lut.init = 16'hfffe;
    FD1P3JX \Error_Check.crc_i1  (.D(\Error_Check.crc [2]), .SP(RCK_c_1_enable_12), 
            .PD(IC), .CK(CK), .Q(\Error_Check.crc [1])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i1 .GSR = "ENABLED";
    FD1P3JX \Error_Check.crc_i2  (.D(\Error_Check.crc [3]), .SP(RCK_c_1_enable_12), 
            .PD(IC), .CK(CK), .Q(\Error_Check.crc [2])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i2 .GSR = "ENABLED";
    LUT4 i14519_3_lut (.A(\Sensor_Controller.state [0]), .B(n9082), .C(n9075), 
         .Z(\Sensor_Controller.state_4__N_88 [0])) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(611[4] 667[13])
    defparam i14519_3_lut.init = 16'hcdcd;
    FD1S3JX \PowerUp.state_i0  (.D(\PowerUp.state_2__N_58 [0]), .CK(CK), 
            .PD(n5_adj_1346), .Q(\PowerUp.state [0])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(236[3] 247[10])
    defparam \PowerUp.state_i0 .GSR = "ENABLED";
    LUT4 i21684_2_lut (.A(\Command_Processor.addr [4]), .B(\Command_Processor.addr [5]), 
         .Z(n31790)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i21684_2_lut.init = 16'heeee;
    LUT4 i21866_4_lut (.A(\Command_Processor.addr [0]), .B(\Command_Processor.addr [2]), 
         .C(\Command_Processor.addr [1]), .D(\Command_Processor.addr [3]), 
         .Z(n31976)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i21866_4_lut.init = 16'hffec;
    FD1P3JX \Error_Check.crc_i3  (.D(\Error_Check.crc [4]), .SP(RCK_c_1_enable_12), 
            .PD(IC), .CK(CK), .Q(\Error_Check.crc [3])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i3 .GSR = "ENABLED";
    CCU2D add_395_5 (.A0(\Initiate_Command.counter [3]), .B0(SAI), .C0(SAI), 
          .D0(SAI), .A1(\Initiate_Command.counter [4]), .B1(SAI), .C1(SAI), 
          .D1(SAI), .CIN(n29114), .COUT(n29115), .S0(n842), .S1(n841));   // c:/kevan/a3041/p3041a/main.vhd(836[16:23])
    defparam add_395_5.INIT0 = 16'h5aaa;
    defparam add_395_5.INIT1 = 16'h5aaa;
    defparam add_395_5.INJECT1_0 = "NO";
    defparam add_395_5.INJECT1_1 = "NO";
    CCU2D add_403_5 (.A0(\Terminate_Command.counter [3]), .B0(SAI), .C0(SAI), 
          .D0(SAI), .A1(\Terminate_Command.counter [4]), .B1(SAI), .C1(SAI), 
          .D1(SAI), .CIN(n29118), .COUT(n29119), .S0(n881), .S1(n880));   // c:/kevan/a3041/p3041a/main.vhd(857[16:23])
    defparam add_403_5.INIT0 = 16'h5aaa;
    defparam add_403_5.INIT1 = 16'h5aaa;
    defparam add_403_5.INJECT1_0 = "NO";
    defparam add_403_5.INJECT1_1 = "NO";
    PFUMX i21993 (.BLUT(n32804), .ALUT(n32805), .C0(n15141), .Z(n32108));
    CCU2D add_403_7 (.A0(\Terminate_Command.counter [5]), .B0(SAI), .C0(SAI), 
          .D0(SAI), .A1(\Terminate_Command.counter [6]), .B1(SAI), .C1(SAI), 
          .D1(SAI), .CIN(n29119), .COUT(n29120), .S0(n879), .S1(n878));   // c:/kevan/a3041/p3041a/main.vhd(857[16:23])
    defparam add_403_7.INIT0 = 16'h5aaa;
    defparam add_403_7.INIT1 = 16'h5aaa;
    defparam add_403_7.INJECT1_0 = "NO";
    defparam add_403_7.INJECT1_1 = "NO";
    CCU2D add_425_3 (.A0(\Byte_Receiver.next_state [1]), .B0(SAI), .C0(SAI), 
          .D0(SAI), .A1(\Byte_Receiver.next_state [2]), .B1(SAI), .C1(SAI), 
          .D1(SAI), .CIN(n29122), .COUT(n29123), .S0(n959), .S1(n958));   // c:/kevan/a3041/p3041a/main.vhd(918[18:23])
    defparam add_425_3.INIT0 = 16'h5aaa;
    defparam add_425_3.INIT1 = 16'h5aaa;
    defparam add_425_3.INJECT1_0 = "NO";
    defparam add_425_3.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_403 (.A(n7), .B(SAI), .C(\Sensor_Controller.state [0]), 
         .D(n20129), .Z(n9082)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam i4_4_lut_adj_403.init = 16'h0080;
    CCU2D add_403_9 (.A0(\Terminate_Command.counter [7]), .B0(SAI), .C0(SAI), 
          .D0(SAI), .A1(\Terminate_Command.counter [8]), .B1(SAI), .C1(SAI), 
          .D1(SAI), .CIN(n29120), .S0(n877), .S1(n876));   // c:/kevan/a3041/p3041a/main.vhd(857[16:23])
    defparam add_403_9.INIT0 = 16'h5aaa;
    defparam add_403_9.INIT1 = 16'h5aaa;
    defparam add_403_9.INJECT1_0 = "NO";
    defparam add_403_9.INJECT1_1 = "NO";
    LUT4 i2_2_lut_adj_404 (.A(\Sensor_Controller.state [2]), .B(\Sensor_Controller.state [4]), 
         .Z(n7)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam i2_2_lut_adj_404.init = 16'h8888;
    LUT4 i14692_4_lut (.A(\Sensor_Controller.state [4]), .B(n9082), .C(n9075), 
         .D(n14748), .Z(\Sensor_Controller.state_4__N_88 [4])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+!(C+!(D)))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(611[4] 667[13])
    defparam i14692_4_lut.init = 16'hcdce;
    LUT4 i5103_2_lut (.A(\Sensor_Controller.state [1]), .B(\Sensor_Controller.state [0]), 
         .Z(n14734)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(609[18:23])
    defparam i5103_2_lut.init = 16'h8888;
    LUT4 i2958_3_lut (.A(n29399), .B(n9099), .C(\Sensor_Controller.state [4]), 
         .Z(n9075)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(596[12:17])
    defparam i2958_3_lut.init = 16'hc5c5;
    LUT4 i5645_3_lut_4_lut (.A(n25531), .B(n34986), .C(\CPU.state [3]), 
         .D(n19895), .Z(n15241)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i5645_3_lut_4_lut.init = 16'h00f4;
    LUT4 i3_4_lut_adj_405 (.A(SAI), .B(\Sensor_Controller.state [0]), .C(\Sensor_Controller.state [2]), 
         .D(n20129), .Z(n29399)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_405.init = 16'hfffe;
    LUT4 i1_2_lut_adj_406 (.A(\Sensor_Controller.state [1]), .B(\Sensor_Controller.state [3]), 
         .Z(n20129)) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(668[12:22])
    defparam i1_2_lut_adj_406.init = 16'heeee;
    LUT4 i2957_3_lut (.A(\Sensor_Controller.state [3]), .B(\Sensor_Controller.state [1]), 
         .C(\Sensor_Controller.state [2]), .Z(n9099)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam i2957_3_lut.init = 16'heaea;
    LUT4 SAD_I_0_715_3_lut (.A(SAA_N_372), .B(SAD), .C(RESET_N_280), .Z(SAD_N_373)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam SAD_I_0_715_3_lut.init = 16'hc5c5;
    IFS1P3DX RPS_619 (.D(RP_c), .SP(VCC_net), .SCLK(RCK_N_79), .CD(SAI), 
            .Q(RPS)) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(818[2] 822[14])
    defparam RPS_619.GSR = "ENABLED";
    FD1P3JX \Error_Check.crc_i4  (.D(\Error_Check.crc [5]), .SP(RCK_c_1_enable_12), 
            .PD(IC), .CK(CK), .Q(\Error_Check.crc [4])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i4 .GSR = "ENABLED";
    LUT4 i14693_4_lut (.A(\Sensor_Controller.state [2]), .B(n9082), .C(n9075), 
         .D(n14734), .Z(\Sensor_Controller.state_4__N_88 [2])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+!(C+!(D)))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(611[4] 667[13])
    defparam i14693_4_lut.init = 16'hcdce;
    LUT4 i3_4_lut_adj_407 (.A(\Sensor_Controller.state [0]), .B(n20129), 
         .C(\Sensor_Controller.state [4]), .D(\Sensor_Controller.state [2]), 
         .Z(SAA_N_372)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i3_4_lut_adj_407.init = 16'hdfff;
    FD1P3JX \Error_Check.crc_i5  (.D(\Error_Check.crc [6]), .SP(RCK_c_1_enable_12), 
            .PD(IC), .CK(CK), .Q(\Error_Check.crc [5])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i5 .GSR = "ENABLED";
    FD1P3JX \Error_Check.crc_i6  (.D(\Error_Check.crc [7]), .SP(RCK_c_1_enable_12), 
            .PD(IC), .CK(CK), .Q(\Error_Check.crc [6])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i6 .GSR = "ENABLED";
    FD1P3JX \Error_Check.crc_i7  (.D(\Error_Check.crc [8]), .SP(RCK_c_1_enable_12), 
            .PD(IC), .CK(CK), .Q(\Error_Check.crc [7])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i7 .GSR = "ENABLED";
    FD1P3JX \Error_Check.crc_i8  (.D(\Error_Check.crc [9]), .SP(RCK_c_1_enable_12), 
            .PD(IC), .CK(CK), .Q(\Error_Check.crc [8])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i8 .GSR = "ENABLED";
    FD1P3JX \Error_Check.crc_i9  (.D(\Error_Check.crc [10]), .SP(RCK_c_1_enable_12), 
            .PD(IC), .CK(CK), .Q(\Error_Check.crc [9])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i9 .GSR = "ENABLED";
    FD1P3JX \Error_Check.crc_i14  (.D(\Error_Check.crc [15]), .SP(RCK_c_1_enable_12), 
            .PD(IC), .CK(CK), .Q(\Error_Check.crc [14])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i14 .GSR = "ENABLED";
    FD1P3JX \Error_Check.crc_i15  (.D(\Error_Check.crc_15__N_218 [15]), .SP(RCK_c_1_enable_12), 
            .PD(IC), .CK(CK), .Q(\Error_Check.crc [15])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i15 .GSR = "ENABLED";
    CCU2D \Command_Processor.addr_4818_add_4_11  (.A0(\Command_Processor.state [2]), 
          .B0(\Command_Processor.state [1]), .C0(\Command_Processor.state [0]), 
          .D0(\Command_Processor.addr [9]), .A1(SAI), .B1(SAI), .C1(SAI), 
          .D1(SAI), .CIN(n29183), .S0(n46));   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818_add_4_11 .INIT0 = 16'hfe00;
    defparam \Command_Processor.addr_4818_add_4_11 .INIT1 = 16'h0000;
    defparam \Command_Processor.addr_4818_add_4_11 .INJECT1_0 = "NO";
    defparam \Command_Processor.addr_4818_add_4_11 .INJECT1_1 = "NO";
    FD1S3IX CPA_641 (.D(CPA_N_421), .CK(CK), .CD(n35209), .Q(CPA)) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1060[2] 1166[14])
    defparam CPA_641.GSR = "ENABLED";
    CCU2D \Command_Processor.addr_4818_add_4_9  (.A0(\Command_Processor.state [2]), 
          .B0(\Command_Processor.state [1]), .C0(\Command_Processor.state [0]), 
          .D0(\Command_Processor.addr [7]), .A1(\Command_Processor.state [2]), 
          .B1(\Command_Processor.state [1]), .C1(\Command_Processor.state [0]), 
          .D1(\Command_Processor.addr [8]), .CIN(n29182), .COUT(n29183), 
          .S0(n48), .S1(n47));   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818_add_4_9 .INIT0 = 16'hfe00;
    defparam \Command_Processor.addr_4818_add_4_9 .INIT1 = 16'hfe00;
    defparam \Command_Processor.addr_4818_add_4_9 .INJECT1_0 = "NO";
    defparam \Command_Processor.addr_4818_add_4_9 .INJECT1_1 = "NO";
    CCU2D \Command_Processor.addr_4818_add_4_7  (.A0(\Command_Processor.state [2]), 
          .B0(\Command_Processor.state [1]), .C0(\Command_Processor.state [0]), 
          .D0(\Command_Processor.addr [5]), .A1(\Command_Processor.state [2]), 
          .B1(\Command_Processor.state [1]), .C1(\Command_Processor.state [0]), 
          .D1(\Command_Processor.addr [6]), .CIN(n29181), .COUT(n29182), 
          .S0(n50), .S1(n49));   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818_add_4_7 .INIT0 = 16'hfe00;
    defparam \Command_Processor.addr_4818_add_4_7 .INIT1 = 16'hfe00;
    defparam \Command_Processor.addr_4818_add_4_7 .INJECT1_0 = "NO";
    defparam \Command_Processor.addr_4818_add_4_7 .INJECT1_1 = "NO";
    CCU2D \Command_Processor.addr_4818_add_4_5  (.A0(\Command_Processor.state [2]), 
          .B0(\Command_Processor.state [1]), .C0(\Command_Processor.state [0]), 
          .D0(\Command_Processor.addr [3]), .A1(\Command_Processor.state [2]), 
          .B1(\Command_Processor.state [1]), .C1(\Command_Processor.state [0]), 
          .D1(\Command_Processor.addr [4]), .CIN(n29180), .COUT(n29181), 
          .S0(n52), .S1(n51));   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818_add_4_5 .INIT0 = 16'hfe00;
    defparam \Command_Processor.addr_4818_add_4_5 .INIT1 = 16'hfe00;
    defparam \Command_Processor.addr_4818_add_4_5 .INJECT1_0 = "NO";
    defparam \Command_Processor.addr_4818_add_4_5 .INJECT1_1 = "NO";
    PFUMX i66 (.BLUT(n53_adj_1350), .ALUT(n32733), .C0(\Error_Check.crc [13]), 
          .Z(n55_adj_1351));
    LUT4 n25531_bdd_4_lut (.A(n24606), .B(RESET_N_280), .C(\CPU.state [1]), 
         .D(n34985), .Z(n34986)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam n25531_bdd_4_lut.init = 16'h1000;
    CCU2D add_425_7 (.A0(\Byte_Receiver.next_state [5]), .B0(SAI), .C0(SAI), 
          .D0(SAI), .A1(SAI), .B1(SAI), .C1(SAI), .D1(SAI), .CIN(n29124), 
          .S0(n955));   // c:/kevan/a3041/p3041a/main.vhd(918[18:23])
    defparam add_425_7.INIT0 = 16'h5aaa;
    defparam add_425_7.INIT1 = 16'h0000;
    defparam add_425_7.INJECT1_0 = "NO";
    defparam add_425_7.INJECT1_1 = "NO";
    CCU2D \Command_Processor.addr_4818_add_4_3  (.A0(\Command_Processor.state [2]), 
          .B0(\Command_Processor.state [1]), .C0(\Command_Processor.state [0]), 
          .D0(\Command_Processor.addr [1]), .A1(\Command_Processor.state [2]), 
          .B1(\Command_Processor.state [1]), .C1(\Command_Processor.state [0]), 
          .D1(\Command_Processor.addr [2]), .CIN(n29179), .COUT(n29180), 
          .S0(n54), .S1(n53));   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818_add_4_3 .INIT0 = 16'hfe00;
    defparam \Command_Processor.addr_4818_add_4_3 .INIT1 = 16'hfe00;
    defparam \Command_Processor.addr_4818_add_4_3 .INJECT1_0 = "NO";
    defparam \Command_Processor.addr_4818_add_4_3 .INJECT1_1 = "NO";
    LUT4 i13353_3_lut (.A(n983), .B(n30969), .C(\Byte_Receiver.next_state [5]), 
         .Z(\Byte_Receiver.next_state_5__N_183 [0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(882[19:29])
    defparam i13353_3_lut.init = 16'hcaca;
    CCU2D add_425_5 (.A0(\Byte_Receiver.next_state [3]), .B0(SAI), .C0(SAI), 
          .D0(SAI), .A1(\Byte_Receiver.next_state [4]), .B1(SAI), .C1(SAI), 
          .D1(SAI), .CIN(n29123), .COUT(n29124), .S0(n957), .S1(n956));   // c:/kevan/a3041/p3041a/main.vhd(918[18:23])
    defparam add_425_5.INIT0 = 16'h5aaa;
    defparam add_425_5.INIT1 = 16'h5aaa;
    defparam add_425_5.INJECT1_0 = "NO";
    defparam add_425_5.INJECT1_1 = "NO";
    LUT4 n25531_bdd_4_lut_24368 (.A(n25310), .B(\CPU.state [0]), .C(\CPU.state [2]), 
         .D(n6_adj_1345), .Z(n34985)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n25531_bdd_4_lut_24368.init = 16'h0100;
    CCU2D \Command_Processor.addr_4818_add_4_1  (.A0(SAI), .B0(SAI), .C0(SAI), 
          .D0(SAI), .A1(\Command_Processor.state [2]), .B1(n24913), .C1(\Command_Processor.addr [0]), 
          .D1(n5), .COUT(n29179), .S1(n55));   // c:/kevan/a3041/p3041a/main.vhd(1125[3] 1132[10])
    defparam \Command_Processor.addr_4818_add_4_1 .INIT0 = 16'hF000;
    defparam \Command_Processor.addr_4818_add_4_1 .INIT1 = 16'hb444;
    defparam \Command_Processor.addr_4818_add_4_1 .INJECT1_0 = "NO";
    defparam \Command_Processor.addr_4818_add_4_1 .INJECT1_1 = "NO";
    LUT4 i14547_2_lut (.A(ram_out[6]), .B(CPUWR), .Z(cpu_data_in[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(351[4] 355[11])
    defparam i14547_2_lut.init = 16'h2222;
    LUT4 RBD_bdd_1_lut (.A(RBD), .Z(n40185)) /* synthesis lut_function=(!(A)) */ ;
    defparam RBD_bdd_1_lut.init = 16'h5555;
    CCU2D \Sample_Transmitter.state_4815_add_4_7  (.A0(\Sample_Transmitter.state [5]), 
          .B0(SAI), .C0(SAI), .D0(SAI), .A1(SAI), .B1(SAI), .C1(SAI), 
          .D1(SAI), .CIN(n29178), .S0(n30));   // c:/kevan/a3041/p3041a/main.vhd(740[20:25])
    defparam \Sample_Transmitter.state_4815_add_4_7 .INIT0 = 16'hfaaa;
    defparam \Sample_Transmitter.state_4815_add_4_7 .INIT1 = 16'h0000;
    defparam \Sample_Transmitter.state_4815_add_4_7 .INJECT1_0 = "NO";
    defparam \Sample_Transmitter.state_4815_add_4_7 .INJECT1_1 = "NO";
    LUT4 \Sample_Transmitter.state_0__bdd_4_lut  (.A(\Sample_Transmitter.state [2]), 
         .B(\Sample_Transmitter.state [3]), .C(\Sample_Transmitter.state [1]), 
         .D(\Sample_Transmitter.state [5]), .Z(n34988)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+(D))))) */ ;
    defparam \Sample_Transmitter.state_0__bdd_4_lut .init = 16'h2001;
    LUT4 RBD_bdd_4_lut (.A(RBD), .B(TC), .C(\Command_Processor.state [0]), 
         .D(IC), .Z(n40187)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam RBD_bdd_4_lut.init = 16'h1f10;
    LUT4 n40187_bdd_3_lut (.A(n40187), .B(n40186), .C(\Command_Processor.state [1]), 
         .Z(n40188)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n40187_bdd_3_lut.init = 16'hcaca;
    LUT4 \Sample_Transmitter.state_0__bdd_3_lut  (.A(\Sample_Transmitter.state [0]), 
         .B(\Sample_Transmitter.state [4]), .C(n34988), .Z(n14009)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam \Sample_Transmitter.state_0__bdd_3_lut .init = 16'h1010;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i14554_2_lut (.A(ram_out[5]), .B(CPUWR), .Z(cpu_data_in[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(351[4] 355[11])
    defparam i14554_2_lut.init = 16'h2222;
    LUT4 SAA_I_0_716_4_lut (.A(n32277), .B(SAA), .C(RESET_N_280), .D(SAA_N_372), 
         .Z(SAA_N_369)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam SAA_I_0_716_4_lut.init = 16'hcac0;
    CCU2D add_403_3 (.A0(\Terminate_Command.counter [1]), .B0(SAI), .C0(SAI), 
          .D0(SAI), .A1(\Terminate_Command.counter [2]), .B1(SAI), .C1(SAI), 
          .D1(SAI), .CIN(n29117), .COUT(n29118), .S0(n883), .S1(n882));   // c:/kevan/a3041/p3041a/main.vhd(857[16:23])
    defparam add_403_3.INIT0 = 16'h5aaa;
    defparam add_403_3.INIT1 = 16'h5aaa;
    defparam add_403_3.INJECT1_0 = "NO";
    defparam add_403_3.INJECT1_1 = "NO";
    LUT4 i22807_3_lut (.A(\Sensor_Controller.state [4]), .B(n19843), .C(\Sensor_Controller.state [0]), 
         .Z(n32277)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/kevan/a3041/p3041a/main.vhd(601[3] 671[10])
    defparam i22807_3_lut.init = 16'hfefe;
    LUT4 i14530_2_lut (.A(\CPU.opcode [6]), .B(\CPU.opcode [5]), .Z(n24606)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14530_2_lut.init = 16'heeee;
    CCU2D \Sample_Transmitter.state_4815_add_4_5  (.A0(\Sample_Transmitter.state [3]), 
          .B0(SAI), .C0(SAI), .D0(SAI), .A1(\Sample_Transmitter.state [4]), 
          .B1(SAI), .C1(SAI), .D1(SAI), .CIN(n29177), .COUT(n29178), 
          .S0(n32), .S1(n31));   // c:/kevan/a3041/p3041a/main.vhd(740[20:25])
    defparam \Sample_Transmitter.state_4815_add_4_5 .INIT0 = 16'hfaaa;
    defparam \Sample_Transmitter.state_4815_add_4_5 .INIT1 = 16'hfaaa;
    defparam \Sample_Transmitter.state_4815_add_4_5 .INJECT1_0 = "NO";
    defparam \Sample_Transmitter.state_4815_add_4_5 .INJECT1_1 = "NO";
    CCU2D add_395_3 (.A0(\Initiate_Command.counter [1]), .B0(SAI), .C0(SAI), 
          .D0(SAI), .A1(\Initiate_Command.counter [2]), .B1(SAI), .C1(SAI), 
          .D1(SAI), .CIN(n29113), .COUT(n29114), .S0(n844), .S1(n843));   // c:/kevan/a3041/p3041a/main.vhd(836[16:23])
    defparam add_395_3.INIT0 = 16'h5aaa;
    defparam add_395_3.INIT1 = 16'h5aaa;
    defparam add_395_3.INJECT1_0 = "NO";
    defparam add_395_3.INJECT1_1 = "NO";
    FD1S3IX TXA_615 (.D(TXA_N_424), .CK(TCK), .CD(n29365), .Q(TXA_N_148));   // c:/kevan/a3041/p3041a/main.vhd(711[3] 778[10])
    defparam TXA_615.GSR = "ENABLED";
    CCU2D \Sample_Transmitter.state_4815_add_4_3  (.A0(\Sample_Transmitter.state [1]), 
          .B0(SAI), .C0(SAI), .D0(SAI), .A1(\Sample_Transmitter.state [2]), 
          .B1(SAI), .C1(SAI), .D1(SAI), .CIN(n29176), .COUT(n29177), 
          .S0(n34), .S1(n33));   // c:/kevan/a3041/p3041a/main.vhd(740[20:25])
    defparam \Sample_Transmitter.state_4815_add_4_3 .INIT0 = 16'hfaaa;
    defparam \Sample_Transmitter.state_4815_add_4_3 .INIT1 = 16'hfaaa;
    defparam \Sample_Transmitter.state_4815_add_4_3 .INJECT1_0 = "NO";
    defparam \Sample_Transmitter.state_4815_add_4_3 .INJECT1_1 = "NO";
    CCU2D \Sample_Transmitter.state_4815_add_4_1  (.A0(SAI), .B0(SAI), .C0(SAI), 
          .D0(SAI), .A1(\Sample_Transmitter.state [0]), .B1(SAI), .C1(SAI), 
          .D1(SAI), .COUT(n29176), .S1(n35));   // c:/kevan/a3041/p3041a/main.vhd(740[20:25])
    defparam \Sample_Transmitter.state_4815_add_4_1 .INIT0 = 16'hF000;
    defparam \Sample_Transmitter.state_4815_add_4_1 .INIT1 = 16'h0555;
    defparam \Sample_Transmitter.state_4815_add_4_1 .INJECT1_0 = "NO";
    defparam \Sample_Transmitter.state_4815_add_4_1 .INJECT1_1 = "NO";
    LUT4 i14572_2_lut (.A(ram_out[4]), .B(CPUWR), .Z(cpu_data_in[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(351[4] 355[11])
    defparam i14572_2_lut.init = 16'h2222;
    CCU2D add_395_1 (.A0(SAI), .B0(SAI), .C0(SAI), .D0(SAI), .A1(\Initiate_Command.counter [0]), 
          .B1(SAI), .C1(SAI), .D1(SAI), .COUT(n29113), .S1(n845));   // c:/kevan/a3041/p3041a/main.vhd(836[16:23])
    defparam add_395_1.INIT0 = 16'hF000;
    defparam add_395_1.INIT1 = 16'h5555;
    defparam add_395_1.INJECT1_0 = "NO";
    defparam add_395_1.INJECT1_1 = "NO";
    FD1P3JX \Error_Check.crc_i0  (.D(\Error_Check.crc [1]), .SP(RCK_c_1_enable_12), 
            .PD(IC), .CK(CK), .Q(\Error_Check.crc [0])) /* synthesis lse_init_val=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(1005[2] 1037[14])
    defparam \Error_Check.crc_i0 .GSR = "ENABLED";
    LUT4 n15139_bdd_3_lut_24399 (.A(\Byte_Receiver.next_state [2]), .B(TC), 
         .C(n15141), .Z(n35039)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n15139_bdd_3_lut_24399.init = 16'hacac;
    FD1S3IX \Terminate_Command.counter__i0  (.D(n884), .CK(CK), .CD(n20699), 
            .Q(\Terminate_Command.counter [0])) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(847[2] 864[14])
    defparam \Terminate_Command.counter__i0 .GSR = "ENABLED";
    LUT4 n15139_bdd_2_lut_24400 (.A(n15141), .B(n958), .Z(n35040)) /* synthesis lut_function=((B)+!A) */ ;
    defparam n15139_bdd_2_lut_24400.init = 16'hdddd;
    LUT4 i14650_2_lut (.A(ram_out[3]), .B(CPUWR), .Z(cpu_data_in[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(351[4] 355[11])
    defparam i14650_2_lut.init = 16'h2222;
    ROM ROM (.prog_addr({prog_addr}), .CK_keep_N_7(CK_keep_N_7), .VCC_net(VCC_net), 
        .TP2_c(RESET_N_280), .prog_data({prog_data}), .GND_net(SAI), .n20690(n20690), 
        .n3376(n3376), .n12(n12), .n31749(n31749), .n63(n63)) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(293[8:18])
    GSR GSR_INST (.GSR(VCC_net));
    OFS1P3IX FHI_618 (.D(TP1_N_272), .SP(VCC_net), .SCLK(FCK), .CD(n20697), 
            .Q(TP1_c)) /* synthesis lse_init_val=0 */ ;   // c:/kevan/a3041/p3041a/main.vhd(790[2] 815[14])
    defparam FHI_618.GSR = "ENABLED";
    CCU2D add_403_1 (.A0(SAI), .B0(SAI), .C0(SAI), .D0(SAI), .A1(\Terminate_Command.counter [0]), 
          .B1(SAI), .C1(SAI), .D1(SAI), .COUT(n29117), .S1(n884));   // c:/kevan/a3041/p3041a/main.vhd(857[16:23])
    defparam add_403_1.INIT0 = 16'hF000;
    defparam add_403_1.INIT1 = 16'h5555;
    defparam add_403_1.INJECT1_0 = "NO";
    defparam add_403_1.INJECT1_1 = "NO";
    PFUMX i24486 (.BLUT(n35207), .ALUT(n35206), .C0(\Command_Processor.state [0]), 
          .Z(n35208));
    
endmodule
//
// Verilog Description of module ring_oscillator
//

module ring_oscillator (FCK, \tck_divisor[3] , SAA_keep, n10, TXD_keep);
    output FCK;
    input \tck_divisor[3] ;
    input SAA_keep;
    input n10;
    input TXD_keep;
    
    wire R3 /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/entities.vhd(38[22:24])
    wire R2 /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/entities.vhd(38[18:20])
    wire R4 /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/entities.vhd(38[26:28])
    wire FCK /* synthesis is_clock=1, SET_AS_NETWORK=FCK */ ;   // c:/kevan/a3041/p3041a/main.vhd(111[14:17])
    wire R1 /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/entities.vhd(38[14:16])
    wire RIN /* synthesis is_clock=1, SET_AS_NETWORK=\Fast_CK/RIN */ ;   // c:/kevan/a3041/p3041a/entities.vhd(38[9:12])
    wire SAA_keep /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(134[3:6])
    wire TXD_keep /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(121[3:6])
    wire [3:0]\divider.count ;   // c:/kevan/a3041/p3041a/entities.vhd(61[12:17])
    
    wire n31457;
    wire [3:0]n27;
    
    wire n7, n5, n35995;
    
    BUFBA ring3 (.A(R2), .Z(R3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=34, LSE_LLINE=264, LSE_RLINE=264 */ ;   // c:/kevan/a3041/p3041a/main.vhd(264[12:34])
    BUFBA ring2 (.A(R1), .Z(R2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=34, LSE_LLINE=264, LSE_RLINE=264 */ ;   // c:/kevan/a3041/p3041a/main.vhd(264[12:34])
    BUFBA ring4 (.A(R3), .Z(R4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=34, LSE_LLINE=264, LSE_RLINE=264 */ ;   // c:/kevan/a3041/p3041a/main.vhd(264[12:34])
    FD1S3IX CK_16 (.D(n31457), .CK(RIN), .CD(\divider.count [3]), .Q(FCK)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=34, LSE_LLINE=264, LSE_RLINE=264 */ ;   // c:/kevan/a3041/p3041a/entities.vhd(65[3] 88[10])
    defparam CK_16.GSR = "ENABLED";
    BUFBA ring1 (.A(RIN), .Z(R1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=34, LSE_LLINE=264, LSE_RLINE=264 */ ;   // c:/kevan/a3041/p3041a/main.vhd(264[12:34])
    LUT4 i1_4_lut (.A(\divider.count [1]), .B(\tck_divisor[3] ), .C(\divider.count [0]), 
         .D(\divider.count [2]), .Z(n31457)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B+!(C+(D))))) */ ;   // c:/kevan/a3041/p3041a/entities.vhd(80[8:24])
    defparam i1_4_lut.init = 16'h44cd;
    LUT4 ENABLE_I_0_4_lut (.A(SAA_keep), .B(R4), .C(n10), .D(TXD_keep), 
         .Z(RIN)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   // c:/kevan/a3041/p3041a/entities.vhd(58[22:51])
    defparam ENABLE_I_0_4_lut.init = 16'h3332;
    FD1S3AX \divider.count_4817__i0  (.D(n27[0]), .CK(RIN), .Q(\divider.count [0]));   // c:/kevan/a3041/p3041a/entities.vhd(72[19:24])
    defparam \divider.count_4817__i0 .GSR = "ENABLED";
    LUT4 i3_3_lut_4_lut (.A(\divider.count [0]), .B(\divider.count [1]), 
         .C(\divider.count [2]), .D(\divider.count [3]), .Z(n7)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/kevan/a3041/p3041a/entities.vhd(69[8:17])
    defparam i3_3_lut_4_lut.init = 16'hfffe;
    LUT4 i15075_3_lut_4_lut (.A(\divider.count [2]), .B(n7), .C(\divider.count [0]), 
         .D(\divider.count [1]), .Z(n27[2])) /* synthesis lut_function=(A (B (C+(D)))+!A !((C+(D))+!B)) */ ;   // c:/kevan/a3041/p3041a/entities.vhd(72[19:24])
    defparam i15075_3_lut_4_lut.init = 16'h8884;
    LUT4 tck_divisor_3__bdd_4_lut (.A(\tck_divisor[3] ), .B(\divider.count [3]), 
         .C(n5), .D(\divider.count [2]), .Z(n35995)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D)))) */ ;
    defparam tck_divisor_3__bdd_4_lut.init = 16'hccc2;
    FD1S3AX \divider.count_4817__i1  (.D(n27[1]), .CK(RIN), .Q(\divider.count [1]));   // c:/kevan/a3041/p3041a/entities.vhd(72[19:24])
    defparam \divider.count_4817__i1 .GSR = "ENABLED";
    LUT4 \divider.count_4817_mux_6_i2_4_lut  (.A(\tck_divisor[3] ), .B(\divider.count [1]), 
         .C(n7), .D(\divider.count [0]), .Z(n27[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/kevan/a3041/p3041a/entities.vhd(72[19:24])
    defparam \divider.count_4817_mux_6_i2_4_lut .init = 16'hca3a;
    FD1S3AX \divider.count_4817__i2  (.D(n27[2]), .CK(RIN), .Q(\divider.count [2]));   // c:/kevan/a3041/p3041a/entities.vhd(72[19:24])
    defparam \divider.count_4817__i2 .GSR = "ENABLED";
    FD1S3AX \divider.count_4817__i3  (.D(n35995), .CK(RIN), .Q(\divider.count [3]));   // c:/kevan/a3041/p3041a/entities.vhd(72[19:24])
    defparam \divider.count_4817__i3 .GSR = "ENABLED";
    LUT4 \divider.count_4817_mux_6_i1_3_lut  (.A(\tck_divisor[3] ), .B(\divider.count [0]), 
         .C(n7), .Z(n27[0])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/entities.vhd(72[19:24])
    defparam \divider.count_4817_mux_6_i1_3_lut .init = 16'h3a3a;
    LUT4 i1_2_lut (.A(\divider.count [0]), .B(\divider.count [1]), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/entities.vhd(69[8:17])
    defparam i1_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module PCU
//

module PCU (USERSTDBY, CLRFLAG, SFLAG, GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input USERSTDBY;
    input CLRFLAG;
    output SFLAG;
    input GND_net;
    
    
    PCNTR PCNTR_Inst0 (.CLK(GND_net), .USERTIMEOUT(GND_net), .USERSTDBY(USERSTDBY), 
          .CLRFLAG(CLRFLAG), .CFGWAKE(GND_net), .CFGSTDBY(GND_net), .SFLAG(SFLAG)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=20, LSE_RCOL=30, LSE_LLINE=226, LSE_RLINE=226 */ ;   // c:/kevan/a3041/p3041a/main.vhd(226[20:30])
    defparam PCNTR_Inst0.STDBYOPT = "USER";
    defparam PCNTR_Inst0.TIMEOUT = "BYPASS";
    defparam PCNTR_Inst0.WAKEUP = "USER";
    defparam PCNTR_Inst0.POROFF = "TRUE";
    defparam PCNTR_Inst0.BGOFF = "TRUE";
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (CK_keep_N_7, VCC_net, TP2_c, RAMWR, Address, ram_in, 
            ram_out, GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input CK_keep_N_7;
    input VCC_net;
    input TP2_c;
    input RAMWR;
    input [9:0]Address;
    input [7:0]ram_in;
    output [7:0]ram_out;
    input GND_net;
    
    wire CK_keep_N_7 /* synthesis is_inv_clock=1, is_clock=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(154[9:18])
    wire TP2_c /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(104[43:48])
    wire [9:0]Address_c /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(164[9:17])
    
    DP8KC RAM_0_0_0_0 (.DIA0(ram_in[0]), .DIA1(ram_in[1]), .DIA2(ram_in[2]), 
          .DIA3(ram_in[3]), .DIA4(ram_in[4]), .DIA5(ram_in[5]), .DIA6(ram_in[6]), 
          .DIA7(ram_in[7]), .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), 
          .ADA2(GND_net), .ADA3(Address[0]), .ADA4(Address[1]), .ADA5(Address[2]), 
          .ADA6(Address[3]), .ADA7(Address[4]), .ADA8(Address[5]), .ADA9(Address[6]), 
          .ADA10(Address[7]), .ADA11(Address[8]), .ADA12(Address[9]), 
          .CEA(VCC_net), .OCEA(VCC_net), .CLKA(CK_keep_N_7), .WEA(RAMWR), 
          .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), .RSTA(TP2_c), 
          .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), 
          .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), 
          .DIB8(GND_net), .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), 
          .ADB3(GND_net), .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), 
          .ADB7(GND_net), .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), 
          .ADB11(GND_net), .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), 
          .CLKB(GND_net), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOA0(ram_out[0]), .DOA1(ram_out[1]), 
          .DOA2(ram_out[2]), .DOA3(ram_out[3]), .DOA4(ram_out[4]), .DOA5(ram_out[5]), 
          .DOA6(ram_out[6]), .DOA7(ram_out[7])) /* synthesis MEM_LPC_FILE="RAM.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=280, LSE_RLINE=280 */ ;   // c:/kevan/a3041/p3041a/main.vhd(280[8:18])
    defparam RAM_0_0_0_0.DATA_WIDTH_A = 9;
    defparam RAM_0_0_0_0.DATA_WIDTH_B = 9;
    defparam RAM_0_0_0_0.REGMODE_A = "NOREG";
    defparam RAM_0_0_0_0.REGMODE_B = "NOREG";
    defparam RAM_0_0_0_0.CSDECODE_A = "0b000";
    defparam RAM_0_0_0_0.CSDECODE_B = "0b111";
    defparam RAM_0_0_0_0.WRITEMODE_A = "NORMAL";
    defparam RAM_0_0_0_0.WRITEMODE_B = "NORMAL";
    defparam RAM_0_0_0_0.GSR = "ENABLED";
    defparam RAM_0_0_0_0.RESETMODE = "ASYNC";
    defparam RAM_0_0_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam RAM_0_0_0_0.INIT_DATA = "STATIC";
    defparam RAM_0_0_0_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_0_0_0_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \OSR8_CPU(12,11,0,3,768,240) 
//

module \OSR8_CPU(12,11,0,3,768,240)  (CK_keep, TP2_c, cpu_data_in, n15241, 
            prog_data, \CPU.state[0] , prog_addr, GND_net, \cpu_addr_9__N_375[0] , 
            ram_in, CPUWR, CPUDS, \CPU.opcode[5] , n3376, ram_out, 
            \CPU.state[3] , \CPU.state[2] , n6, n19895, n34986, n25531, 
            n12, \CPU.opcode[6] , \CPU.state[1] , n24606, n20690, 
            n25310, n63, \cpu_addr_9__N_375[1] , \cpu_addr_9__N_375[2] , 
            \cpu_addr_9__N_375[3] , \cpu_addr_9__N_375[4] , \cpu_addr_9__N_375[5] , 
            \cpu_addr_9__N_375[6] , \cpu_addr_9__N_375[7] , \cpu_addr_9__N_375[8] , 
            \cpu_addr_9__N_375[9] , \cpu_addr[10] , \CPU.state_7__N_709[1] , 
            \CPU.state_7__N_709[0] , n31749, CPUSTOF, n40529);
    input CK_keep;
    input TP2_c;
    input [7:0]cpu_data_in;
    input n15241;
    input [7:0]prog_data;
    output \CPU.state[0] ;
    output [11:0]prog_addr;
    input GND_net;
    output \cpu_addr_9__N_375[0] ;
    output [7:0]ram_in;
    output CPUWR;
    output CPUDS;
    output \CPU.opcode[5] ;
    output n3376;
    input [7:0]ram_out;
    output \CPU.state[3] ;
    output \CPU.state[2] ;
    output n6;
    output n19895;
    input n34986;
    output n25531;
    output n12;
    output \CPU.opcode[6] ;
    output \CPU.state[1] ;
    input n24606;
    input n20690;
    output n25310;
    input n63;
    output \cpu_addr_9__N_375[1] ;
    output \cpu_addr_9__N_375[2] ;
    output \cpu_addr_9__N_375[3] ;
    output \cpu_addr_9__N_375[4] ;
    output \cpu_addr_9__N_375[5] ;
    output \cpu_addr_9__N_375[6] ;
    output \cpu_addr_9__N_375[7] ;
    output \cpu_addr_9__N_375[8] ;
    output \cpu_addr_9__N_375[9] ;
    output \cpu_addr[10] ;
    input \CPU.state_7__N_709[1] ;
    input \CPU.state_7__N_709[0] ;
    input n31749;
    output CPUSTOF;
    input n40529;
    
    wire CK_keep /* synthesis nomerge="", is_clock=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(111[19:21])
    wire TP2_c /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(104[43:48])
    wire alu_cin_N_949 /* synthesis is_clock=1, SET_AS_NETWORK=\CPU/alu_cin_N_949 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(216[9:16])
    wire [8:0]alu_out /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(252[25:31])
    wire [10:0]reg_SP;   // c:/kevan/a3041/p3041a/osr8v3.vhd(265[9:15])
    
    wire CK_keep_enable_33, n32154;
    wire [7:0]reg_B;   // c:/kevan/a3041/p3041a/osr8v3.vhd(243[9:14])
    
    wire CK_keep_enable_2, n13893, n12_c, n9, n24886, n32510, n32122, 
        n32123, n9040, n32124, n20190;
    wire [7:0]\CPU.state ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(394[12:17])
    
    wire n25463, n32507, n32201;
    wire [7:0]reg_A;   // c:/kevan/a3041/p3041a/osr8v3.vhd(239[9:14])
    
    wire n32200;
    wire [7:0]reg_H;   // c:/kevan/a3041/p3041a/osr8v3.vhd(247[30:35])
    
    wire n31660;
    wire [7:0]\CPU.first_operand ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(393[12:25])
    
    wire n13752, n32304;
    wire [6:0]\CPU.opcode ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(392[12:18])
    
    wire CK_keep_enable_40, n6965, n34823, n32303, n13673;
    wire [11:0]n946;
    
    wire n32305, n29137, n29138, n32306;
    wire [7:0]reg_L;   // c:/kevan/a3041/p3041a/osr8v3.vhd(247[37:42])
    
    wire n32464, n34827, n32463, n32125, n32126, n32127, n32308, 
        n32309, n32236, n32237, n3382, n81;
    wire [7:0]n9856;
    
    wire n32128, n32129, n32130;
    wire [10:0]n1916;
    
    wire n34500, n34501, n31623, n32198, n32513, n35198, n7, n35199, 
        n40162, n7453, n40163, n32514, n32898;
    wire [10:0]reg_IX;   // c:/kevan/a3041/p3041a/osr8v3.vhd(257[9:15])
    wire [10:0]reg_IY;   // c:/kevan/a3041/p3041a/osr8v3.vhd(257[17:23])
    
    wire n13;
    wire [7:0]n1851;
    
    wire CK_keep_enable_50, n32211, CK_keep_enable_5, n15288, flag_Z, 
        CK_keep_enable_6;
    wire [0:0]n13282;
    
    wire flag_C, CK_keep_enable_7;
    wire [0:0]n13234;
    
    wire flag_S, CK_keep_enable_8;
    wire [0:0]n13266;
    
    wire flag_I, CK_keep_enable_9;
    wire [0:0]n13250;
    
    wire WR_N_912, DS_N_928, CK_keep_enable_64;
    wire [7:0]\CPU.second_operand ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(393[27:41])
    
    wire CK_keep_enable_71, n32202, CK_keep_enable_91, n57, n57_adj_1002, 
        alu_cin, alu_cin_N_942, n32197;
    wire [7:0]\CPU.state_7__N_693 ;
    wire [7:0]reg_E;   // c:/kevan/a3041/p3041a/osr8v3.vhd(247[23:28])
    
    wire CK_keep_enable_98, n13683, n32511, n13661;
    wire [7:0]reg_C;   // c:/kevan/a3041/p3041a/osr8v3.vhd(247[9:14])
    wire [7:0]n12010;
    
    wire n32131, n32132, n32133, n4_adj_1004, n24573, n31898, n32512, 
        n32499, n37058, n35128, n35126, n35129, n7302, n7439, 
        n7374, n7508, n40215, n32716, n32685, n31603, n32192, 
        n35116, n35115, n35117, n32717;
    wire [7:0]reg_D;   // c:/kevan/a3041/p3041a/osr8v3.vhd(247[16:21])
    
    wire n32718, n32719, n32239, n32240, n81_adj_1005, n3383, n82, 
        n84, n32191, n12_adj_1006, n35878, n15300, n11092, n31564, 
        n31816, n35113, n35111, n35114, n17, n10514, n31884;
    wire [10:0]n9205;
    
    wire n15184, n32134, n32135, n32136, n32369, n32370;
    wire [10:0]n10528;
    
    wire n82_adj_1007, n84_adj_1008, n82_adj_1009, n84_adj_1010, n82_adj_1011, 
        n84_adj_1012, n82_adj_1013, n84_adj_1014, n32348, n43, n51, 
        n82_adj_1015, n84_adj_1016, n20115, n31746, n31747, n32297, 
        n82_adj_1017, n84_adj_1018, alu_ctrl_3__N_885, n19645, n84_adj_1019, 
        n34840, n32296, n37057, n32467, n34844, n32466, n32729, 
        n20226, n32189, n32188, n19845, n34841;
    wire [7:0]n14373;
    wire [7:0]n13122;
    
    wire n15255, n13096, n15282, n82_adj_1020, n84_adj_1021, n34884, 
        n13713, n32420, n13698, n32755, n37061, n34859, n37060;
    wire [10:0]n1837;
    
    wire n32286, n37064, n7323, n25377, n36783, n37063, n34848, 
        n32285, n19110, n12_adj_1022, n63_c, n29167;
    wire [10:0]n6928;
    
    wire n29168, n9_adj_1023, n63_adj_1024, n32242, n32243, n81_adj_1025, 
        n31954, n20, n31784, n32800, n32790, n31735, n32245, n32246, 
        n81_adj_1027, n15239, n32470, n32137, n32138, n32139, n34852, 
        n32469, n35275, n18576, n32537, n32737, n20199, n32183, 
        n32580, n32182, CK_keep_enable_105, n13723, n32140, n32141, 
        n32142;
    wire [11:0]n1539;
    
    wire n32143, n32144, n32145, n32585, n32248, n32249, n81_adj_1028, 
        n34480, n34481, n32590, n32598, n34490, n45, n34972, n32603, 
        n32146, n32147, n32148, n34849, n32608, n32613, n32287, 
        n35068, n35067, n35069, n32149, n32150, n32151, n37251, 
        n37252, n13_adj_1030, n34346, n24637, n37067, n37066, n3380, 
        n3381, n37068, n81_adj_1031, n32536;
    wire [10:0]n6940;
    
    wire n62, n126, n3377;
    wire [7:0]alu_in_x;   // c:/kevan/a3041/p3041a/osr8v3.vhd(215[9:17])
    
    wire n3379, n37104, n101, n125, n37074, n32579, n32414, n13589, 
        n13635, n37077, n32584, n34858, n32413, n37080, n32589, 
        n32473, n34862, n32472, n37083, n32597, n22, n20135, n37086, 
        n32602, n32740, n31640, n32180, n37089, n81_adj_1032, n32607, 
        n37092, n81_adj_1033, n32612, n35886, n126_adj_1034, n32179, 
        n14361, n32593, n46, n25353;
    wire [8:0]\CPU_ALU.result_8__N_653 ;
    
    wire n6_adj_1035;
    wire [8:0]\CPU_ALU.result_8__N_617 ;
    
    wire n10, n126_adj_1036, n14, n32152, n32153;
    wire [7:0]n12099;
    
    wire n32251, n32252, n13_adj_1037;
    wire [7:0]n441;
    
    wire n126_adj_1038;
    wire [7:0]n10249;
    
    wire n20604, n32382, n32298, CK_keep_enable_112, n13877, n32566, 
        n32567, n126_adj_1039, n32284, n19382, n36117, n32310, n8_adj_1040, 
        n32868;
    wire [3:0]alu_ctrl;   // c:/kevan/a3041/p3041a/osr8v3.vhd(217[9:17])
    
    wire n10_adj_1041, n35902, n32381, n32292, n32393, n34879, n32380, 
        n32476, n37070, n29166, n37055, n34887, n32475, n29136, 
        n12_adj_1042, n13_adj_1043, n25509, n37069, n18, n25541, 
        n9_adj_1044, n32396, n15624, n32745, n31641, n32174, n32173, 
        n126_adj_1045, n31547, n36114, n32516, n29165, n160, n4_adj_1046, 
        n32397, DS_N_933, n20152, n2584, n2583, n29135, n2582, 
        n31718, n29164, n25340, n18_adj_1047, n32272, n32273, n32274, 
        n24823, n31572, n15620, n34565, n20641, n32757, n32758, 
        n32156, n7354, n20097, n8_adj_1048, n11, n10_adj_1049, n13_adj_1050, 
        n11_adj_1051, n14_adj_1052, n20_adj_1053, n44, n9513, n8_adj_1054, 
        n37073, n12_adj_1055, n8_adj_1056, n24698, n15391, n31695, 
        n13998, n36826, n37072, n13634, n24601, n32676, n32368, 
        n20165, n32674, n32672, n34971, n32367, n31858, n32670, 
        n32664, n32666, n32479, n32269, n34975, n32478;
    wire [7:0]n10205;
    
    wire n32668, n19916, n7516, n41, n5_adj_1057, n19988, n32821, 
        n32756, n32159, n19861, n32254, n34566, n9_adj_1058, n32640, 
        n13856, n32663, n37076, n34489, n34488, n7417, n7357, 
        n31549, n20067, n63_adj_1059, n13633, n32748, n20217, n32171, 
        n36809, n36810, n37075, n32255, n34568, n32753, n32754, 
        n32162, n34461, n34462, n34569, n34555, n34556, n5_adj_1060, 
        n34570, n10369, n32170, n34541, n34542, n34527, n34528, 
        n34518, n34519, n34499, n29288, n32751, n32752, n32165, 
        n34479, n34460, n34442, n34443, n34433, n34434, n34424, 
        n34425, n19419, n13921, n9168, n19977, n24930, n36827, 
        n36828, n20040, n32376, n24642, n9_adj_1061, n19, n29163;
    wire [10:0]n6892;
    
    wire n63_adj_1062, n12_adj_1063, n29134, n37079, n32356, n12385, 
        n31602, n37078, n32848, n32355, n32482, n32749, n32750, 
        n32168, n36811, n32210;
    wire [7:0]n11921;
    
    wire n37082, n37081, n32886, n40216, n26, n31692, n24820, 
        n10_adj_1064, n31916, n32741, n32742, n32177, n32481, n45_adj_1065, 
        n38, n31848, n20701, n32327, n32326, n32485, n32484, n63_adj_1066, 
        n32257, n32258, n32259, n32641, n32665, n7437, n68, n65, 
        n57_adj_1067, n126_adj_1068, n45_adj_1069, n38_adj_1070, n20702, 
        n68_adj_1071, n57_adj_1072, n59, n62_adj_1073;
    wire [10:0]n6952;
    
    wire n62_adj_1074, n63_adj_1075, n25281, n30, n4_adj_1076, n68_adj_1077, 
        n57_adj_1078, n13894, n13625, n34444, n59_adj_1079, n62_adj_1080, 
        n32642, n32667, n62_adj_1081, n32730, n32731, n32186, n37085, 
        n68_adj_1082, n57_adj_1083, n32622, n32623, n32195, n59_adj_1084, 
        n62_adj_1085, n62_adj_1086, n32502, n32503, n32204, n68_adj_1087, 
        n57_adj_1088, n29162, n34974, n59_adj_1089, n62_adj_1090, 
        n39888, n19867, n32500, n32501, n32207, n62_adj_1091, n37084, 
        n68_adj_1092, n57_adj_1093, n59_adj_1094, n62_adj_1095, n41_adj_1096, 
        n29161, n62_adj_1097, n13626, n13627, n31960, n32497, n32498, 
        n16, n63_adj_1098, n32444, n15267, n13628, n2635, n68_adj_1099, 
        n57_adj_1100, CK_keep_enable_23, n13900, n32643, n32669, n32439, 
        n15270, n59_adj_1101, n62_adj_1102, n39886, n39885, n39887, 
        n68_adj_1103, n57_adj_1104, n62_adj_1105, n13899, n29160, 
        n29133, n63_adj_1106, n126_adj_1107;
    wire [8:0]\CPU_ALU.result_8__N_644 ;
    
    wire n13629, n13898, n13897, n13896, n31956, n13630, n59_adj_1108, 
        n62_adj_1109, n13895, n36454, n25295, n13632, n32425, n15273, 
        n32418, n15276, n25429, n63_adj_1110, n14329, n33557;
    wire [11:0]n9485;
    
    wire n32715;
    wire [11:0]n9514;
    
    wire n29159, n126_adj_1111, n29132, n126_adj_1112, n126_adj_1113, 
        n10_adj_1114, n36898, n36897, n36899, n10_adj_1115, n10_adj_1116, 
        n10_adj_1117, n2634, n68_adj_1118, n57_adj_1119, n37088, n59_adj_1120, 
        n62_adj_1121, n29131, n126_adj_1122, n126_adj_1123, n37253, 
        n37254, n31850, n32714, n62_adj_1124, n32713, n34343, n2633, 
        n68_adj_1125, n57_adj_1126, flag_Z_N_960, n32794, n63_adj_1127, 
        n37087, n59_adj_1128, n62_adj_1129, n62_adj_1130, n63_adj_1131, 
        n15, n16_adj_1132, n10_adj_1133, n34970, n34969, n32578, 
        n34344, n37091, n37090, n34581, n32712, n10_adj_1134, n10_adj_1135, 
        n68_adj_1136, n57_adj_1137, n32797, n6_adj_1138, n59_adj_1139, 
        n62_adj_1140;
    wire [7:0]n12188;
    wire [10:0]n6916;
    
    wire n63_adj_1141, n126_adj_1142;
    wire [7:0]alu_in_y;   // c:/kevan/a3041/p3041a/osr8v3.vhd(215[19:27])
    
    wire n13624, n31958, n62_adj_1143, n31856, n29130, n63_adj_1144, 
        n126_adj_1145, n61, n25312, n68_adj_1146, n57_adj_1147, n59_adj_1148, 
        n62_adj_1149;
    wire [8:0]\CPU_ALU.result ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(282[11:17])
    
    wire n32802, n55, n62_adj_1150, n31680, n32780, n37094, n61_adj_1151, 
        n37093, n34345, n71, n68_adj_1152, n57_adj_1153, n36407, 
        n32862, n59_adj_1154, n62_adj_1155, n126_adj_1156, n36781, 
        n36782, n16288, n125_adj_1157, n3378, n29156, n61_adj_1158, 
        n61_adj_1159, n16548, n125_adj_1160, n32863, n62_adj_1161, 
        n32711, n61_adj_1162, n34671, n68_adj_1163, n57_adj_1164;
    wire [11:0]n1332;
    
    wire n59_adj_1165, n62_adj_1166, n62_adj_1167, n17849, n61_adj_1168, 
        n32710, n20123, n63_adj_1169, n18885, CK_keep_enable_136;
    wire [11:0]n9528;
    
    wire n68_adj_1170, n57_adj_1171, n36, n59_adj_1172, n62_adj_1173, 
        n62_adj_1174, n29155, n61_adj_1175, n61_adj_1176, n61_adj_1178, 
        n32709, n45_adj_1179, n38_adj_1180, n20717, n68_adj_1181, 
        n57_adj_1182, n59_adj_1183, n62_adj_1184, n45_adj_1185, n38_adj_1186, 
        n20718, n45_adj_1187, n38_adj_1188, n20719, n45_adj_1189, 
        n38_adj_1190, n20720, n45_adj_1191, n38_adj_1192, n20721, 
        n45_adj_1193, n38_adj_1194, n20722, n34818, n32208, n32205, 
        n32196, n32187, n32178, n32169, n32166, n32163, n32160, 
        n32157, CK_keep_enable_57, n15285, n15279, n32199, n32193, 
        n32190, n32184, n32181, n32175, n32172, n57_adj_1195, n57_adj_1196, 
        n57_adj_1197, n57_adj_1198, n62_adj_1199, n61_adj_1200, n10_adj_1201, 
        n31687, n68_adj_1202, n32460, n35, n45_adj_1203, n38_adj_1204, 
        n20723, n34886, n59_adj_1205, n62_adj_1206, n62_adj_1207, 
        n68_adj_1208, n45_adj_1209, n38_adj_1210, n20724, n59_adj_1211, 
        n62_adj_1212, n62_adj_1213, n4_adj_1214, n34564, n19371, n32458, 
        n35_adj_1215, n45_adj_1216, n38_adj_1217, n20725, n37097, 
        n37096, n68_adj_1218, n45_adj_1219, n38_adj_1220, n20726, 
        n45_adj_1221, n38_adj_1222, n20727, n45_adj_1223, n38_adj_1224, 
        n20728, n59_adj_1225, n62_adj_1226, n62_adj_1227, n68_adj_1228, 
        n45_adj_1229, n38_adj_1230, n20729, n59_adj_1231, n62_adj_1232, 
        n31643, n32644, n32671, n62_adj_1233, n45_adj_1234, n38_adj_1235, 
        n20730, n36118, n36119, n31701, n33576, n31722, n33575, 
        n35887, n36131, n35881, n32645, n32673, n32456, n35_adj_1236, 
        n124, n13684, n31752, n24618, n32454, n35_adj_1237, n29128, 
        n63_adj_1238;
    wire [8:0]n21;
    
    wire n31, n32861, n63_adj_1240, n13685, n13686, n13687, n13688, 
        n13689, n13690, n13724, n31799, n29154, n35901, n32852, 
        n19848, n20141, n36113, n32851, n20655, n29153, n37100, 
        n13758;
    wire [10:0]n11250;
    
    wire n34878, n34877, n5_adj_1241, n32392, n10_adj_1242, n37099, 
        n31900, n31546, n32452, n35_adj_1243, n36605, n36604, n36606;
    wire [5:0]n1732;
    
    wire n11_adj_1244, n30_adj_1245, n34435, n24620, n32815, n37103, 
        n34875, n34874, n34876, n37102, n18_adj_1246, n35903, n32529, 
        n32859, n32860, n63_adj_1247, n37106, n37105, n32646, n32675, 
        n32647, n32677;
    wire [7:0]n9782;
    
    wire n32450, n35_adj_1248, n9484, n32445, n35_adj_1249, n85, 
        n13725, n32260, n32261, n32262, n32263, n32264, n32265, 
        n32266, n32267, n32268, n13726, n85_adj_1250, n34861, n13727, 
        n85_adj_1251, n13728, n85_adj_1252;
    wire [7:0]n10181;
    wire [7:0]n10193;
    
    wire n13729, n85_adj_1253, n13730, n85_adj_1254, n85_adj_1255, 
        n85_adj_1256, n32357, n13878, n12_adj_1257;
    wire [7:0]\CPU_ALU.result_8__N_609 ;
    
    wire n48, n34582, n7_adj_1258, n9527, n34426;
    wire [7:0]\CPU_ALU.result_8__N_601 ;
    wire [7:0]\CPU_ALU.result_8__N_593 ;
    
    wire n16355, n35877, n37054, n32384, n32687, n36453, n36452, 
        n52, n8_adj_1259, n32648, n32679, n34857, n34856, n13879, 
        n36409, n36408, n36410, n32649, n32681, n13880, n32070, 
        n13881, n34851, n13882, n32068, n32069, n13883, n32429, 
        n32856, n7_adj_1260, n7_adj_1261, n54, n37065, n7_adj_1262, 
        n13884, n15214, n32430, n22926, n32855, n32433, n32442, 
        n35_adj_1263, n16218, n32530, n32533, n32434, n32435, n32067, 
        n32065, n32066, n32438, n32440, n35_adj_1264, n62_adj_1265, 
        n34847, n34845, n13766;
    wire [10:0]n11063;
    
    wire n32280, n13785, n13789, n32678, n62_adj_1266, n32436, n35_adj_1267, 
        n32661, n34843, n32680, n31_adj_1268, n32660, n31_adj_1269, 
        n32682, n32233, n100, n63_adj_1270, n32234, n32375, n35889, 
        n35890, n59_adj_1271, n35879, n35880, n18280, n32431, n35_adj_1272, 
        n62_adj_1273, n32610, n32600, n19575, n32595, n32587, n32582, 
        n32576, n32427, n35_adj_1274, n37101, n16823, n32353, n31772, 
        n32791, n15784, n35_adj_1275, n32534, n43_adj_1276, n32605, 
        n34557, n35197, n35888, n63_adj_1277, n49, n34839, n34837, 
        n34826, n34824, n32423, n35_adj_1278, n46_adj_1279, n20533, 
        n32329, n34822, n34820, n13_adj_1280, n14_adj_1281, n36115, 
        n36116, n32592, WR_N_916, n64, n34543, n32858, n46_adj_1282, 
        n63_adj_1283, CK_keep_enable_130, n32411, n32615, n46_adj_1284, 
        n63_adj_1285, n32486, n42;
    wire [7:0]n1520;
    
    wire n13645, n32616, n32857, n63_adj_1286, n35_adj_1287, n32410, 
        n35_adj_1288, n62_adj_1289, n32282, n32483, n42_adj_1290, 
        n36130, n32480, n42_adj_1291, n35_adj_1292, n32294, n35_adj_1293, 
        n32307, n32477, n42_adj_1294, n40462, n35_adj_1295, n32335, 
        n35_adj_1296, n32349, n35_adj_1297, n34529, n32363, n32389, 
        n35_adj_1298, n32474, n42_adj_1299, n32387, n20676, n35_adj_1300, 
        n32365, n32471, n42_adj_1301, n55_adj_1302, n58, n6_adj_1303, 
        n32468, n42_adj_1304, n32325, n42_adj_1305;
    wire [7:0]n1511;
    
    wire n13650, n34520, n32352, n42_adj_1306, n34821, n32366, n42_adj_1307, 
        n6_adj_1308, n32379, n42_adj_1309, n34825, n32412, n42_adj_1310, 
        n32283, n42_adj_1311, n36120;
    wire [0:0]n13216;
    
    wire n25581, n32417, n12_adj_1312, n34838, n20192, n32295, n42_adj_1313, 
        n37056, n12_adj_1314, n32011, CK_keep_enable_128, n31904, 
        n34842, n13_adj_1315, n34846, n68_adj_1316, n59_adj_1317, 
        n62_adj_1318, n68_adj_1319, n59_adj_1320, n62_adj_1321, n61_adj_1322, 
        n125_adj_1323, n125_adj_1324, n54_adj_1325, n34850, n125_adj_1326, 
        n63_adj_1327, n32823, n125_adj_1328, n32825, n125_adj_1329, 
        n125_adj_1330, n20162, n7_adj_1331, n16600, n7_adj_1332, n16574, 
        n16636, n35112, n16662, n16688, n7_adj_1333, n16714, n7_adj_1334, 
        n7_adj_1335, n63_adj_1336, n32215, n125_adj_1337, n22_adj_1338, 
        n32504, n63_adj_1339, n32345, n37095, n36451, n34860, n32224, 
        n32218, n32270, n32827, n32830, n31599, n32038, n33598, 
        n31557, n32230, n32227, n32315, n32318, n33369, n32465, 
        n42_adj_1340, n32056, n32053, n32279, n32044, n32302, n42_adj_1341, 
        n32275, n32041, n57_adj_1342, n34885, n4_adj_1343, n32421, 
        n32426, n32058, n32057, n32055, n32054, n32046, n32045, 
        n32043, n32042, n32040, n32039, n20643, n35127, n32232, 
        n32231, n29152, n32844, CK_keep_enable_140, n32229, n32228, 
        n32226, n32225, n32220, n32219, n32217, n32216, n32818, 
        n29127, n4_adj_1344, n37059, n29126, n34973, n29125, n29150, 
        n37255, n29149, n29148, n29147, n29146, n29144, n29143, 
        n73, n29142, n29141, n29140, n32271, n29174, n29173, n29139, 
        n29172, n29171, n29170;
    
    FD1P3DX reg_SP_i0_i0 (.D(n32154), .SP(CK_keep_enable_33), .CK(CK_keep), 
            .CD(TP2_c), .Q(reg_SP[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_SP_i0_i0.GSR = "ENABLED";
    FD1P3AX reg_B__i0 (.D(n13893), .SP(CK_keep_enable_2), .CK(CK_keep), 
            .Q(reg_B[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_B__i0.GSR = "ENABLED";
    LUT4 i23395_2_lut_4_lut (.A(n12_c), .B(n9), .C(n24886), .D(cpu_data_in[1]), 
         .Z(n32510)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;
    defparam i23395_2_lut_4_lut.init = 16'h1500;
    PFUMX i22009 (.BLUT(n32122), .ALUT(n32123), .C0(n9040), .Z(n32124));
    LUT4 i1_2_lut_4_lut (.A(n12_c), .B(n9), .C(n24886), .D(cpu_data_in[0]), 
         .Z(n20190)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h1500;
    LUT4 i15376_2_lut_3_lut (.A(\CPU.state [7]), .B(\CPU.state [5]), .C(\CPU.state [4]), 
         .Z(n25463)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i15376_2_lut_3_lut.init = 16'hfefe;
    LUT4 i22086_4_lut (.A(alu_out[0]), .B(n32507), .C(n15241), .D(n20190), 
         .Z(n32201)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i22086_4_lut.init = 16'hfaca;
    LUT4 i22085_3_lut (.A(reg_A[0]), .B(prog_data[0]), .C(n15241), .Z(n32200)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22085_3_lut.init = 16'hcaca;
    LUT4 i22835_4_lut (.A(reg_H[0]), .B(n31660), .C(\CPU.first_operand [0]), 
         .D(n13752), .Z(n32304)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22835_4_lut.init = 16'hc088;
    FD1P3AX \CPU.opcode_i0_i0  (.D(prog_data[0]), .SP(CK_keep_enable_40), 
            .CK(CK_keep), .Q(\CPU.opcode [0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.opcode_i0_i0 .GSR = "ENABLED";
    LUT4 i21788_2_lut (.A(prog_data[0]), .B(prog_data[1]), .Z(n6965)) /* synthesis lut_function=(A (B)) */ ;
    defparam i21788_2_lut.init = 16'h8888;
    LUT4 i23001_2_lut (.A(n34823), .B(\CPU.state[0] ), .Z(n32303)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23001_2_lut.init = 16'h8888;
    LUT4 i22988_2_lut_3_lut (.A(\CPU.opcode [1]), .B(n13673), .C(n946[3]), 
         .Z(n32305)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i22988_2_lut_3_lut.init = 16'h1010;
    CCU2D add_76_9 (.A0(prog_addr[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(prog_addr[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29137), .COUT(n29138), .S0(n946[7]), .S1(n946[8]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam add_76_9.INIT0 = 16'h5aaa;
    defparam add_76_9.INIT1 = 16'h5aaa;
    defparam add_76_9.INJECT1_0 = "NO";
    defparam add_76_9.INJECT1_1 = "NO";
    LUT4 i23349_2_lut_3_lut (.A(\CPU.opcode [1]), .B(n13673), .C(n946[2]), 
         .Z(n32306)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23349_2_lut_3_lut.init = 16'h1010;
    LUT4 i22956_4_lut (.A(reg_L[0]), .B(n31660), .C(prog_data[0]), .D(n13752), 
         .Z(n32464)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22956_4_lut.init = 16'hc088;
    LUT4 i23123_2_lut (.A(n34827), .B(\CPU.state[0] ), .Z(n32463)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23123_2_lut.init = 16'h8888;
    PFUMX i22012 (.BLUT(n32125), .ALUT(n32126), .C0(n9040), .Z(n32127));
    LUT4 i22843_2_lut_3_lut (.A(\CPU.opcode [1]), .B(n13673), .C(n946[1]), 
         .Z(n32308)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i22843_2_lut_3_lut.init = 16'h1010;
    LUT4 i23352_2_lut_3_lut (.A(\CPU.opcode [1]), .B(n13673), .C(n946[0]), 
         .Z(n32309)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23352_2_lut_3_lut.init = 16'h1010;
    PFUMX i22123 (.BLUT(n32236), .ALUT(n32237), .C0(n3382), .Z(n81));
    LUT4 i14883_2_lut (.A(alu_out[2]), .B(\CPU.state[0] ), .Z(n9856[2])) /* synthesis lut_function=(A (B)) */ ;
    defparam i14883_2_lut.init = 16'h8888;
    PFUMX i22015 (.BLUT(n32128), .ALUT(n32129), .C0(n9040), .Z(n32130));
    PFUMX i24069 (.BLUT(n1916[5]), .ALUT(n34500), .C0(\CPU.state[0] ), 
          .Z(n34501));
    LUT4 i22083_4_lut (.A(alu_out[1]), .B(n32510), .C(n15241), .D(n31623), 
         .Z(n32198)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i22083_4_lut.init = 16'hfaca;
    LUT4 i23307_2_lut_3_lut (.A(\CPU.opcode [1]), .B(n13673), .C(n946[8]), 
         .Z(n32513)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23307_2_lut_3_lut.init = 16'h1010;
    PFUMX i24483 (.BLUT(n35198), .ALUT(n7), .C0(prog_data[5]), .Z(n35199));
    PFUMX i27565 (.BLUT(n40162), .ALUT(n7453), .C0(prog_data[5]), .Z(n40163));
    LUT4 i23344_2_lut_3_lut (.A(\CPU.opcode [1]), .B(n13673), .C(n946[7]), 
         .Z(n32514)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23344_2_lut_3_lut.init = 16'h1010;
    LUT4 i23276_2_lut_3_lut (.A(\CPU.opcode [1]), .B(n13673), .C(n946[6]), 
         .Z(n32898)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23276_2_lut_3_lut.init = 16'h1010;
    LUT4 mux_442_i6_3_lut (.A(reg_IX[5]), .B(reg_IY[5]), .C(n13), .Z(n1851[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1075[6] 1078[15])
    defparam mux_442_i6_3_lut.init = 16'hcaca;
    FD1P3AX cpu_addr_i0_i0 (.D(n32211), .SP(CK_keep_enable_50), .CK(CK_keep), 
            .Q(\cpu_addr_9__N_375[0] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_addr_i0_i0.GSR = "ENABLED";
    FD1P3AX cpu_data_out_i0_i0 (.D(n15288), .SP(CK_keep_enable_5), .CK(CK_keep), 
            .Q(ram_in[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_data_out_i0_i0.GSR = "ENABLED";
    FD1P3DX flag_Z_695 (.D(n13282[0]), .SP(CK_keep_enable_6), .CK(CK_keep), 
            .CD(TP2_c), .Q(flag_Z)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam flag_Z_695.GSR = "ENABLED";
    FD1P3DX flag_C_696 (.D(n13234[0]), .SP(CK_keep_enable_7), .CK(CK_keep), 
            .CD(TP2_c), .Q(flag_C)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam flag_C_696.GSR = "ENABLED";
    FD1P3DX flag_S_697 (.D(n13266[0]), .SP(CK_keep_enable_8), .CK(CK_keep), 
            .CD(TP2_c), .Q(flag_S)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam flag_S_697.GSR = "ENABLED";
    FD1P3DX flag_I_698 (.D(n13250[0]), .SP(CK_keep_enable_9), .CK(CK_keep), 
            .CD(TP2_c), .Q(flag_I)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam flag_I_698.GSR = "ENABLED";
    FD1S3DX WR_699 (.D(WR_N_912), .CK(CK_keep), .CD(TP2_c), .Q(CPUWR)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam WR_699.GSR = "ENABLED";
    FD1S3DX DS_700 (.D(DS_N_928), .CK(CK_keep), .CD(TP2_c), .Q(CPUDS)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam DS_700.GSR = "ENABLED";
    FD1P3AX \CPU.first_operand_i0_i0  (.D(prog_data[0]), .SP(CK_keep_enable_64), 
            .CK(CK_keep), .Q(\CPU.first_operand [0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.first_operand_i0_i0 .GSR = "ENABLED";
    FD1P3AX \CPU.second_operand_i0_i0  (.D(prog_data[0]), .SP(CK_keep_enable_71), 
            .CK(CK_keep), .Q(\CPU.second_operand [0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.second_operand_i0_i0 .GSR = "ENABLED";
    FD1S3AX reg_A_i0_i0 (.D(n32202), .CK(CK_keep), .Q(reg_A[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_A_i0_i0.GSR = "ENABLED";
    FD1P3AX reg_IY_i0_i0 (.D(n57), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IY[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IY_i0_i0.GSR = "ENABLED";
    FD1P3AX reg_IX_i0_i0 (.D(n57_adj_1002), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IX[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IX_i0_i0.GSR = "ENABLED";
    FD1S1A alu_cin_I_0 (.D(alu_cin_N_942), .CK(alu_cin_N_949), .Q(alu_cin)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(377[2] 1293[14])
    defparam alu_cin_I_0.GSR = "ENABLED";
    LUT4 i22082_3_lut (.A(reg_A[1]), .B(prog_data[1]), .C(n15241), .Z(n32197)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22082_3_lut.init = 16'hcaca;
    FD1S3BX \CPU.state_i1  (.D(\CPU.state_7__N_693 [0]), .CK(CK_keep), .PD(TP2_c), 
            .Q(\CPU.state[0] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.state_i1 .GSR = "ENABLED";
    FD1P3AX reg_E__i0 (.D(n13683), .SP(CK_keep_enable_98), .CK(CK_keep), 
            .Q(reg_E[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_E__i0.GSR = "ENABLED";
    LUT4 i23394_2_lut_3_lut (.A(\CPU.opcode [1]), .B(n13673), .C(n946[10]), 
         .Z(n32511)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23394_2_lut_3_lut.init = 16'h1010;
    LUT4 mux_3818_i2_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(reg_C[1]), 
         .D(cpu_data_in[1]), .Z(n12010[1])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3818_i2_3_lut_4_lut.init = 16'hf4b0;
    PFUMX i22018 (.BLUT(n32131), .ALUT(n32132), .C0(n9040), .Z(n32133));
    LUT4 mux_3818_i1_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(reg_C[0]), 
         .D(cpu_data_in[0]), .Z(n12010[0])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3818_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i21790_3_lut_4_lut (.A(TP2_c), .B(n25463), .C(n4_adj_1004), .D(n24573), 
         .Z(n31898)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;
    defparam i21790_3_lut_4_lut.init = 16'haaba;
    LUT4 mux_3818_i3_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(reg_C[2]), 
         .D(cpu_data_in[2]), .Z(n12010[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3818_i3_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i23343_2_lut_3_lut (.A(\CPU.opcode [1]), .B(n13673), .C(n946[9]), 
         .Z(n32512)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23343_2_lut_3_lut.init = 16'h1010;
    LUT4 mux_442_i5_3_lut (.A(reg_IX[4]), .B(reg_IY[4]), .C(n13), .Z(n1851[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1075[6] 1078[15])
    defparam mux_442_i5_3_lut.init = 16'hcaca;
    LUT4 i22846_2_lut_3_lut (.A(\CPU.opcode [1]), .B(n13673), .C(n946[11]), 
         .Z(n32499)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i22846_2_lut_3_lut.init = 16'h1010;
    LUT4 mux_3818_i4_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(reg_C[3]), 
         .D(cpu_data_in[3]), .Z(n12010[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3818_i4_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_4_lut_then_3_lut (.A(\CPU.opcode[5] ), .B(\CPU.opcode [1]), 
         .C(\CPU.opcode [2]), .Z(n37058)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_4_lut_then_3_lut.init = 16'h0202;
    PFUMX i24462 (.BLUT(n35128), .ALUT(n35126), .C0(prog_data[6]), .Z(n35129));
    LUT4 prog_data_5__bdd_4_lut_27603 (.A(n7302), .B(n7439), .C(n7374), 
         .D(n7508), .Z(n40215)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam prog_data_5__bdd_4_lut_27603.init = 16'h005c;
    LUT4 i22121_3_lut_4_lut (.A(reg_A[7]), .B(reg_B[7]), .C(prog_data[0]), 
         .D(n3376), .Z(n32236)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22121_3_lut_4_lut.init = 16'hcaaa;
    LUT4 i23167_2_lut_3_lut (.A(CPUWR), .B(\CPU.state [4]), .C(ram_out[0]), 
         .Z(n32716)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i23167_2_lut_3_lut.init = 16'h4040;
    LUT4 i22077_4_lut (.A(alu_out[2]), .B(n32685), .C(n15241), .D(n31603), 
         .Z(n32192)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i22077_4_lut.init = 16'hfaca;
    PFUMX i24453 (.BLUT(n35116), .ALUT(n35115), .C0(prog_data[6]), .Z(n35117));
    LUT4 i23154_2_lut_3_lut (.A(CPUWR), .B(\CPU.state [4]), .C(ram_out[1]), 
         .Z(n32717)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i23154_2_lut_3_lut.init = 16'h4040;
    LUT4 i22122_3_lut_4_lut (.A(reg_C[7]), .B(reg_D[7]), .C(prog_data[0]), 
         .D(n3376), .Z(n32237)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22122_3_lut_4_lut.init = 16'hcaaa;
    LUT4 mux_442_i2_3_lut (.A(reg_IX[1]), .B(reg_IY[1]), .C(n13), .Z(n1851[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1075[6] 1078[15])
    defparam mux_442_i2_3_lut.init = 16'hcaca;
    LUT4 i23153_2_lut_3_lut (.A(CPUWR), .B(\CPU.state [4]), .C(ram_out[2]), 
         .Z(n32718)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i23153_2_lut_3_lut.init = 16'h4040;
    LUT4 i23152_2_lut_3_lut (.A(CPUWR), .B(\CPU.state [4]), .C(ram_out[3]), 
         .Z(n32719)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i23152_2_lut_3_lut.init = 16'h4040;
    PFUMX i22126 (.BLUT(n32239), .ALUT(n32240), .C0(n3382), .Z(n81_adj_1005));
    LUT4 prog_data_6__I_0_727_Mux_0_i84_4_lut_4_lut (.A(n3383), .B(n3382), 
         .C(reg_L[0]), .D(n82), .Z(n84)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_0_i84_4_lut_4_lut.init = 16'h7340;
    LUT4 i22076_3_lut (.A(reg_A[2]), .B(prog_data[2]), .C(n15241), .Z(n32191)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22076_3_lut.init = 16'hcaca;
    LUT4 n12_bdd_3_lut_24959_3_lut (.A(n3383), .B(prog_data[2]), .C(n12_adj_1006), 
         .Z(n35878)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam n12_bdd_3_lut_24959_3_lut.init = 16'h5454;
    LUT4 i23819_3_lut (.A(n15300), .B(n11092), .C(n31564), .Z(n31816)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;
    defparam i23819_3_lut.init = 16'h3b3b;
    PFUMX i24449 (.BLUT(n35113), .ALUT(n35111), .C0(prog_data[6]), .Z(n35114));
    LUT4 mux_3818_i5_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(reg_C[4]), 
         .D(cpu_data_in[4]), .Z(n12010[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3818_i5_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_3818_i6_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(reg_C[5]), 
         .D(cpu_data_in[5]), .Z(n12010[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3818_i6_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i5481_4_lut (.A(n17), .B(\CPU.opcode [0]), .C(n10514), .D(n31884), 
         .Z(n15300)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i5481_4_lut.init = 16'hc0ca;
    LUT4 i22014_3_lut (.A(n9205[8]), .B(n1916[8]), .C(n15184), .Z(n32129)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22014_3_lut.init = 16'hcaca;
    PFUMX i22021 (.BLUT(n32134), .ALUT(n32135), .C0(n9040), .Z(n32136));
    LUT4 i22124_3_lut_4_lut (.A(reg_A[6]), .B(reg_B[6]), .C(prog_data[0]), 
         .D(n3376), .Z(n32239)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22124_3_lut_4_lut.init = 16'hcaaa;
    PFUMX mux_3447_i1 (.BLUT(n32369), .ALUT(n32370), .C0(n10514), .Z(n10528[0]));
    LUT4 prog_data_6__I_0_727_Mux_7_i84_4_lut_4_lut (.A(n3383), .B(n3382), 
         .C(reg_L[7]), .D(n82_adj_1007), .Z(n84_adj_1008)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_7_i84_4_lut_4_lut.init = 16'h7340;
    LUT4 prog_data_6__I_0_727_Mux_6_i84_4_lut_4_lut (.A(n3383), .B(n3382), 
         .C(reg_L[6]), .D(n82_adj_1009), .Z(n84_adj_1010)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_6_i84_4_lut_4_lut.init = 16'h7340;
    LUT4 prog_data_6__I_0_727_Mux_3_i84_4_lut_4_lut (.A(n3383), .B(n3382), 
         .C(reg_L[3]), .D(n82_adj_1011), .Z(n84_adj_1012)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_3_i84_4_lut_4_lut.init = 16'h7340;
    LUT4 prog_data_6__I_0_727_Mux_4_i84_4_lut_4_lut (.A(n3383), .B(n3382), 
         .C(reg_L[4]), .D(n82_adj_1013), .Z(n84_adj_1014)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_4_i84_4_lut_4_lut.init = 16'h7340;
    PFUMX i12759 (.BLUT(n32348), .ALUT(n43), .C0(\CPU.state[3] ), .Z(n51));
    LUT4 prog_data_6__I_0_727_Mux_2_i84_4_lut_4_lut (.A(n3383), .B(n3382), 
         .C(reg_L[2]), .D(n82_adj_1015), .Z(n84_adj_1016)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_2_i84_4_lut_4_lut.init = 16'h7340;
    LUT4 i30_3_lut (.A(\CPU.opcode [3]), .B(\CPU.opcode [2]), .C(\CPU.opcode [0]), 
         .Z(n17)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i30_3_lut.init = 16'h1616;
    LUT4 i2_3_lut_4_lut (.A(\CPU.state[0] ), .B(\CPU.state[2] ), .C(n20115), 
         .D(n31746), .Z(n31747)) /* synthesis lut_function=(A (B+(C+(D)))+!A ((C+(D))+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i2_3_lut_4_lut.init = 16'hfff9;
    LUT4 mux_3818_i7_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(reg_C[6]), 
         .D(cpu_data_in[6]), .Z(n12010[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3818_i7_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_3818_i8_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(reg_C[7]), 
         .D(cpu_data_in[7]), .Z(n12010[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3818_i8_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i22830_4_lut (.A(reg_H[1]), .B(n31660), .C(\CPU.first_operand [1]), 
         .D(n13752), .Z(n32297)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22830_4_lut.init = 16'hc088;
    LUT4 prog_data_6__I_0_727_Mux_1_i84_4_lut_4_lut (.A(n3383), .B(n3382), 
         .C(reg_L[1]), .D(n82_adj_1017), .Z(n84_adj_1018)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_1_i84_4_lut_4_lut.init = 16'h7340;
    LUT4 prog_data_6__I_0_729_Mux_0_i84_4_lut_4_lut (.A(n3383), .B(n3382), 
         .C(alu_ctrl_3__N_885), .D(n19645), .Z(n84_adj_1019)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_729_Mux_0_i84_4_lut_4_lut.init = 16'h7340;
    LUT4 i23162_2_lut (.A(n34840), .B(\CPU.state[0] ), .Z(n32296)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23162_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_else_3_lut (.A(\CPU.opcode[5] ), .B(\CPU.opcode [1]), 
         .C(\CPU.opcode [2]), .D(\CPU.opcode [0]), .Z(n37057)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;
    defparam i1_4_lut_else_3_lut.init = 16'haaba;
    LUT4 i22958_4_lut (.A(reg_L[1]), .B(n31660), .C(prog_data[1]), .D(n13752), 
         .Z(n32467)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22958_4_lut.init = 16'hc088;
    LUT4 i23023_2_lut (.A(n34844), .B(\CPU.state[0] ), .Z(n32466)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23023_2_lut.init = 16'h8888;
    LUT4 i22074_4_lut (.A(alu_out[3]), .B(n32729), .C(n15241), .D(n20226), 
         .Z(n32189)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i22074_4_lut.init = 16'hfaca;
    LUT4 i22073_3_lut (.A(reg_A[3]), .B(prog_data[3]), .C(n15241), .Z(n32188)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22073_3_lut.init = 16'hcaca;
    LUT4 reg_L_1__bdd_3_lut_24274_4_lut (.A(prog_data[2]), .B(n19845), .C(alu_out[1]), 
         .D(reg_L[1]), .Z(n34841)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam reg_L_1__bdd_3_lut_24274_4_lut.init = 16'hfd20;
    LUT4 reg_L_7__bdd_3_lut_24460_4_lut (.A(prog_data[2]), .B(n19845), .C(alu_out[7]), 
         .D(reg_L[7]), .Z(n35126)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam reg_L_7__bdd_3_lut_24460_4_lut.init = 16'hfd20;
    LUT4 i5702_4_lut (.A(n14373[2]), .B(n13122[2]), .C(n15255), .D(n13096), 
         .Z(n15282)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i5702_4_lut.init = 16'hca0a;
    LUT4 prog_data_6__I_0_727_Mux_5_i84_4_lut_4_lut (.A(n3383), .B(n3382), 
         .C(reg_L[5]), .D(n82_adj_1020), .Z(n84_adj_1021)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_5_i84_4_lut_4_lut.init = 16'h7340;
    LUT4 reg_L_4__bdd_3_lut_24302_4_lut (.A(prog_data[2]), .B(n19845), .C(alu_out[4]), 
         .D(reg_L[4]), .Z(n34884)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam reg_L_4__bdd_3_lut_24302_4_lut.init = 16'hfd20;
    LUT4 i22125_3_lut_4_lut (.A(reg_C[6]), .B(reg_D[6]), .C(prog_data[0]), 
         .D(n3376), .Z(n32240)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22125_3_lut_4_lut.init = 16'hcaaa;
    LUT4 i23070_4_lut (.A(n10528[9]), .B(n13713), .C(n32420), .D(n13698), 
         .Z(n32755)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23070_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_then_4_lut (.A(\CPU.opcode [3]), .B(\CPU.opcode [2]), 
         .C(\CPU.opcode [0]), .D(\CPU.opcode [1]), .Z(n37061)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (((D)+!C)+!B)) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'hf535;
    LUT4 reg_L_3__bdd_3_lut_24288_4_lut (.A(prog_data[2]), .B(n19845), .C(alu_out[3]), 
         .D(reg_L[3]), .Z(n34859)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam reg_L_3__bdd_3_lut_24288_4_lut.init = 16'hfd20;
    LUT4 i1_4_lut_else_4_lut (.A(\CPU.opcode [3]), .Z(n37060)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h5555;
    LUT4 i22020_3_lut_4_lut (.A(n9205[6]), .B(n1837[6]), .C(n13096), .D(n15184), 
         .Z(n32135)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam i22020_3_lut_4_lut.init = 16'hc0aa;
    LUT4 i22821_4_lut (.A(reg_H[2]), .B(n31660), .C(\CPU.first_operand [2]), 
         .D(n13752), .Z(n32286)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22821_4_lut.init = 16'hc088;
    LUT4 i76_4_lut_then_1_lut (.A(\CPU.state[0] ), .Z(n37064)) /* synthesis lut_function=(!(A)) */ ;
    defparam i76_4_lut_then_1_lut.init = 16'h5555;
    LUT4 i76_4_lut_else_1_lut (.A(\CPU.state[0] ), .B(n7323), .C(n25377), 
         .D(n36783), .Z(n37063)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i76_4_lut_else_1_lut.init = 16'h0008;
    LUT4 i23151_2_lut (.A(n34848), .B(\CPU.state[0] ), .Z(n32285)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23151_2_lut.init = 16'h8888;
    LUT4 i15457_2_lut_3_lut_4_lut (.A(n19110), .B(n12_adj_1022), .C(\CPU.opcode [0]), 
         .D(\CPU.opcode [1]), .Z(n63_c)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i15457_2_lut_3_lut_4_lut.init = 16'h0010;
    CCU2D add_3239_9 (.A0(reg_IY[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_IY[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29167), .COUT(n29168), .S0(n6928[7]), .S1(n6928[8]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3239_9.INIT0 = 16'h5aaa;
    defparam add_3239_9.INIT1 = 16'h5aaa;
    defparam add_3239_9.INJECT1_0 = "NO";
    defparam add_3239_9.INJECT1_1 = "NO";
    LUT4 i15460_2_lut_3_lut (.A(n19110), .B(n12_adj_1022), .C(n9_adj_1023), 
         .Z(n63_adj_1024)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i15460_2_lut_3_lut.init = 16'h0101;
    PFUMX i22129 (.BLUT(n32242), .ALUT(n32243), .C0(n3382), .Z(n81_adj_1025));
    LUT4 i2_2_lut_2_lut (.A(\CPU.opcode [3]), .B(\CPU.opcode [4]), .Z(n6)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut_2_lut.init = 16'h4444;
    LUT4 i23409_4_lut_4_lut (.A(\CPU.opcode [3]), .B(n31954), .C(n20), 
         .D(n31784), .Z(n32800)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i23409_4_lut_4_lut.init = 16'h1000;
    LUT4 mux_4104_i3_3_lut (.A(prog_addr[2]), .B(n1851[2]), .C(\CPU.opcode[5] ), 
         .Z(n13122[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam mux_4104_i3_3_lut.init = 16'hcaca;
    LUT4 i22127_3_lut_4_lut (.A(reg_A[5]), .B(reg_B[5]), .C(prog_data[0]), 
         .D(n3376), .Z(n32242)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22127_3_lut_4_lut.init = 16'hcaaa;
    LUT4 i23048_2_lut_2_lut (.A(\CPU.state[3] ), .B(flag_I), .Z(n32790)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i23048_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_2_lut (.A(\CPU.state[3] ), .B(prog_data[6]), .Z(n31735)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_2_lut.init = 16'h4444;
    PFUMX i22132 (.BLUT(n32245), .ALUT(n32246), .C0(n3382), .Z(n81_adj_1027));
    LUT4 i23814_3_lut_4_lut_4_lut (.A(\CPU.state[3] ), .B(n19895), .C(n34986), 
         .D(n25531), .Z(n15239)) /* synthesis lut_function=(!(A (B)+!A (B+!((D)+!C)))) */ ;
    defparam i23814_3_lut_4_lut_4_lut.init = 16'h3323;
    LUT4 i22961_4_lut (.A(reg_L[2]), .B(n31660), .C(prog_data[2]), .D(n13752), 
         .Z(n32470)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22961_4_lut.init = 16'hc088;
    PFUMX i22024 (.BLUT(n32137), .ALUT(n32138), .C0(n9040), .Z(n32139));
    LUT4 i23014_2_lut (.A(n34852), .B(\CPU.state[0] ), .Z(n32469)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23014_2_lut.init = 16'h8888;
    LUT4 prog_data_1__bdd_4_lut_24790 (.A(prog_data[1]), .B(prog_data[3]), 
         .C(prog_data[4]), .D(prog_data[2]), .Z(n35275)) /* synthesis lut_function=(!((B (C+(D))+!B !(C (D)))+!A)) */ ;
    defparam prog_data_1__bdd_4_lut_24790.init = 16'h2008;
    LUT4 i23028_2_lut_2_lut (.A(n18576), .B(reg_A[0]), .Z(n32537)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23028_2_lut_2_lut.init = 16'h4444;
    LUT4 i22068_4_lut (.A(alu_out[4]), .B(n32737), .C(n15241), .D(n20199), 
         .Z(n32183)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i22068_4_lut.init = 16'hfaca;
    LUT4 i22128_3_lut_4_lut (.A(reg_C[5]), .B(reg_D[5]), .C(prog_data[0]), 
         .D(n3376), .Z(n32243)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22128_3_lut_4_lut.init = 16'hcaaa;
    LUT4 i23052_2_lut_2_lut (.A(n18576), .B(reg_A[7]), .Z(n32580)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23052_2_lut_2_lut.init = 16'h4444;
    LUT4 i22067_3_lut (.A(reg_A[4]), .B(prog_data[4]), .C(n15241), .Z(n32182)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22067_3_lut.init = 16'hcaca;
    FD1P3AX reg_D__i0 (.D(n13723), .SP(CK_keep_enable_105), .CK(CK_keep), 
            .Q(reg_D[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_D__i0.GSR = "ENABLED";
    PFUMX i22027 (.BLUT(n32140), .ALUT(n32141), .C0(n9040), .Z(n32142));
    LUT4 i22130_3_lut_4_lut (.A(reg_A[4]), .B(reg_B[4]), .C(prog_data[0]), 
         .D(n3376), .Z(n32245)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22130_3_lut_4_lut.init = 16'hcaaa;
    LUT4 i22013_3_lut (.A(n1837[8]), .B(n1539[8]), .C(n15184), .Z(n32128)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22013_3_lut.init = 16'hcaca;
    PFUMX i22030 (.BLUT(n32143), .ALUT(n32144), .C0(n9040), .Z(n32145));
    LUT4 i23057_2_lut_2_lut (.A(n18576), .B(reg_A[6]), .Z(n32585)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23057_2_lut_2_lut.init = 16'h4444;
    PFUMX i22135 (.BLUT(n32248), .ALUT(n32249), .C0(n3382), .Z(n81_adj_1028));
    PFUMX i24057 (.BLUT(n1916[6]), .ALUT(n34480), .C0(\CPU.state[0] ), 
          .Z(n34481));
    LUT4 i23060_2_lut_2_lut (.A(n18576), .B(reg_A[5]), .Z(n32590)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23060_2_lut_2_lut.init = 16'h4444;
    LUT4 i23077_2_lut_2_lut (.A(n18576), .B(reg_A[4]), .Z(n32598)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23077_2_lut_2_lut.init = 16'h4444;
    LUT4 \CPU.opcode_0__bdd_2_lut  (.A(\CPU.opcode[5] ), .B(n34490), .Z(n45)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam \CPU.opcode_0__bdd_2_lut .init = 16'h4444;
    LUT4 i22131_3_lut_4_lut (.A(reg_C[4]), .B(reg_D[4]), .C(prog_data[0]), 
         .D(n3376), .Z(n32246)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22131_3_lut_4_lut.init = 16'hcaaa;
    LUT4 reg_L_5__bdd_3_lut_24360_4_lut (.A(prog_data[2]), .B(n19845), .C(alu_out[5]), 
         .D(reg_L[5]), .Z(n34972)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam reg_L_5__bdd_3_lut_24360_4_lut.init = 16'hfd20;
    LUT4 i23080_2_lut_2_lut (.A(n18576), .B(reg_A[3]), .Z(n32603)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23080_2_lut_2_lut.init = 16'h4444;
    LUT4 mux_442_i3_3_lut (.A(reg_IX[2]), .B(reg_IY[2]), .C(n13), .Z(n1851[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1075[6] 1078[15])
    defparam mux_442_i3_3_lut.init = 16'hcaca;
    PFUMX i22033 (.BLUT(n32146), .ALUT(n32147), .C0(n9040), .Z(n32148));
    LUT4 reg_L_2__bdd_3_lut_24282_4_lut (.A(prog_data[2]), .B(n19845), .C(alu_out[2]), 
         .D(reg_L[2]), .Z(n34849)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam reg_L_2__bdd_3_lut_24282_4_lut.init = 16'hfd20;
    LUT4 i23083_2_lut_2_lut (.A(n18576), .B(reg_A[2]), .Z(n32608)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23083_2_lut_2_lut.init = 16'h4444;
    LUT4 i23088_2_lut_2_lut (.A(n18576), .B(reg_A[1]), .Z(n32613)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23088_2_lut_2_lut.init = 16'h4444;
    LUT4 i22953_2_lut_2_lut_3_lut (.A(prog_data[3]), .B(prog_data[4]), .C(prog_data[5]), 
         .Z(n32287)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i22953_2_lut_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i1_2_lut_3_lut_4_lut (.A(prog_data[3]), .B(prog_data[4]), .C(prog_data[6]), 
         .D(prog_data[5]), .Z(n12)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hffbf;
    PFUMX i24422 (.BLUT(n35068), .ALUT(n35067), .C0(prog_data[6]), .Z(n35069));
    LUT4 reg_L_6__bdd_3_lut_24447_4_lut (.A(prog_data[2]), .B(n19845), .C(alu_out[6]), 
         .D(reg_L[6]), .Z(n35111)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam reg_L_6__bdd_3_lut_24447_4_lut.init = 16'hfd20;
    LUT4 i22011_3_lut (.A(n9205[9]), .B(n1916[9]), .C(n15184), .Z(n32126)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22011_3_lut.init = 16'hcaca;
    PFUMX i22036 (.BLUT(n32149), .ALUT(n32150), .C0(n9040), .Z(n32151));
    LUT4 n37251_bdd_2_lut (.A(n37251), .B(prog_data[1]), .Z(n37252)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n37251_bdd_2_lut.init = 16'h2222;
    LUT4 i14561_2_lut_3_lut (.A(n13_adj_1030), .B(\CPU.opcode[6] ), .C(n34346), 
         .Z(n24637)) /* synthesis lut_function=(A+!(B+!(C))) */ ;
    defparam i14561_2_lut_3_lut.init = 16'hbaba;
    LUT4 prog_data_6__I_0_727_Mux_0_i100_3_lut_then_4_lut (.A(n82), .B(reg_A[0]), 
         .C(n3376), .D(prog_data[1]), .Z(n37067)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_0_i100_3_lut_then_4_lut.init = 16'hcaaa;
    LUT4 prog_data_6__I_0_727_Mux_0_i100_3_lut_else_4_lut (.A(n82), .B(reg_L[0]), 
         .C(n3376), .D(prog_data[1]), .Z(n37066)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_0_i100_3_lut_else_4_lut.init = 16'hcaaa;
    LUT4 i23027_4_lut_4_lut (.A(n3380), .B(n3381), .C(n37068), .D(n81_adj_1031), 
         .Z(n32536)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23027_4_lut_4_lut.init = 16'h5140;
    LUT4 i22133_3_lut_4_lut (.A(reg_A[3]), .B(reg_B[3]), .C(prog_data[0]), 
         .D(n3376), .Z(n32248)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22133_3_lut_4_lut.init = 16'hcaaa;
    LUT4 i22134_3_lut_4_lut (.A(reg_C[3]), .B(reg_D[3]), .C(prog_data[0]), 
         .D(n3376), .Z(n32249)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22134_3_lut_4_lut.init = 16'hcaaa;
    LUT4 mux_1303_Mux_1_i62_3_lut (.A(n6928[1]), .B(n6940[1]), .C(prog_data[5]), 
         .Z(n62)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_1_i62_3_lut.init = 16'hcaca;
    LUT4 prog_data_6__I_0_727_Mux_0_i127_3_lut_4_lut (.A(reg_A[0]), .B(n19110), 
         .C(n126), .D(n3377), .Z(alu_in_x[0])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_0_i127_3_lut_4_lut.init = 16'hf022;
    LUT4 prog_data_6__I_0_729_Mux_0_i125_4_lut_4_lut (.A(n3380), .B(n3379), 
         .C(n37104), .D(n101), .Z(n125)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_729_Mux_0_i125_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i23239_4_lut_4_lut (.A(n3380), .B(n3381), .C(n37074), .D(n81), 
         .Z(n32579)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23239_4_lut_4_lut.init = 16'h5140;
    LUT4 i22923_4_lut (.A(reg_H[3]), .B(n31660), .C(\CPU.first_operand [3]), 
         .D(n13752), .Z(n32414)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22923_4_lut.init = 16'hc088;
    LUT4 mux_4390_i11_3_lut_4_lut (.A(n1837[10]), .B(n1539[10]), .C(n13698), 
         .D(n13589), .Z(n13635)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_4390_i11_3_lut_4_lut.init = 16'haaca;
    LUT4 i23056_4_lut_4_lut (.A(n3380), .B(n3381), .C(n37077), .D(n81_adj_1005), 
         .Z(n32584)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23056_4_lut_4_lut.init = 16'h5140;
    LUT4 i23009_2_lut (.A(n34858), .B(\CPU.state[0] ), .Z(n32413)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23009_2_lut.init = 16'h8888;
    LUT4 i23059_4_lut_4_lut (.A(n3380), .B(n3381), .C(n37080), .D(n81_adj_1025), 
         .Z(n32589)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23059_4_lut_4_lut.init = 16'h5140;
    LUT4 i22962_4_lut (.A(reg_L[3]), .B(n31660), .C(prog_data[3]), .D(n13752), 
         .Z(n32473)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22962_4_lut.init = 16'hc088;
    LUT4 i23022_2_lut (.A(n34862), .B(\CPU.state[0] ), .Z(n32472)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23022_2_lut.init = 16'h8888;
    LUT4 i23073_4_lut_4_lut (.A(n3380), .B(n3381), .C(n37083), .D(n81_adj_1027), 
         .Z(n32597)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23073_4_lut_4_lut.init = 16'h5140;
    LUT4 i2_3_lut_4_lut_adj_166 (.A(\CPU.state[0] ), .B(n7508), .C(n22), 
         .D(n7374), .Z(n20135)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2_3_lut_4_lut_adj_166.init = 16'hfffd;
    LUT4 i23079_4_lut_4_lut (.A(n3380), .B(n3381), .C(n37086), .D(n81_adj_1028), 
         .Z(n32602)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23079_4_lut_4_lut.init = 16'h5140;
    LUT4 i22065_4_lut (.A(alu_out[5]), .B(n32740), .C(n15241), .D(n31640), 
         .Z(n32180)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i22065_4_lut.init = 16'hfaca;
    LUT4 i23082_4_lut_4_lut (.A(n3380), .B(n3381), .C(n37089), .D(n81_adj_1032), 
         .Z(n32607)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23082_4_lut_4_lut.init = 16'h5140;
    LUT4 i23087_4_lut_4_lut (.A(n3380), .B(n3381), .C(n37092), .D(n81_adj_1033), 
         .Z(n32612)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23087_4_lut_4_lut.init = 16'h5140;
    LUT4 reg_B_0__bdd_4_lut_25031_4_lut_4_lut (.A(n3380), .B(reg_B[0]), 
         .C(n3379), .D(n18576), .Z(n35886)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam reg_B_0__bdd_4_lut_25031_4_lut_4_lut.init = 16'h05c5;
    LUT4 prog_data_6__I_0_727_Mux_2_i127_3_lut_4_lut (.A(reg_A[2]), .B(n19110), 
         .C(n126_adj_1034), .D(n3377), .Z(alu_in_x[2])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_2_i127_3_lut_4_lut.init = 16'hf022;
    LUT4 i22064_3_lut (.A(reg_A[5]), .B(prog_data[5]), .C(n15241), .Z(n32179)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22064_3_lut.init = 16'hcaca;
    LUT4 i23046_3_lut_4_lut_4_lut (.A(\CPU.state [4]), .B(n14361), .C(n13589), 
         .D(\CPU.opcode [1]), .Z(n32593)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;
    defparam i23046_3_lut_4_lut_4_lut.init = 16'h4044;
    LUT4 i2_3_lut_4_lut_adj_167 (.A(\CPU.state[2] ), .B(\CPU.state [5]), 
         .C(n46), .D(n25353), .Z(CK_keep_enable_9)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_167.init = 16'h0010;
    LUT4 i5150_2_lut_3_lut (.A(\CPU_ALU.result_8__N_653 [1]), .B(\CPU_ALU.result_8__N_653 [0]), 
         .C(\CPU_ALU.result_8__N_653 [2]), .Z(n6_adj_1035)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(298[30:49])
    defparam i5150_2_lut_3_lut.init = 16'hfefe;
    LUT4 \CPU_ALU.result_8__I_97_i3_3_lut_4_lut  (.A(\CPU_ALU.result_8__N_653 [1]), 
         .B(\CPU_ALU.result_8__N_653 [0]), .C(alu_cin), .D(\CPU_ALU.result_8__N_653 [2]), 
         .Z(\CPU_ALU.result_8__N_617 [2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(298[30:49])
    defparam \CPU_ALU.result_8__I_97_i3_3_lut_4_lut .init = 16'hef10;
    LUT4 i5166_2_lut_3_lut (.A(\CPU_ALU.result_8__N_653 [3]), .B(n6_adj_1035), 
         .C(\CPU_ALU.result_8__N_653 [4]), .Z(n10)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(298[30:49])
    defparam i5166_2_lut_3_lut.init = 16'hfefe;
    LUT4 prog_data_6__I_0_727_Mux_4_i127_3_lut_4_lut (.A(reg_A[4]), .B(n19110), 
         .C(n126_adj_1036), .D(n3377), .Z(alu_in_x[4])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_4_i127_3_lut_4_lut.init = 16'hf022;
    LUT4 \CPU_ALU.result_8__I_97_i5_3_lut_4_lut  (.A(\CPU_ALU.result_8__N_653 [3]), 
         .B(n6_adj_1035), .C(alu_cin), .D(\CPU_ALU.result_8__N_653 [4]), 
         .Z(\CPU_ALU.result_8__N_617 [4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(298[30:49])
    defparam \CPU_ALU.result_8__I_97_i5_3_lut_4_lut .init = 16'hef10;
    LUT4 i5182_2_lut_3_lut (.A(\CPU_ALU.result_8__N_653 [5]), .B(n10), .C(\CPU_ALU.result_8__N_653 [6]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(298[30:49])
    defparam i5182_2_lut_3_lut.init = 16'hfefe;
    LUT4 \CPU_ALU.result_8__I_97_i7_3_lut_4_lut  (.A(\CPU_ALU.result_8__N_653 [5]), 
         .B(n10), .C(alu_cin), .D(\CPU_ALU.result_8__N_653 [6]), .Z(\CPU_ALU.result_8__N_617 [6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(298[30:49])
    defparam \CPU_ALU.result_8__I_97_i7_3_lut_4_lut .init = 16'hef10;
    PFUMX i22039 (.BLUT(n32152), .ALUT(n32153), .C0(n9040), .Z(n32154));
    LUT4 mux_3843_i2_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(cpu_data_in[1]), 
         .D(reg_D[1]), .Z(n12099[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3843_i2_3_lut_4_lut.init = 16'hf780;
    PFUMX i22138 (.BLUT(n32251), .ALUT(n32252), .C0(n3382), .Z(n81_adj_1032));
    LUT4 mux_4222_i1_3_lut (.A(reg_IX[8]), .B(reg_IY[8]), .C(n13_adj_1037), 
         .Z(n441[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(614[6] 617[15])
    defparam mux_4222_i1_3_lut.init = 16'hcaca;
    LUT4 prog_data_6__I_0_727_Mux_3_i127_3_lut_4_lut (.A(reg_A[3]), .B(n19110), 
         .C(n126_adj_1038), .D(n3377), .Z(alu_in_x[3])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_3_i127_3_lut_4_lut.init = 16'hf022;
    LUT4 mux_3843_i1_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(cpu_data_in[0]), 
         .D(reg_D[0]), .Z(n12099[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3843_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 i22971_2_lut (.A(n10249[0]), .B(n20604), .Z(n32382)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i22971_2_lut.init = 16'h8888;
    LUT4 i22987_2_lut_2_lut (.A(prog_data[0]), .B(reg_L[4]), .Z(n32298)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1183[9:27])
    defparam i22987_2_lut_2_lut.init = 16'h4444;
    FD1P3AX reg_C__i0 (.D(n13877), .SP(CK_keep_enable_112), .CK(CK_keep), 
            .Q(reg_C[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_C__i0.GSR = "ENABLED";
    PFUMX mux_3002_i7 (.BLUT(n32566), .ALUT(n32567), .C0(\CPU.state[0] ), 
          .Z(n9205[6]));
    LUT4 prog_data_6__I_0_727_Mux_6_i127_3_lut_4_lut (.A(reg_A[6]), .B(n19110), 
         .C(n126_adj_1039), .D(n3377), .Z(alu_in_x[6])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_6_i127_3_lut_4_lut.init = 16'hf022;
    LUT4 i23015_2_lut_2_lut (.A(prog_data[0]), .B(reg_L[6]), .Z(n32284)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1183[9:27])
    defparam i23015_2_lut_2_lut.init = 16'h4444;
    LUT4 prog_data_3__bdd_4_lut_25505_4_lut (.A(prog_data[0]), .B(prog_data[4]), 
         .C(prog_data[5]), .D(n19382), .Z(n36117)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B (C+(D))+!B (C (D))))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1183[9:27])
    defparam prog_data_3__bdd_4_lut_25505_4_lut.init = 16'h013d;
    LUT4 i23330_2_lut_2_lut (.A(prog_data[0]), .B(reg_L[3]), .Z(n32310)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1183[9:27])
    defparam i23330_2_lut_2_lut.init = 16'h4444;
    PFUMX alu_ctrl_3__I_0_Mux_7_i10 (.BLUT(n8_adj_1040), .ALUT(n32868), 
          .C0(alu_ctrl[1]), .Z(n10_adj_1041)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    LUT4 n9660_bdd_3_lut_3_lut (.A(prog_data[0]), .B(n3382), .C(n3381), 
         .Z(n35902)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1183[9:27])
    defparam n9660_bdd_3_lut_3_lut.init = 16'h0404;
    LUT4 i22910_4_lut (.A(reg_H[4]), .B(n31660), .C(\CPU.first_operand [4]), 
         .D(n13752), .Z(n32381)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22910_4_lut.init = 16'hc088;
    LUT4 i22833_2_lut_2_lut (.A(prog_data[0]), .B(reg_L[5]), .Z(n32292)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1183[9:27])
    defparam i22833_2_lut_2_lut.init = 16'h4444;
    LUT4 i22983_3_lut_4_lut_4_lut_4_lut (.A(prog_data[0]), .B(prog_data[1]), 
         .C(prog_data[2]), .D(prog_data[4]), .Z(n32393)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1183[9:27])
    defparam i22983_3_lut_4_lut_4_lut_4_lut.init = 16'h0054;
    LUT4 i23010_2_lut (.A(n34879), .B(\CPU.state[0] ), .Z(n32380)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23010_2_lut.init = 16'h8888;
    LUT4 i22010_3_lut (.A(n1837[9]), .B(n1539[9]), .C(n15184), .Z(n32125)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22010_3_lut.init = 16'hcaca;
    LUT4 i22964_4_lut (.A(reg_L[4]), .B(n31660), .C(prog_data[4]), .D(n13752), 
         .Z(n32476)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22964_4_lut.init = 16'hc088;
    LUT4 i23722_2_lut (.A(TP2_c), .B(n3376), .Z(CK_keep_enable_40)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i23722_2_lut.init = 16'h1111;
    LUT4 i23254_then_3_lut (.A(n3376), .B(prog_data[5]), .C(n18576), .Z(n37070)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i23254_then_3_lut.init = 16'hf7f7;
    CCU2D add_3239_7 (.A0(reg_IY[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_IY[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29166), .COUT(n29167), .S0(n6928[5]), .S1(n6928[6]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3239_7.INIT0 = 16'h5aaa;
    defparam add_3239_7.INIT1 = 16'h5aaa;
    defparam add_3239_7.INJECT1_0 = "NO";
    defparam add_3239_7.INJECT1_1 = "NO";
    LUT4 mux_759_Mux_3_i31_then_3_lut (.A(prog_data[4]), .B(prog_data[3]), 
         .C(prog_data[1]), .Z(n37055)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam mux_759_Mux_3_i31_then_3_lut.init = 16'h2020;
    LUT4 i23019_2_lut (.A(n34887), .B(\CPU.state[0] ), .Z(n32475)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23019_2_lut.init = 16'h8888;
    CCU2D add_76_7 (.A0(prog_addr[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(prog_addr[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29136), .COUT(n29137), .S0(n946[5]), .S1(n946[6]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam add_76_7.INIT0 = 16'h5aaa;
    defparam add_76_7.INIT1 = 16'h5aaa;
    defparam add_76_7.INJECT1_0 = "NO";
    defparam add_76_7.INJECT1_1 = "NO";
    LUT4 i15419_3_lut_4_lut (.A(n9_adj_1023), .B(n12_adj_1042), .C(flag_I), 
         .D(n13_adj_1043), .Z(n25509)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1013[20:27])
    defparam i15419_3_lut_4_lut.init = 16'hfe00;
    LUT4 i23254_else_3_lut (.A(prog_data[5]), .B(prog_data[0]), .C(prog_data[3]), 
         .Z(n37069)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i23254_else_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_adj_168 (.A(\CPU.state[1] ), .B(n18), .C(\CPU.state[0] ), 
         .D(n25541), .Z(\CPU.state_7__N_693 [2])) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i2_3_lut_4_lut_adj_168.init = 16'h0002;
    LUT4 i23420_3_lut_4_lut (.A(\CPU.state[1] ), .B(n18), .C(n9_adj_1044), 
         .D(n12_c), .Z(n32396)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i23420_3_lut_4_lut.init = 16'h2220;
    LUT4 i2_4_lut_4_lut (.A(prog_data[3]), .B(prog_data[4]), .C(prog_data[5]), 
         .D(prog_data[6]), .Z(n20604)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h0010;
    LUT4 i6020_2_lut_2_lut (.A(prog_data[3]), .B(prog_data[2]), .Z(n15624)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i6020_2_lut_2_lut.init = 16'h4444;
    LUT4 i22059_4_lut (.A(alu_out[6]), .B(n32745), .C(n15241), .D(n31641), 
         .Z(n32174)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i22059_4_lut.init = 16'hfaca;
    LUT4 i22058_3_lut (.A(reg_A[6]), .B(prog_data[6]), .C(n15241), .Z(n32173)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22058_3_lut.init = 16'hcaca;
    LUT4 prog_data_6__I_0_727_Mux_5_i127_3_lut_4_lut (.A(reg_A[5]), .B(n19110), 
         .C(n126_adj_1045), .D(n3377), .Z(alu_in_x[5])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_5_i127_3_lut_4_lut.init = 16'hf022;
    LUT4 i22986_4_lut_4_lut_4_lut (.A(prog_data[6]), .B(n31547), .C(n36114), 
         .D(prog_data[3]), .Z(n32516)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(471[5] 475[12])
    defparam i22986_4_lut_4_lut_4_lut.init = 16'h5054;
    CCU2D add_3239_5 (.A0(reg_IY[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_IY[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29165), .COUT(n29166), .S0(n6928[3]), .S1(n6928[4]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3239_5.INIT0 = 16'h5aaa;
    defparam add_3239_5.INIT1 = 16'h5aaa;
    defparam add_3239_5.INJECT1_0 = "NO";
    defparam add_3239_5.INJECT1_1 = "NO";
    LUT4 mux_3843_i3_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(cpu_data_in[2]), 
         .D(reg_D[2]), .Z(n12099[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3843_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 i23309_4_lut_4_lut_4_lut (.A(prog_data[6]), .B(n160), .C(n4_adj_1046), 
         .D(\CPU.state[1] ), .Z(n32397)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(471[5] 475[12])
    defparam i23309_4_lut_4_lut_4_lut.init = 16'h00fd;
    LUT4 mux_3843_i4_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(cpu_data_in[3]), 
         .D(reg_D[3]), .Z(n12099[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3843_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 i5827_3_lut_4_lut (.A(DS_N_933), .B(n20152), .C(cpu_data_in[0]), 
         .D(reg_IX[8]), .Z(n2584)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i5827_3_lut_4_lut.init = 16'hfd20;
    LUT4 i5825_3_lut_4_lut (.A(DS_N_933), .B(n20152), .C(cpu_data_in[1]), 
         .D(reg_IX[9]), .Z(n2583)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i5825_3_lut_4_lut.init = 16'hfd20;
    CCU2D add_76_5 (.A0(prog_addr[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(prog_addr[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29135), .COUT(n29136), .S0(n946[3]), .S1(n946[4]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam add_76_5.INIT0 = 16'h5aaa;
    defparam add_76_5.INIT1 = 16'h5aaa;
    defparam add_76_5.INJECT1_0 = "NO";
    defparam add_76_5.INJECT1_1 = "NO";
    LUT4 i5823_3_lut_4_lut (.A(DS_N_933), .B(n20152), .C(cpu_data_in[2]), 
         .D(reg_IX[10]), .Z(n2582)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;
    defparam i5823_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_3843_i5_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(cpu_data_in[4]), 
         .D(reg_D[4]), .Z(n12099[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3843_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_2_lut_3_lut (.A(prog_data[3]), .B(prog_data[5]), .C(\CPU.state[0] ), 
         .Z(n31718)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i1_2_lut_3_lut.init = 16'h2020;
    CCU2D add_3239_3 (.A0(reg_IY[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_IY[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29164), .COUT(n29165), .S0(n6928[1]), .S1(n6928[2]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3239_3.INIT0 = 16'h5aaa;
    defparam add_3239_3.INIT1 = 16'h5aaa;
    defparam add_3239_3.INJECT1_0 = "NO";
    defparam add_3239_3.INJECT1_1 = "NO";
    LUT4 i15256_2_lut_3_lut (.A(\CPU.state [4]), .B(\CPU.state[1] ), .C(\CPU.state [7]), 
         .Z(n25340)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i15256_2_lut_3_lut.init = 16'hfefe;
    LUT4 mux_3843_i6_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(cpu_data_in[5]), 
         .D(reg_D[5]), .Z(n12099[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3843_i6_3_lut_4_lut.init = 16'hf780;
    LUT4 i3_3_lut_4_lut (.A(\CPU.state [4]), .B(\CPU.state[1] ), .C(n18_adj_1047), 
         .D(n24573), .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'hfffe;
    PFUMX i22159 (.BLUT(n32272), .ALUT(n32273), .C0(prog_data[0]), .Z(n32274));
    LUT4 mux_3843_i7_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(cpu_data_in[6]), 
         .D(reg_D[6]), .Z(n12099[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3843_i7_3_lut_4_lut.init = 16'hf780;
    LUT4 i14745_2_lut_3_lut (.A(\CPU.state[2] ), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n24823)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i14745_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_169 (.A(\CPU.state [4]), .B(\CPU.state[1] ), 
         .C(\CPU.state [5]), .Z(n20115)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_169.init = 16'hfefe;
    LUT4 mux_3843_i8_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n13661), .C(cpu_data_in[7]), 
         .D(reg_D[7]), .Z(n12099[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3843_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_3_lut_4_lut (.A(\CPU.state [4]), .B(\CPU.state[1] ), .C(n51), 
         .D(\CPU.state[0] ), .Z(n31572)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0010;
    LUT4 n15620_bdd_4_lut_24990 (.A(n15620), .B(prog_data[2]), .C(prog_data[3]), 
         .D(prog_data[5]), .Z(n34565)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam n15620_bdd_4_lut_24990.init = 16'h0060;
    LUT4 i10518_2_lut_3_lut (.A(prog_data[3]), .B(prog_data[4]), .C(prog_data[5]), 
         .Z(n20641)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i10518_2_lut_3_lut.init = 16'h0202;
    PFUMX i22041 (.BLUT(n32757), .ALUT(n32758), .C0(\CPU.state[0] ), .Z(n32156));
    LUT4 i15292_2_lut_4_lut (.A(prog_data[5]), .B(n7453), .C(prog_data[6]), 
         .D(n7354), .Z(n25377)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i15292_2_lut_4_lut.init = 16'h22f2;
    LUT4 i1_2_lut_3_lut_adj_170 (.A(prog_data[0]), .B(prog_data[1]), .C(n20097), 
         .Z(n7323)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i1_2_lut_3_lut_adj_170.init = 16'h8080;
    LUT4 i2_2_lut_3_lut (.A(prog_data[3]), .B(prog_data[4]), .C(prog_data[2]), 
         .Z(n8_adj_1048)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i2_2_lut_3_lut.init = 16'h2020;
    LUT4 i2_3_lut_4_lut_adj_171 (.A(\CPU.opcode [3]), .B(\CPU.opcode [4]), 
         .C(n9_adj_1044), .D(n11), .Z(n13)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1070[10:17])
    defparam i2_3_lut_4_lut_adj_171.init = 16'hfffd;
    LUT4 equal_5032_i10_2_lut (.A(\CPU.state[3] ), .B(\CPU.state [4]), .Z(n10_adj_1049)) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1064[11:36])
    defparam equal_5032_i10_2_lut.init = 16'heeee;
    LUT4 \CPU.opcode_6__I_0_751_i12_2_lut_3_lut_4_lut  (.A(\CPU.opcode [3]), 
         .B(\CPU.opcode [4]), .C(\CPU.opcode[6] ), .D(\CPU.opcode[5] ), 
         .Z(n12_adj_1042)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1070[10:17])
    defparam \CPU.opcode_6__I_0_751_i12_2_lut_3_lut_4_lut .init = 16'hfffd;
    LUT4 i34_4_lut_4_lut (.A(n31784), .B(n13_adj_1050), .C(\CPU.opcode[6] ), 
         .D(n11_adj_1051), .Z(n14_adj_1052)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i34_4_lut_4_lut.init = 16'hf404;
    LUT4 i33_3_lut_4_lut_3_lut (.A(\CPU.state[0] ), .B(\CPU.state [5]), 
         .C(\CPU.state[2] ), .Z(n20_adj_1053)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i33_3_lut_4_lut_3_lut.init = 16'h1616;
    LUT4 i1_2_lut_3_lut_adj_172 (.A(\CPU.opcode [1]), .B(\CPU.opcode [0]), 
         .C(\CPU.opcode [2]), .Z(n44)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(392[12:18])
    defparam i1_2_lut_3_lut_adj_172.init = 16'hb0b0;
    LUT4 i22136_3_lut_4_lut (.A(reg_A[2]), .B(reg_B[2]), .C(prog_data[0]), 
         .D(n3376), .Z(n32251)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22136_3_lut_4_lut.init = 16'hcaaa;
    LUT4 i3_2_lut_3_lut_4_lut (.A(\CPU.opcode [4]), .B(\CPU.opcode [3]), 
         .C(\CPU.state [4]), .D(n9513), .Z(n8_adj_1054)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 prog_data_6__I_0_727_Mux_7_i100_3_lut_then_4_lut (.A(n82_adj_1007), 
         .B(reg_A[7]), .C(n3376), .D(prog_data[1]), .Z(n37073)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_7_i100_3_lut_then_4_lut.init = 16'hcaaa;
    LUT4 i14620_2_lut_4_lut (.A(\CPU.opcode [0]), .B(n12_adj_1055), .C(n8_adj_1056), 
         .D(n20152), .Z(n24698)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1035[10:16])
    defparam i14620_2_lut_4_lut.init = 16'hfffd;
    LUT4 i5788_2_lut_4_lut (.A(\CPU.opcode [0]), .B(n12_adj_1055), .C(n8_adj_1056), 
         .D(DS_N_933), .Z(n15391)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1035[10:16])
    defparam i5788_2_lut_4_lut.init = 16'hfffd;
    LUT4 n10514_bdd_3_lut_4_lut (.A(\CPU.opcode [2]), .B(n31695), .C(n13998), 
         .D(n10514), .Z(n36826)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam n10514_bdd_3_lut_4_lut.init = 16'h77f0;
    LUT4 prog_data_6__I_0_727_Mux_7_i100_3_lut_else_4_lut (.A(n82_adj_1007), 
         .B(reg_L[7]), .C(n3376), .D(prog_data[1]), .Z(n37072)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_7_i100_3_lut_else_4_lut.init = 16'hcaaa;
    LUT4 mux_3002_i10_4_lut (.A(n13634), .B(reg_H[1]), .C(\CPU.state[0] ), 
         .D(n24601), .Z(n9205[9])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_3002_i10_4_lut.init = 16'hcac0;
    LUT4 i23132_2_lut_3_lut (.A(\CPU.opcode [2]), .B(n31695), .C(prog_data[7]), 
         .Z(n32676)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23132_2_lut_3_lut.init = 16'h8080;
    LUT4 i22906_4_lut (.A(reg_H[5]), .B(n31660), .C(\CPU.first_operand [5]), 
         .D(n13752), .Z(n32368)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22906_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_3_lut_adj_173 (.A(prog_data[4]), .B(prog_data[3]), .C(prog_data[2]), 
         .Z(n20165)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i1_2_lut_3_lut_adj_173.init = 16'hfbfb;
    LUT4 i23131_2_lut_3_lut (.A(\CPU.opcode [2]), .B(n31695), .C(prog_data[6]), 
         .Z(n32674)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23131_2_lut_3_lut.init = 16'h8080;
    LUT4 i23130_2_lut_3_lut (.A(\CPU.opcode [2]), .B(n31695), .C(prog_data[5]), 
         .Z(n32672)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23130_2_lut_3_lut.init = 16'h8080;
    LUT4 i23013_2_lut (.A(n34971), .B(\CPU.state[0] ), .Z(n32367)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23013_2_lut.init = 16'h8888;
    LUT4 i21_3_lut_4_lut (.A(prog_data[4]), .B(prog_data[3]), .C(prog_data[5]), 
         .D(n7), .Z(n31858)) /* synthesis lut_function=(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i21_3_lut_4_lut.init = 16'hb0bf;
    LUT4 i23129_2_lut_3_lut (.A(\CPU.opcode [2]), .B(n31695), .C(prog_data[4]), 
         .Z(n32670)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23129_2_lut_3_lut.init = 16'h8080;
    LUT4 i22903_2_lut_3_lut (.A(\CPU.opcode [2]), .B(n31695), .C(prog_data[0]), 
         .Z(n32370)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i22903_2_lut_3_lut.init = 16'h8080;
    LUT4 i23126_2_lut_3_lut (.A(\CPU.opcode [2]), .B(n31695), .C(prog_data[1]), 
         .Z(n32664)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23126_2_lut_3_lut.init = 16'h8080;
    LUT4 i23127_2_lut_3_lut (.A(\CPU.opcode [2]), .B(n31695), .C(prog_data[2]), 
         .Z(n32666)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23127_2_lut_3_lut.init = 16'h8080;
    LUT4 i22966_4_lut (.A(reg_L[5]), .B(n31660), .C(prog_data[5]), .D(n13752), 
         .Z(n32479)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22966_4_lut.init = 16'hc088;
    LUT4 i22154_3_lut (.A(reg_A[0]), .B(reg_B[0]), .C(prog_data[0]), .Z(n32269)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22154_3_lut.init = 16'hcaca;
    LUT4 i23163_2_lut (.A(n34975), .B(\CPU.state[0] ), .Z(n32478)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23163_2_lut.init = 16'h8888;
    LUT4 i2_4_lut (.A(\CPU.state[3] ), .B(n18_adj_1047), .C(\CPU.state [4]), 
         .D(n24823), .Z(n9513)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i2_4_lut.init = 16'h0012;
    LUT4 i22137_3_lut_4_lut (.A(reg_C[2]), .B(reg_D[2]), .C(prog_data[0]), 
         .D(n3376), .Z(n32252)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22137_3_lut_4_lut.init = 16'hcaaa;
    LUT4 mux_3321_i7_3_lut (.A(reg_E[6]), .B(reg_H[6]), .C(prog_data[0]), 
         .Z(n10205[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(588[6] 602[15])
    defparam mux_3321_i7_3_lut.init = 16'hcaca;
    LUT4 i23128_2_lut_3_lut (.A(\CPU.opcode [2]), .B(n31695), .C(prog_data[3]), 
         .Z(n32668)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23128_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_4_lut_adj_174 (.A(\CPU.state [7]), .B(n19916), .C(n7516), 
         .D(n41), .Z(n5_adj_1057)) /* synthesis lut_function=(!(A (D)+!A !(B (C+!(D))+!B !(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_3_lut_4_lut_adj_174.init = 16'h40ff;
    LUT4 i22841_2_lut_4_lut (.A(prog_data[4]), .B(prog_data[5]), .C(prog_data[3]), 
         .D(n19988), .Z(n32821)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i22841_2_lut_4_lut.init = 16'h0600;
    LUT4 mux_3321_i6_3_lut (.A(reg_E[5]), .B(reg_H[5]), .C(prog_data[0]), 
         .Z(n10205[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(588[6] 602[15])
    defparam mux_3321_i6_3_lut.init = 16'hcaca;
    PFUMX i22044 (.BLUT(n32755), .ALUT(n32756), .C0(\CPU.state[0] ), .Z(n32159));
    LUT4 i1_2_lut_3_lut_adj_175 (.A(\CPU.state [7]), .B(n19916), .C(n7508), 
         .Z(n19861)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_2_lut_3_lut_adj_175.init = 16'h4040;
    CCU2D add_3239_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_IY[0]), .B1(prog_data[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n29164), .S1(n6928[0]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3239_1.INIT0 = 16'hF000;
    defparam add_3239_1.INIT1 = 16'h5999;
    defparam add_3239_1.INJECT1_0 = "NO";
    defparam add_3239_1.INJECT1_1 = "NO";
    LUT4 i22139_3_lut_4_lut (.A(reg_A[1]), .B(reg_B[1]), .C(prog_data[0]), 
         .D(n3376), .Z(n32254)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22139_3_lut_4_lut.init = 16'hcaaa;
    LUT4 n15620_bdd_3_lut_4_lut (.A(\CPU.state [7]), .B(n19916), .C(n34566), 
         .D(prog_data[4]), .Z(n9_adj_1058)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam n15620_bdd_3_lut_4_lut.init = 16'h0040;
    LUT4 mux_3321_i5_3_lut (.A(reg_E[4]), .B(reg_H[4]), .C(prog_data[0]), 
         .Z(n10205[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(588[6] 602[15])
    defparam mux_3321_i5_3_lut.init = 16'hcaca;
    LUT4 i23106_4_lut (.A(n32640), .B(n13856), .C(n1837[1]), .D(n13673), 
         .Z(n32663)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23106_4_lut.init = 16'hc088;
    LUT4 prog_data_6__I_0_727_Mux_6_i100_3_lut_then_4_lut (.A(n82_adj_1009), 
         .B(reg_A[6]), .C(n3376), .D(prog_data[1]), .Z(n37076)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_6_i100_3_lut_then_4_lut.init = 16'hcaaa;
    LUT4 i15094_2_lut (.A(n1837[9]), .B(n13096), .Z(n1916[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam i15094_2_lut.init = 16'h8888;
    PFUMX i24064 (.BLUT(n34489), .ALUT(n34488), .C0(\CPU.opcode [2]), 
          .Z(n34490));
    LUT4 i787_2_lut (.A(prog_data[0]), .B(n3376), .Z(n3383)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(301[8:23])
    defparam i787_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_176 (.A(prog_data[4]), .B(n7417), .C(n7357), 
         .D(n31549), .Z(n20067)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i2_3_lut_4_lut_adj_176.init = 16'h0200;
    LUT4 i15303_2_lut (.A(prog_data[5]), .B(n19110), .Z(n63_adj_1059)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15303_2_lut.init = 16'h2222;
    LUT4 i786_2_lut (.A(prog_data[1]), .B(n3376), .Z(n3382)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(301[8:23])
    defparam i786_2_lut.init = 16'h8888;
    LUT4 mux_3002_i9_4_lut (.A(n13633), .B(reg_H[0]), .C(\CPU.state[0] ), 
         .D(n24601), .Z(n9205[8])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_3002_i9_4_lut.init = 16'hcac0;
    LUT4 i22056_4_lut (.A(alu_out[7]), .B(n32748), .C(n15241), .D(n20217), 
         .Z(n32171)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i22056_4_lut.init = 16'hfaca;
    LUT4 n36809_bdd_3_lut_4_lut (.A(prog_data[0]), .B(n20067), .C(reg_IY[0]), 
         .D(n36809), .Z(n36810)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n36809_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 prog_data_6__I_0_727_Mux_6_i100_3_lut_else_4_lut (.A(n82_adj_1009), 
         .B(reg_L[6]), .C(n3376), .D(prog_data[1]), .Z(n37075)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_6_i100_3_lut_else_4_lut.init = 16'hcaaa;
    LUT4 i22140_3_lut_4_lut (.A(reg_C[1]), .B(reg_D[1]), .C(prog_data[0]), 
         .D(n3376), .Z(n32255)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22140_3_lut_4_lut.init = 16'hcaaa;
    LUT4 flag_S_bdd_4_lut_24115 (.A(\CPU.opcode [0]), .B(flag_C), .C(flag_Z), 
         .D(\CPU.opcode [1]), .Z(n34568)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A ((D)+!C)) */ ;
    defparam flag_S_bdd_4_lut_24115.init = 16'hf527;
    PFUMX i22047 (.BLUT(n32753), .ALUT(n32754), .C0(\CPU.state[0] ), .Z(n32162));
    PFUMX i24043 (.BLUT(n1916[7]), .ALUT(n34461), .C0(\CPU.state[0] ), 
          .Z(n34462));
    LUT4 flag_S_bdd_4_lut_25309 (.A(flag_S), .B(\CPU.opcode [0]), .C(flag_C), 
         .D(\CPU.opcode [1]), .Z(n34569)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (C+!(D)))) */ ;
    defparam flag_S_bdd_4_lut_25309.init = 16'he244;
    LUT4 n34555_bdd_3_lut_4_lut (.A(prog_data[0]), .B(n20067), .C(reg_IY[1]), 
         .D(n34555), .Z(n34556)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n34555_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 flag_S_bdd_3_lut (.A(n24606), .B(n5_adj_1060), .C(n34570), .Z(n10369)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam flag_S_bdd_3_lut.init = 16'h1010;
    LUT4 i22055_3_lut (.A(reg_A[7]), .B(prog_data[7]), .C(n15241), .Z(n32170)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22055_3_lut.init = 16'hcaca;
    LUT4 n34541_bdd_3_lut_4_lut (.A(prog_data[0]), .B(n20067), .C(reg_IY[2]), 
         .D(n34541), .Z(n34542)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n34541_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 n34527_bdd_3_lut_4_lut (.A(prog_data[0]), .B(n20067), .C(reg_IY[3]), 
         .D(n34527), .Z(n34528)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n34527_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 n34518_bdd_3_lut_4_lut (.A(prog_data[0]), .B(n20067), .C(reg_IY[4]), 
         .D(n34518), .Z(n34519)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n34518_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 n34499_bdd_3_lut_4_lut (.A(prog_data[0]), .B(n20067), .C(reg_IY[5]), 
         .D(n34499), .Z(n34500)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n34499_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 i23876_4_lut (.A(n19861), .B(n41), .C(n29288), .D(n25340), 
         .Z(CK_keep_enable_33)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i23876_4_lut.init = 16'h0004;
    LUT4 i15093_2_lut (.A(n1837[8]), .B(n13096), .Z(n1916[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam i15093_2_lut.init = 16'h8888;
    PFUMX i22050 (.BLUT(n32751), .ALUT(n32752), .C0(\CPU.state[0] ), .Z(n32165));
    LUT4 i1_2_lut_3_lut_adj_177 (.A(\CPU.opcode[6] ), .B(\CPU.opcode[5] ), 
         .C(n34490), .Z(n11092)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_177.init = 16'h1010;
    LUT4 n34479_bdd_3_lut_4_lut (.A(prog_data[0]), .B(n20067), .C(reg_IY[6]), 
         .D(n34479), .Z(n34480)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n34479_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 n34460_bdd_3_lut_4_lut (.A(prog_data[0]), .B(n20067), .C(reg_IY[7]), 
         .D(n34460), .Z(n34461)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n34460_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 n34442_bdd_3_lut_4_lut (.A(prog_data[0]), .B(n20067), .C(reg_IY[8]), 
         .D(n34442), .Z(n34443)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n34442_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 n34433_bdd_3_lut_4_lut (.A(prog_data[0]), .B(n20067), .C(reg_IY[9]), 
         .D(n34433), .Z(n34434)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n34433_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 n34424_bdd_3_lut_4_lut (.A(prog_data[0]), .B(n20067), .C(reg_IY[10]), 
         .D(n34424), .Z(n34425)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n34424_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 reg_IY_0__bdd_3_lut_4_lut (.A(prog_data[0]), .B(n20067), .C(reg_SP[0]), 
         .D(reg_IX[0]), .Z(n36809)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam reg_IY_0__bdd_3_lut_4_lut.init = 16'hf4b0;
    LUT4 reg_IY_1__bdd_3_lut_4_lut (.A(prog_data[0]), .B(n20067), .C(reg_SP[1]), 
         .D(reg_IX[1]), .Z(n34555)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam reg_IY_1__bdd_3_lut_4_lut.init = 16'hf4b0;
    LUT4 reg_IY_2__bdd_3_lut_4_lut (.A(prog_data[0]), .B(n20067), .C(reg_SP[2]), 
         .D(reg_IX[2]), .Z(n34541)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam reg_IY_2__bdd_3_lut_4_lut.init = 16'hf4b0;
    LUT4 reg_IY_3__bdd_3_lut_25412_4_lut (.A(prog_data[0]), .B(n20067), 
         .C(reg_SP[3]), .D(reg_IX[3]), .Z(n34527)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam reg_IY_3__bdd_3_lut_25412_4_lut.init = 16'hf4b0;
    LUT4 reg_IY_4__bdd_3_lut_25394_4_lut (.A(prog_data[0]), .B(n20067), 
         .C(reg_SP[4]), .D(reg_IX[4]), .Z(n34518)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam reg_IY_4__bdd_3_lut_25394_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_178 (.A(prog_data[4]), .B(prog_data[3]), 
         .C(prog_data[2]), .D(prog_data[1]), .Z(n19419)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i1_2_lut_3_lut_4_lut_adj_178.init = 16'hfffb;
    LUT4 i3_4_lut (.A(n13921), .B(n9040), .C(n9168), .D(n19977), .Z(n29288)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0800;
    LUT4 reg_IY_5__bdd_3_lut_25376_4_lut (.A(prog_data[0]), .B(n20067), 
         .C(reg_SP[5]), .D(reg_IX[5]), .Z(n34499)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam reg_IY_5__bdd_3_lut_25376_4_lut.init = 16'hf4b0;
    LUT4 n7_bdd_3_lut_25577 (.A(n12_adj_1006), .B(prog_data[1]), .C(prog_data[0]), 
         .Z(n35198)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam n7_bdd_3_lut_25577.init = 16'h0404;
    LUT4 n19977_bdd_3_lut_4_lut (.A(\CPU.state[0] ), .B(n13713), .C(n24930), 
         .D(n36827), .Z(n36828)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam n19977_bdd_3_lut_4_lut.init = 16'h0400;
    LUT4 reg_IY_6__bdd_3_lut_25340_4_lut (.A(prog_data[0]), .B(n20067), 
         .C(reg_SP[6]), .D(reg_IX[6]), .Z(n34479)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam reg_IY_6__bdd_3_lut_25340_4_lut.init = 16'hf4b0;
    LUT4 reg_IY_7__bdd_3_lut_25322_4_lut (.A(prog_data[0]), .B(n20067), 
         .C(reg_SP[7]), .D(reg_IX[7]), .Z(n34460)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam reg_IY_7__bdd_3_lut_25322_4_lut.init = 16'hf4b0;
    LUT4 reg_IY_8__bdd_3_lut_25291_4_lut (.A(prog_data[0]), .B(n20067), 
         .C(reg_SP[8]), .D(reg_IX[8]), .Z(n34442)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam reg_IY_8__bdd_3_lut_25291_4_lut.init = 16'hf4b0;
    LUT4 i23873_4_lut (.A(TP2_c), .B(n5_adj_1057), .C(n25340), .D(n36828), 
         .Z(CK_keep_enable_50)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i23873_4_lut.init = 16'h0001;
    LUT4 reg_IY_9__bdd_3_lut_25275_4_lut (.A(prog_data[0]), .B(n20067), 
         .C(reg_SP[9]), .D(reg_IX[9]), .Z(n34433)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam reg_IY_9__bdd_3_lut_25275_4_lut.init = 16'hf4b0;
    LUT4 i22868_3_lut (.A(n20040), .B(n24886), .C(\CPU.opcode [4]), .Z(n32376)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i22868_3_lut.init = 16'h8080;
    LUT4 reg_IY_10__bdd_3_lut_25259_4_lut (.A(prog_data[0]), .B(n20067), 
         .C(reg_SP[10]), .D(reg_IX[10]), .Z(n34424)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam reg_IY_10__bdd_3_lut_25259_4_lut.init = 16'hf4b0;
    LUT4 i15447_2_lut_3_lut (.A(n24642), .B(n24573), .C(\CPU.state [7]), 
         .Z(n25541)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i15447_2_lut_3_lut.init = 16'hfefe;
    LUT4 equal_5032_i9_2_lut_3_lut (.A(\CPU.state[1] ), .B(\CPU.state[2] ), 
         .C(\CPU.state[0] ), .Z(n9_adj_1061)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1064[11:36])
    defparam equal_5032_i9_2_lut_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_adj_179 (.A(\CPU.state[1] ), .B(\CPU.state[2] ), 
         .C(n7516), .D(\CPU.state[0] ), .Z(n19)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1064[11:36])
    defparam i2_3_lut_4_lut_adj_179.init = 16'h0100;
    CCU2D add_3241_12 (.A0(reg_IX[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n29163), 
          .S0(n6892[10]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3241_12.INIT0 = 16'h5aaa;
    defparam add_3241_12.INIT1 = 16'h0000;
    defparam add_3241_12.INJECT1_0 = "NO";
    defparam add_3241_12.INJECT1_1 = "NO";
    LUT4 i15320_2_lut (.A(prog_data[6]), .B(n19110), .Z(n63_adj_1062)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15320_2_lut.init = 16'h2222;
    LUT4 i1629_4_lut (.A(n7323), .B(n36783), .C(n25377), .D(n15620), 
         .Z(n7508)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam i1629_4_lut.init = 16'hcccd;
    LUT4 i1_3_lut_4_lut_adj_180 (.A(\CPU.state[1] ), .B(\CPU.state[2] ), 
         .C(\CPU.state[0] ), .D(n12_adj_1063), .Z(n3376)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1064[11:36])
    defparam i1_3_lut_4_lut_adj_180.init = 16'hffef;
    CCU2D add_76_3 (.A0(prog_addr[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(prog_addr[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29134), .COUT(n29135), .S0(n946[1]), .S1(n946[2]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam add_76_3.INIT0 = 16'h5aaa;
    defparam add_76_3.INIT1 = 16'h5aaa;
    defparam add_76_3.INJECT1_0 = "NO";
    defparam add_76_3.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_181 (.A(n24642), .B(n24573), .C(\CPU.state[1] ), 
         .D(\CPU.state[0] ), .Z(n19916)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_181.init = 16'h0100;
    LUT4 prog_data_6__I_0_727_Mux_5_i100_3_lut_then_4_lut (.A(n82_adj_1020), 
         .B(reg_A[5]), .C(n3376), .D(prog_data[1]), .Z(n37079)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_5_i100_3_lut_then_4_lut.init = 16'hcaaa;
    LUT4 i22896_4_lut (.A(reg_H[6]), .B(n31660), .C(\CPU.first_operand [6]), 
         .D(n13752), .Z(n32356)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22896_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_4_lut (.A(n12385), .B(\CPU.opcode [3]), .C(\CPU.opcode [4]), 
         .D(n11), .Z(n31602)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(965[5] 1022[14])
    defparam i1_4_lut_4_lut.init = 16'h0020;
    LUT4 prog_data_6__I_0_727_Mux_5_i100_3_lut_else_4_lut (.A(n82_adj_1020), 
         .B(reg_L[5]), .C(n3376), .D(prog_data[1]), .Z(n37078)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_5_i100_3_lut_else_4_lut.init = 16'hcaaa;
    LUT4 i23071_4_lut (.A(n10528[10]), .B(n13713), .C(n32848), .D(n13698), 
         .Z(n32757)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23071_4_lut.init = 16'hc088;
    LUT4 i22813_2_lut (.A(n35069), .B(\CPU.state[0] ), .Z(n32355)) /* synthesis lut_function=(A (B)) */ ;
    defparam i22813_2_lut.init = 16'h8888;
    LUT4 i22967_4_lut (.A(reg_L[6]), .B(n31660), .C(prog_data[6]), .D(n13752), 
         .Z(n32482)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22967_4_lut.init = 16'hc088;
    PFUMX i22053 (.BLUT(n32749), .ALUT(n32750), .C0(\CPU.state[0] ), .Z(n32168));
    LUT4 i22096_3_lut (.A(n36811), .B(n32210), .C(n24930), .Z(n32211)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i22096_3_lut.init = 16'hacac;
    LUT4 mux_3789_i3_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n8_adj_1056), 
         .C(cpu_data_in[2]), .D(reg_B[2]), .Z(n11921[2])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3789_i3_3_lut_4_lut.init = 16'hfd20;
    LUT4 prog_data_6__I_0_727_Mux_4_i100_3_lut_then_4_lut (.A(n82_adj_1013), 
         .B(reg_A[4]), .C(n3376), .D(prog_data[1]), .Z(n37082)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_4_i100_3_lut_then_4_lut.init = 16'hcaaa;
    LUT4 i14759_2_lut (.A(n1837[0]), .B(n13096), .Z(n1916[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam i14759_2_lut.init = 16'h8888;
    LUT4 prog_data_6__I_0_727_Mux_4_i100_3_lut_else_4_lut (.A(n82_adj_1013), 
         .B(reg_L[4]), .C(n3376), .D(prog_data[1]), .Z(n37081)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_4_i100_3_lut_else_4_lut.init = 16'hcaaa;
    LUT4 i10542_4_lut (.A(n32886), .B(n9168), .C(n9040), .D(n40216), 
         .Z(n15184)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i10542_4_lut.init = 16'hcfca;
    LUT4 i4365_2_lut_3_lut (.A(\CPU.opcode [2]), .B(n26), .C(n31692), 
         .Z(n13589)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(965[5] 1022[14])
    defparam i4365_2_lut_3_lut.init = 16'heaea;
    LUT4 i1_4_lut (.A(n24820), .B(\CPU.state [5]), .C(n19), .D(n10_adj_1049), 
         .Z(n31549)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut.init = 16'h0010;
    LUT4 i21807_2_lut_3_lut_4_lut (.A(\CPU.opcode [0]), .B(\CPU.opcode [1]), 
         .C(\CPU.opcode [2]), .D(n10_adj_1064), .Z(n31916)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i21807_2_lut_3_lut_4_lut.init = 16'hff7f;
    PFUMX i22062 (.BLUT(n32741), .ALUT(n32742), .C0(\CPU.state[0] ), .Z(n32177));
    LUT4 i23016_2_lut (.A(n35114), .B(\CPU.state[0] ), .Z(n32481)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23016_2_lut.init = 16'h8888;
    LUT4 i10579_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1065), .C(n38), .D(n31848), 
         .Z(n20701)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10579_4_lut_4_lut.init = 16'h4454;
    LUT4 i22849_4_lut (.A(reg_H[7]), .B(n31660), .C(\CPU.first_operand [7]), 
         .D(n13752), .Z(n32327)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22849_4_lut.init = 16'hc088;
    LUT4 i23000_2_lut (.A(n35117), .B(\CPU.state[0] ), .Z(n32326)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23000_2_lut.init = 16'h8888;
    LUT4 i22968_4_lut (.A(reg_L[7]), .B(n31660), .C(prog_data[7]), .D(n13752), 
         .Z(n32485)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22968_4_lut.init = 16'hc088;
    LUT4 i23075_2_lut (.A(n35129), .B(\CPU.state[0] ), .Z(n32484)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23075_2_lut.init = 16'h8888;
    LUT4 i15281_2_lut (.A(reg_A[6]), .B(n19110), .Z(n63_adj_1066)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15281_2_lut.init = 16'h2222;
    L6MUX21 i22144 (.D0(n32257), .D1(n32258), .SD(prog_data[2]), .Z(n32259));
    LUT4 i22886_4_lut (.A(n32641), .B(n13856), .C(n1837[2]), .D(n13673), 
         .Z(n32665)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i22886_4_lut.init = 16'hc088;
    LUT4 i23828_2_lut (.A(prog_data[2]), .B(prog_data[3]), .Z(n7437)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i23828_2_lut.init = 16'h4444;
    LUT4 i23778_4_lut (.A(reg_IY[2]), .B(n68), .C(n65), .D(n25463), 
         .Z(n57_adj_1067)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23778_4_lut.init = 16'haf23;
    LUT4 prog_data_6__I_0_727_Mux_7_i127_3_lut_4_lut (.A(reg_A[7]), .B(n19110), 
         .C(n126_adj_1068), .D(n3377), .Z(alu_in_x[7])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_7_i127_3_lut_4_lut.init = 16'hf022;
    LUT4 i10580_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1069), .C(n38_adj_1070), 
         .D(n31848), .Z(n20702)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10580_4_lut_4_lut.init = 16'h4454;
    LUT4 i14742_2_lut (.A(TP2_c), .B(\CPU.state [7]), .Z(n24820)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14742_2_lut.init = 16'heeee;
    LUT4 i23781_4_lut (.A(reg_IY[3]), .B(n68_adj_1071), .C(n65), .D(n25463), 
         .Z(n57_adj_1072)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23781_4_lut.init = 16'haf23;
    LUT4 i1_4_lut_adj_182 (.A(n59), .B(n62_adj_1073), .C(n24573), .D(n4_adj_1004), 
         .Z(n68_adj_1071)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_182.init = 16'hce0a;
    LUT4 i90_3_lut (.A(n6952[3]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut.init = 16'h1c1c;
    LUT4 mux_1303_Mux_3_i63_3_lut (.A(reg_IY[3]), .B(n62_adj_1074), .C(n20690), 
         .Z(n6952[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_3_i63_3_lut.init = 16'hcaca;
    LUT4 mux_1303_Mux_3_i62_3_lut (.A(n6928[3]), .B(n6940[3]), .C(prog_data[5]), 
         .Z(n62_adj_1074)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_3_i62_3_lut.init = 16'hcaca;
    LUT4 mux_3789_i2_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n8_adj_1056), 
         .C(cpu_data_in[1]), .D(reg_B[1]), .Z(n11921[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3789_i2_3_lut_4_lut.init = 16'hfd20;
    LUT4 i15278_2_lut (.A(reg_A[5]), .B(n19110), .Z(n63_adj_1075)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15278_2_lut.init = 16'h2222;
    LUT4 i15197_2_lut_4_lut (.A(\CPU.state[1] ), .B(\CPU.state[0] ), .C(\CPU.state[3] ), 
         .D(\CPU.state[2] ), .Z(n25281)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15197_2_lut_4_lut.init = 16'hfffe;
    LUT4 i4670_3_lut (.A(\CPU.opcode [1]), .B(n13856), .C(n13673), .Z(n13998)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;
    defparam i4670_3_lut.init = 16'h3b3b;
    LUT4 i44_3_lut_3_lut (.A(\CPU.state[0] ), .B(\CPU.state[1] ), .C(\CPU.state[3] ), 
         .Z(n30)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i44_3_lut_3_lut.init = 16'h1616;
    LUT4 i4270_4_lut (.A(prog_data[4]), .B(n7302), .C(prog_data[5]), .D(n4_adj_1076), 
         .Z(n7354)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i4270_4_lut.init = 16'hc5cf;
    LUT4 i23784_4_lut (.A(reg_IY[4]), .B(n68_adj_1077), .C(n65), .D(n25463), 
         .Z(n57_adj_1078)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23784_4_lut.init = 16'haf23;
    LUT4 mux_4571_i2_4_lut (.A(n9856[1]), .B(n11921[1]), .C(n24637), .D(n31602), 
         .Z(n13894)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4571_i2_4_lut.init = 16'haca0;
    LUT4 mux_4390_i1_3_lut_4_lut (.A(n1837[0]), .B(n1539[0]), .C(n13698), 
         .D(n13589), .Z(n13625)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_4390_i1_3_lut_4_lut.init = 16'haaca;
    LUT4 i1_2_lut (.A(\CPU.opcode [0]), .B(\CPU.opcode [1]), .Z(n31695)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    PFUMX i24033 (.BLUT(n1916[8]), .ALUT(n34443), .C0(\CPU.state[0] ), 
          .Z(n34444));
    LUT4 i1_4_lut_adj_183 (.A(n59_adj_1079), .B(n62_adj_1080), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1077)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_183.init = 16'hce0a;
    LUT4 i90_3_lut_adj_184 (.A(n6952[4]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1079)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_184.init = 16'h1c1c;
    LUT4 i22877_4_lut (.A(n32642), .B(n13856), .C(n1837[3]), .D(n13673), 
         .Z(n32667)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i22877_4_lut.init = 16'hc088;
    LUT4 mux_1303_Mux_4_i63_3_lut (.A(reg_IY[4]), .B(n62_adj_1081), .C(n20690), 
         .Z(n6952[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_4_i63_3_lut.init = 16'hcaca;
    LUT4 mux_1303_Mux_4_i62_3_lut (.A(n6928[4]), .B(n6940[4]), .C(prog_data[5]), 
         .Z(n62_adj_1081)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_4_i62_3_lut.init = 16'hcaca;
    PFUMX i22071 (.BLUT(n32730), .ALUT(n32731), .C0(\CPU.state[0] ), .Z(n32186));
    LUT4 prog_data_6__I_0_727_Mux_3_i100_3_lut_then_4_lut (.A(n82_adj_1011), 
         .B(reg_A[3]), .C(n3376), .D(prog_data[1]), .Z(n37085)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_3_i100_3_lut_then_4_lut.init = 16'hcaaa;
    LUT4 i23787_4_lut (.A(reg_IY[5]), .B(n68_adj_1082), .C(n65), .D(n25463), 
         .Z(n57_adj_1083)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23787_4_lut.init = 16'haf23;
    PFUMX i22080 (.BLUT(n32622), .ALUT(n32623), .C0(\CPU.state[0] ), .Z(n32195));
    LUT4 i1_4_lut_adj_185 (.A(n59_adj_1084), .B(n62_adj_1085), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1082)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_185.init = 16'hce0a;
    LUT4 i90_3_lut_adj_186 (.A(n6952[5]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1084)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_186.init = 16'h1c1c;
    LUT4 mux_1303_Mux_5_i63_3_lut (.A(reg_IY[5]), .B(n62_adj_1086), .C(n20690), 
         .Z(n6952[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_5_i63_3_lut.init = 16'hcaca;
    PFUMX i22089 (.BLUT(n32502), .ALUT(n32503), .C0(\CPU.state[0] ), .Z(n32204));
    LUT4 mux_1303_Mux_5_i62_3_lut (.A(n6928[5]), .B(n6940[5]), .C(prog_data[5]), 
         .Z(n62_adj_1086)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_5_i62_3_lut.init = 16'hcaca;
    LUT4 i23790_4_lut (.A(reg_IY[6]), .B(n68_adj_1087), .C(n65), .D(n25463), 
         .Z(n57_adj_1088)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23790_4_lut.init = 16'haf23;
    CCU2D add_3241_10 (.A0(reg_IX[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_IX[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29162), .COUT(n29163), .S0(n6892[8]), .S1(n6892[9]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3241_10.INIT0 = 16'h5aaa;
    defparam add_3241_10.INIT1 = 16'h5aaa;
    defparam add_3241_10.INJECT1_0 = "NO";
    defparam add_3241_10.INJECT1_1 = "NO";
    PFUMX i24362 (.BLUT(n34974), .ALUT(n34972), .C0(prog_data[6]), .Z(n34975));
    LUT4 i1_4_lut_adj_187 (.A(n59_adj_1089), .B(n62_adj_1090), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1087)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_187.init = 16'hce0a;
    LUT4 i14852_4_lut (.A(n10_adj_1049), .B(n39888), .C(n24820), .D(n19867), 
         .Z(n24930)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;
    defparam i14852_4_lut.init = 16'hcdcc;
    LUT4 i90_3_lut_adj_188 (.A(n6952[6]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1089)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_188.init = 16'h1c1c;
    PFUMX i22092 (.BLUT(n32500), .ALUT(n32501), .C0(\CPU.state[0] ), .Z(n32207));
    LUT4 i14880_2_lut (.A(alu_out[1]), .B(\CPU.state[0] ), .Z(n9856[1])) /* synthesis lut_function=(A (B)) */ ;
    defparam i14880_2_lut.init = 16'h8888;
    LUT4 mux_1303_Mux_6_i63_3_lut (.A(reg_IY[6]), .B(n62_adj_1091), .C(n20690), 
         .Z(n6952[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_6_i63_3_lut.init = 16'hcaca;
    LUT4 mux_1303_Mux_6_i62_3_lut (.A(n6928[6]), .B(n6940[6]), .C(prog_data[5]), 
         .Z(n62_adj_1091)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_6_i62_3_lut.init = 16'hcaca;
    CCU2D add_76_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(prog_addr[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n29134), .S1(n946[0]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam add_76_1.INIT0 = 16'hF000;
    defparam add_76_1.INIT1 = 16'h5555;
    defparam add_76_1.INJECT1_0 = "NO";
    defparam add_76_1.INJECT1_1 = "NO";
    LUT4 prog_data_6__I_0_727_Mux_3_i100_3_lut_else_4_lut (.A(n82_adj_1011), 
         .B(reg_L[3]), .C(n3376), .D(prog_data[1]), .Z(n37084)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_3_i100_3_lut_else_4_lut.init = 16'hcaaa;
    LUT4 i23793_4_lut (.A(reg_IY[7]), .B(n68_adj_1092), .C(n65), .D(n25463), 
         .Z(n57_adj_1093)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23793_4_lut.init = 16'haf23;
    LUT4 i1_4_lut_adj_189 (.A(n59_adj_1094), .B(n62_adj_1095), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1092)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_189.init = 16'hce0a;
    LUT4 i22157_3_lut (.A(reg_E[0]), .B(reg_L[0]), .C(prog_data[1]), .Z(n32272)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22157_3_lut.init = 16'hcaca;
    LUT4 i4447_2_lut_3_lut (.A(\CPU.state[3] ), .B(\CPU.opcode[6] ), .C(n41_adj_1096), 
         .Z(n13698)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i4447_2_lut_3_lut.init = 16'h2020;
    CCU2D add_3241_8 (.A0(reg_IX[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_IX[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29161), .COUT(n29162), .S0(n6892[6]), .S1(n6892[7]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3241_8.INIT0 = 16'h5aaa;
    defparam add_3241_8.INIT1 = 16'h5aaa;
    defparam add_3241_8.INJECT1_0 = "NO";
    defparam add_3241_8.INJECT1_1 = "NO";
    LUT4 i90_3_lut_adj_190 (.A(n6952[7]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1094)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_190.init = 16'h1c1c;
    PFUMX i22141 (.BLUT(n32254), .ALUT(n32255), .C0(n3382), .Z(n81_adj_1033));
    LUT4 mux_1303_Mux_7_i63_3_lut (.A(reg_IY[7]), .B(n62_adj_1097), .C(n20690), 
         .Z(n6952[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_7_i63_3_lut.init = 16'hcaca;
    LUT4 mux_1303_Mux_7_i62_3_lut (.A(n6928[7]), .B(n6940[7]), .C(prog_data[5]), 
         .Z(n62_adj_1097)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_7_i62_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut (.A(\CPU.state [5]), .B(n9_adj_1061), .Z(n19867)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    LUT4 mux_4390_i2_3_lut_4_lut (.A(n1837[1]), .B(n1539[1]), .C(n13698), 
         .D(n13589), .Z(n13626)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_4390_i2_3_lut_4_lut.init = 16'haaca;
    LUT4 i1_2_lut_adj_191 (.A(prog_data[0]), .B(prog_data[1]), .Z(n15620)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_191.init = 16'heeee;
    LUT4 mux_4390_i3_3_lut_4_lut (.A(n1837[2]), .B(n1539[2]), .C(n13698), 
         .D(n13589), .Z(n13627)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_4390_i3_3_lut_4_lut.init = 16'haaca;
    LUT4 i22915_4_lut (.A(n31960), .B(prog_data[1]), .C(n7357), .D(n20135), 
         .Z(n32886)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i22915_4_lut.init = 16'h0004;
    PFUMX i22095 (.BLUT(n32497), .ALUT(n32498), .C0(\CPU.state[0] ), .Z(n32210));
    LUT4 i14734_2_lut_3_lut (.A(n9_adj_1044), .B(n12_adj_1042), .C(\CPU.state[0] ), 
         .Z(n16)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1086[10:17])
    defparam i14734_2_lut_3_lut.init = 16'h0101;
    LUT4 i15301_2_lut (.A(prog_data[3]), .B(n19110), .Z(n63_adj_1098)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15301_2_lut.init = 16'h2222;
    LUT4 i22008_3_lut (.A(n9205[10]), .B(n1916[10]), .C(n15184), .Z(n32123)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22008_3_lut.init = 16'hcaca;
    PFUMX i5687 (.BLUT(n14373[7]), .ALUT(n32444), .C0(n15255), .Z(n15267));
    LUT4 mux_4390_i4_3_lut_4_lut (.A(n1837[3]), .B(n1539[3]), .C(n13698), 
         .D(n13589), .Z(n13628)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_4390_i4_3_lut_4_lut.init = 16'haaca;
    LUT4 i5708_4_lut (.A(n14373[0]), .B(n13122[0]), .C(n15255), .D(n13096), 
         .Z(n15288)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i5708_4_lut.init = 16'hca0a;
    LUT4 i23796_4_lut (.A(n2635), .B(n68_adj_1099), .C(n65), .D(n25463), 
         .Z(n57_adj_1100)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23796_4_lut.init = 16'haf23;
    LUT4 mux_4104_i1_3_lut (.A(prog_addr[0]), .B(n1851[0]), .C(\CPU.opcode[5] ), 
         .Z(n13122[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam mux_4104_i1_3_lut.init = 16'hcaca;
    LUT4 i21850_2_lut (.A(prog_data[0]), .B(n20097), .Z(n31960)) /* synthesis lut_function=(A (B)) */ ;
    defparam i21850_2_lut.init = 16'h8888;
    FD1P3AX reg_B__i7 (.D(n13900), .SP(CK_keep_enable_23), .CK(CK_keep), 
            .Q(reg_B[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_B__i7.GSR = "ENABLED";
    LUT4 i22878_4_lut (.A(n32643), .B(n13856), .C(n1837[4]), .D(n13673), 
         .Z(n32669)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i22878_4_lut.init = 16'hc088;
    PFUMX i5690 (.BLUT(n14373[6]), .ALUT(n32439), .C0(n15255), .Z(n15270));
    LUT4 i1_4_lut_adj_192 (.A(n59_adj_1101), .B(n62_adj_1102), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1099)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_192.init = 16'hce0a;
    PFUMX i27355 (.BLUT(n39886), .ALUT(n39885), .C0(prog_data[4]), .Z(n39887));
    LUT4 i90_3_lut_adj_193 (.A(n6952[8]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1101)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_193.init = 16'h1c1c;
    LUT4 i23775_4_lut (.A(reg_IY[1]), .B(n68_adj_1103), .C(n65), .D(n25463), 
         .Z(n57_adj_1104)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23775_4_lut.init = 16'haf23;
    LUT4 mux_442_i1_3_lut (.A(reg_IX[0]), .B(reg_IY[0]), .C(n13), .Z(n1851[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1075[6] 1078[15])
    defparam mux_442_i1_3_lut.init = 16'hcaca;
    LUT4 mux_1303_Mux_8_i63_3_lut (.A(reg_IY[8]), .B(n62_adj_1105), .C(n20690), 
         .Z(n6952[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_8_i63_3_lut.init = 16'hcaca;
    FD1P3AX reg_B__i6 (.D(n13899), .SP(CK_keep_enable_23), .CK(CK_keep), 
            .Q(reg_B[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_B__i6.GSR = "ENABLED";
    CCU2D add_3241_6 (.A0(reg_IX[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_IX[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29160), .COUT(n29161), .S0(n6892[4]), .S1(n6892[5]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3241_6.INIT0 = 16'h5aaa;
    defparam add_3241_6.INIT1 = 16'h5aaa;
    defparam add_3241_6.INJECT1_0 = "NO";
    defparam add_3241_6.INJECT1_1 = "NO";
    CCU2D alu_in_x_7__I_0_724_9 (.A0(alu_in_x[7]), .B0(n63_adj_1106), .C0(n3377), 
          .D0(n126_adj_1107), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n29133), .S0(\CPU_ALU.result_8__N_644 [7]), 
          .S1(\CPU_ALU.result_8__N_644 [8]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(294[19:27])
    defparam alu_in_x_7__I_0_724_9.INIT0 = 16'h56a6;
    defparam alu_in_x_7__I_0_724_9.INIT1 = 16'h0000;
    defparam alu_in_x_7__I_0_724_9.INJECT1_0 = "NO";
    defparam alu_in_x_7__I_0_724_9.INJECT1_1 = "NO";
    LUT4 mux_4390_i5_3_lut_4_lut (.A(n1837[4]), .B(n1539[4]), .C(n13698), 
         .D(n13589), .Z(n13629)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_4390_i5_3_lut_4_lut.init = 16'haaca;
    FD1P3AX reg_B__i5 (.D(n13898), .SP(CK_keep_enable_23), .CK(CK_keep), 
            .Q(reg_B[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_B__i5.GSR = "ENABLED";
    FD1P3AX reg_B__i4 (.D(n13897), .SP(CK_keep_enable_23), .CK(CK_keep), 
            .Q(reg_B[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_B__i4.GSR = "ENABLED";
    FD1P3AX reg_B__i3 (.D(n13896), .SP(CK_keep_enable_23), .CK(CK_keep), 
            .Q(reg_B[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_B__i3.GSR = "ENABLED";
    LUT4 i5667_4_lut (.A(TP2_c), .B(n20_adj_1053), .C(\CPU.state [5]), 
         .D(n31956), .Z(n15255)) /* synthesis lut_function=(!(A+!((C+(D))+!B))) */ ;
    defparam i5667_4_lut.init = 16'h5551;
    LUT4 mux_4390_i6_3_lut_4_lut (.A(n1837[5]), .B(n1539[5]), .C(n13698), 
         .D(n13589), .Z(n13630)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_4390_i6_3_lut_4_lut.init = 16'haaca;
    LUT4 i12694_3_lut (.A(n6928[8]), .B(n6940[8]), .C(prog_data[5]), .Z(n62_adj_1105)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(77[3:5])
    defparam i12694_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_194 (.A(n59_adj_1108), .B(n62_adj_1109), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1103)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_194.init = 16'hce0a;
    FD1P3AX reg_B__i2 (.D(n13895), .SP(CK_keep_enable_23), .CK(CK_keep), 
            .Q(reg_B[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_B__i2.GSR = "ENABLED";
    LUT4 n35_bdd_2_lut_25256_3_lut (.A(n25463), .B(\CPU.state[2] ), .C(n36454), 
         .Z(CK_keep_enable_7)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n35_bdd_2_lut_25256_3_lut.init = 16'h1010;
    LUT4 i23892_2_lut_3_lut (.A(\CPU.opcode [3]), .B(\CPU.opcode[6] ), .C(\CPU.opcode[5] ), 
         .Z(n25295)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i23892_2_lut_3_lut.init = 16'h0101;
    LUT4 mux_4390_i8_3_lut_4_lut (.A(n1837[7]), .B(n1539[7]), .C(n13698), 
         .D(n13589), .Z(n13632)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_4390_i8_3_lut_4_lut.init = 16'haaca;
    PFUMX i5693 (.BLUT(n14373[5]), .ALUT(n32425), .C0(n15255), .Z(n15273));
    PFUMX i5696 (.BLUT(n14373[4]), .ALUT(n32418), .C0(n15255), .Z(n15276));
    LUT4 i23901_3_lut_4_lut (.A(\CPU.opcode [1]), .B(n13589), .C(n14361), 
         .D(CPUWR), .Z(n25429)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(965[5] 1022[14])
    defparam i23901_3_lut_4_lut.init = 16'h0020;
    LUT4 i15302_2_lut (.A(prog_data[4]), .B(n19110), .Z(n63_adj_1110)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15302_2_lut.init = 16'h2222;
    LUT4 i23438_4_lut_4_lut_4_lut (.A(\CPU.opcode [2]), .B(\CPU.opcode [0]), 
         .C(n14329), .D(\CPU.opcode [1]), .Z(n33557)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)+!C !(D)))+!A (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(965[5] 1022[14])
    defparam i23438_4_lut_4_lut_4_lut.init = 16'h0f25;
    PFUMX mux_3188_i8 (.BLUT(n9485[7]), .ALUT(n32715), .C0(n9513), .Z(n9514[7]));
    CCU2D add_3241_4 (.A0(reg_IX[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_IX[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29159), .COUT(n29160), .S0(n6892[2]), .S1(n6892[3]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3241_4.INIT0 = 16'h5aaa;
    defparam add_3241_4.INIT1 = 16'h5aaa;
    defparam add_3241_4.INJECT1_0 = "NO";
    defparam add_3241_4.INJECT1_1 = "NO";
    LUT4 prog_data_6__I_0_727_Mux_1_i127_3_lut_4_lut (.A(reg_A[1]), .B(n19110), 
         .C(n126_adj_1111), .D(n3377), .Z(alu_in_x[1])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_1_i127_3_lut_4_lut.init = 16'hf022;
    CCU2D alu_in_x_7__I_0_724_7 (.A0(alu_in_x[5]), .B0(n63_adj_1059), .C0(n3377), 
          .D0(n126_adj_1112), .A1(alu_in_x[6]), .B1(n63_adj_1062), .C1(n3377), 
          .D1(n126_adj_1113), .CIN(n29132), .COUT(n29133), .S0(\CPU_ALU.result_8__N_644 [5]), 
          .S1(\CPU_ALU.result_8__N_644 [6]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(294[19:27])
    defparam alu_in_x_7__I_0_724_7.INIT0 = 16'h56a6;
    defparam alu_in_x_7__I_0_724_7.INIT1 = 16'h56a6;
    defparam alu_in_x_7__I_0_724_7.INJECT1_0 = "NO";
    defparam alu_in_x_7__I_0_724_7.INJECT1_1 = "NO";
    LUT4 i8111_3_lut_4_lut (.A(n126_adj_1034), .B(n126), .C(alu_ctrl[0]), 
         .D(alu_ctrl[1]), .Z(n10_adj_1114)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam i8111_3_lut_4_lut.init = 16'haaca;
    LUT4 i23311_2_lut (.A(alu_ctrl[0]), .B(alu_in_x[7]), .Z(n32868)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam i23311_2_lut.init = 16'h4444;
    PFUMX i25501 (.BLUT(n36898), .ALUT(n36897), .C0(prog_data[5]), .Z(n36899));
    LUT4 i15268_2_lut (.A(\CPU.state [7]), .B(\CPU.state[1] ), .Z(n25353)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i15268_2_lut.init = 16'heeee;
    LUT4 i8109_3_lut_4_lut (.A(n126_adj_1038), .B(n126_adj_1111), .C(alu_ctrl[0]), 
         .D(alu_ctrl[1]), .Z(n10_adj_1115)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam i8109_3_lut_4_lut.init = 16'haaca;
    LUT4 i8107_3_lut_4_lut (.A(n126_adj_1036), .B(n126_adj_1034), .C(alu_ctrl[0]), 
         .D(alu_ctrl[1]), .Z(n10_adj_1116)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam i8107_3_lut_4_lut.init = 16'haaca;
    LUT4 i8105_3_lut_4_lut (.A(n126_adj_1045), .B(n126_adj_1038), .C(alu_ctrl[0]), 
         .D(alu_ctrl[1]), .Z(n10_adj_1117)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam i8105_3_lut_4_lut.init = 16'haaca;
    LUT4 i23799_4_lut (.A(n2634), .B(n68_adj_1118), .C(n65), .D(n25463), 
         .Z(n57_adj_1119)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23799_4_lut.init = 16'haf23;
    LUT4 prog_data_6__I_0_727_Mux_2_i100_3_lut_then_4_lut (.A(n82_adj_1015), 
         .B(reg_A[2]), .C(n3376), .D(prog_data[1]), .Z(n37088)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_2_i100_3_lut_then_4_lut.init = 16'hcaaa;
    CCU2D add_3241_2 (.A0(reg_IX[0]), .B0(prog_data[0]), .C0(GND_net), 
          .D0(GND_net), .A1(reg_IX[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n29159), .S1(n6892[1]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3241_2.INIT0 = 16'h7000;
    defparam add_3241_2.INIT1 = 16'h5aaa;
    defparam add_3241_2.INJECT1_0 = "NO";
    defparam add_3241_2.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_195 (.A(n59_adj_1120), .B(n62_adj_1121), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1118)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_195.init = 16'hce0a;
    FD1P3AX reg_B__i1 (.D(n13894), .SP(CK_keep_enable_23), .CK(CK_keep), 
            .Q(reg_B[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_B__i1.GSR = "ENABLED";
    CCU2D alu_in_x_7__I_0_724_5 (.A0(alu_in_x[3]), .B0(n63_adj_1098), .C0(n3377), 
          .D0(n126_adj_1122), .A1(alu_in_x[4]), .B1(n63_adj_1110), .C1(n3377), 
          .D1(n126_adj_1123), .CIN(n29131), .COUT(n29132), .S0(\CPU_ALU.result_8__N_644 [3]), 
          .S1(\CPU_ALU.result_8__N_644 [4]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(294[19:27])
    defparam alu_in_x_7__I_0_724_5.INIT0 = 16'h56a6;
    defparam alu_in_x_7__I_0_724_5.INIT1 = 16'h56a6;
    defparam alu_in_x_7__I_0_724_5.INJECT1_0 = "NO";
    defparam alu_in_x_7__I_0_724_5.INJECT1_1 = "NO";
    PFUMX i25717 (.BLUT(n37253), .ALUT(n37252), .C0(prog_data[3]), .Z(n37254));
    FD1P3DX reg_SP_i0_i10 (.D(n32124), .SP(CK_keep_enable_33), .CK(CK_keep), 
            .CD(TP2_c), .Q(reg_SP[10])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_SP_i0_i10.GSR = "ENABLED";
    FD1P3BX reg_SP_i0_i9 (.D(n32127), .SP(CK_keep_enable_33), .CK(CK_keep), 
            .PD(TP2_c), .Q(reg_SP[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_SP_i0_i9.GSR = "ENABLED";
    LUT4 i21743_2_lut (.A(TP2_c), .B(\CPU.state[1] ), .Z(n31850)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i21743_2_lut.init = 16'heeee;
    PFUMX mux_3188_i7 (.BLUT(n9485[6]), .ALUT(n32714), .C0(n9513), .Z(n9514[6]));
    LUT4 i90_3_lut_adj_196 (.A(n6952[9]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1120)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_196.init = 16'h1c1c;
    LUT4 mux_1303_Mux_9_i63_3_lut (.A(reg_IY[9]), .B(n62_adj_1124), .C(n20690), 
         .Z(n6952[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_9_i63_3_lut.init = 16'hcaca;
    LUT4 mux_1303_Mux_9_i62_3_lut (.A(n6928[9]), .B(n6940[9]), .C(prog_data[5]), 
         .Z(n62_adj_1124)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_9_i62_3_lut.init = 16'hcaca;
    PFUMX mux_3188_i6 (.BLUT(n9485[5]), .ALUT(n32713), .C0(n9513), .Z(n9514[5]));
    FD1P3BX reg_SP_i0_i8 (.D(n32130), .SP(CK_keep_enable_33), .CK(CK_keep), 
            .PD(TP2_c), .Q(reg_SP[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_SP_i0_i8.GSR = "ENABLED";
    LUT4 i90_3_lut_adj_197 (.A(n6952[1]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1108)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_197.init = 16'h1c1c;
    LUT4 \CPU.opcode_4__bdd_4_lut_24190  (.A(\CPU.opcode [1]), .B(\CPU.opcode [3]), 
         .C(\CPU.opcode[5] ), .D(\CPU.opcode [0]), .Z(n34343)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;
    defparam \CPU.opcode_4__bdd_4_lut_24190 .init = 16'h0203;
    LUT4 i4484_2_lut_4_lut (.A(\CPU.opcode [4]), .B(n10514), .C(\CPU.opcode [0]), 
         .D(\CPU.opcode [1]), .Z(n13752)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i4484_2_lut_4_lut.init = 16'h8000;
    LUT4 i23802_4_lut (.A(n2633), .B(n68_adj_1125), .C(n65), .D(n25463), 
         .Z(n57_adj_1126)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23802_4_lut.init = 16'haf23;
    LUT4 i1_4_lut_adj_198 (.A(flag_Z_N_960), .B(n31898), .C(n32794), .D(n13_adj_1030), 
         .Z(CK_keep_enable_2)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_198.init = 16'h3011;
    LUT4 \CPU.opcode_6__I_0_749_i11_2_lut  (.A(\CPU.opcode[5] ), .B(\CPU.opcode[6] ), 
         .Z(n11)) /* synthesis lut_function=((B)+!A) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1035[10:16])
    defparam \CPU.opcode_6__I_0_749_i11_2_lut .init = 16'hdddd;
    LUT4 i15272_2_lut (.A(reg_A[3]), .B(n19110), .Z(n63_adj_1127)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15272_2_lut.init = 16'h2222;
    LUT4 prog_data_6__I_0_727_Mux_2_i100_3_lut_else_4_lut (.A(n82_adj_1015), 
         .B(reg_L[2]), .C(n3376), .D(prog_data[1]), .Z(n37087)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_2_i100_3_lut_else_4_lut.init = 16'hcaaa;
    LUT4 prog_data_1__bdd_4_lut_25731 (.A(prog_data[4]), .B(prog_data[2]), 
         .C(prog_data[5]), .D(prog_data[0]), .Z(n37251)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C+(D))))) */ ;
    defparam prog_data_1__bdd_4_lut_25731.init = 16'h1312;
    LUT4 i1_4_lut_adj_199 (.A(n59_adj_1128), .B(n62_adj_1129), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1125)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_199.init = 16'hce0a;
    LUT4 i90_3_lut_adj_200 (.A(n6952[10]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1128)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_200.init = 16'h1c1c;
    LUT4 mux_1303_Mux_10_i63_3_lut (.A(reg_IY[10]), .B(n62_adj_1130), .C(n20690), 
         .Z(n6952[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_10_i63_3_lut.init = 16'hcaca;
    LUT4 alu_ctrl_3__I_0_Mux_7_i8_3_lut (.A(n126), .B(n126_adj_1039), .C(alu_ctrl[0]), 
         .Z(n8_adj_1040)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam alu_ctrl_3__I_0_Mux_7_i8_3_lut.init = 16'hcaca;
    LUT4 mux_1303_Mux_10_i62_3_lut (.A(n6928[10]), .B(n6940[10]), .C(prog_data[5]), 
         .Z(n62_adj_1130)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_10_i62_3_lut.init = 16'hcaca;
    LUT4 i15275_2_lut (.A(reg_A[4]), .B(n19110), .Z(n63_adj_1131)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15275_2_lut.init = 16'h2222;
    LUT4 mux_4181_i1_4_lut (.A(n15), .B(cpu_data_in[0]), .C(\CPU.state[3] ), 
         .D(n16_adj_1132), .Z(n13282[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam mux_4181_i1_4_lut.init = 16'hc0c5;
    LUT4 i6_4_lut (.A(alu_out[6]), .B(alu_out[4]), .C(alu_out[2]), .D(alu_out[3]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(alu_out[5]), .B(alu_out[7]), .C(alu_out[1]), .D(n10_adj_1133), 
         .Z(n16_adj_1132)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hfffe;
    PFUMX i24358 (.BLUT(n34970), .ALUT(n34969), .C0(prog_data[6]), .Z(n34971));
    LUT4 i1_4_lut_adj_201 (.A(alu_out[0]), .B(n32578), .C(n20641), .D(\CPU.state[0] ), 
         .Z(n10_adj_1133)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_201.init = 16'hfaee;
    LUT4 \CPU.opcode_0__bdd_4_lut_25037  (.A(\CPU.opcode [0]), .B(\CPU.opcode[5] ), 
         .C(\CPU.opcode [2]), .D(\CPU.opcode [1]), .Z(n26)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B ((D)+!C)+!B !((D)+!C))) */ ;
    defparam \CPU.opcode_0__bdd_4_lut_25037 .init = 16'hcc1c;
    LUT4 xdac_0_bdd_2_lut_23977 (.A(n34343), .B(\CPU.opcode [4]), .Z(n34344)) /* synthesis lut_function=(A (B)) */ ;
    defparam xdac_0_bdd_2_lut_23977.init = 16'h8888;
    LUT4 prog_data_6__I_0_727_Mux_1_i100_3_lut_then_4_lut (.A(n82_adj_1017), 
         .B(reg_A[1]), .C(n3376), .D(prog_data[1]), .Z(n37091)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_1_i100_3_lut_then_4_lut.init = 16'hcaaa;
    LUT4 prog_data_6__I_0_727_Mux_1_i100_3_lut_else_4_lut (.A(n82_adj_1017), 
         .B(reg_L[1]), .C(n3376), .D(prog_data[1]), .Z(n37090)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_1_i100_3_lut_else_4_lut.init = 16'hcaaa;
    LUT4 n32592_bdd_3_lut_4_lut (.A(\CPU.opcode [1]), .B(n13589), .C(n14361), 
         .D(\CPU.state [4]), .Z(n34581)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(965[5] 1022[14])
    defparam n32592_bdd_3_lut_4_lut.init = 16'hffd0;
    PFUMX mux_3188_i5 (.BLUT(n9485[4]), .ALUT(n32712), .C0(n9513), .Z(n9514[4]));
    LUT4 i8103_3_lut_4_lut (.A(n126_adj_1039), .B(n126_adj_1036), .C(alu_ctrl[0]), 
         .D(alu_ctrl[1]), .Z(n10_adj_1134)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam i8103_3_lut_4_lut.init = 16'haaca;
    LUT4 i8101_3_lut_4_lut (.A(n126_adj_1068), .B(n126_adj_1045), .C(alu_ctrl[0]), 
         .D(alu_ctrl[1]), .Z(n10_adj_1135)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam i8101_3_lut_4_lut.init = 16'haaca;
    LUT4 i23757_4_lut (.A(reg_IX[1]), .B(n68_adj_1136), .C(n65), .D(n25463), 
         .Z(n57_adj_1137)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23757_4_lut.init = 16'haf23;
    LUT4 i23373_4_lut (.A(n32797), .B(n22), .C(\CPU.state[0] ), .D(n6_adj_1138), 
         .Z(n32794)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;
    defparam i23373_4_lut.init = 16'h2303;
    LUT4 i1_4_lut_adj_202 (.A(n59_adj_1139), .B(n62_adj_1140), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1136)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_202.init = 16'hce0a;
    LUT4 mux_3872_i1_3_lut_4_lut (.A(ram_out[0]), .B(CPUWR), .C(reg_E[0]), 
         .D(n9), .Z(n12188[0])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3872_i1_3_lut_4_lut.init = 16'hf022;
    LUT4 i90_3_lut_adj_203 (.A(n6916[1]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1139)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_203.init = 16'h1c1c;
    LUT4 i15299_2_lut (.A(prog_data[1]), .B(n19110), .Z(n63_adj_1141)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15299_2_lut.init = 16'h2222;
    LUT4 prog_data_6__I_0_728_Mux_1_i127_3_lut_4_lut (.A(prog_data[1]), .B(n19110), 
         .C(n126_adj_1142), .D(n3377), .Z(alu_in_y[1])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_728_Mux_1_i127_3_lut_4_lut.init = 16'hf022;
    LUT4 i23040_4_lut (.A(n1837[6]), .B(n24601), .C(n1539[6]), .D(n13624), 
         .Z(n32566)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23040_4_lut.init = 16'hc088;
    FD1P3DX reg_SP_i0_i7 (.D(n32133), .SP(CK_keep_enable_33), .CK(CK_keep), 
            .CD(TP2_c), .Q(reg_SP[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_SP_i0_i7.GSR = "ENABLED";
    PFUMX i25456 (.BLUT(n36826), .ALUT(n13589), .C0(n13698), .Z(n36827));
    LUT4 i21848_2_lut (.A(n25463), .B(\CPU.state[2] ), .Z(n31958)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i21848_2_lut.init = 16'heeee;
    LUT4 mux_1300_Mux_1_i63_3_lut (.A(reg_IX[1]), .B(n62_adj_1143), .C(n31856), 
         .Z(n6916[1])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_1_i63_3_lut.init = 16'hacac;
    CCU2D alu_in_x_7__I_0_724_3 (.A0(alu_in_x[1]), .B0(n63_adj_1141), .C0(n3377), 
          .D0(n126_adj_1142), .A1(alu_in_x[2]), .B1(n63_adj_1144), .C1(n3377), 
          .D1(n126_adj_1145), .CIN(n29130), .COUT(n29131), .S0(\CPU_ALU.result_8__N_644 [1]), 
          .S1(\CPU_ALU.result_8__N_644 [2]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(294[19:27])
    defparam alu_in_x_7__I_0_724_3.INIT0 = 16'h56a6;
    defparam alu_in_x_7__I_0_724_3.INIT1 = 16'h56a6;
    defparam alu_in_x_7__I_0_724_3.INJECT1_0 = "NO";
    defparam alu_in_x_7__I_0_724_3.INJECT1_1 = "NO";
    LUT4 mux_1300_Mux_1_i62_3_lut (.A(n6892[1]), .B(n61), .C(prog_data[5]), 
         .Z(n62_adj_1143)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_1_i62_3_lut.init = 16'hcaca;
    LUT4 i23894_3_lut_4_lut (.A(n9_adj_1044), .B(n12_adj_1042), .C(\CPU.opcode[5] ), 
         .D(n13096), .Z(n25312)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1086[10:17])
    defparam i23894_3_lut_4_lut.init = 16'h0100;
    LUT4 prog_data_6__I_0_728_Mux_2_i127_3_lut_4_lut (.A(prog_data[2]), .B(n19110), 
         .C(n126_adj_1145), .D(n3377), .Z(alu_in_y[2])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_728_Mux_2_i127_3_lut_4_lut.init = 16'hf022;
    LUT4 i23746_4_lut (.A(reg_IX[2]), .B(n68_adj_1146), .C(n65), .D(n25463), 
         .Z(n57_adj_1147)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23746_4_lut.init = 16'haf23;
    LUT4 i1_4_lut_adj_204 (.A(n59_adj_1148), .B(n62_adj_1149), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1146)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_204.init = 16'hce0a;
    LUT4 i15300_2_lut (.A(prog_data[2]), .B(n19110), .Z(n63_adj_1144)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15300_2_lut.init = 16'h2222;
    LUT4 i90_3_lut_adj_205 (.A(n6916[2]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1148)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_205.init = 16'h1c1c;
    LUT4 mux_4145_i1_4_lut (.A(\CPU_ALU.result [8]), .B(cpu_data_in[2]), 
         .C(\CPU.state[3] ), .D(n31718), .Z(n13234[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam mux_4145_i1_4_lut.init = 16'hc0ca;
    LUT4 i2_3_lut_4_lut_adj_206 (.A(n31884), .B(\CPU.opcode [3]), .C(\CPU.opcode [0]), 
         .D(\CPU.opcode [2]), .Z(n13673)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i2_3_lut_4_lut_adj_206.init = 16'h0004;
    LUT4 i21800_4_lut (.A(prog_data[3]), .B(n19382), .C(n32802), .D(prog_data[5]), 
         .Z(n55)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i21800_4_lut.init = 16'h0511;
    PFUMX i25447 (.BLUT(n1916[0]), .ALUT(n36810), .C0(\CPU.state[0] ), 
          .Z(n36811));
    LUT4 prog_data_6__I_0_728_Mux_6_i127_3_lut_4_lut (.A(prog_data[6]), .B(n19110), 
         .C(n126_adj_1113), .D(n3376), .Z(alu_in_y[6])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_728_Mux_6_i127_3_lut_4_lut.init = 16'ha022;
    LUT4 mux_1300_Mux_2_i63_3_lut (.A(reg_IX[2]), .B(n62_adj_1150), .C(n31856), 
         .Z(n6916[2])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_2_i63_3_lut.init = 16'hacac;
    LUT4 i23364_4_lut (.A(n35275), .B(n31680), .C(n7439), .D(prog_data[5]), 
         .Z(n32780)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i23364_4_lut.init = 16'hc088;
    FD1P3DX reg_SP_i0_i6 (.D(n32136), .SP(CK_keep_enable_33), .CK(CK_keep), 
            .CD(TP2_c), .Q(reg_SP[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_SP_i0_i6.GSR = "ENABLED";
    LUT4 i58_4_lut_then_4_lut (.A(prog_data[5]), .B(n19382), .C(prog_data[3]), 
         .D(prog_data[4]), .Z(n37094)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;
    defparam i58_4_lut_then_4_lut.init = 16'h2040;
    LUT4 mux_1300_Mux_2_i62_3_lut (.A(n6892[2]), .B(n61_adj_1151), .C(prog_data[5]), 
         .Z(n62_adj_1150)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_2_i62_3_lut.init = 16'hcaca;
    LUT4 i58_4_lut_else_4_lut (.A(prog_data[5]), .B(n19382), .C(prog_data[3]), 
         .D(prog_data[4]), .Z(n37093)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (D)+!B (C+(D))))) */ ;
    defparam i58_4_lut_else_4_lut.init = 16'h2045;
    LUT4 \CPU.opcode_2__bdd_4_lut_25479  (.A(\CPU.opcode [4]), .B(\CPU.opcode [1]), 
         .C(\CPU.opcode [3]), .D(\CPU.opcode[5] ), .Z(n34345)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;
    defparam \CPU.opcode_2__bdd_4_lut_25479 .init = 16'h2040;
    LUT4 i1_2_lut_adj_207 (.A(\CPU.state[2] ), .B(\CPU.state[0] ), .Z(n71)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_207.init = 16'heeee;
    LUT4 i23728_4_lut (.A(reg_IX[3]), .B(n68_adj_1152), .C(n65), .D(n25463), 
         .Z(n57_adj_1153)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23728_4_lut.init = 16'haf23;
    LUT4 \CPU_ALU.result_8__N_644_8__bdd_3_lut_4_lut  (.A(n126_adj_1068), 
         .B(n126), .C(alu_ctrl[0]), .D(alu_ctrl[1]), .Z(n36407)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B ((D)+!C))) */ ;
    defparam \CPU_ALU.result_8__N_644_8__bdd_3_lut_4_lut .init = 16'hccac;
    LUT4 mux_4222_i3_3_lut (.A(reg_IX[10]), .B(reg_IY[10]), .C(n13_adj_1037), 
         .Z(n441[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(614[6] 617[15])
    defparam mux_4222_i3_3_lut.init = 16'hcaca;
    LUT4 i23337_2_lut (.A(n10249[2]), .B(n20604), .Z(n32862)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i23337_2_lut.init = 16'h8888;
    FD1P3DX reg_SP_i0_i5 (.D(n32139), .SP(CK_keep_enable_33), .CK(CK_keep), 
            .CD(TP2_c), .Q(reg_SP[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_SP_i0_i5.GSR = "ENABLED";
    LUT4 i22038_3_lut (.A(n9205[0]), .B(n1916[0]), .C(n15184), .Z(n32153)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22038_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_208 (.A(n59_adj_1154), .B(n62_adj_1155), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1152)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_208.init = 16'hce0a;
    LUT4 i90_3_lut_adj_209 (.A(n6916[3]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1154)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_209.init = 16'h1c1c;
    LUT4 prog_data_6__I_0_728_Mux_0_i127_3_lut_4_lut (.A(prog_data[0]), .B(n3376), 
         .C(n126_adj_1156), .D(prog_data[6]), .Z(alu_in_y[0])) /* synthesis lut_function=(A ((C (D))+!B)+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_728_Mux_0_i127_3_lut_4_lut.init = 16'he222;
    LUT4 i2_2_lut_4_lut (.A(prog_data[4]), .B(prog_data[5]), .C(prog_data[3]), 
         .D(prog_data[0]), .Z(n6_adj_1138)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i2_2_lut_4_lut.init = 16'h0600;
    LUT4 i2_3_lut_4_lut_adj_210 (.A(n18_adj_1047), .B(n9_adj_1061), .C(\CPU.state[3] ), 
         .D(\CPU.state [4]), .Z(n13_adj_1030)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(964[11:34])
    defparam i2_3_lut_4_lut_adj_210.init = 16'hffef;
    PFUMX i25433 (.BLUT(n36781), .ALUT(n7453), .C0(prog_data[5]), .Z(n36782));
    LUT4 prog_data_6__I_0_727_Mux_0_i126_4_lut (.A(n16288), .B(n125_adj_1157), 
         .C(n3378), .D(n3380), .Z(n126)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_0_i126_4_lut.init = 16'hc0ca;
    CCU2D add_3243_11 (.A0(reg_IX[9]), .B0(n19419), .C0(prog_data[0]), 
          .D0(GND_net), .A1(reg_IX[10]), .B1(n19419), .C1(prog_data[0]), 
          .D1(GND_net), .CIN(n29156), .S0(n61_adj_1158), .S1(n61_adj_1159));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3243_11.INIT0 = 16'hd212;
    defparam add_3243_11.INIT1 = 16'hd212;
    defparam add_3243_11.INJECT1_0 = "NO";
    defparam add_3243_11.INJECT1_1 = "NO";
    LUT4 mux_4222_i2_3_lut (.A(reg_IX[9]), .B(reg_IY[9]), .C(n13_adj_1037), 
         .Z(n441[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(614[6] 617[15])
    defparam mux_4222_i2_3_lut.init = 16'hcaca;
    LUT4 prog_data_6__I_0_727_Mux_7_i126_4_lut (.A(n16548), .B(n125_adj_1160), 
         .C(n3378), .D(n3380), .Z(n126_adj_1068)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_7_i126_4_lut.init = 16'hc0ca;
    LUT4 i23149_2_lut (.A(n10249[1]), .B(n20604), .Z(n32863)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i23149_2_lut.init = 16'h8888;
    FD1P3DX reg_SP_i0_i4 (.D(n32142), .SP(CK_keep_enable_33), .CK(CK_keep), 
            .CD(TP2_c), .Q(reg_SP[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_SP_i0_i4.GSR = "ENABLED";
    FD1P3DX reg_SP_i0_i3 (.D(n32145), .SP(CK_keep_enable_33), .CK(CK_keep), 
            .CD(TP2_c), .Q(reg_SP[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_SP_i0_i3.GSR = "ENABLED";
    LUT4 mux_1300_Mux_3_i63_3_lut (.A(reg_IX[3]), .B(n62_adj_1161), .C(n31856), 
         .Z(n6916[3])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_3_i63_3_lut.init = 16'hacac;
    LUT4 i1572_2_lut_3_lut (.A(prog_data[1]), .B(prog_data[2]), .C(prog_data[3]), 
         .Z(n7453)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1572_2_lut_3_lut.init = 16'he0e0;
    PFUMX mux_3188_i4 (.BLUT(n9485[3]), .ALUT(n32711), .C0(n9513), .Z(n9514[3]));
    LUT4 prog_data_6__I_0_728_Mux_5_i127_3_lut_4_lut (.A(prog_data[5]), .B(n19110), 
         .C(n126_adj_1112), .D(n3377), .Z(alu_in_y[5])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_728_Mux_5_i127_3_lut_4_lut.init = 16'hf022;
    LUT4 mux_1300_Mux_3_i62_3_lut (.A(n6892[3]), .B(n61_adj_1162), .C(prog_data[5]), 
         .Z(n62_adj_1161)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_3_i62_3_lut.init = 16'hcaca;
    LUT4 i22832_2_lut_3_lut (.A(prog_data[1]), .B(prog_data[2]), .C(prog_data[6]), 
         .Z(n32797)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i22832_2_lut_3_lut.init = 16'h1010;
    LUT4 \CPU.opcode_2__bdd_3_lut  (.A(\CPU.opcode [2]), .B(\CPU.opcode [4]), 
         .C(\CPU.opcode [3]), .Z(n34671)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam \CPU.opcode_2__bdd_3_lut .init = 16'h1818;
    LUT4 i23766_4_lut (.A(reg_IX[4]), .B(n68_adj_1163), .C(n65), .D(n25463), 
         .Z(n57_adj_1164)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23766_4_lut.init = 16'haf23;
    LUT4 i2_3_lut_4_lut_adj_211 (.A(n18_adj_1047), .B(n9_adj_1061), .C(\CPU.state[3] ), 
         .D(\CPU.state [4]), .Z(n20152)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(964[11:34])
    defparam i2_3_lut_4_lut_adj_211.init = 16'hfeff;
    LUT4 mux_238_i6_3_lut (.A(n946[5]), .B(prog_data[5]), .C(n10369), 
         .Z(n1332[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(951[6] 956[13])
    defparam mux_238_i6_3_lut.init = 16'hcaca;
    LUT4 i21776_2_lut_3_lut_4_lut (.A(\CPU.opcode [1]), .B(\CPU.opcode [4]), 
         .C(\CPU.opcode[6] ), .D(\CPU.opcode[5] ), .Z(n31884)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i21776_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_238_i5_3_lut (.A(n946[4]), .B(prog_data[4]), .C(n10369), 
         .Z(n1332[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(951[6] 956[13])
    defparam mux_238_i5_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_212 (.A(n59_adj_1165), .B(n62_adj_1166), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1163)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_212.init = 16'hce0a;
    LUT4 i90_3_lut_adj_213 (.A(n6916[4]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1165)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_213.init = 16'h1c1c;
    LUT4 mux_1300_Mux_4_i63_3_lut (.A(reg_IX[4]), .B(n62_adj_1167), .C(n31856), 
         .Z(n6916[4])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_4_i63_3_lut.init = 16'hacac;
    LUT4 i8110_2_lut (.A(alu_ctrl[0]), .B(alu_ctrl[1]), .Z(n17849)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam i8110_2_lut.init = 16'h2222;
    LUT4 mux_1300_Mux_4_i62_3_lut (.A(n6892[4]), .B(n61_adj_1168), .C(prog_data[5]), 
         .Z(n62_adj_1167)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_4_i62_3_lut.init = 16'hcaca;
    PFUMX mux_3188_i3 (.BLUT(n9485[2]), .ALUT(n32710), .C0(n9513), .Z(n9514[2]));
    FD1P3DX reg_SP_i0_i2 (.D(n32148), .SP(CK_keep_enable_33), .CK(CK_keep), 
            .CD(TP2_c), .Q(reg_SP[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_SP_i0_i2.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_214 (.A(\CPU.state[2] ), .B(\CPU.state[0] ), 
         .C(n20123), .D(\CPU.state[3] ), .Z(n65)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_3_lut_4_lut_adj_214.init = 16'hfef1;
    LUT4 i15266_2_lut (.A(reg_A[2]), .B(n19110), .Z(n63_adj_1169)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15266_2_lut.init = 16'h2222;
    LUT4 i4262_3_lut_4_lut (.A(prog_data[1]), .B(prog_data[2]), .C(prog_data[3]), 
         .D(n18885), .Z(n7417)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i4262_3_lut_4_lut.init = 16'he0ef;
    FD1P3DX reg_SP_i0_i1 (.D(n32151), .SP(CK_keep_enable_33), .CK(CK_keep), 
            .CD(TP2_c), .Q(reg_SP[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_SP_i0_i1.GSR = "ENABLED";
    LUT4 i15226_2_lut_3_lut (.A(\CPU.opcode [2]), .B(\CPU.opcode [1]), .C(\CPU.opcode [0]), 
         .Z(n25310)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i15226_2_lut_3_lut.init = 16'hfefe;
    FD1P3DX prog_cntr_i0_i0 (.D(n9528[0]), .SP(CK_keep_enable_136), .CK(CK_keep), 
            .CD(TP2_c), .Q(prog_addr[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam prog_cntr_i0_i0.GSR = "ENABLED";
    LUT4 \CPU.opcode_6__bdd_2_lut_24050  (.A(\CPU.opcode[6] ), .B(n34346), 
         .Z(flag_Z_N_960)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam \CPU.opcode_6__bdd_2_lut_24050 .init = 16'h4444;
    FD1P3AX \CPU.opcode_i0_i1  (.D(prog_data[1]), .SP(CK_keep_enable_40), 
            .CK(CK_keep), .Q(\CPU.opcode [1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.opcode_i0_i1 .GSR = "ENABLED";
    LUT4 i782_2_lut (.A(prog_data[5]), .B(n3376), .Z(n3378)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(301[8:23])
    defparam i782_2_lut.init = 16'h8888;
    LUT4 i784_2_lut (.A(prog_data[3]), .B(n3376), .Z(n3380)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(301[8:23])
    defparam i784_2_lut.init = 16'h8888;
    LUT4 mux_238_i4_3_lut (.A(n946[3]), .B(prog_data[3]), .C(n10369), 
         .Z(n1332[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(951[6] 956[13])
    defparam mux_238_i4_3_lut.init = 16'hcaca;
    LUT4 i15437_2_lut_3_lut (.A(\CPU.state [4]), .B(\CPU.state [5]), .C(\CPU.state [7]), 
         .Z(n25531)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i15437_2_lut_3_lut.init = 16'hfefe;
    LUT4 i23760_4_lut (.A(reg_IX[5]), .B(n68_adj_1170), .C(n65), .D(n25463), 
         .Z(n57_adj_1171)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23760_4_lut.init = 16'haf23;
    LUT4 mux_238_i3_3_lut (.A(n946[2]), .B(prog_data[2]), .C(n10369), 
         .Z(n1332[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(951[6] 956[13])
    defparam mux_238_i3_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_adj_215 (.A(\CPU.state[3] ), .B(\CPU.state[0] ), 
         .C(\CPU.state[2] ), .D(\CPU.state[1] ), .Z(n36)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_215.init = 16'h0116;
    LUT4 i1_4_lut_adj_216 (.A(n59_adj_1172), .B(n62_adj_1173), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1170)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_216.init = 16'hce0a;
    LUT4 i90_3_lut_adj_217 (.A(n6916[5]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1172)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_217.init = 16'h1c1c;
    LUT4 mux_1300_Mux_5_i63_3_lut (.A(reg_IX[5]), .B(n62_adj_1174), .C(n31856), 
         .Z(n6916[5])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_5_i63_3_lut.init = 16'hacac;
    CCU2D add_3243_9 (.A0(reg_IX[7]), .B0(n19419), .C0(prog_data[0]), 
          .D0(GND_net), .A1(reg_IX[8]), .B1(n19419), .C1(prog_data[0]), 
          .D1(GND_net), .CIN(n29155), .COUT(n29156), .S0(n61_adj_1175), 
          .S1(n61_adj_1176));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3243_9.INIT0 = 16'hd212;
    defparam add_3243_9.INIT1 = 16'hd212;
    defparam add_3243_9.INJECT1_0 = "NO";
    defparam add_3243_9.INJECT1_1 = "NO";
    CCU2D alu_in_x_7__I_0_724_1 (.A0(alu_cin), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(alu_in_x[0]), .B1(n63), .C1(n3377), .D1(n126_adj_1156), 
          .COUT(n29130), .S1(\CPU_ALU.result_8__N_644 [0]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(294[19:27])
    defparam alu_in_x_7__I_0_724_1.INIT0 = 16'h5000;
    defparam alu_in_x_7__I_0_724_1.INIT1 = 16'h56a6;
    defparam alu_in_x_7__I_0_724_1.INJECT1_0 = "NO";
    defparam alu_in_x_7__I_0_724_1.INJECT1_1 = "NO";
    LUT4 mux_1300_Mux_5_i62_3_lut (.A(n6892[5]), .B(n61_adj_1178), .C(prog_data[5]), 
         .Z(n62_adj_1174)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_5_i62_3_lut.init = 16'hcaca;
    LUT4 mux_238_i2_3_lut (.A(n946[1]), .B(prog_data[1]), .C(n10369), 
         .Z(n1332[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(951[6] 956[13])
    defparam mux_238_i2_3_lut.init = 16'hcaca;
    PFUMX mux_3188_i2 (.BLUT(n9485[1]), .ALUT(n32709), .C0(n9513), .Z(n9514[1]));
    LUT4 i10595_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1179), .C(n38_adj_1180), 
         .D(n31848), .Z(n20717)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10595_4_lut_4_lut.init = 16'h4454;
    LUT4 mux_238_i1_3_lut (.A(n946[0]), .B(prog_data[0]), .C(n10369), 
         .Z(n1332[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(951[6] 956[13])
    defparam mux_238_i1_3_lut.init = 16'hcaca;
    LUT4 i23754_4_lut (.A(reg_IX[6]), .B(n68_adj_1181), .C(n65), .D(n25463), 
         .Z(n57_adj_1182)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23754_4_lut.init = 16'haf23;
    LUT4 i1_4_lut_adj_218 (.A(n59_adj_1183), .B(n62_adj_1184), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1181)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_218.init = 16'hce0a;
    LUT4 i10596_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1185), .C(n38_adj_1186), 
         .D(n31848), .Z(n20718)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10596_4_lut_4_lut.init = 16'h4454;
    LUT4 i10597_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1187), .C(n38_adj_1188), 
         .D(n31848), .Z(n20719)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10597_4_lut_4_lut.init = 16'h4454;
    LUT4 i10598_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1189), .C(n38_adj_1190), 
         .D(n31848), .Z(n20720)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10598_4_lut_4_lut.init = 16'h4454;
    LUT4 i10599_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1191), .C(n38_adj_1192), 
         .D(n31848), .Z(n20721)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10599_4_lut_4_lut.init = 16'h4454;
    LUT4 i10600_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1193), .C(n38_adj_1194), 
         .D(n31848), .Z(n20722)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10600_4_lut_4_lut.init = 16'h4454;
    LUT4 i90_3_lut_adj_219 (.A(n6916[6]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1183)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_219.init = 16'h1c1c;
    LUT4 i23379_2_lut_3_lut (.A(n31549), .B(n34818), .C(n1837[0]), .Z(n32498)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23379_2_lut_3_lut.init = 16'h8080;
    FD1P3AX \CPU.opcode_i0_i2  (.D(prog_data[2]), .SP(CK_keep_enable_40), 
            .CK(CK_keep), .Q(\CPU.opcode [2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.opcode_i0_i2 .GSR = "ENABLED";
    FD1P3AX \CPU.opcode_i0_i3  (.D(prog_data[3]), .SP(CK_keep_enable_40), 
            .CK(CK_keep), .Q(\CPU.opcode [3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.opcode_i0_i3 .GSR = "ENABLED";
    FD1P3AX \CPU.opcode_i0_i4  (.D(prog_data[4]), .SP(CK_keep_enable_40), 
            .CK(CK_keep), .Q(\CPU.opcode [4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.opcode_i0_i4 .GSR = "ENABLED";
    FD1P3AX \CPU.opcode_i0_i5  (.D(prog_data[5]), .SP(CK_keep_enable_40), 
            .CK(CK_keep), .Q(\CPU.opcode[5] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.opcode_i0_i5 .GSR = "ENABLED";
    FD1P3AX \CPU.opcode_i0_i6  (.D(prog_data[6]), .SP(CK_keep_enable_40), 
            .CK(CK_keep), .Q(\CPU.opcode[6] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.opcode_i0_i6 .GSR = "ENABLED";
    FD1P3AX cpu_addr_i0_i1 (.D(n32208), .SP(CK_keep_enable_50), .CK(CK_keep), 
            .Q(\cpu_addr_9__N_375[1] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_addr_i0_i1.GSR = "ENABLED";
    FD1P3AX cpu_addr_i0_i2 (.D(n32205), .SP(CK_keep_enable_50), .CK(CK_keep), 
            .Q(\cpu_addr_9__N_375[2] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_addr_i0_i2.GSR = "ENABLED";
    FD1P3AX cpu_addr_i0_i3 (.D(n32196), .SP(CK_keep_enable_50), .CK(CK_keep), 
            .Q(\cpu_addr_9__N_375[3] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_addr_i0_i3.GSR = "ENABLED";
    FD1P3AX cpu_addr_i0_i4 (.D(n32187), .SP(CK_keep_enable_50), .CK(CK_keep), 
            .Q(\cpu_addr_9__N_375[4] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_addr_i0_i4.GSR = "ENABLED";
    FD1P3AX cpu_addr_i0_i5 (.D(n32178), .SP(CK_keep_enable_50), .CK(CK_keep), 
            .Q(\cpu_addr_9__N_375[5] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_addr_i0_i5.GSR = "ENABLED";
    FD1P3AX cpu_addr_i0_i6 (.D(n32169), .SP(CK_keep_enable_50), .CK(CK_keep), 
            .Q(\cpu_addr_9__N_375[6] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_addr_i0_i6.GSR = "ENABLED";
    FD1P3AX cpu_addr_i0_i7 (.D(n32166), .SP(CK_keep_enable_50), .CK(CK_keep), 
            .Q(\cpu_addr_9__N_375[7] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_addr_i0_i7.GSR = "ENABLED";
    FD1P3AX cpu_addr_i0_i8 (.D(n32163), .SP(CK_keep_enable_50), .CK(CK_keep), 
            .Q(\cpu_addr_9__N_375[8] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_addr_i0_i8.GSR = "ENABLED";
    FD1P3AX cpu_addr_i0_i9 (.D(n32160), .SP(CK_keep_enable_50), .CK(CK_keep), 
            .Q(\cpu_addr_9__N_375[9] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_addr_i0_i9.GSR = "ENABLED";
    FD1P3AX cpu_addr_i0_i10 (.D(n32157), .SP(CK_keep_enable_50), .CK(CK_keep), 
            .Q(\cpu_addr[10] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_addr_i0_i10.GSR = "ENABLED";
    FD1P3AX cpu_data_out_i0_i1 (.D(n15285), .SP(CK_keep_enable_57), .CK(CK_keep), 
            .Q(ram_in[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_data_out_i0_i1.GSR = "ENABLED";
    FD1P3AX cpu_data_out_i0_i2 (.D(n15282), .SP(CK_keep_enable_57), .CK(CK_keep), 
            .Q(ram_in[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_data_out_i0_i2.GSR = "ENABLED";
    FD1P3AX cpu_data_out_i0_i3 (.D(n15279), .SP(CK_keep_enable_57), .CK(CK_keep), 
            .Q(ram_in[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_data_out_i0_i3.GSR = "ENABLED";
    FD1P3AX cpu_data_out_i0_i4 (.D(n15276), .SP(CK_keep_enable_57), .CK(CK_keep), 
            .Q(ram_in[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_data_out_i0_i4.GSR = "ENABLED";
    FD1P3AX cpu_data_out_i0_i5 (.D(n15273), .SP(CK_keep_enable_57), .CK(CK_keep), 
            .Q(ram_in[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_data_out_i0_i5.GSR = "ENABLED";
    FD1P3AX cpu_data_out_i0_i6 (.D(n15270), .SP(CK_keep_enable_57), .CK(CK_keep), 
            .Q(ram_in[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_data_out_i0_i6.GSR = "ENABLED";
    FD1P3AX cpu_data_out_i0_i7 (.D(n15267), .SP(CK_keep_enable_57), .CK(CK_keep), 
            .Q(ram_in[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam cpu_data_out_i0_i7.GSR = "ENABLED";
    FD1P3AX \CPU.first_operand_i0_i1  (.D(prog_data[1]), .SP(CK_keep_enable_64), 
            .CK(CK_keep), .Q(\CPU.first_operand [1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.first_operand_i0_i1 .GSR = "ENABLED";
    FD1P3AX \CPU.first_operand_i0_i2  (.D(prog_data[2]), .SP(CK_keep_enable_64), 
            .CK(CK_keep), .Q(\CPU.first_operand [2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.first_operand_i0_i2 .GSR = "ENABLED";
    FD1P3AX \CPU.first_operand_i0_i3  (.D(prog_data[3]), .SP(CK_keep_enable_64), 
            .CK(CK_keep), .Q(\CPU.first_operand [3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.first_operand_i0_i3 .GSR = "ENABLED";
    FD1P3AX \CPU.first_operand_i0_i4  (.D(prog_data[4]), .SP(CK_keep_enable_64), 
            .CK(CK_keep), .Q(\CPU.first_operand [4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.first_operand_i0_i4 .GSR = "ENABLED";
    FD1P3AX \CPU.first_operand_i0_i5  (.D(prog_data[5]), .SP(CK_keep_enable_64), 
            .CK(CK_keep), .Q(\CPU.first_operand [5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.first_operand_i0_i5 .GSR = "ENABLED";
    FD1P3AX \CPU.first_operand_i0_i6  (.D(prog_data[6]), .SP(CK_keep_enable_64), 
            .CK(CK_keep), .Q(\CPU.first_operand [6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.first_operand_i0_i6 .GSR = "ENABLED";
    FD1P3AX \CPU.first_operand_i0_i7  (.D(prog_data[7]), .SP(CK_keep_enable_64), 
            .CK(CK_keep), .Q(\CPU.first_operand [7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.first_operand_i0_i7 .GSR = "ENABLED";
    FD1P3AX \CPU.second_operand_i0_i1  (.D(prog_data[1]), .SP(CK_keep_enable_71), 
            .CK(CK_keep), .Q(\CPU.second_operand [1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.second_operand_i0_i1 .GSR = "ENABLED";
    FD1P3AX \CPU.second_operand_i0_i2  (.D(prog_data[2]), .SP(CK_keep_enable_71), 
            .CK(CK_keep), .Q(\CPU.second_operand [2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.second_operand_i0_i2 .GSR = "ENABLED";
    FD1P3AX \CPU.second_operand_i0_i3  (.D(prog_data[3]), .SP(CK_keep_enable_71), 
            .CK(CK_keep), .Q(\CPU.second_operand [3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.second_operand_i0_i3 .GSR = "ENABLED";
    FD1P3AX \CPU.second_operand_i0_i4  (.D(prog_data[4]), .SP(CK_keep_enable_71), 
            .CK(CK_keep), .Q(\CPU.second_operand [4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.second_operand_i0_i4 .GSR = "ENABLED";
    FD1P3AX \CPU.second_operand_i0_i5  (.D(prog_data[5]), .SP(CK_keep_enable_71), 
            .CK(CK_keep), .Q(\CPU.second_operand [5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.second_operand_i0_i5 .GSR = "ENABLED";
    FD1P3AX \CPU.second_operand_i0_i6  (.D(prog_data[6]), .SP(CK_keep_enable_71), 
            .CK(CK_keep), .Q(\CPU.second_operand [6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.second_operand_i0_i6 .GSR = "ENABLED";
    FD1P3AX \CPU.second_operand_i0_i7  (.D(prog_data[7]), .SP(CK_keep_enable_71), 
            .CK(CK_keep), .Q(\CPU.second_operand [7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.second_operand_i0_i7 .GSR = "ENABLED";
    FD1S3AX reg_A_i0_i1 (.D(n32199), .CK(CK_keep), .Q(reg_A[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_A_i0_i1.GSR = "ENABLED";
    FD1S3AX reg_A_i0_i2 (.D(n32193), .CK(CK_keep), .Q(reg_A[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_A_i0_i2.GSR = "ENABLED";
    FD1S3AX reg_A_i0_i3 (.D(n32190), .CK(CK_keep), .Q(reg_A[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_A_i0_i3.GSR = "ENABLED";
    FD1S3AX reg_A_i0_i4 (.D(n32184), .CK(CK_keep), .Q(reg_A[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_A_i0_i4.GSR = "ENABLED";
    FD1S3AX reg_A_i0_i5 (.D(n32181), .CK(CK_keep), .Q(reg_A[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_A_i0_i5.GSR = "ENABLED";
    FD1S3AX reg_A_i0_i6 (.D(n32175), .CK(CK_keep), .Q(reg_A[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_A_i0_i6.GSR = "ENABLED";
    FD1S3AX reg_A_i0_i7 (.D(n32172), .CK(CK_keep), .Q(reg_A[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_A_i0_i7.GSR = "ENABLED";
    FD1P3AX reg_IY_i0_i1 (.D(n57_adj_1104), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IY[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IY_i0_i1.GSR = "ENABLED";
    FD1P3AX reg_IY_i0_i2 (.D(n57_adj_1067), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IY[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IY_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_IY_i0_i3 (.D(n57_adj_1072), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IY[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IY_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_IY_i0_i4 (.D(n57_adj_1078), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IY[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IY_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_IY_i0_i5 (.D(n57_adj_1083), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IY[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IY_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_IY_i0_i6 (.D(n57_adj_1088), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IY[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IY_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_IY_i0_i7 (.D(n57_adj_1093), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IY[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IY_i0_i7.GSR = "ENABLED";
    FD1P3AX reg_IY_i0_i8 (.D(n57_adj_1100), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IY[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IY_i0_i8.GSR = "ENABLED";
    FD1P3AX reg_IY_i0_i9 (.D(n57_adj_1119), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IY[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IY_i0_i9.GSR = "ENABLED";
    FD1P3AX reg_IY_i0_i10 (.D(n57_adj_1126), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IY[10])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IY_i0_i10.GSR = "ENABLED";
    FD1P3AX reg_IX_i0_i1 (.D(n57_adj_1137), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IX[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IX_i0_i1.GSR = "ENABLED";
    FD1P3AX reg_IX_i0_i2 (.D(n57_adj_1147), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IX[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IX_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_IX_i0_i3 (.D(n57_adj_1153), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IX[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IX_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_IX_i0_i4 (.D(n57_adj_1164), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IX[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IX_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_IX_i0_i5 (.D(n57_adj_1171), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IX[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IX_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_IX_i0_i6 (.D(n57_adj_1182), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IX[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IX_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_IX_i0_i7 (.D(n57_adj_1195), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IX[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IX_i0_i7.GSR = "ENABLED";
    FD1P3AX reg_IX_i0_i8 (.D(n57_adj_1196), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IX[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IX_i0_i8.GSR = "ENABLED";
    FD1P3AX reg_IX_i0_i9 (.D(n57_adj_1197), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IX[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IX_i0_i9.GSR = "ENABLED";
    FD1P3AX reg_IX_i0_i10 (.D(n57_adj_1198), .SP(CK_keep_enable_91), .CK(CK_keep), 
            .Q(reg_IX[10])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_IX_i0_i10.GSR = "ENABLED";
    LUT4 mux_1300_Mux_6_i63_3_lut (.A(reg_IX[6]), .B(n62_adj_1199), .C(n31856), 
         .Z(n6916[6])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_6_i63_3_lut.init = 16'hacac;
    LUT4 mux_1300_Mux_6_i62_3_lut (.A(n6892[6]), .B(n61_adj_1200), .C(prog_data[5]), 
         .Z(n62_adj_1199)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_6_i62_3_lut.init = 16'hcaca;
    LUT4 i5_4_lut (.A(n6965), .B(n10_adj_1201), .C(n31687), .D(prog_data[2]), 
         .Z(alu_ctrl[3])) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C (D))))) */ ;
    defparam i5_4_lut.init = 16'h4080;
    LUT4 i23749_4_lut (.A(reg_IX[7]), .B(n68_adj_1202), .C(n65), .D(n25463), 
         .Z(n57_adj_1195)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23749_4_lut.init = 16'haf23;
    PFUMX i91 (.BLUT(n32460), .ALUT(n35), .C0(\CPU.state[3] ), .Z(n62_adj_1129));
    LUT4 i10601_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1203), .C(n38_adj_1204), 
         .D(n31848), .Z(n20723)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10601_4_lut_4_lut.init = 16'h4454;
    LUT4 i22037_3_lut (.A(n1837[0]), .B(n1539[0]), .C(n15184), .Z(n32152)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22037_3_lut.init = 16'hcaca;
    PFUMX i24304 (.BLUT(n34886), .ALUT(n34884), .C0(prog_data[6]), .Z(n34887));
    LUT4 i1_4_lut_adj_220 (.A(n59_adj_1205), .B(n62_adj_1206), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1202)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_220.init = 16'hce0a;
    LUT4 i90_3_lut_adj_221 (.A(n6916[7]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1205)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_221.init = 16'h1c1c;
    LUT4 mux_1300_Mux_7_i63_3_lut (.A(reg_IX[7]), .B(n62_adj_1207), .C(n31856), 
         .Z(n6916[7])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_7_i63_3_lut.init = 16'hacac;
    LUT4 mux_1300_Mux_7_i62_3_lut (.A(n6892[7]), .B(n61_adj_1175), .C(prog_data[5]), 
         .Z(n62_adj_1207)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_7_i62_3_lut.init = 16'hcaca;
    LUT4 i23740_4_lut (.A(n2584), .B(n68_adj_1208), .C(n65), .D(n25463), 
         .Z(n57_adj_1196)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23740_4_lut.init = 16'haf23;
    LUT4 i10602_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1209), .C(n38_adj_1210), 
         .D(n31848), .Z(n20724)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10602_4_lut_4_lut.init = 16'h4454;
    LUT4 i1_4_lut_adj_222 (.A(n59_adj_1211), .B(n62_adj_1212), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1208)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_222.init = 16'hce0a;
    LUT4 i4_4_lut (.A(n3380), .B(n3377), .C(prog_data[4]), .D(prog_data[5]), 
         .Z(n10_adj_1201)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i90_3_lut_adj_223 (.A(n6916[8]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1211)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_223.init = 16'h1c1c;
    LUT4 mux_1300_Mux_8_i63_3_lut (.A(reg_IX[8]), .B(n62_adj_1213), .C(n31856), 
         .Z(n6916[8])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_8_i63_3_lut.init = 16'hacac;
    LUT4 n15620_bdd_4_lut_24112_3_lut (.A(prog_data[2]), .B(prog_data[3]), 
         .C(n4_adj_1214), .Z(n34564)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n15620_bdd_4_lut_24112_3_lut.init = 16'h2020;
    LUT4 i3_4_lut_adj_224 (.A(n19371), .B(prog_data[5]), .C(n7), .D(prog_data[6]), 
         .Z(n31687)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i3_4_lut_adj_224.init = 16'h4000;
    LUT4 i781_2_lut (.A(prog_data[6]), .B(n3376), .Z(n3377)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(301[8:23])
    defparam i781_2_lut.init = 16'h8888;
    LUT4 mux_1300_Mux_8_i62_3_lut (.A(n6892[8]), .B(n61_adj_1176), .C(prog_data[5]), 
         .Z(n62_adj_1213)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_8_i62_3_lut.init = 16'hcaca;
    PFUMX i91_adj_225 (.BLUT(n32458), .ALUT(n35_adj_1215), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1121));
    LUT4 i10603_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1216), .C(n38_adj_1217), 
         .D(n31848), .Z(n20725)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10603_4_lut_4_lut.init = 16'h4454;
    LUT4 i23434_4_lut_then_4_lut (.A(n3376), .B(prog_data[0]), .C(prog_data[1]), 
         .D(prog_data[2]), .Z(n37097)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23434_4_lut_then_4_lut.init = 16'h8000;
    LUT4 i23434_4_lut_else_4_lut (.A(n3376), .B(prog_data[0]), .C(prog_data[1]), 
         .D(prog_data[2]), .Z(n37096)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23434_4_lut_else_4_lut.init = 16'ha888;
    LUT4 i2_2_lut_adj_226 (.A(prog_data[4]), .B(prog_data[3]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_226.init = 16'h8888;
    LUT4 i23725_4_lut (.A(n2583), .B(n68_adj_1218), .C(n65), .D(n25463), 
         .Z(n57_adj_1197)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23725_4_lut.init = 16'haf23;
    LUT4 i10604_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1219), .C(n38_adj_1220), 
         .D(n31848), .Z(n20726)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10604_4_lut_4_lut.init = 16'h4454;
    LUT4 mux_238_i9_3_lut (.A(n946[8]), .B(\CPU.first_operand [0]), .C(n10369), 
         .Z(n1332[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(951[6] 956[13])
    defparam mux_238_i9_3_lut.init = 16'hcaca;
    LUT4 i10605_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1221), .C(n38_adj_1222), 
         .D(n31848), .Z(n20727)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10605_4_lut_4_lut.init = 16'h4454;
    LUT4 mux_238_i8_3_lut (.A(n946[7]), .B(prog_data[7]), .C(n10369), 
         .Z(n1332[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(951[6] 956[13])
    defparam mux_238_i8_3_lut.init = 16'hcaca;
    LUT4 i10606_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1223), .C(n38_adj_1224), 
         .D(n31848), .Z(n20728)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10606_4_lut_4_lut.init = 16'h4454;
    LUT4 i1_4_lut_adj_227 (.A(n59_adj_1225), .B(n62_adj_1226), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1218)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_227.init = 16'hce0a;
    LUT4 i90_3_lut_adj_228 (.A(n6916[9]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1225)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_228.init = 16'h1c1c;
    LUT4 mux_1300_Mux_9_i63_3_lut (.A(reg_IX[9]), .B(n62_adj_1227), .C(n31856), 
         .Z(n6916[9])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_9_i63_3_lut.init = 16'hacac;
    LUT4 mux_1300_Mux_9_i62_3_lut (.A(n6892[9]), .B(n61_adj_1158), .C(prog_data[5]), 
         .Z(n62_adj_1227)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_9_i62_3_lut.init = 16'hcaca;
    LUT4 i23769_4_lut (.A(n2582), .B(n68_adj_1228), .C(n65), .D(n25463), 
         .Z(n57_adj_1198)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23769_4_lut.init = 16'haf23;
    LUT4 i10607_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1229), .C(n38_adj_1230), 
         .D(n31848), .Z(n20729)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10607_4_lut_4_lut.init = 16'h4454;
    LUT4 i1_4_lut_adj_229 (.A(n59_adj_1231), .B(n62_adj_1232), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1228)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_229.init = 16'hce0a;
    LUT4 i1_3_lut_4_lut_adj_230 (.A(\CPU.opcode[6] ), .B(n41_adj_1096), 
         .C(\CPU.state[1] ), .D(n25463), .Z(n31643)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_230.init = 16'h0004;
    LUT4 i22885_4_lut (.A(n32644), .B(n13856), .C(n1837[5]), .D(n13673), 
         .Z(n32671)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i22885_4_lut.init = 16'hc088;
    LUT4 i90_3_lut_adj_231 (.A(n6916[10]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1231)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_231.init = 16'h1c1c;
    LUT4 mux_1300_Mux_10_i63_3_lut (.A(reg_IX[10]), .B(n62_adj_1233), .C(n31856), 
         .Z(n6916[10])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_10_i63_3_lut.init = 16'hacac;
    LUT4 i10608_4_lut_4_lut (.A(TP2_c), .B(n45_adj_1234), .C(n38_adj_1235), 
         .D(n31848), .Z(n20730)) /* synthesis lut_function=(!(A+!(B+!((D)+!C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10608_4_lut_4_lut.init = 16'h4454;
    LUT4 mux_1300_Mux_10_i62_3_lut (.A(n6892[10]), .B(n61_adj_1159), .C(prog_data[5]), 
         .Z(n62_adj_1233)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_10_i62_3_lut.init = 16'hcaca;
    LUT4 xdac_0_bdd_2_lut_25036_3_lut (.A(n36118), .B(\CPU.state[3] ), .C(prog_data[6]), 
         .Z(n36119)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam xdac_0_bdd_2_lut_25036_3_lut.init = 16'h2020;
    LUT4 i23524_1_lut_3_lut (.A(n9), .B(n12_c), .C(n31701), .Z(n33576)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23524_1_lut_3_lut.init = 16'h1f1f;
    LUT4 i21749_3_lut_4_lut (.A(prog_data[1]), .B(prog_data[2]), .C(n31858), 
         .D(prog_data[6]), .Z(n31856)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i21749_3_lut_4_lut.init = 16'hfeff;
    LUT4 i23523_1_lut_3_lut (.A(n9_adj_1023), .B(n12_adj_1042), .C(n31722), 
         .Z(n33575)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23523_1_lut_3_lut.init = 16'h1f1f;
    LUT4 reg_B_0__bdd_3_lut_24947 (.A(n3382), .B(prog_data[0]), .C(prog_data[2]), 
         .Z(n35887)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam reg_B_0__bdd_3_lut_24947.init = 16'h7f7f;
    LUT4 prog_data_6__I_0_729_Mux_0_i127_4_lut (.A(n36131), .B(n35881), 
         .C(n3377), .D(n19110), .Z(alu_ctrl[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_729_Mux_0_i127_4_lut.init = 16'hc0ca;
    LUT4 i22887_4_lut (.A(n32645), .B(n13856), .C(n1837[6]), .D(n13673), 
         .Z(n32673)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i22887_4_lut.init = 16'hc088;
    PFUMX i91_adj_232 (.BLUT(n32456), .ALUT(n35_adj_1236), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1102));
    LUT4 i2_3_lut (.A(n124), .B(prog_data[5]), .C(prog_data[4]), .Z(n31547)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    FD1S3DX \CPU.state_i2  (.D(\CPU.state_7__N_693 [1]), .CK(CK_keep), .CD(TP2_c), 
            .Q(\CPU.state[1] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.state_i2 .GSR = "ENABLED";
    FD1S3DX \CPU.state_i3  (.D(\CPU.state_7__N_693 [2]), .CK(CK_keep), .CD(TP2_c), 
            .Q(\CPU.state[2] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.state_i3 .GSR = "ENABLED";
    FD1S3DX \CPU.state_i4  (.D(\CPU.state_7__N_693 [3]), .CK(CK_keep), .CD(TP2_c), 
            .Q(\CPU.state[3] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.state_i4 .GSR = "ENABLED";
    FD1S3DX \CPU.state_i5  (.D(\CPU.state_7__N_693 [4]), .CK(CK_keep), .CD(TP2_c), 
            .Q(\CPU.state [4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.state_i5 .GSR = "ENABLED";
    FD1S3DX \CPU.state_i6  (.D(\CPU.state_7__N_693 [5]), .CK(CK_keep), .CD(TP2_c), 
            .Q(\CPU.state [5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.state_i6 .GSR = "ENABLED";
    FD1S3DX \CPU.state_i7  (.D(\CPU.state_7__N_693 [7]), .CK(CK_keep), .CD(TP2_c), 
            .Q(\CPU.state [7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam \CPU.state_i7 .GSR = "ENABLED";
    FD1P3AX reg_E__i1 (.D(n13684), .SP(CK_keep_enable_98), .CK(CK_keep), 
            .Q(reg_E[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_E__i1.GSR = "ENABLED";
    LUT4 i14542_2_lut_3_lut (.A(flag_I), .B(\CPU.opcode [0]), .C(n31752), 
         .Z(n24618)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i14542_2_lut_3_lut.init = 16'ha8a8;
    PFUMX i91_adj_233 (.BLUT(n32454), .ALUT(n35_adj_1237), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1095));
    CCU2D sub_11_add_2_9 (.A0(alu_in_y[7]), .B0(n3377), .C0(n63_adj_1238), 
          .D0(n126_adj_1068), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n29128), .S0(\CPU_ALU.result_8__N_653 [7]), 
          .S1(n21[8]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(299[19:27])
    defparam sub_11_add_2_9.INIT0 = 16'ha965;
    defparam sub_11_add_2_9.INIT1 = 16'hffff;
    defparam sub_11_add_2_9.INJECT1_0 = "NO";
    defparam sub_11_add_2_9.INJECT1_1 = "NO";
    PFUMX mux_176_Mux_3_i63 (.BLUT(n31), .ALUT(n32861), .C0(prog_data[5]), 
          .Z(n63_adj_1240)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    FD1P3AX reg_E__i2 (.D(n13685), .SP(CK_keep_enable_98), .CK(CK_keep), 
            .Q(reg_E[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_E__i2.GSR = "ENABLED";
    FD1P3AX reg_E__i3 (.D(n13686), .SP(CK_keep_enable_98), .CK(CK_keep), 
            .Q(reg_E[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_E__i3.GSR = "ENABLED";
    FD1P3AX reg_E__i4 (.D(n13687), .SP(CK_keep_enable_98), .CK(CK_keep), 
            .Q(reg_E[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_E__i4.GSR = "ENABLED";
    FD1P3AX reg_E__i5 (.D(n13688), .SP(CK_keep_enable_98), .CK(CK_keep), 
            .Q(reg_E[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_E__i5.GSR = "ENABLED";
    FD1P3AX reg_E__i6 (.D(n13689), .SP(CK_keep_enable_98), .CK(CK_keep), 
            .Q(reg_E[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_E__i6.GSR = "ENABLED";
    FD1P3AX reg_E__i7 (.D(n13690), .SP(CK_keep_enable_98), .CK(CK_keep), 
            .Q(reg_E[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_E__i7.GSR = "ENABLED";
    FD1P3AX reg_D__i1 (.D(n13724), .SP(CK_keep_enable_105), .CK(CK_keep), 
            .Q(reg_D[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_D__i1.GSR = "ENABLED";
    LUT4 i21692_2_lut_3_lut (.A(n3376), .B(prog_data[0]), .C(prog_data[1]), 
         .Z(n31799)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i21692_2_lut_3_lut.init = 16'ha8a8;
    LUT4 mux_238_i7_3_lut (.A(n946[6]), .B(prog_data[6]), .C(n10369), 
         .Z(n1332[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(951[6] 956[13])
    defparam mux_238_i7_3_lut.init = 16'hcaca;
    LUT4 prog_data_6__I_0_727_Mux_0_i82_3_lut_4_lut (.A(reg_E[0]), .B(reg_H[0]), 
         .C(prog_data[0]), .D(n3376), .Z(n82)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_0_i82_3_lut_4_lut.init = 16'hcaaa;
    CCU2D add_3243_7 (.A0(reg_IX[5]), .B0(n19419), .C0(prog_data[0]), 
          .D0(GND_net), .A1(reg_IX[6]), .B1(n19419), .C1(prog_data[0]), 
          .D1(GND_net), .CIN(n29154), .COUT(n29155), .S0(n61_adj_1178), 
          .S1(n61_adj_1200));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3243_7.INIT0 = 16'hd212;
    defparam add_3243_7.INIT1 = 16'hd212;
    defparam add_3243_7.INJECT1_0 = "NO";
    defparam add_3243_7.INJECT1_1 = "NO";
    LUT4 i23090_2_lut_3_lut (.A(n31549), .B(n34818), .C(n1837[1]), .Z(n32501)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23090_2_lut_3_lut.init = 16'h8080;
    LUT4 i23091_2_lut_3_lut (.A(n31549), .B(n34818), .C(n1837[2]), .Z(n32503)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23091_2_lut_3_lut.init = 16'h8080;
    LUT4 prog_data_6__I_0_727_Mux_7_i82_3_lut_4_lut (.A(reg_E[7]), .B(reg_H[7]), 
         .C(prog_data[0]), .D(n3376), .Z(n82_adj_1007)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_7_i82_3_lut_4_lut.init = 16'hcaaa;
    LUT4 n9660_bdd_3_lut_24929 (.A(n31687), .B(prog_data[2]), .C(n6965), 
         .Z(n35901)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n9660_bdd_3_lut_24929.init = 16'h0202;
    LUT4 i23287_2_lut (.A(n10249[7]), .B(n20604), .Z(n32852)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i23287_2_lut.init = 16'h8888;
    LUT4 prog_data_6__I_0_727_Mux_6_i82_3_lut_4_lut (.A(reg_E[6]), .B(reg_H[6]), 
         .C(prog_data[0]), .D(n3376), .Z(n82_adj_1009)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_6_i82_3_lut_4_lut.init = 16'hcaaa;
    LUT4 \CPU.opcode_6__I_0_760_i10_2_lut  (.A(\CPU.opcode [3]), .B(\CPU.opcode [4]), 
         .Z(n10_adj_1064)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(979[66:71])
    defparam \CPU.opcode_6__I_0_760_i10_2_lut .init = 16'hbbbb;
    LUT4 i23856_2_lut (.A(\CPU.opcode [1]), .B(\CPU.opcode [2]), .Z(n24886)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i23856_2_lut.init = 16'h7777;
    LUT4 i9039_3_lut (.A(n3376), .B(prog_data[0]), .C(n19848), .Z(n19110)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i9039_3_lut.init = 16'ha8a8;
    LUT4 i3_4_lut_adj_234 (.A(prog_data[5]), .B(prog_data[2]), .C(prog_data[1]), 
         .D(n20141), .Z(n19848)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1204[35:55])
    defparam i3_4_lut_adj_234.init = 16'hfffe;
    LUT4 prog_data_5__bdd_3_lut_4_lut (.A(prog_data[1]), .B(prog_data[2]), 
         .C(n36113), .D(n124), .Z(n36114)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam prog_data_5__bdd_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_adj_235 (.A(prog_data[4]), .B(prog_data[3]), .Z(n20141)) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1204[35:55])
    defparam i1_2_lut_adj_235.init = 16'heeee;
    LUT4 i1_2_lut_adj_236 (.A(\CPU.opcode [3]), .B(\CPU.opcode [4]), .Z(n5_adj_1060)) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(840[40:47])
    defparam i1_2_lut_adj_236.init = 16'heeee;
    LUT4 i23092_2_lut_3_lut (.A(n31549), .B(n34818), .C(n1837[3]), .Z(n32623)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23092_2_lut_3_lut.init = 16'h8080;
    LUT4 i23093_2_lut_3_lut (.A(n31549), .B(n34818), .C(n1837[4]), .Z(n32731)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23093_2_lut_3_lut.init = 16'h8080;
    LUT4 i23293_2_lut (.A(reg_A[7]), .B(prog_data[4]), .Z(n32851)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i23293_2_lut.init = 16'h8888;
    LUT4 mux_4169_i1_4_lut (.A(n20655), .B(cpu_data_in[1]), .C(\CPU.state[3] ), 
         .D(alu_out[7]), .Z(n13266[0])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam mux_4169_i1_4_lut.init = 16'hc5c0;
    CCU2D add_3243_5 (.A0(reg_IX[3]), .B0(n19419), .C0(prog_data[0]), 
          .D0(GND_net), .A1(reg_IX[4]), .B1(n19419), .C1(prog_data[0]), 
          .D1(GND_net), .CIN(n29153), .COUT(n29154), .S0(n61_adj_1162), 
          .S1(n61_adj_1168));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3243_5.INIT0 = 16'hd212;
    defparam add_3243_5.INIT1 = 16'hd212;
    defparam add_3243_5.INJECT1_0 = "NO";
    defparam add_3243_5.INJECT1_1 = "NO";
    LUT4 i25020_then_4_lut (.A(n24886), .B(\CPU.opcode [4]), .C(\CPU.opcode[6] ), 
         .D(\CPU.opcode [0]), .Z(n37100)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i25020_then_4_lut.init = 16'h8000;
    LUT4 i23094_2_lut_3_lut (.A(n31549), .B(n34818), .C(n1837[5]), .Z(n32742)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23094_2_lut_3_lut.init = 16'h8080;
    LUT4 i23095_2_lut_3_lut (.A(n31549), .B(n34818), .C(n1837[6]), .Z(n32750)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23095_2_lut_3_lut.init = 16'h8080;
    LUT4 mux_3608_i11_3_lut (.A(reg_IY[10]), .B(\CPU.first_operand [2]), 
         .C(n13758), .Z(n11250[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3608_i11_3_lut.init = 16'hcaca;
    LUT4 mux_238_i11_3_lut (.A(n946[10]), .B(\CPU.first_operand [2]), .C(n10369), 
         .Z(n1332[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(951[6] 956[13])
    defparam mux_238_i11_3_lut.init = 16'hcaca;
    LUT4 prog_data_6__I_0_727_Mux_5_i82_3_lut_4_lut (.A(reg_E[5]), .B(reg_H[5]), 
         .C(prog_data[0]), .D(n3376), .Z(n82_adj_1020)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_5_i82_3_lut_4_lut.init = 16'hcaaa;
    LUT4 i2_3_lut_adj_237 (.A(n10514), .B(\CPU.opcode [0]), .C(\CPU.opcode [4]), 
         .Z(n13758)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut_adj_237.init = 16'h2020;
    LUT4 mux_3608_i10_3_lut (.A(reg_IY[9]), .B(\CPU.first_operand [1]), 
         .C(n13758), .Z(n11250[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3608_i10_3_lut.init = 16'hcaca;
    LUT4 mux_3608_i9_3_lut (.A(reg_IY[8]), .B(\CPU.first_operand [0]), .C(n13758), 
         .Z(n11250[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3608_i9_3_lut.init = 16'hcaca;
    LUT4 mux_238_i10_3_lut (.A(n946[9]), .B(\CPU.first_operand [1]), .C(n10369), 
         .Z(n1332[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(951[6] 956[13])
    defparam mux_238_i10_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_adj_238 (.A(n19916), .B(\CPU.state_7__N_709[1] ), .C(\CPU.state [7]), 
         .Z(\CPU.state_7__N_693 [1])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i2_3_lut_adj_238.init = 16'h0808;
    LUT4 prog_data_6__I_0_727_Mux_4_i82_3_lut_4_lut (.A(reg_E[4]), .B(reg_H[4]), 
         .C(prog_data[0]), .D(n3376), .Z(n82_adj_1013)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_4_i82_3_lut_4_lut.init = 16'hcaaa;
    LUT4 i23096_2_lut_3_lut (.A(n31549), .B(n34818), .C(n1837[7]), .Z(n32752)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23096_2_lut_3_lut.init = 16'h8080;
    LUT4 i23097_2_lut_3_lut (.A(n31549), .B(n34818), .C(n1837[8]), .Z(n32754)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23097_2_lut_3_lut.init = 16'h8080;
    PFUMX i24297 (.BLUT(n34878), .ALUT(n34877), .C0(prog_data[6]), .Z(n34879));
    LUT4 prog_data_6__I_0_727_Mux_3_i82_3_lut_4_lut (.A(reg_E[3]), .B(reg_H[3]), 
         .C(prog_data[0]), .D(n3376), .Z(n82_adj_1011)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_3_i82_3_lut_4_lut.init = 16'hcaaa;
    LUT4 i23225_3_lut_4_lut (.A(prog_data[1]), .B(prog_data[2]), .C(prog_data[4]), 
         .D(n5_adj_1241), .Z(n32392)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i23225_3_lut_4_lut.init = 16'hffe0;
    LUT4 i1_2_lut_adj_239 (.A(n10_adj_1242), .B(n31848), .Z(\CPU.state_7__N_693 [3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i1_2_lut_adj_239.init = 16'h2222;
    LUT4 i25020_else_4_lut (.A(n25310), .B(\CPU.opcode [4]), .C(\CPU.opcode[6] ), 
         .D(\CPU.opcode [0]), .Z(n37099)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !(C (D))))) */ ;
    defparam i25020_else_4_lut.init = 16'h3404;
    LUT4 i21741_4_lut (.A(\CPU.state [7]), .B(n24642), .C(\CPU.state[3] ), 
         .D(\CPU.state[1] ), .Z(n31848)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i21741_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_240 (.A(n31900), .B(n24642), .C(n4_adj_1004), .D(n31546), 
         .Z(\CPU.state_7__N_693 [4])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_adj_240.init = 16'h1000;
    PFUMX i91_adj_241 (.BLUT(n32452), .ALUT(n35_adj_1243), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1090));
    LUT4 i21792_2_lut (.A(\CPU.state [7]), .B(\CPU.state[2] ), .Z(n31900)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i21792_2_lut.init = 16'heeee;
    LUT4 prog_data_6__I_0_727_Mux_2_i82_3_lut_4_lut (.A(reg_E[2]), .B(reg_H[2]), 
         .C(prog_data[0]), .D(n3376), .Z(n82_adj_1015)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_2_i82_3_lut_4_lut.init = 16'hcaaa;
    LUT4 prog_data_6__I_0_727_Mux_1_i82_3_lut_4_lut (.A(reg_E[1]), .B(reg_H[1]), 
         .C(prog_data[0]), .D(n3376), .Z(n82_adj_1017)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_1_i82_3_lut_4_lut.init = 16'hcaaa;
    PFUMX i25320 (.BLUT(n36605), .ALUT(n36604), .C0(\CPU.state[0] ), .Z(n36606));
    LUT4 i14766_4_lut (.A(cpu_data_in[7]), .B(\CPU.state [4]), .C(n1732[5]), 
         .D(\CPU.state[0] ), .Z(n13250[0])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i14766_4_lut.init = 16'h3022;
    LUT4 i1_4_lut_adj_242 (.A(\CPU.state[3] ), .B(n11_adj_1244), .C(n30_adj_1245), 
         .D(\CPU.opcode[6] ), .Z(n31546)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i1_4_lut_adj_242.init = 16'h0080;
    PFUMX i24026 (.BLUT(n1916[9]), .ALUT(n34434), .C0(\CPU.state[0] ), 
          .Z(n34435));
    LUT4 i10449_2_lut_3_lut (.A(n12_adj_1055), .B(\CPU.opcode [1]), .C(\CPU.opcode [2]), 
         .Z(n24620)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i10449_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_243 (.A(\CPU.opcode [0]), .B(n31752), .C(n24620), 
         .Z(n31722)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_243.init = 16'he0e0;
    LUT4 i23176_3_lut_4_lut (.A(\CPU.opcode[5] ), .B(\CPU.opcode[6] ), .C(\CPU.opcode [0]), 
         .D(n5_adj_1060), .Z(n32815)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i23176_3_lut_4_lut.init = 16'h0040;
    LUT4 prog_data_6__I_0_729_Mux_0_i124_then_3_lut (.A(n31687), .B(prog_data[0]), 
         .C(n3376), .Z(n37103)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam prog_data_6__I_0_729_Mux_0_i124_then_3_lut.init = 16'h2020;
    LUT4 i2_2_lut_4_lut_adj_244 (.A(prog_data[0]), .B(n3376), .C(n12), 
         .D(n1732[5]), .Z(n19645)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i2_2_lut_4_lut_adj_244.init = 16'hfff2;
    PFUMX i24295 (.BLUT(n34875), .ALUT(n34874), .C0(prog_data[5]), .Z(n34876));
    LUT4 prog_data_6__I_0_729_Mux_0_i124_else_3_lut (.A(prog_data[2]), .B(prog_data[0]), 
         .C(n3376), .D(prog_data[1]), .Z(n37102)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam prog_data_6__I_0_729_Mux_0_i124_else_3_lut.init = 16'h0020;
    LUT4 i1_2_lut_adj_245 (.A(n18_adj_1246), .B(n31848), .Z(\CPU.state_7__N_693 [5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i1_2_lut_adj_245.init = 16'h2222;
    LUT4 i3_4_lut_adj_246 (.A(n18_adj_1047), .B(\CPU.state [4]), .C(n25509), 
         .D(n25281), .Z(\CPU.state_7__N_693 [7])) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut_adj_246.init = 16'h0004;
    LUT4 i23312_2_lut_3_lut (.A(n35903), .B(n3379), .C(prog_data[5]), 
         .Z(n32529)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23312_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_247 (.A(\CPU.opcode [0]), .B(n31752), .Z(n13_adj_1043)) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1013[10:17])
    defparam i1_2_lut_adj_247.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_248 (.A(\CPU.opcode[5] ), .B(\CPU.opcode [3]), 
         .C(\CPU.opcode [4]), .D(\CPU.opcode[6] ), .Z(n12385)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_248.init = 16'h0020;
    LUT4 prog_data_6__I_0_728_Mux_3_i127_3_lut_4_lut (.A(prog_data[3]), .B(n19110), 
         .C(n126_adj_1122), .D(n3377), .Z(alu_in_y[3])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_728_Mux_3_i127_3_lut_4_lut.init = 16'hf022;
    PFUMX mux_176_Mux_4_i63 (.BLUT(n32859), .ALUT(n32860), .C0(prog_data[5]), 
          .Z(n63_adj_1247)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    LUT4 mux_4438_i2_4_lut (.A(n9856[1]), .B(n12188[1]), .C(n24637), .D(n31602), 
         .Z(n13684)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4438_i2_4_lut.init = 16'haca0;
    LUT4 i1_3_lut_4_lut_then_4_lut (.A(n12_c), .B(\CPU.opcode [0]), .C(\CPU.opcode [2]), 
         .D(\CPU.opcode [1]), .Z(n37106)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1086[10:17])
    defparam i1_3_lut_4_lut_then_4_lut.init = 16'hffbf;
    LUT4 mux_3608_i8_3_lut (.A(reg_IY[7]), .B(prog_data[7]), .C(n13758), 
         .Z(n11250[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3608_i8_3_lut.init = 16'hcaca;
    LUT4 prog_data_6__I_0_728_Mux_4_i127_3_lut_4_lut (.A(prog_data[4]), .B(n19110), 
         .C(n126_adj_1123), .D(n3377), .Z(alu_in_y[4])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_728_Mux_4_i127_3_lut_4_lut.init = 16'hf022;
    LUT4 i1_2_lut_3_lut_4_lut_adj_249 (.A(\CPU.state [4]), .B(\CPU.state[3] ), 
         .C(\CPU.state [7]), .D(n19867), .Z(n9168)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_249.init = 16'h0100;
    LUT4 i1_3_lut_4_lut_else_4_lut (.A(n12_c), .B(\CPU.opcode [0]), .C(\CPU.opcode [2]), 
         .D(\CPU.opcode [1]), .Z(n37105)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1086[10:17])
    defparam i1_3_lut_4_lut_else_4_lut.init = 16'hffbc;
    LUT4 mux_4438_i3_4_lut (.A(n9856[2]), .B(n12188[2]), .C(n24637), .D(n31602), 
         .Z(n13685)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4438_i3_4_lut.init = 16'haca0;
    LUT4 mux_3872_i8_3_lut_4_lut (.A(ram_out[7]), .B(CPUWR), .C(reg_E[7]), 
         .D(n9), .Z(n12188[7])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3872_i8_3_lut_4_lut.init = 16'hf022;
    LUT4 mux_4438_i4_4_lut (.A(n9856[3]), .B(n12188[3]), .C(n24637), .D(n31602), 
         .Z(n13686)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4438_i4_4_lut.init = 16'haca0;
    LUT4 mux_3872_i7_3_lut_4_lut (.A(ram_out[6]), .B(CPUWR), .C(reg_E[6]), 
         .D(n9), .Z(n12188[6])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3872_i7_3_lut_4_lut.init = 16'hf022;
    LUT4 i22895_4_lut (.A(n32646), .B(n13856), .C(n1837[7]), .D(n13673), 
         .Z(n32675)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i22895_4_lut.init = 16'hc088;
    LUT4 mux_4438_i5_4_lut (.A(n9856[4]), .B(n12188[4]), .C(n24637), .D(n31602), 
         .Z(n13687)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4438_i5_4_lut.init = 16'haca0;
    LUT4 i14866_2_lut (.A(prog_data[1]), .B(prog_data[2]), .Z(n1732[5])) /* synthesis lut_function=(A+!(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i14866_2_lut.init = 16'hbbbb;
    LUT4 mux_3872_i6_3_lut_4_lut (.A(ram_out[5]), .B(CPUWR), .C(reg_E[5]), 
         .D(n9), .Z(n12188[5])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3872_i6_3_lut_4_lut.init = 16'hf022;
    LUT4 mux_4438_i6_4_lut (.A(n9856[5]), .B(n12188[5]), .C(n24637), .D(n31602), 
         .Z(n13688)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4438_i6_4_lut.init = 16'haca0;
    LUT4 i22888_4_lut (.A(n32647), .B(n13856), .C(n1837[8]), .D(n13673), 
         .Z(n32677)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i22888_4_lut.init = 16'hc088;
    LUT4 mux_4438_i7_4_lut (.A(n9856[6]), .B(n12188[6]), .C(n24637), .D(n31602), 
         .Z(n13689)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4438_i7_4_lut.init = 16'haca0;
    LUT4 mux_4438_i8_4_lut (.A(n9782[7]), .B(n12188[7]), .C(n24637), .D(n31602), 
         .Z(n13690)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4438_i8_4_lut.init = 16'haca0;
    LUT4 mux_3872_i5_3_lut_4_lut (.A(ram_out[4]), .B(CPUWR), .C(reg_E[4]), 
         .D(n9), .Z(n12188[4])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3872_i5_3_lut_4_lut.init = 16'hf022;
    PFUMX i91_adj_250 (.BLUT(n32450), .ALUT(n35_adj_1248), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1085));
    LUT4 mux_3183_i9_4_lut (.A(n946[8]), .B(\CPU.first_operand [0]), .C(n9484), 
         .D(n25312), .Z(n9485[8])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3183_i9_4_lut.init = 16'hca0a;
    LUT4 mux_4461_i2_4_lut (.A(n9856[1]), .B(n12099[1]), .C(n24637), .D(n31602), 
         .Z(n13724)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4461_i2_4_lut.init = 16'haca0;
    LUT4 mux_3872_i4_3_lut_4_lut (.A(ram_out[3]), .B(CPUWR), .C(reg_E[3]), 
         .D(n9), .Z(n12188[3])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3872_i4_3_lut_4_lut.init = 16'hf022;
    LUT4 mux_3608_i7_3_lut (.A(reg_IY[6]), .B(prog_data[6]), .C(n13758), 
         .Z(n11250[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3608_i7_3_lut.init = 16'hcaca;
    PFUMX i91_adj_251 (.BLUT(n32445), .ALUT(n35_adj_1249), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1080));
    LUT4 mux_3872_i3_3_lut_4_lut (.A(ram_out[2]), .B(CPUWR), .C(reg_E[2]), 
         .D(n9), .Z(n12188[2])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3872_i3_3_lut_4_lut.init = 16'hf022;
    LUT4 mux_3183_i10_4_lut (.A(n946[9]), .B(\CPU.first_operand [1]), .C(n9484), 
         .D(n25312), .Z(n9485[9])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3183_i10_4_lut.init = 16'hca0a;
    LUT4 mux_3608_i6_3_lut (.A(reg_IY[5]), .B(prog_data[5]), .C(n13758), 
         .Z(n11250[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3608_i6_3_lut.init = 16'hcaca;
    LUT4 mux_3608_i5_3_lut (.A(reg_IY[4]), .B(prog_data[4]), .C(n13758), 
         .Z(n11250[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3608_i5_3_lut.init = 16'hcaca;
    LUT4 prog_data_6__I_0_727_Mux_1_i85_3_lut_4_lut (.A(n81_adj_1033), .B(n84_adj_1018), 
         .C(prog_data[2]), .D(n3376), .Z(n85)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_1_i85_3_lut_4_lut.init = 16'hcaaa;
    LUT4 mux_3183_i11_4_lut (.A(n946[10]), .B(\CPU.first_operand [2]), .C(n9484), 
         .D(n25312), .Z(n9485[10])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3183_i11_4_lut.init = 16'hca0a;
    LUT4 i23098_2_lut_3_lut (.A(n31549), .B(n34818), .C(n1837[9]), .Z(n32756)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23098_2_lut_3_lut.init = 16'h8080;
    LUT4 i23099_2_lut_3_lut (.A(n31549), .B(n34818), .C(n1837[10]), .Z(n32758)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23099_2_lut_3_lut.init = 16'h8080;
    LUT4 prog_data_6__I_0_728_Mux_7_i127_3_lut_4_lut (.A(prog_data[7]), .B(n19110), 
         .C(n126_adj_1107), .D(n3377), .Z(alu_in_y[7])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_728_Mux_7_i127_3_lut_4_lut.init = 16'hf022;
    LUT4 mux_4461_i3_4_lut (.A(n9856[2]), .B(n12099[2]), .C(n24637), .D(n31602), 
         .Z(n13725)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4461_i3_4_lut.init = 16'haca0;
    LUT4 mux_3872_i2_3_lut_4_lut (.A(ram_out[1]), .B(CPUWR), .C(reg_E[1]), 
         .D(n9), .Z(n12188[1])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3872_i2_3_lut_4_lut.init = 16'hf022;
    LUT4 i2_3_lut_4_lut_adj_252 (.A(\CPU.opcode [1]), .B(n30_adj_1245), 
         .C(\CPU.opcode[6] ), .D(\CPU.opcode [4]), .Z(n13096)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(965[5] 1022[14])
    defparam i2_3_lut_4_lut_adj_252.init = 16'h0004;
    L6MUX21 i22147 (.D0(n32260), .D1(n32261), .SD(prog_data[2]), .Z(n32262));
    L6MUX21 i22150 (.D0(n32263), .D1(n32264), .SD(prog_data[2]), .Z(n32265));
    L6MUX21 i22153 (.D0(n32266), .D1(n32267), .SD(prog_data[2]), .Z(n32268));
    LUT4 mux_4461_i4_4_lut (.A(n9856[3]), .B(n12099[3]), .C(n24637), .D(n31602), 
         .Z(n13726)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4461_i4_4_lut.init = 16'haca0;
    LUT4 prog_data_6__I_0_727_Mux_2_i85_3_lut_4_lut (.A(n81_adj_1032), .B(n84_adj_1016), 
         .C(prog_data[2]), .D(n3376), .Z(n85_adj_1250)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_2_i85_3_lut_4_lut.init = 16'hcaaa;
    PFUMX i24290 (.BLUT(n34861), .ALUT(n34859), .C0(prog_data[6]), .Z(n34862));
    LUT4 mux_4461_i5_4_lut (.A(n9856[4]), .B(n12099[4]), .C(n24637), .D(n31602), 
         .Z(n13727)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4461_i5_4_lut.init = 16'haca0;
    LUT4 prog_data_6__I_0_727_Mux_3_i85_3_lut_4_lut (.A(n81_adj_1028), .B(n84_adj_1012), 
         .C(prog_data[2]), .D(n3376), .Z(n85_adj_1251)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_3_i85_3_lut_4_lut.init = 16'hcaaa;
    LUT4 mux_4461_i6_4_lut (.A(n9856[5]), .B(n12099[5]), .C(n24637), .D(n31602), 
         .Z(n13728)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4461_i6_4_lut.init = 16'haca0;
    LUT4 prog_data_6__I_0_727_Mux_4_i85_3_lut_4_lut (.A(n81_adj_1027), .B(n84_adj_1014), 
         .C(prog_data[2]), .D(n3376), .Z(n85_adj_1252)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_4_i85_3_lut_4_lut.init = 16'hcaaa;
    PFUMX i22151 (.BLUT(n10181[6]), .ALUT(n10193[6]), .C0(prog_data[1]), 
          .Z(n32266));
    PFUMX i22148 (.BLUT(n10181[5]), .ALUT(n10193[5]), .C0(prog_data[1]), 
          .Z(n32263));
    PFUMX i22145 (.BLUT(n10181[4]), .ALUT(n10193[4]), .C0(prog_data[1]), 
          .Z(n32260));
    LUT4 mux_4461_i7_4_lut (.A(n9856[6]), .B(n12099[6]), .C(n24637), .D(n31602), 
         .Z(n13729)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4461_i7_4_lut.init = 16'haca0;
    LUT4 prog_data_6__I_0_727_Mux_5_i85_3_lut_4_lut (.A(n81_adj_1025), .B(n84_adj_1021), 
         .C(prog_data[2]), .D(n3376), .Z(n85_adj_1253)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_5_i85_3_lut_4_lut.init = 16'hcaaa;
    LUT4 mux_4461_i8_4_lut (.A(n9782[7]), .B(n12099[7]), .C(n24637), .D(n31602), 
         .Z(n13730)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4461_i8_4_lut.init = 16'haca0;
    LUT4 i22035_3_lut (.A(n9205[1]), .B(n1916[1]), .C(n15184), .Z(n32150)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22035_3_lut.init = 16'hcaca;
    LUT4 prog_data_6__I_0_727_Mux_6_i85_3_lut_4_lut (.A(n81_adj_1005), .B(n84_adj_1010), 
         .C(prog_data[2]), .D(n3376), .Z(n85_adj_1254)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_6_i85_3_lut_4_lut.init = 16'hcaaa;
    LUT4 prog_data_6__I_0_727_Mux_7_i85_3_lut_4_lut (.A(n81), .B(n84_adj_1008), 
         .C(prog_data[2]), .D(n3376), .Z(n85_adj_1255)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_7_i85_3_lut_4_lut.init = 16'hcaaa;
    LUT4 prog_data_6__I_0_727_Mux_0_i85_3_lut_4_lut (.A(n81_adj_1031), .B(n84), 
         .C(prog_data[2]), .D(n3376), .Z(n85_adj_1256)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_0_i85_3_lut_4_lut.init = 16'hcaaa;
    PFUMX i22142 (.BLUT(n10181[3]), .ALUT(n10193[3]), .C0(prog_data[1]), 
          .Z(n32257));
    PFUMX i22143 (.BLUT(n10205[3]), .ALUT(n32310), .C0(prog_data[1]), 
          .Z(n32258));
    LUT4 i22993_4_lut (.A(n24618), .B(n4_adj_1004), .C(n24620), .D(n31752), 
         .Z(n32357)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22993_4_lut.init = 16'hc040;
    LUT4 i10535_2_lut_4_lut (.A(prog_data[3]), .B(prog_data[4]), .C(prog_data[5]), 
         .D(\CPU.state[0] ), .Z(n20655)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i10535_2_lut_4_lut.init = 16'h0200;
    LUT4 i2_3_lut_4_lut_adj_253 (.A(\CPU.opcode[5] ), .B(\CPU.opcode[6] ), 
         .C(\CPU.opcode [3]), .D(\CPU.opcode [4]), .Z(n12_adj_1022)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(850[29:36])
    defparam i2_3_lut_4_lut_adj_253.init = 16'hf7ff;
    LUT4 mux_4562_i2_4_lut (.A(n9856[1]), .B(n12010[1]), .C(n24637), .D(n31602), 
         .Z(n13878)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4562_i2_4_lut.init = 16'haca0;
    LUT4 i3_3_lut_4_lut_adj_254 (.A(\CPU.opcode [3]), .B(\CPU.opcode [4]), 
         .C(\CPU.opcode[5] ), .D(\CPU.opcode[6] ), .Z(n12_adj_1257)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(840[40:47])
    defparam i3_3_lut_4_lut_adj_254.init = 16'hfeff;
    LUT4 \CPU_ALU.result_8__I_97_i8_3_lut  (.A(\CPU_ALU.result_8__N_653 [7]), 
         .B(n14), .C(alu_cin), .Z(\CPU_ALU.result_8__N_617 [7])) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(298[4] 299[47])
    defparam \CPU_ALU.result_8__I_97_i8_3_lut .init = 16'h9a9a;
    LUT4 alu_in_x_7__I_0_i8_2_lut (.A(alu_in_x[7]), .B(alu_in_y[7]), .Z(\CPU_ALU.result_8__N_609 [7])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(316[6:47])
    defparam alu_in_x_7__I_0_i8_2_lut.init = 16'h8888;
    FD1P3AX reg_D__i2 (.D(n13725), .SP(CK_keep_enable_105), .CK(CK_keep), 
            .Q(reg_D[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_D__i2.GSR = "ENABLED";
    FD1P3AX reg_D__i3 (.D(n13726), .SP(CK_keep_enable_105), .CK(CK_keep), 
            .Q(reg_D[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_D__i3.GSR = "ENABLED";
    FD1P3AX reg_D__i4 (.D(n13727), .SP(CK_keep_enable_105), .CK(CK_keep), 
            .Q(reg_D[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_D__i4.GSR = "ENABLED";
    FD1P3AX reg_D__i5 (.D(n13728), .SP(CK_keep_enable_105), .CK(CK_keep), 
            .Q(reg_D[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_D__i5.GSR = "ENABLED";
    FD1P3AX reg_D__i6 (.D(n13729), .SP(CK_keep_enable_105), .CK(CK_keep), 
            .Q(reg_D[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_D__i6.GSR = "ENABLED";
    FD1P3AX reg_D__i7 (.D(n13730), .SP(CK_keep_enable_105), .CK(CK_keep), 
            .Q(reg_D[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_D__i7.GSR = "ENABLED";
    LUT4 i74_4_lut (.A(\CPU.state_7__N_709[0] ), .B(n18), .C(\CPU.state[1] ), 
         .D(\CPU.state[0] ), .Z(n48)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i74_4_lut.init = 16'h0530;
    LUT4 i1_2_lut_4_lut_adj_255 (.A(prog_data[0]), .B(n3376), .C(prog_data[2]), 
         .D(prog_data[1]), .Z(n19371)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i1_2_lut_4_lut_adj_255.init = 16'h8000;
    LUT4 i23870_4_lut (.A(n9_adj_1058), .B(n34582), .C(n7_adj_1258), .D(n9527), 
         .Z(CK_keep_enable_136)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i23870_4_lut.init = 16'h0511;
    PFUMX i24019 (.BLUT(n1916[10]), .ALUT(n34425), .C0(\CPU.state[0] ), 
          .Z(n34426));
    LUT4 mux_238_i12_3_lut (.A(n946[11]), .B(\CPU.first_operand [3]), .C(n10369), 
         .Z(n1332[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(951[6] 956[13])
    defparam mux_238_i12_3_lut.init = 16'hcaca;
    LUT4 i23883_3_lut_4_lut (.A(\CPU.opcode [2]), .B(\CPU.opcode [3]), .C(n31884), 
         .D(\CPU.opcode [0]), .Z(n13856)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (D))) */ ;
    defparam i23883_3_lut_4_lut.init = 16'h00fd;
    LUT4 alu_in_x_7__I_0_725_i8_2_lut (.A(alu_in_x[7]), .B(alu_in_y[7]), 
         .Z(\CPU_ALU.result_8__N_601 [7])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(304[6:47])
    defparam alu_in_x_7__I_0_725_i8_2_lut.init = 16'h6666;
    LUT4 alu_in_x_7__I_0_726_i8_2_lut (.A(alu_in_x[7]), .B(alu_in_y[7]), 
         .Z(\CPU_ALU.result_8__N_593 [7])) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(310[6:47])
    defparam alu_in_x_7__I_0_726_i8_2_lut.init = 16'heeee;
    LUT4 n12_bdd_3_lut_24913_4_lut (.A(prog_data[2]), .B(n3376), .C(n84_adj_1019), 
         .D(n16355), .Z(n35877)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n12_bdd_3_lut_24913_4_lut.init = 16'hf780;
    LUT4 mux_759_Mux_3_i31_else_3_lut (.A(prog_data[4]), .B(prog_data[3]), 
         .C(prog_data[0]), .D(prog_data[1]), .Z(n37054)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+(D))))) */ ;
    defparam mux_759_Mux_3_i31_else_3_lut.init = 16'h44c8;
    LUT4 i1_4_lut_4_lut_adj_256 (.A(\CPU.state [5]), .B(\CPU.state[3] ), 
         .C(\CPU.state[2] ), .D(\CPU.state[0] ), .Z(n41)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_256.init = 16'h0116;
    LUT4 i23414_2_lut_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n8_adj_1056), 
         .C(n12_adj_1042), .D(\CPU.second_operand [0]), .Z(n32384)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1086[10:17])
    defparam i23414_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i23325_2_lut_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n8_adj_1056), 
         .C(n12_adj_1042), .D(\CPU.second_operand [1]), .Z(n32687)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1086[10:17])
    defparam i23325_2_lut_3_lut_4_lut.init = 16'hfffe;
    PFUMX i25225 (.BLUT(n36453), .ALUT(n36452), .C0(\CPU.state[1] ), .Z(n36454));
    LUT4 i23049_3_lut_4_lut (.A(n20), .B(\CPU.opcode [3]), .C(\CPU.opcode [0]), 
         .D(\CPU.opcode [2]), .Z(n32578)) /* synthesis lut_function=((B+!(C+(D)))+!A) */ ;
    defparam i23049_3_lut_4_lut.init = 16'hdddf;
    LUT4 i1_2_lut_3_lut_adj_257 (.A(n52), .B(n25463), .C(\CPU.state[2] ), 
         .Z(CK_keep_enable_6)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_257.init = 16'h0202;
    LUT4 i21783_2_lut_3_lut (.A(n9), .B(n12_c), .C(\CPU.state[0] ), .Z(n8_adj_1259)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(971[10:17])
    defparam i21783_2_lut_3_lut.init = 16'h0101;
    LUT4 i5829_3_lut_4_lut (.A(reg_IY[10]), .B(ram_out[2]), .C(CPUWR), 
         .D(n24698), .Z(n2633)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A !((C+(D))+!B)) */ ;
    defparam i5829_3_lut_4_lut.init = 16'haa0c;
    LUT4 alu_in_x_7__I_0_i5_2_lut (.A(alu_in_x[4]), .B(alu_in_y[4]), .Z(\CPU_ALU.result_8__N_609 [4])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(316[6:47])
    defparam alu_in_x_7__I_0_i5_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_258 (.A(\CPU.state [4]), .B(n31746), .C(\CPU.state [5]), 
         .D(n24823), .Z(n9484)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_258.init = 16'h0010;
    LUT4 i23145_4_lut (.A(n32648), .B(n13856), .C(n1837[9]), .D(n13673), 
         .Z(n32679)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23145_4_lut.init = 16'hc088;
    LUT4 alu_in_x_7__I_0_725_i5_2_lut (.A(alu_in_x[4]), .B(alu_in_y[4]), 
         .Z(\CPU_ALU.result_8__N_601 [4])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(304[6:47])
    defparam alu_in_x_7__I_0_725_i5_2_lut.init = 16'h6666;
    LUT4 alu_in_x_7__I_0_726_i5_2_lut (.A(alu_in_x[4]), .B(alu_in_y[4]), 
         .Z(\CPU_ALU.result_8__N_593 [4])) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(310[6:47])
    defparam alu_in_x_7__I_0_726_i5_2_lut.init = 16'heeee;
    LUT4 \CPU_ALU.result_8__I_97_i4_3_lut  (.A(\CPU_ALU.result_8__N_653 [3]), 
         .B(n6_adj_1035), .C(alu_cin), .Z(\CPU_ALU.result_8__N_617 [3])) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(298[4] 299[47])
    defparam \CPU_ALU.result_8__I_97_i4_3_lut .init = 16'h9a9a;
    LUT4 alu_in_x_7__I_0_i4_2_lut (.A(alu_in_x[3]), .B(alu_in_y[3]), .Z(\CPU_ALU.result_8__N_609 [3])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(316[6:47])
    defparam alu_in_x_7__I_0_i4_2_lut.init = 16'h8888;
    LUT4 alu_in_x_7__I_0_725_i4_2_lut (.A(alu_in_x[3]), .B(alu_in_y[3]), 
         .Z(\CPU_ALU.result_8__N_601 [3])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(304[6:47])
    defparam alu_in_x_7__I_0_725_i4_2_lut.init = 16'h6666;
    LUT4 alu_in_x_7__I_0_726_i4_2_lut (.A(alu_in_x[3]), .B(alu_in_y[3]), 
         .Z(\CPU_ALU.result_8__N_593 [3])) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(310[6:47])
    defparam alu_in_x_7__I_0_726_i4_2_lut.init = 16'heeee;
    PFUMX i24286 (.BLUT(n34857), .ALUT(n34856), .C0(prog_data[6]), .Z(n34858));
    LUT4 \CPU.opcode_6__I_0_747_i9_2_lut_3_lut  (.A(\CPU.opcode [0]), .B(\CPU.opcode [1]), 
         .C(\CPU.opcode [2]), .Z(n9_adj_1044)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1086[10:17])
    defparam \CPU.opcode_6__I_0_747_i9_2_lut_3_lut .init = 16'hfefe;
    LUT4 i5831_3_lut_4_lut (.A(reg_IY[9]), .B(ram_out[1]), .C(CPUWR), 
         .D(n24698), .Z(n2634)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A !((C+(D))+!B)) */ ;
    defparam i5831_3_lut_4_lut.init = 16'haa0c;
    LUT4 mux_4562_i3_4_lut (.A(n9856[2]), .B(n12010[2]), .C(n24637), .D(n31602), 
         .Z(n13879)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4562_i3_4_lut.init = 16'haca0;
    LUT4 i21846_2_lut_4_lut (.A(\CPU.state[3] ), .B(\CPU.state [4]), .C(\CPU.state [7]), 
         .D(\CPU.state[1] ), .Z(n31956)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i21846_2_lut_4_lut.init = 16'hfffe;
    PFUMX i25201 (.BLUT(n36409), .ALUT(n36408), .C0(alu_ctrl[2]), .Z(n36410));
    LUT4 i23146_4_lut (.A(n32649), .B(n13856), .C(n1837[10]), .D(n13673), 
         .Z(n32681)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23146_4_lut.init = 16'hc088;
    LUT4 i5833_3_lut_4_lut (.A(reg_IY[8]), .B(ram_out[0]), .C(CPUWR), 
         .D(n24698), .Z(n2635)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A !((C+(D))+!B)) */ ;
    defparam i5833_3_lut_4_lut.init = 16'haa0c;
    LUT4 mux_4562_i4_4_lut (.A(n9856[3]), .B(n12010[3]), .C(n24637), .D(n31602), 
         .Z(n13880)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4562_i4_4_lut.init = 16'haca0;
    FD1P3AX reg_C__i1 (.D(n13878), .SP(CK_keep_enable_112), .CK(CK_keep), 
            .Q(reg_C[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_C__i1.GSR = "ENABLED";
    LUT4 mux_3190_i1_4_lut (.A(n9514[0]), .B(n32070), .C(n9527), .D(n11092), 
         .Z(n9528[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3190_i1_4_lut.init = 16'hca0a;
    LUT4 \CPU.opcode_6__I_0_762_i12_2_lut_3_lut_4_lut  (.A(\CPU.opcode[5] ), 
         .B(\CPU.opcode[6] ), .C(\CPU.opcode [3]), .D(\CPU.opcode [4]), 
         .Z(n12_c)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1086[10:17])
    defparam \CPU.opcode_6__I_0_762_i12_2_lut_3_lut_4_lut .init = 16'hfeff;
    LUT4 i1590_2_lut (.A(prog_data[4]), .B(n7453), .Z(n7439)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i1590_2_lut.init = 16'h2222;
    LUT4 mux_4562_i5_4_lut (.A(n9856[4]), .B(n12010[4]), .C(n24637), .D(n31602), 
         .Z(n13881)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4562_i5_4_lut.init = 16'haca0;
    LUT4 i1_2_lut_3_lut_adj_259 (.A(prog_data[0]), .B(prog_data[1]), .C(n20165), 
         .Z(n7302)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i1_2_lut_3_lut_adj_259.init = 16'hfefe;
    PFUMX i24284 (.BLUT(n34851), .ALUT(n34849), .C0(prog_data[6]), .Z(n34852));
    LUT4 mux_4562_i6_4_lut (.A(n9856[5]), .B(n12010[5]), .C(n24637), .D(n31602), 
         .Z(n13882)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4562_i6_4_lut.init = 16'haca0;
    LUT4 i21955_3_lut (.A(n32068), .B(n32069), .C(n10514), .Z(n32070)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i21955_3_lut.init = 16'hcaca;
    LUT4 mux_3183_i12_4_lut (.A(n946[11]), .B(\CPU.first_operand [3]), .C(n9484), 
         .D(n25312), .Z(n9485[11])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3183_i12_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_4_lut_adj_260 (.A(prog_data[3]), .B(prog_data[2]), .C(prog_data[0]), 
         .D(prog_data[1]), .Z(n4_adj_1076)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i1_2_lut_4_lut_adj_260.init = 16'h4000;
    LUT4 mux_4562_i7_4_lut (.A(n9856[6]), .B(n12010[6]), .C(n24637), .D(n31602), 
         .Z(n13883)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4562_i7_4_lut.init = 16'haca0;
    LUT4 i22928_2_lut_3_lut_4_lut (.A(reg_SP[6]), .B(\CPU.opcode [2]), .C(n26), 
         .D(n31692), .Z(n32429)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i22928_2_lut_3_lut_4_lut.init = 16'h0222;
    LUT4 i23290_2_lut (.A(n32268), .B(n20604), .Z(n32856)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i23290_2_lut.init = 16'h8888;
    MUX81 alu_ctrl_3__I_0_Mux_7_i776 (.D0(\CPU_ALU.result_8__N_644 [7]), .D1(\CPU_ALU.result_8__N_617 [7]), 
          .D2(\CPU_ALU.result_8__N_609 [7]), .D3(\CPU_ALU.result_8__N_601 [7]), 
          .D4(\CPU_ALU.result_8__N_593 [7]), .D5(alu_in_x[6]), .D6(alu_in_x[6]), 
          .D7(alu_cin), .SD1(alu_ctrl[0]), .SD2(alu_ctrl[1]), .SD3(alu_ctrl[2]), 
          .Z(n7_adj_1260));
    MUX81 alu_ctrl_3__I_0_Mux_4_i779 (.D0(\CPU_ALU.result_8__N_644 [4]), .D1(\CPU_ALU.result_8__N_617 [4]), 
          .D2(\CPU_ALU.result_8__N_609 [4]), .D3(\CPU_ALU.result_8__N_601 [4]), 
          .D4(\CPU_ALU.result_8__N_593 [4]), .D5(alu_in_x[3]), .D6(alu_in_x[3]), 
          .D7(alu_in_x[5]), .SD1(alu_ctrl[0]), .SD2(alu_ctrl[1]), .SD3(alu_ctrl[2]), 
          .Z(n7_adj_1261));
    LUT4 i1_4_lut_adj_261 (.A(n54), .B(n25340), .C(n37065), .D(n24573), 
         .Z(n9040)) /* synthesis lut_function=(!(A (B)+!A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_261.init = 16'h2232;
    MUX81 alu_ctrl_3__I_0_Mux_3_i780 (.D0(\CPU_ALU.result_8__N_644 [3]), .D1(\CPU_ALU.result_8__N_617 [3]), 
          .D2(\CPU_ALU.result_8__N_609 [3]), .D3(\CPU_ALU.result_8__N_601 [3]), 
          .D4(\CPU_ALU.result_8__N_593 [3]), .D5(alu_in_x[2]), .D6(alu_in_x[2]), 
          .D7(alu_in_x[4]), .SD1(alu_ctrl[0]), .SD2(alu_ctrl[1]), .SD3(alu_ctrl[2]), 
          .Z(n7_adj_1262));
    LUT4 mux_4562_i8_4_lut (.A(n9782[7]), .B(n12010[7]), .C(n24637), .D(n31602), 
         .Z(n13884)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4562_i8_4_lut.init = 16'haca0;
    LUT4 i23430_4_lut (.A(n946[0]), .B(prog_data[0]), .C(n10369), .D(n15214), 
         .Z(n32069)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i23430_4_lut.init = 16'haaca;
    LUT4 i23282_2_lut_3_lut_4_lut (.A(reg_SP[5]), .B(\CPU.opcode [2]), .C(n26), 
         .D(n31692), .Z(n32430)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i23282_2_lut_3_lut_4_lut.init = 16'h0222;
    FD1P3AX reg_C__i2 (.D(n13879), .SP(CK_keep_enable_112), .CK(CK_keep), 
            .Q(reg_C[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_C__i2.GSR = "ENABLED";
    FD1P3AX reg_C__i3 (.D(n13880), .SP(CK_keep_enable_112), .CK(CK_keep), 
            .Q(reg_C[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_C__i3.GSR = "ENABLED";
    FD1P3AX reg_C__i4 (.D(n13881), .SP(CK_keep_enable_112), .CK(CK_keep), 
            .Q(reg_C[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_C__i4.GSR = "ENABLED";
    FD1P3AX reg_C__i5 (.D(n13882), .SP(CK_keep_enable_112), .CK(CK_keep), 
            .Q(reg_C[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_C__i5.GSR = "ENABLED";
    FD1P3AX reg_C__i6 (.D(n13883), .SP(CK_keep_enable_112), .CK(CK_keep), 
            .Q(reg_C[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_C__i6.GSR = "ENABLED";
    FD1P3AX reg_C__i7 (.D(n13884), .SP(CK_keep_enable_112), .CK(CK_keep), 
            .Q(reg_C[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_C__i7.GSR = "ENABLED";
    LUT4 i12824_2_lut_3_lut_4_lut (.A(\CPU.opcode[5] ), .B(n6), .C(n20040), 
         .D(n24886), .Z(n22926)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i12824_2_lut_3_lut_4_lut.init = 16'h7fff;
    LUT4 i23399_2_lut (.A(reg_A[6]), .B(prog_data[4]), .Z(n32855)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i23399_2_lut.init = 16'h8888;
    LUT4 i25_4_lut (.A(n13998), .B(n31695), .C(n10514), .D(\CPU.opcode [4]), 
         .Z(n15214)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i25_4_lut.init = 16'hfaca;
    LUT4 i22930_2_lut_3_lut_4_lut (.A(reg_SP[4]), .B(\CPU.opcode [2]), .C(n26), 
         .D(n31692), .Z(n32433)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i22930_2_lut_3_lut_4_lut.init = 16'h0222;
    LUT4 mux_3608_i4_3_lut (.A(reg_IY[3]), .B(prog_data[3]), .C(n13758), 
         .Z(n11250[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3608_i4_3_lut.init = 16'hcaca;
    PFUMX i91_adj_262 (.BLUT(n32442), .ALUT(n35_adj_1263), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1073));
    LUT4 prog_data_5__bdd_4_lut_27602 (.A(prog_data[4]), .B(n7417), .C(n7437), 
         .D(n15620), .Z(n40162)) /* synthesis lut_function=(A (B)+!A !(C (D))) */ ;
    defparam prog_data_5__bdd_4_lut_27602.init = 16'h8ddd;
    LUT4 i1_2_lut_4_lut_adj_263 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_H[0]), .Z(n45_adj_1065)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_263.init = 16'hec00;
    LUT4 i22975_4_lut (.A(n31799), .B(n16218), .C(n32530), .D(n3380), 
         .Z(n32533)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i22975_4_lut.init = 16'hc044;
    LUT4 i22034_3_lut (.A(n1837[1]), .B(n1539[1]), .C(n15184), .Z(n32149)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22034_3_lut.init = 16'hcaca;
    LUT4 i23284_2_lut_3_lut_4_lut (.A(reg_SP[3]), .B(\CPU.opcode [2]), .C(n26), 
         .D(n31692), .Z(n32434)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i23284_2_lut_3_lut_4_lut.init = 16'h0222;
    LUT4 i23286_2_lut_3_lut_4_lut (.A(reg_SP[2]), .B(\CPU.opcode [2]), .C(n26), 
         .D(n31692), .Z(n32435)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i23286_2_lut_3_lut_4_lut.init = 16'h0222;
    LUT4 mux_3190_i2_4_lut (.A(n9514[1]), .B(n32067), .C(n9527), .D(n11092), 
         .Z(n9528[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3190_i2_4_lut.init = 16'hca0a;
    FD1P3DX prog_cntr_i0_i1 (.D(n9528[1]), .SP(CK_keep_enable_136), .CK(CK_keep), 
            .CD(TP2_c), .Q(prog_addr[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam prog_cntr_i0_i1.GSR = "ENABLED";
    LUT4 i21952_3_lut (.A(n32065), .B(n32066), .C(n10514), .Z(n32067)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i21952_3_lut.init = 16'hcaca;
    LUT4 i22932_2_lut_3_lut_4_lut (.A(reg_SP[1]), .B(\CPU.opcode [2]), .C(n26), 
         .D(n31692), .Z(n32438)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i22932_2_lut_3_lut_4_lut.init = 16'h0222;
    PFUMX i91_adj_264 (.BLUT(n32440), .ALUT(n35_adj_1264), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1265));
    LUT4 i22828_4_lut (.A(n946[1]), .B(prog_data[1]), .C(n10369), .D(n15214), 
         .Z(n32066)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i22828_4_lut.init = 16'haaca;
    LUT4 mux_3608_i3_3_lut (.A(reg_IY[2]), .B(prog_data[2]), .C(n13758), 
         .Z(n11250[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3608_i3_3_lut.init = 16'hcaca;
    LUT4 mux_3608_i2_3_lut (.A(reg_IY[1]), .B(prog_data[1]), .C(n13758), 
         .Z(n11250[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3608_i2_3_lut.init = 16'hcaca;
    LUT4 mux_3608_i1_3_lut (.A(reg_IY[0]), .B(prog_data[0]), .C(n13758), 
         .Z(n11250[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3608_i1_3_lut.init = 16'hcaca;
    PFUMX i24280 (.BLUT(n34847), .ALUT(n34845), .C0(prog_data[6]), .Z(n34848));
    LUT4 mux_3544_i11_3_lut (.A(\CPU.first_operand [2]), .B(reg_IX[10]), 
         .C(n13766), .Z(n11063[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3544_i11_3_lut.init = 16'hcaca;
    LUT4 i23348_2_lut_3_lut_4_lut (.A(reg_SP[0]), .B(\CPU.opcode [2]), .C(n26), 
         .D(n31692), .Z(n32280)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i23348_2_lut_3_lut_4_lut.init = 16'h0222;
    LUT4 mux_3544_i5_3_lut (.A(prog_data[4]), .B(reg_IX[4]), .C(n13766), 
         .Z(n11063[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3544_i5_3_lut.init = 16'hcaca;
    LUT4 mux_4390_i9_3_lut_4_lut (.A(n1837[8]), .B(n1539[8]), .C(n13698), 
         .D(n13589), .Z(n13633)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_4390_i9_3_lut_4_lut.init = 16'haaca;
    LUT4 mux_4510_i4_4_lut (.A(prog_addr[11]), .B(reg_A[3]), .C(n13785), 
         .D(\CPU.opcode [2]), .Z(n13789)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_4510_i4_4_lut.init = 16'hca0a;
    LUT4 mux_4571_i1_4_lut (.A(n9782[0]), .B(n11921[0]), .C(n24637), .D(n31602), 
         .Z(n13893)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4571_i1_4_lut.init = 16'haca0;
    LUT4 mux_442_i4_3_lut (.A(reg_IX[3]), .B(reg_IY[3]), .C(n13), .Z(n1851[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1075[6] 1078[15])
    defparam mux_442_i4_3_lut.init = 16'hcaca;
    LUT4 mux_3544_i1_3_lut (.A(prog_data[0]), .B(reg_IX[0]), .C(n13766), 
         .Z(n11063[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3544_i1_3_lut.init = 16'hcaca;
    LUT4 mux_4390_i10_3_lut_4_lut (.A(n1837[9]), .B(n1539[9]), .C(n13698), 
         .D(n13589), .Z(n13634)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_4390_i10_3_lut_4_lut.init = 16'haaca;
    LUT4 mux_3544_i6_3_lut (.A(prog_data[5]), .B(reg_IX[5]), .C(n13766), 
         .Z(n11063[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3544_i6_3_lut.init = 16'hcaca;
    LUT4 i23133_2_lut_3_lut_4_lut (.A(\CPU.opcode [2]), .B(\CPU.opcode [0]), 
         .C(\CPU.opcode [1]), .D(\CPU.first_operand [0]), .Z(n32678)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i23133_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 mux_1303_Mux_2_i63_3_lut (.A(reg_IY[2]), .B(n62_adj_1266), .C(n20690), 
         .Z(n6952[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_2_i63_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_265 (.A(\CPU.state[3] ), .B(\CPU.state[2] ), .C(n4_adj_1004), 
         .D(n25531), .Z(n9527)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i3_4_lut_adj_265.init = 16'h0040;
    PFUMX i91_adj_266 (.BLUT(n32436), .ALUT(n35_adj_1267), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1109));
    LUT4 mux_3544_i2_3_lut (.A(prog_data[1]), .B(reg_IX[1]), .C(n13766), 
         .Z(n11063[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3544_i2_3_lut.init = 16'hcaca;
    LUT4 mux_3544_i7_3_lut (.A(prog_data[6]), .B(reg_IX[6]), .C(n13766), 
         .Z(n11063[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3544_i7_3_lut.init = 16'hcaca;
    LUT4 mux_3544_i8_3_lut (.A(prog_data[7]), .B(reg_IX[7]), .C(n13766), 
         .Z(n11063[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3544_i8_3_lut.init = 16'hcaca;
    LUT4 mux_3002_i11_4_lut (.A(n13635), .B(reg_H[2]), .C(\CPU.state[0] ), 
         .D(n24601), .Z(n9205[10])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_3002_i11_4_lut.init = 16'hcac0;
    LUT4 mux_3544_i3_3_lut (.A(prog_data[2]), .B(reg_IX[2]), .C(n13766), 
         .Z(n11063[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3544_i3_3_lut.init = 16'hcaca;
    LUT4 mux_3544_i9_3_lut (.A(\CPU.first_operand [0]), .B(reg_IX[8]), .C(n13766), 
         .Z(n11063[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3544_i9_3_lut.init = 16'hcaca;
    LUT4 mux_3544_i4_3_lut (.A(prog_data[3]), .B(reg_IX[3]), .C(n13766), 
         .Z(n11063[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3544_i4_3_lut.init = 16'hcaca;
    LUT4 mux_3544_i10_3_lut (.A(\CPU.first_operand [1]), .B(reg_IX[9]), 
         .C(n13766), .Z(n11063[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam mux_3544_i10_3_lut.init = 16'hcaca;
    LUT4 i23104_2_lut (.A(reg_A[2]), .B(\CPU.opcode [2]), .Z(n32661)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23104_2_lut.init = 16'h8888;
    PFUMX i24276 (.BLUT(n34843), .ALUT(n34841), .C0(prog_data[6]), .Z(n34844));
    LUT4 i23134_2_lut_3_lut_4_lut (.A(\CPU.opcode [2]), .B(\CPU.opcode [0]), 
         .C(\CPU.opcode [1]), .D(\CPU.first_operand [1]), .Z(n32680)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i23134_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 mux_176_Mux_2_i31_3_lut (.A(prog_addr[10]), .B(reg_A[2]), .C(prog_data[4]), 
         .Z(n31_adj_1268)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_176_Mux_2_i31_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_267 (.A(n11092), .B(n10514), .C(n13856), .D(n13673), 
         .Z(n7_adj_1258)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut_adj_267.init = 16'h2000;
    LUT4 i23062_2_lut (.A(reg_A[1]), .B(\CPU.opcode [2]), .Z(n32660)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23062_2_lut.init = 16'h8888;
    LUT4 mux_176_Mux_1_i31_3_lut (.A(prog_addr[9]), .B(reg_A[1]), .C(prog_data[4]), 
         .Z(n31_adj_1269)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_176_Mux_1_i31_3_lut.init = 16'hcaca;
    LUT4 i23135_2_lut_3_lut_4_lut (.A(\CPU.opcode [2]), .B(\CPU.opcode [0]), 
         .C(\CPU.opcode [1]), .D(\CPU.first_operand [2]), .Z(n32682)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i23135_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i2_2_lut_3_lut_4_lut (.A(\CPU.opcode [4]), .B(\CPU.opcode [3]), 
         .C(\CPU.opcode[5] ), .D(\CPU.opcode[6] ), .Z(n12_adj_1055)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hff7f;
    LUT4 i15095_2_lut (.A(n1837[10]), .B(n13096), .Z(n1916[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam i15095_2_lut.init = 16'h8888;
    LUT4 equal_5029_i12_2_lut_4_lut (.A(\CPU.state[3] ), .B(\CPU.state [4]), 
         .C(\CPU.state [5]), .D(\CPU.state [7]), .Z(n12_adj_1063)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(866[11:38])
    defparam equal_5029_i12_2_lut_4_lut.init = 16'hfffe;
    LUT4 i22118_3_lut_4_lut (.A(reg_A[0]), .B(reg_B[0]), .C(prog_data[0]), 
         .D(n3376), .Z(n32233)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22118_3_lut_4_lut.init = 16'hcaaa;
    LUT4 i783_2_lut (.A(prog_data[4]), .B(n3376), .Z(n3379)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(301[8:23])
    defparam i783_2_lut.init = 16'h8888;
    LUT4 prog_data_6__I_0_729_Mux_0_i101_3_lut (.A(n16355), .B(n100), .C(n3381), 
         .Z(n101)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_729_Mux_0_i101_3_lut.init = 16'hcaca;
    LUT4 prog_data_6__I_0_729_Mux_0_i100_4_lut (.A(n19645), .B(alu_ctrl_3__N_885), 
         .C(n3382), .D(n3383), .Z(n100)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_729_Mux_0_i100_4_lut.init = 16'hfaca;
    LUT4 i14878_2_lut (.A(alu_out[0]), .B(\CPU.state[0] ), .Z(n9782[0])) /* synthesis lut_function=(A (B)) */ ;
    defparam i14878_2_lut.init = 16'h8888;
    LUT4 i2_4_lut_adj_268 (.A(n31749), .B(prog_data[2]), .C(prog_data[1]), 
         .D(n3376), .Z(n16355)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i2_4_lut_adj_268.init = 16'heefe;
    LUT4 i785_2_lut (.A(prog_data[2]), .B(n3376), .Z(n3381)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(301[8:23])
    defparam i785_2_lut.init = 16'h8888;
    LUT4 i22_3_lut_4_lut_3_lut (.A(\CPU.opcode [4]), .B(\CPU.opcode [1]), 
         .C(\CPU.opcode[5] ), .Z(n11_adj_1244)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;
    defparam i22_3_lut_4_lut_3_lut.init = 16'h2424;
    LUT4 i15319_2_lut (.A(reg_A[0]), .B(n19110), .Z(n63_adj_1270)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15319_2_lut.init = 16'h2222;
    LUT4 i22119_3_lut_4_lut (.A(reg_C[0]), .B(reg_D[0]), .C(prog_data[0]), 
         .D(n3376), .Z(n32234)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i22119_3_lut_4_lut.init = 16'hcaaa;
    LUT4 prog_data_6__bdd_2_lut (.A(prog_data[6]), .B(n40163), .Z(n7516)) /* synthesis lut_function=(A+(B)) */ ;
    defparam prog_data_6__bdd_2_lut.init = 16'heeee;
    LUT4 i23298_2_lut_3_lut_4_lut (.A(prog_data[0]), .B(prog_data[1]), .C(n20097), 
         .D(reg_L[6]), .Z(n32567)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i23298_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i23416_2_lut_3_lut (.A(n34876), .B(\CPU.state[0] ), .C(prog_data[6]), 
         .Z(n32375)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23416_2_lut_3_lut.init = 16'h0808;
    LUT4 xdac_0_bdd_2_lut_24928_2_lut_3_lut (.A(prog_data[3]), .B(n3376), 
         .C(n35889), .Z(n35890)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam xdac_0_bdd_2_lut_24928_2_lut_3_lut.init = 16'h7070;
    LUT4 i1_4_lut_adj_269 (.A(n59_adj_1271), .B(n62_adj_1265), .C(n24573), 
         .D(n4_adj_1004), .Z(n68)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_269.init = 16'hce0a;
    LUT4 xdac_0_bdd_2_lut_24923_2_lut_3_lut (.A(prog_data[3]), .B(n3376), 
         .C(n35879), .Z(n35880)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam xdac_0_bdd_2_lut_24923_2_lut_3_lut.init = 16'h7070;
    LUT4 n19575_bdd_3_lut_24451 (.A(n18280), .B(alu_out[6]), .C(reg_H[6]), 
         .Z(n35067)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n19575_bdd_3_lut_24451.init = 16'hd8d8;
    PFUMX i91_adj_270 (.BLUT(n32431), .ALUT(n35_adj_1272), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1273));
    LUT4 i23301_2_lut_2_lut_3_lut (.A(prog_data[0]), .B(n3376), .C(reg_A[1]), 
         .Z(n32610)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23301_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i23361_2_lut_2_lut_3_lut (.A(prog_data[0]), .B(n3376), .C(reg_A[3]), 
         .Z(n32600)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23361_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 n19575_bdd_2_lut_24452 (.A(n19575), .B(reg_H[6]), .Z(n35068)) /* synthesis lut_function=(A (B)) */ ;
    defparam n19575_bdd_2_lut_24452.init = 16'h8888;
    LUT4 i23074_2_lut_2_lut_3_lut (.A(prog_data[0]), .B(n3376), .C(reg_A[4]), 
         .Z(n32595)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23074_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i23366_2_lut_2_lut_3_lut (.A(prog_data[0]), .B(n3376), .C(reg_A[5]), 
         .Z(n32587)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23366_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i23368_2_lut_2_lut_3_lut (.A(prog_data[0]), .B(n3376), .C(reg_A[6]), 
         .Z(n32582)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23368_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i23044_2_lut_2_lut_3_lut (.A(prog_data[0]), .B(n3376), .C(reg_A[7]), 
         .Z(n32576)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23044_2_lut_2_lut_3_lut.init = 16'h7070;
    PFUMX i91_adj_271 (.BLUT(n32427), .ALUT(n35_adj_1274), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1232));
    LUT4 \CPU.opcode_3__bdd_2_lut_26415  (.A(\CPU.opcode [3]), .B(n37101), 
         .Z(n18)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam \CPU.opcode_3__bdd_2_lut_26415 .init = 16'h4444;
    LUT4 i23896_2_lut (.A(\CPU.opcode[5] ), .B(n13096), .Z(n16823)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam i23896_2_lut.init = 16'h4444;
    LUT4 i23017_2_lut (.A(reg_A[0]), .B(\CPU.opcode [2]), .Z(n32353)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23017_2_lut.init = 16'h8888;
    LUT4 n7417_bdd_4_lut (.A(n7417), .B(prog_data[4]), .C(n7357), .D(n19988), 
         .Z(n34818)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C+(D))))) */ ;
    defparam n7417_bdd_4_lut.init = 16'h3b30;
    LUT4 i23024_4_lut (.A(n6965), .B(n31772), .C(n10_adj_1049), .D(n8_adj_1048), 
         .Z(n32791)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i23024_4_lut.init = 16'h0100;
    LUT4 i23713_2_lut (.A(n13921), .B(n13713), .Z(n24601)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i23713_2_lut.init = 16'h4444;
    LUT4 i6135_3_lut (.A(prog_addr[8]), .B(reg_A[0]), .C(prog_data[4]), 
         .Z(n15784)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i6135_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_272 (.A(\CPU.state[3] ), .B(n11), .C(flag_Z_N_960), 
         .D(n31916), .Z(n35_adj_1275)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_272.init = 16'h0002;
    LUT4 i23257_2_lut_2_lut_3_lut (.A(prog_data[0]), .B(n3376), .C(reg_A[0]), 
         .Z(n32534)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23257_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i59_4_lut (.A(n35_adj_1275), .B(n32790), .C(\CPU.state [4]), 
         .D(n31722), .Z(n43_adj_1276)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i59_4_lut.init = 16'hca0a;
    LUT4 i23300_2_lut_2_lut_3_lut (.A(prog_data[0]), .B(n3376), .C(reg_A[2]), 
         .Z(n32605)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23300_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_adj_273 (.A(\CPU.opcode[6] ), .B(\CPU.opcode [0]), .Z(n20040)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(828[5] 861[14])
    defparam i1_2_lut_adj_273.init = 16'h8888;
    LUT4 i22093_3_lut (.A(n34557), .B(n32207), .C(n24930), .Z(n32208)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i22093_3_lut.init = 16'hacac;
    LUT4 flag_C_bdd_2_lut_25580_4_lut (.A(n35199), .B(n35197), .C(n3376), 
         .D(flag_C), .Z(alu_cin_N_942)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam flag_C_bdd_2_lut_25580_4_lut.init = 16'hca00;
    LUT4 reg_B_0__bdd_2_lut_24948_2_lut_3_lut (.A(prog_data[0]), .B(n3376), 
         .C(reg_B[0]), .Z(n35888)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam reg_B_0__bdd_2_lut_24948_2_lut_3_lut.init = 16'h7070;
    LUT4 i2_4_lut_4_lut_4_lut (.A(n13698), .B(n13589), .C(n13673), .D(n10514), 
         .Z(n13921)) /* synthesis lut_function=(A (B)+!A ((D)+!C)) */ ;
    defparam i2_4_lut_4_lut_4_lut.init = 16'hdd8d;
    LUT4 i23806_2_lut_3_lut_4_lut (.A(\CPU.opcode [0]), .B(\CPU.opcode [1]), 
         .C(\CPU.opcode [2]), .D(n12_adj_1055), .Z(DS_N_933)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1031[10:16])
    defparam i23806_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i86_4_lut (.A(n35_adj_1275), .B(n63_adj_1277), .C(\CPU.state[0] ), 
         .D(n31735), .Z(n49)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i86_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_adj_274 (.A(prog_data[2]), .B(n6965), .Z(n19382)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i1_2_lut_adj_274.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_275 (.A(prog_data[3]), .B(prog_data[2]), .C(prog_data[4]), 
         .Z(n20097)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i1_2_lut_3_lut_adj_275.init = 16'h2020;
    PFUMX i24272 (.BLUT(n34839), .ALUT(n34837), .C0(prog_data[6]), .Z(n34840));
    PFUMX i24266 (.BLUT(n34826), .ALUT(n34824), .C0(prog_data[6]), .Z(n34827));
    LUT4 i1_2_lut_4_lut_adj_276 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_L[5]), .Z(n45_adj_1223)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_276.init = 16'hec00;
    LUT4 i2_3_lut_4_lut_adj_277 (.A(prog_data[4]), .B(prog_data[5]), .C(n19988), 
         .D(n15624), .Z(n18280)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i2_3_lut_4_lut_adj_277.init = 16'h6000;
    PFUMX i91_adj_278 (.BLUT(n32423), .ALUT(n35_adj_1278), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1166));
    LUT4 i21844_2_lut (.A(\CPU.state[0] ), .B(\CPU.state[3] ), .Z(n31954)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i21844_2_lut.init = 16'heeee;
    LUT4 i22032_3_lut (.A(n9205[2]), .B(n1916[2]), .C(n15184), .Z(n32147)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22032_3_lut.init = 16'hcaca;
    LUT4 i21666_2_lut (.A(prog_data[6]), .B(prog_data[5]), .Z(n31772)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i21666_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_adj_279 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_L[0]), .Z(n45_adj_1069)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_279.init = 16'hec00;
    LUT4 prog_data_1__bdd_2_lut_25719 (.A(prog_data[4]), .B(prog_data[5]), 
         .Z(n37253)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam prog_data_1__bdd_2_lut_25719.init = 16'h4444;
    LUT4 prog_data_5__bdd_4_lut_25822 (.A(prog_data[5]), .B(prog_data[3]), 
         .C(prog_data[4]), .D(prog_data[0]), .Z(n36113)) /* synthesis lut_function=(!(A (C)+!A !(B (C+(D))))) */ ;
    defparam prog_data_5__bdd_4_lut_25822.init = 16'h4e4a;
    LUT4 i10427_3_lut (.A(n15784), .B(n46_adj_1279), .C(prog_data[5]), 
         .Z(n20533)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i10427_3_lut.init = 16'hcaca;
    LUT4 i6491_2_lut (.A(n3379), .B(prog_data[5]), .Z(n16218)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i6491_2_lut.init = 16'h8888;
    LUT4 i23398_3_lut (.A(prog_data[1]), .B(n31687), .C(prog_data[0]), 
         .Z(n32530)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i23398_3_lut.init = 16'h4848;
    LUT4 i22995_4_lut (.A(prog_addr[8]), .B(n11092), .C(n32353), .D(n13785), 
         .Z(n32329)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22995_4_lut.init = 16'hc088;
    LUT4 \CPU.state_0__bdd_3_lut_25248  (.A(\CPU.state[0] ), .B(\CPU.state[2] ), 
         .C(\CPU.state [5]), .Z(n124)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam \CPU.state_0__bdd_3_lut_25248 .init = 16'h0707;
    LUT4 i1_2_lut_4_lut_adj_280 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_H[5]), .Z(n45_adj_1191)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_280.init = 16'hec00;
    LUT4 i23144_2_lut (.A(\CPU.first_operand [2]), .B(\CPU.opcode [1]), 
         .Z(n32649)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23144_2_lut.init = 16'h2222;
    LUT4 i23143_2_lut (.A(\CPU.first_operand [1]), .B(\CPU.opcode [1]), 
         .Z(n32648)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23143_2_lut.init = 16'h2222;
    LUT4 i22031_3_lut (.A(n1837[2]), .B(n1539[2]), .C(n15184), .Z(n32146)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22031_3_lut.init = 16'hcaca;
    LUT4 mux_3789_i1_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n8_adj_1056), 
         .C(cpu_data_in[0]), .D(reg_B[0]), .Z(n11921[0])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3789_i1_3_lut_4_lut.init = 16'hfd20;
    PFUMX i24263 (.BLUT(n34822), .ALUT(n34820), .C0(prog_data[6]), .Z(n34823));
    LUT4 i10543_4_lut (.A(prog_data[4]), .B(n18885), .C(prog_data[3]), 
         .D(prog_data[0]), .Z(n4_adj_1046)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A (B (C)+!B (C+(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i10543_4_lut.init = 16'hdb58;
    LUT4 i1_2_lut_4_lut_adj_281 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_H[7]), .Z(n45_adj_1203)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_281.init = 16'hec00;
    LUT4 i1_4_lut_adj_282 (.A(prog_data[5]), .B(n13_adj_1280), .C(n6965), 
         .D(n14_adj_1281), .Z(n4_adj_1214)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i1_4_lut_adj_282.init = 16'ha080;
    LUT4 i5_4_lut_adj_283 (.A(reg_A[0]), .B(reg_A[2]), .C(reg_A[6]), .D(reg_A[4]), 
         .Z(n13_adj_1280)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(496[10:19])
    defparam i5_4_lut_adj_283.init = 16'hfffe;
    LUT4 i6_4_lut_adj_284 (.A(reg_A[3]), .B(reg_A[1]), .C(reg_A[5]), .D(reg_A[7]), 
         .Z(n14_adj_1281)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(496[10:19])
    defparam i6_4_lut_adj_284.init = 16'hfffe;
    LUT4 n35_bdd_3_lut_25746 (.A(\CPU.state[0] ), .B(n32815), .C(\CPU.state[3] ), 
         .Z(n36115)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam n35_bdd_3_lut_25746.init = 16'h0404;
    LUT4 i23142_2_lut (.A(\CPU.first_operand [0]), .B(\CPU.opcode [1]), 
         .Z(n32647)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23142_2_lut.init = 16'h2222;
    LUT4 prog_data_3__bdd_3_lut_26509 (.A(n19382), .B(prog_data[5]), .C(prog_data[4]), 
         .Z(n36116)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam prog_data_3__bdd_3_lut_26509.init = 16'h0202;
    LUT4 i23141_2_lut (.A(prog_data[7]), .B(\CPU.opcode [1]), .Z(n32646)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23141_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_4_lut_adj_285 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_H[3]), .Z(n45_adj_1187)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_285.init = 16'hec00;
    LUT4 i23140_2_lut (.A(\CPU.opcode [1]), .B(prog_data[6]), .Z(n32645)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23140_2_lut.init = 16'h4444;
    LUT4 i23363_3_lut (.A(n9484), .B(\CPU.opcode[5] ), .C(n13096), .Z(n32592)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23363_3_lut.init = 16'h8080;
    LUT4 i23139_2_lut (.A(\CPU.opcode [1]), .B(prog_data[5]), .Z(n32644)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23139_2_lut.init = 16'h4444;
    LUT4 i23734_4_lut (.A(WR_N_916), .B(n64), .C(n31747), .D(n25463), 
         .Z(WR_N_912)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23734_4_lut.init = 16'haf23;
    LUT4 i22090_3_lut (.A(n34543), .B(n32204), .C(n24930), .Z(n32205)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i22090_3_lut.init = 16'hacac;
    LUT4 i23299_2_lut (.A(n32265), .B(n20604), .Z(n32858)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i23299_2_lut.init = 16'h8888;
    LUT4 mux_176_Mux_1_i63_3_lut (.A(n31_adj_1269), .B(n46_adj_1282), .C(prog_data[5]), 
         .Z(n63_adj_1283)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_176_Mux_1_i63_3_lut.init = 16'hcaca;
    LUT4 i22029_3_lut (.A(n9205[3]), .B(n1916[3]), .C(n15184), .Z(n32144)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22029_3_lut.init = 16'hcaca;
    LUT4 i9_1_lut (.A(TP2_c), .Z(CK_keep_enable_130)) /* synthesis lut_function=(!(A)) */ ;
    defparam i9_1_lut.init = 16'h5555;
    PFUMX i5699 (.BLUT(n14373[3]), .ALUT(n32411), .C0(n15255), .Z(n15279));
    LUT4 i6196_4_lut (.A(\CPU.opcode[6] ), .B(n45), .C(n41_adj_1096), 
         .D(\CPU.state[3] ), .Z(n13713)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i6196_4_lut.init = 16'h5044;
    LUT4 i23346_4_lut (.A(prog_addr[9]), .B(n11092), .C(n32660), .D(n13785), 
         .Z(n32615)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23346_4_lut.init = 16'hc088;
    LUT4 mux_176_Mux_2_i63_3_lut (.A(n31_adj_1268), .B(n46_adj_1284), .C(prog_data[5]), 
         .Z(n63_adj_1285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_176_Mux_2_i63_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_286 (.A(reg_L[7]), .B(n71), .C(n32486), .D(\CPU.state[3] ), 
         .Z(n42)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_286.init = 16'h3022;
    LUT4 i22954_4_lut (.A(n1520[7]), .B(n31643), .C(reg_L[7]), .D(n33557), 
         .Z(n32486)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22954_4_lut.init = 16'hc088;
    LUT4 i14899_4_lut (.A(cpu_data_in[7]), .B(n12385), .C(reg_L[7]), .D(n13645), 
         .Z(n1520[7])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14899_4_lut.init = 16'hc088;
    LUT4 i23051_4_lut (.A(prog_addr[10]), .B(n11092), .C(n32661), .D(n13785), 
         .Z(n32616)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23051_4_lut.init = 16'hc088;
    LUT4 i2_3_lut_adj_287 (.A(\CPU.opcode [1]), .B(\CPU.opcode [2]), .C(\CPU.opcode [0]), 
         .Z(n13645)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2_3_lut_adj_287.init = 16'hf7f7;
    PFUMX mux_176_Mux_5_i63 (.BLUT(n32857), .ALUT(n32858), .C0(prog_data[5]), 
          .Z(n63_adj_1286)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    LUT4 i14537_2_lut (.A(\CPU.state[2] ), .B(reg_IX[9]), .Z(n35_adj_1287)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14537_2_lut.init = 16'h1111;
    PFUMX i91_adj_288 (.BLUT(n32410), .ALUT(n35_adj_1288), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1289));
    LUT4 i22817_3_lut (.A(n11063[9]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32282)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22817_3_lut.init = 16'h4c4c;
    LUT4 i2_4_lut_adj_289 (.A(reg_L[6]), .B(n71), .C(n32483), .D(\CPU.state[3] ), 
         .Z(n42_adj_1290)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_289.init = 16'h3022;
    LUT4 i22994_4_lut (.A(n1520[6]), .B(n31643), .C(reg_L[6]), .D(n33557), 
         .Z(n32483)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22994_4_lut.init = 16'hc088;
    LUT4 i14898_4_lut (.A(cpu_data_in[6]), .B(n12385), .C(reg_L[6]), .D(n13645), 
         .Z(n1520[6])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14898_4_lut.init = 16'hc088;
    LUT4 \CPU.opcode_0__bdd_4_lut_25038  (.A(\CPU.opcode[5] ), .B(\CPU.opcode [1]), 
         .C(\CPU.opcode[6] ), .D(\CPU.opcode [4]), .Z(n36130)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A ((D)+!C))) */ ;
    defparam \CPU.opcode_0__bdd_4_lut_25038 .init = 16'h2050;
    LUT4 i2_4_lut_adj_290 (.A(reg_L[5]), .B(n71), .C(n32480), .D(\CPU.state[3] ), 
         .Z(n42_adj_1291)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_290.init = 16'h3022;
    LUT4 i22957_4_lut (.A(n1520[5]), .B(n31643), .C(reg_L[5]), .D(n33557), 
         .Z(n32480)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22957_4_lut.init = 16'hc088;
    LUT4 i14591_4_lut (.A(\CPU.state[2] ), .B(reg_IX[3]), .C(cpu_data_in[3]), 
         .D(DS_N_933), .Z(n35_adj_1292)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14591_4_lut.init = 16'h0511;
    LUT4 i14897_4_lut (.A(cpu_data_in[5]), .B(n12385), .C(reg_L[5]), .D(n13645), 
         .Z(n1520[5])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14897_4_lut.init = 16'hc088;
    LUT4 i23118_3_lut (.A(n11063[3]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32294)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23118_3_lut.init = 16'h4c4c;
    LUT4 i14612_2_lut (.A(\CPU.state[2] ), .B(reg_IX[8]), .Z(n35_adj_1293)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14612_2_lut.init = 16'h1111;
    LUT4 \CPU.opcode_0__bdd_4_lut_25039  (.A(\CPU.opcode [0]), .B(\CPU.opcode [3]), 
         .C(\CPU.opcode [2]), .D(n36130), .Z(n36131)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam \CPU.opcode_0__bdd_4_lut_25039 .init = 16'h2000;
    LUT4 i23351_3_lut (.A(n11063[8]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32307)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23351_3_lut.init = 16'h4c4c;
    LUT4 i2_4_lut_adj_291 (.A(reg_L[4]), .B(n71), .C(n32477), .D(\CPU.state[3] ), 
         .Z(n42_adj_1294)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_291.init = 16'h3022;
    LUT4 prog_data_5__bdd_4_lut (.A(prog_data[3]), .B(prog_data[2]), .C(prog_data[1]), 
         .D(prog_data[0]), .Z(n40462)) /* synthesis lut_function=(!((B (C+(D))+!B ((D)+!C))+!A)) */ ;
    defparam prog_data_5__bdd_4_lut.init = 16'h0028;
    LUT4 i14687_4_lut (.A(\CPU.state[2] ), .B(reg_IX[2]), .C(cpu_data_in[2]), 
         .D(DS_N_933), .Z(n35_adj_1295)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14687_4_lut.init = 16'h0511;
    LUT4 i23289_2_lut (.A(reg_A[5]), .B(prog_data[4]), .Z(n32857)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i23289_2_lut.init = 16'h8888;
    LUT4 i22959_4_lut (.A(n1520[4]), .B(n31643), .C(reg_L[4]), .D(n33557), 
         .Z(n32477)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22959_4_lut.init = 16'hc088;
    LUT4 i22883_3_lut (.A(n11063[2]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32335)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22883_3_lut.init = 16'h4c4c;
    LUT4 i14896_4_lut (.A(cpu_data_in[4]), .B(n12385), .C(reg_L[4]), .D(n13645), 
         .Z(n1520[4])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14896_4_lut.init = 16'hc088;
    LUT4 i14685_4_lut (.A(\CPU.state[2] ), .B(reg_IX[7]), .C(cpu_data_in[7]), 
         .D(DS_N_933), .Z(n35_adj_1296)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14685_4_lut.init = 16'h0511;
    LUT4 i22899_3_lut (.A(n11063[7]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32349)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22899_3_lut.init = 16'h4c4c;
    LUT4 i14715_4_lut (.A(\CPU.state[2] ), .B(reg_IX[6]), .C(cpu_data_in[6]), 
         .D(DS_N_933), .Z(n35_adj_1297)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14715_4_lut.init = 16'h0511;
    LUT4 i22081_3_lut (.A(n34529), .B(n32195), .C(n24930), .Z(n32196)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i22081_3_lut.init = 16'hacac;
    LUT4 i22905_3_lut (.A(n11063[6]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32363)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22905_3_lut.init = 16'h4c4c;
    PFUMX i91_adj_292 (.BLUT(n32389), .ALUT(n35_adj_1298), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1173));
    LUT4 i2_4_lut_adj_293 (.A(reg_L[3]), .B(n71), .C(n32474), .D(\CPU.state[3] ), 
         .Z(n42_adj_1299)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_293.init = 16'h3022;
    PFUMX mux_3188_i1 (.BLUT(n9485[0]), .ALUT(n32387), .C0(n9513), .Z(n9514[0]));
    LUT4 i22960_4_lut (.A(n1520[3]), .B(n31643), .C(reg_L[3]), .D(n33557), 
         .Z(n32474)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22960_4_lut.init = 16'hc088;
    LUT4 prog_data_5__bdd_3_lut (.A(prog_data[5]), .B(prog_data[4]), .C(n40462), 
         .Z(n20676)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam prog_data_5__bdd_3_lut.init = 16'h4040;
    LUT4 i14730_4_lut (.A(\CPU.state[2] ), .B(reg_IX[1]), .C(cpu_data_in[1]), 
         .D(DS_N_933), .Z(n35_adj_1300)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14730_4_lut.init = 16'h0511;
    LUT4 i22908_3_lut (.A(n11063[1]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32365)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22908_3_lut.init = 16'h4c4c;
    PFUMX i91_adj_294 (.BLUT(n32365), .ALUT(n35_adj_1300), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1140));
    LUT4 i14895_4_lut (.A(cpu_data_in[3]), .B(n12385), .C(reg_L[3]), .D(n13645), 
         .Z(n1520[3])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14895_4_lut.init = 16'hc088;
    LUT4 i22889_2_lut (.A(ram_out[0]), .B(n25429), .Z(n32387)) /* synthesis lut_function=(A (B)) */ ;
    defparam i22889_2_lut.init = 16'h8888;
    LUT4 mux_3183_i1_4_lut (.A(n946[0]), .B(n32384), .C(n9484), .D(n16823), 
         .Z(n9485[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3183_i1_4_lut.init = 16'hca0a;
    LUT4 i14749_4_lut (.A(\CPU.state[2] ), .B(reg_IX[5]), .C(cpu_data_in[5]), 
         .D(DS_N_933), .Z(n35_adj_1298)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14749_4_lut.init = 16'h0511;
    LUT4 i2_4_lut_adj_295 (.A(reg_L[2]), .B(n71), .C(n32471), .D(\CPU.state[3] ), 
         .Z(n42_adj_1301)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_295.init = 16'h3022;
    PFUMX i91_adj_296 (.BLUT(n32363), .ALUT(n35_adj_1297), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1184));
    LUT4 i22922_3_lut (.A(n11063[5]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32389)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22922_3_lut.init = 16'h4c4c;
    LUT4 i22963_4_lut (.A(n1520[2]), .B(n31643), .C(reg_L[2]), .D(n33557), 
         .Z(n32471)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22963_4_lut.init = 16'hc088;
    LUT4 i14894_4_lut (.A(cpu_data_in[2]), .B(n12385), .C(reg_L[2]), .D(n13645), 
         .Z(n1520[2])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14894_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_297 (.A(n55_adj_1302), .B(n58), .C(n24573), .D(n4_adj_1004), 
         .Z(n64)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_297.init = 16'hce0a;
    LUT4 i83_4_lut (.A(n36899), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .D(prog_data[6]), .Z(n55_adj_1302)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i83_4_lut.init = 16'h3c1c;
    LUT4 i84_3_lut (.A(n31701), .B(\CPU.state[3] ), .C(\CPU.state[2] ), 
         .Z(n58)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i84_3_lut.init = 16'h2c2c;
    LUT4 i1_2_lut_adj_298 (.A(\CPU.state[3] ), .B(\CPU.state [7]), .Z(n31746)) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_2_lut_adj_298.init = 16'heeee;
    LUT4 i4_4_lut_adj_299 (.A(\CPU.state [5]), .B(\CPU.state [7]), .C(n10_adj_1049), 
         .D(n6_adj_1303), .Z(WR_N_916)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i4_4_lut_adj_299.init = 16'h0200;
    PFUMX i91_adj_300 (.BLUT(n32349), .ALUT(n35_adj_1296), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1206));
    PFUMX i91_adj_301 (.BLUT(n32335), .ALUT(n35_adj_1295), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1149));
    LUT4 i2_4_lut_adj_302 (.A(reg_L[1]), .B(n71), .C(n32468), .D(\CPU.state[3] ), 
         .Z(n42_adj_1304)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_302.init = 16'h3022;
    LUT4 i22999_4_lut (.A(n1520[1]), .B(n31643), .C(reg_L[1]), .D(n33557), 
         .Z(n32468)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22999_4_lut.init = 16'hc088;
    PFUMX i91_adj_303 (.BLUT(n32307), .ALUT(n35_adj_1293), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1212));
    LUT4 i14893_4_lut (.A(cpu_data_in[1]), .B(n12385), .C(reg_L[1]), .D(n13645), 
         .Z(n1520[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14893_4_lut.init = 16'hc088;
    LUT4 i14765_4_lut (.A(\CPU.state[2] ), .B(reg_IX[0]), .C(cpu_data_in[0]), 
         .D(DS_N_933), .Z(n35_adj_1288)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14765_4_lut.init = 16'h0511;
    LUT4 i22925_3_lut (.A(n11063[0]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32410)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22925_3_lut.init = 16'h4c4c;
    PFUMX i91_adj_304 (.BLUT(n32294), .ALUT(n35_adj_1292), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1155));
    LUT4 i2_4_lut_adj_305 (.A(reg_H[7]), .B(n71), .C(n32325), .D(\CPU.state[3] ), 
         .Z(n42_adj_1305)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_305.init = 16'h3022;
    LUT4 i22809_4_lut (.A(n1511[7]), .B(n31643), .C(reg_H[7]), .D(n33557), 
         .Z(n32325)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22809_4_lut.init = 16'hc088;
    LUT4 i14915_4_lut (.A(reg_H[7]), .B(n12385), .C(cpu_data_in[7]), .D(n13650), 
         .Z(n1511[7])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14915_4_lut.init = 16'hc088;
    LUT4 i22924_4_lut (.A(prog_addr[3]), .B(n13096), .C(n1851[3]), .D(\CPU.opcode[5] ), 
         .Z(n32411)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22924_4_lut.init = 16'hc088;
    LUT4 i22072_3_lut (.A(n34520), .B(n32186), .C(n24930), .Z(n32187)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i22072_3_lut.init = 16'hacac;
    LUT4 i2_4_lut_adj_306 (.A(reg_H[6]), .B(n71), .C(n32352), .D(\CPU.state[3] ), 
         .Z(n42_adj_1306)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_306.init = 16'h3022;
    LUT4 i23303_4_lut (.A(n1511[6]), .B(n31643), .C(reg_H[6]), .D(n33557), 
         .Z(n32352)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23303_4_lut.init = 16'hc088;
    LUT4 i14914_4_lut (.A(reg_H[6]), .B(n12385), .C(cpu_data_in[6]), .D(n13650), 
         .Z(n1511[6])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14914_4_lut.init = 16'hc088;
    LUT4 reg_H_0__bdd_3_lut_24261 (.A(reg_H[0]), .B(alu_out[0]), .C(n18280), 
         .Z(n34820)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_H_0__bdd_3_lut_24261.init = 16'hcaca;
    LUT4 reg_H_0__bdd_3_lut_24262 (.A(prog_data[2]), .B(prog_addr[8]), .C(reg_SP[8]), 
         .Z(n34821)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam reg_H_0__bdd_3_lut_24262.init = 16'hd8d8;
    LUT4 mux_4796_i4_4_lut (.A(n13789), .B(n63_adj_1240), .C(\CPU.state[0] ), 
         .D(n11092), .Z(n14373[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_4796_i4_4_lut.init = 16'hcac0;
    LUT4 i2_4_lut_adj_307 (.A(reg_H[5]), .B(n71), .C(n32366), .D(\CPU.state[3] ), 
         .Z(n42_adj_1307)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_307.init = 16'h3022;
    LUT4 i22907_4_lut (.A(n1511[5]), .B(n31643), .C(reg_H[5]), .D(n33557), 
         .Z(n32366)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22907_4_lut.init = 16'hc088;
    LUT4 i14774_4_lut (.A(\CPU.state[2] ), .B(reg_IX[4]), .C(cpu_data_in[4]), 
         .D(DS_N_933), .Z(n35_adj_1278)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14774_4_lut.init = 16'h0511;
    LUT4 i14913_4_lut (.A(reg_H[5]), .B(n12385), .C(cpu_data_in[5]), .D(n13650), 
         .Z(n1511[5])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14913_4_lut.init = 16'hc088;
    LUT4 i2_4_lut_adj_308 (.A(\CPU.state[2] ), .B(\CPU.state [5]), .C(\CPU.state[3] ), 
         .D(\CPU.state[0] ), .Z(n54)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_308.init = 16'h0012;
    LUT4 reg_H_0__bdd_3_lut_24306 (.A(reg_H[0]), .B(n34821), .C(n20676), 
         .Z(n34822)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_H_0__bdd_3_lut_24306.init = 16'hcaca;
    LUT4 i1_2_lut_adj_309 (.A(n9_adj_1061), .B(n20152), .Z(n6_adj_1303)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_309.init = 16'h4444;
    LUT4 reg_L_0__bdd_4_lut_24333 (.A(reg_L[0]), .B(alu_out[0]), .C(n5_adj_1241), 
         .D(n6_adj_1308), .Z(n34824)) /* synthesis lut_function=(A (B+(C+(D)))+!A !((C+(D))+!B)) */ ;
    defparam reg_L_0__bdd_4_lut_24333.init = 16'haaac;
    LUT4 i2_4_lut_adj_310 (.A(reg_H[4]), .B(n71), .C(n32379), .D(\CPU.state[3] ), 
         .Z(n42_adj_1309)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_310.init = 16'h3022;
    LUT4 mux_1303_Mux_1_i63_3_lut (.A(reg_IY[1]), .B(n62), .C(n20690), 
         .Z(n6952[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_1_i63_3_lut.init = 16'hcaca;
    LUT4 i22028_3_lut (.A(n1837[3]), .B(n1539[3]), .C(n15184), .Z(n32143)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22028_3_lut.init = 16'hcaca;
    LUT4 i22847_4_lut (.A(n1511[4]), .B(n31643), .C(reg_H[4]), .D(n33557), 
         .Z(n32379)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22847_4_lut.init = 16'hc088;
    PFUMX i91_adj_311 (.BLUT(n32282), .ALUT(n35_adj_1287), .C0(\CPU.state[3] ), 
          .Z(n62_adj_1226));
    PFUMX mux_4796_i3 (.BLUT(n32616), .ALUT(n63_adj_1285), .C0(\CPU.state[0] ), 
          .Z(n14373[2]));
    LUT4 i14912_4_lut (.A(reg_H[4]), .B(n12385), .C(cpu_data_in[4]), .D(n13650), 
         .Z(n1511[4])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14912_4_lut.init = 16'hc088;
    LUT4 reg_L_0__bdd_3_lut_24265 (.A(prog_data[2]), .B(prog_addr[0]), .C(reg_SP[0]), 
         .Z(n34825)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam reg_L_0__bdd_3_lut_24265.init = 16'hd8d8;
    LUT4 reg_L_0__bdd_3_lut_24334 (.A(reg_L[0]), .B(n34825), .C(n20676), 
         .Z(n34826)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_L_0__bdd_3_lut_24334.init = 16'hcaca;
    PFUMX mux_4796_i2 (.BLUT(n32615), .ALUT(n63_adj_1283), .C0(\CPU.state[0] ), 
          .Z(n14373[1]));
    LUT4 i2_4_lut_adj_312 (.A(reg_H[3]), .B(n71), .C(n32412), .D(\CPU.state[3] ), 
         .Z(n42_adj_1310)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_312.init = 16'h3022;
    LUT4 i23158_4_lut (.A(n1511[3]), .B(n31643), .C(reg_H[3]), .D(n33557), 
         .Z(n32412)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23158_4_lut.init = 16'hc088;
    LUT4 i14911_4_lut (.A(reg_H[3]), .B(n12385), .C(cpu_data_in[3]), .D(n13650), 
         .Z(n1511[3])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14911_4_lut.init = 16'hc088;
    LUT4 i22927_3_lut (.A(n11063[4]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32423)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22927_3_lut.init = 16'h4c4c;
    LUT4 i2_4_lut_adj_313 (.A(reg_H[2]), .B(n71), .C(n32283), .D(\CPU.state[3] ), 
         .Z(n42_adj_1311)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_313.init = 16'h3022;
    LUT4 i22026_3_lut (.A(n9205[4]), .B(n1916[4]), .C(n15184), .Z(n32141)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22026_3_lut.init = 16'hcaca;
    PFUMX i25029 (.BLUT(n35_adj_1275), .ALUT(n36119), .C0(\CPU.state[0] ), 
          .Z(n36120));
    LUT4 i22816_4_lut (.A(n1511[2]), .B(n31643), .C(reg_H[2]), .D(n33557), 
         .Z(n32283)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22816_4_lut.init = 16'hc088;
    LUT4 i14910_4_lut (.A(reg_H[2]), .B(n12385), .C(cpu_data_in[2]), .D(n13650), 
         .Z(n1511[2])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14910_4_lut.init = 16'hc088;
    LUT4 i3_4_lut_adj_314 (.A(prog_data[0]), .B(prog_data[6]), .C(prog_data[5]), 
         .D(n19419), .Z(n13_adj_1037)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(615[12:19])
    defparam i3_4_lut_adj_314.init = 16'hffef;
    LUT4 reg_H_1__bdd_3_lut_24270 (.A(reg_H[1]), .B(alu_out[1]), .C(n18280), 
         .Z(n34837)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_H_1__bdd_3_lut_24270.init = 16'hcaca;
    PFUMX i25027 (.BLUT(n36117), .ALUT(n36116), .C0(prog_data[3]), .Z(n36118));
    LUT4 mux_4133_i1_4_lut (.A(WR_N_916), .B(n13216[0]), .C(n36), .D(n25531), 
         .Z(DS_N_928)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam mux_4133_i1_4_lut.init = 16'haaca;
    LUT4 mux_4131_i1_4_lut (.A(n25581), .B(n32417), .C(n12_adj_1312), 
         .D(n25541), .Z(n13216[0])) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam mux_4131_i1_4_lut.init = 16'haaca;
    LUT4 i90_3_lut_adj_315 (.A(n6952[2]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1271)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_315.init = 16'h1c1c;
    LUT4 reg_H_1__bdd_3_lut_24271 (.A(prog_data[2]), .B(prog_addr[9]), .C(reg_SP[9]), 
         .Z(n34838)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam reg_H_1__bdd_3_lut_24271.init = 16'hd8d8;
    PFUMX i19 (.BLUT(n32592), .ALUT(n32593), .C0(n9513), .Z(n20192));
    LUT4 reg_H_1__bdd_3_lut_24539 (.A(reg_H[1]), .B(n34838), .C(n20676), 
         .Z(n34839)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_H_1__bdd_3_lut_24539.init = 16'hcaca;
    LUT4 i22025_3_lut (.A(n1837[4]), .B(n1539[4]), .C(n15184), .Z(n32140)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22025_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_316 (.A(reg_H[1]), .B(n71), .C(n32295), .D(\CPU.state[3] ), 
         .Z(n42_adj_1313)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_316.init = 16'h3022;
    LUT4 i14776_2_lut (.A(\CPU.state[2] ), .B(reg_IX[10]), .Z(n35_adj_1274)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14776_2_lut.init = 16'h1111;
    LUT4 i23279_3_lut (.A(n11063[10]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32427)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23279_3_lut.init = 16'h4c4c;
    LUT4 i22831_4_lut (.A(n1511[1]), .B(n31643), .C(reg_H[1]), .D(n33557), 
         .Z(n32295)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22831_4_lut.init = 16'hc088;
    LUT4 i14778_4_lut (.A(\CPU.state[2] ), .B(cpu_data_in[0]), .C(reg_IY[0]), 
         .D(n15391), .Z(n35_adj_1272)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14778_4_lut.init = 16'h0511;
    LUT4 i23168_4_lut (.A(n37056), .B(n31680), .C(n7453), .D(prog_data[5]), 
         .Z(n32417)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23168_4_lut.init = 16'h0c88;
    LUT4 i23283_3_lut (.A(n11250[0]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32431)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23283_3_lut.init = 16'h4c4c;
    LUT4 i14909_4_lut (.A(reg_H[1]), .B(n12385), .C(cpu_data_in[1]), .D(n13650), 
         .Z(n1511[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14909_4_lut.init = 16'hc088;
    LUT4 i6_4_lut_adj_317 (.A(reg_SP[5]), .B(n12_adj_1314), .C(n32011), 
         .D(reg_SP[4]), .Z(CK_keep_enable_128)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i6_4_lut_adj_317.init = 16'h0800;
    LUT4 i5_4_lut_adj_318 (.A(reg_SP[9]), .B(reg_SP[7]), .C(reg_SP[6]), 
         .D(reg_SP[8]), .Z(n12_adj_1314)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut_adj_318.init = 16'h8000;
    LUT4 i14780_4_lut (.A(\CPU.state[2] ), .B(cpu_data_in[1]), .C(reg_IY[1]), 
         .D(n15391), .Z(n35_adj_1267)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14780_4_lut.init = 16'h0511;
    LUT4 i21898_4_lut (.A(reg_SP[10]), .B(reg_SP[3]), .C(reg_SP[2]), .D(n31904), 
         .Z(n32011)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i21898_4_lut.init = 16'hfffe;
    LUT4 i21795_2_lut (.A(reg_SP[1]), .B(reg_SP[0]), .Z(n31904)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i21795_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_319 (.A(\CPU.state[0] ), .B(prog_data[6]), .Z(n31680)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_2_lut_adj_319.init = 16'h2222;
    LUT4 i26_2_lut (.A(\CPU.state[0] ), .B(\CPU.state[1] ), .Z(n12_adj_1312)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i26_2_lut.init = 16'h6666;
    LUT4 reg_L_1__bdd_3_lut_24275 (.A(prog_data[2]), .B(prog_addr[1]), .C(reg_SP[1]), 
         .Z(n34842)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam reg_L_1__bdd_3_lut_24275.init = 16'hd8d8;
    LUT4 reg_L_1__bdd_3_lut_24527 (.A(reg_L[1]), .B(n34842), .C(n20676), 
         .Z(n34843)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_L_1__bdd_3_lut_24527.init = 16'hcaca;
    LUT4 i23413_2_lut (.A(n18885), .B(prog_data[0]), .Z(n32802)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23413_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_adj_320 (.A(TP2_c), .B(n3376), .C(n13_adj_1315), .Z(CK_keep_enable_64)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_320.init = 16'h0404;
    LUT4 i1_2_lut_4_lut_adj_321 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_L[2]), .Z(n45_adj_1216)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_321.init = 16'hec00;
    PFUMX mux_4796_i1 (.BLUT(n32329), .ALUT(n20533), .C0(\CPU.state[0] ), 
          .Z(n14373[0]));
    LUT4 reg_H_2__bdd_3_lut_24278 (.A(reg_H[2]), .B(alu_out[2]), .C(n18280), 
         .Z(n34845)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_H_2__bdd_3_lut_24278.init = 16'hcaca;
    LUT4 i3_4_lut_adj_322 (.A(\CPU.state[0] ), .B(n12_adj_1063), .C(\CPU.state[1] ), 
         .D(\CPU.state[2] ), .Z(n13_adj_1315)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(825[11:37])
    defparam i3_4_lut_adj_322.init = 16'hffef;
    LUT4 i3_4_lut_adj_323 (.A(\CPU.state[2] ), .B(\CPU.state[0] ), .C(n12_adj_1063), 
         .D(n31850), .Z(CK_keep_enable_71)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_323.init = 16'h0002;
    LUT4 i23864_2_lut (.A(n13_adj_1315), .B(TP2_c), .Z(CK_keep_enable_91)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i23864_2_lut.init = 16'h2222;
    LUT4 reg_H_2__bdd_3_lut_24279 (.A(prog_data[2]), .B(prog_addr[10]), 
         .C(reg_SP[10]), .Z(n34846)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam reg_H_2__bdd_3_lut_24279.init = 16'hd8d8;
    LUT4 i23772_4_lut (.A(reg_IY[0]), .B(n68_adj_1316), .C(n65), .D(n25463), 
         .Z(n57)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23772_4_lut.init = 16'haf23;
    LUT4 i1_4_lut_adj_324 (.A(n59_adj_1317), .B(n62_adj_1273), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1316)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_324.init = 16'hce0a;
    LUT4 i22023_3_lut (.A(n9205[5]), .B(n1916[5]), .C(n15184), .Z(n32138)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22023_3_lut.init = 16'hcaca;
    LUT4 i90_3_lut_adj_325 (.A(n6952[0]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1317)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_325.init = 16'h1c1c;
    LUT4 mux_1303_Mux_0_i63_3_lut (.A(reg_IY[0]), .B(n62_adj_1318), .C(n20690), 
         .Z(n6952[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_0_i63_3_lut.init = 16'hcaca;
    LUT4 mux_1303_Mux_0_i62_3_lut (.A(n6928[0]), .B(n6940[0]), .C(prog_data[5]), 
         .Z(n62_adj_1318)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_0_i62_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_326 (.A(\CPU.opcode [4]), .B(\CPU.opcode [0]), .Z(n11_adj_1051)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(828[5] 861[14])
    defparam i1_2_lut_adj_326.init = 16'h4444;
    LUT4 mux_3789_i8_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n8_adj_1056), 
         .C(cpu_data_in[7]), .D(reg_B[7]), .Z(n11921[7])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3789_i8_3_lut_4_lut.init = 16'hfd20;
    LUT4 i23155_3_lut (.A(n11250[1]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32436)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23155_3_lut.init = 16'h4c4c;
    LUT4 mux_3789_i7_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n8_adj_1056), 
         .C(cpu_data_in[6]), .D(reg_B[6]), .Z(n11921[6])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3789_i7_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_3789_i6_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n8_adj_1056), 
         .C(cpu_data_in[5]), .D(reg_B[5]), .Z(n11921[5])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3789_i6_3_lut_4_lut.init = 16'hfd20;
    LUT4 i14782_4_lut (.A(\CPU.state[2] ), .B(cpu_data_in[2]), .C(reg_IY[2]), 
         .D(n15391), .Z(n35_adj_1264)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14782_4_lut.init = 16'h0511;
    LUT4 i2_4_lut_adj_327 (.A(n20115), .B(\CPU.state [7]), .C(\CPU.state[2] ), 
         .D(\CPU.state[0] ), .Z(n20123)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut_adj_327.init = 16'hfeee;
    LUT4 reg_H_2__bdd_3_lut_24506 (.A(reg_H[2]), .B(n34846), .C(n20676), 
         .Z(n34847)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_H_2__bdd_3_lut_24506.init = 16'hcaca;
    LUT4 i1_2_lut_adj_328 (.A(\CPU.state[0] ), .B(n13713), .Z(n19977)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_328.init = 16'h4444;
    LUT4 i23138_2_lut (.A(\CPU.opcode [1]), .B(prog_data[4]), .Z(n32643)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23138_2_lut.init = 16'h4444;
    LUT4 i23763_4_lut (.A(reg_IX[0]), .B(n68_adj_1319), .C(n65), .D(n25463), 
         .Z(n57_adj_1002)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23763_4_lut.init = 16'haf23;
    LUT4 i23160_3_lut (.A(n11250[2]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32440)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23160_3_lut.init = 16'h4c4c;
    LUT4 equal_318_i9_2_lut_3_lut (.A(\CPU.opcode [1]), .B(\CPU.opcode [2]), 
         .C(\CPU.opcode [0]), .Z(n9)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(971[10:17])
    defparam equal_318_i9_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i1_4_lut_adj_329 (.A(n59_adj_1320), .B(n62_adj_1289), .C(n24573), 
         .D(n4_adj_1004), .Z(n68_adj_1319)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i1_4_lut_adj_329.init = 16'hce0a;
    LUT4 i90_3_lut_adj_330 (.A(n6916[0]), .B(\CPU.state[1] ), .C(\CPU.state[0] ), 
         .Z(n59_adj_1320)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i90_3_lut_adj_330.init = 16'h1c1c;
    LUT4 mux_1300_Mux_0_i63_3_lut (.A(reg_IX[0]), .B(n62_adj_1321), .C(n31856), 
         .Z(n6916[0])) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_0_i63_3_lut.init = 16'hacac;
    LUT4 \CPU_ALU.result_8__N_644_8__bdd_4_lut_25200  (.A(n126_adj_1068), 
         .B(n126), .C(alu_ctrl[1]), .D(alu_ctrl[0]), .Z(n36408)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C (D)))) */ ;
    defparam \CPU_ALU.result_8__N_644_8__bdd_4_lut_25200 .init = 16'hcaa0;
    LUT4 i14784_4_lut (.A(\CPU.state[2] ), .B(cpu_data_in[3]), .C(reg_IY[3]), 
         .D(n15391), .Z(n35_adj_1263)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14784_4_lut.init = 16'h0511;
    LUT4 i22934_3_lut (.A(n11250[3]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32442)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22934_3_lut.init = 16'h4c4c;
    LUT4 alu_in_x_7__I_0_i3_2_lut (.A(alu_in_x[2]), .B(alu_in_y[2]), .Z(\CPU_ALU.result_8__N_609 [2])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(316[6:47])
    defparam alu_in_x_7__I_0_i3_2_lut.init = 16'h8888;
    LUT4 alu_in_x_7__I_0_725_i3_2_lut (.A(alu_in_x[2]), .B(alu_in_y[2]), 
         .Z(\CPU_ALU.result_8__N_601 [2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(304[6:47])
    defparam alu_in_x_7__I_0_725_i3_2_lut.init = 16'h6666;
    LUT4 alu_in_x_7__I_0_726_i3_2_lut (.A(alu_in_x[2]), .B(alu_in_y[2]), 
         .Z(\CPU_ALU.result_8__N_593 [2])) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(310[6:47])
    defparam alu_in_x_7__I_0_726_i3_2_lut.init = 16'heeee;
    LUT4 mux_1300_Mux_0_i62_4_lut (.A(reg_IX[0]), .B(n61_adj_1322), .C(prog_data[5]), 
         .D(prog_data[0]), .Z(n62_adj_1321)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1300_Mux_0_i62_4_lut.init = 16'hc5ca;
    LUT4 i23137_2_lut (.A(\CPU.opcode [1]), .B(prog_data[3]), .Z(n32642)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23137_2_lut.init = 16'h4444;
    PFUMX i87 (.BLUT(n49), .ALUT(n32800), .C0(\CPU.state[1] ), .Z(n52));
    PFUMX i60 (.BLUT(n43_adj_1276), .ALUT(n32791), .C0(\CPU.state[0] ), 
          .Z(n46));
    PFUMX prog_data_6__I_0_727_Mux_1_i125 (.BLUT(n32612), .ALUT(n32613), 
          .C0(n3379), .Z(n125_adj_1323)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    LUT4 i22022_3_lut (.A(n1837[5]), .B(n1539[5]), .C(n15184), .Z(n32137)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22022_3_lut.init = 16'hcaca;
    PFUMX prog_data_6__I_0_727_Mux_2_i125 (.BLUT(n32607), .ALUT(n32608), 
          .C0(n3379), .Z(n125_adj_1324)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    LUT4 i23751_4_lut (.A(n31572), .B(n18_adj_1047), .C(n54_adj_1325), 
         .D(n24573), .Z(\CPU.state_7__N_693 [0])) /* synthesis lut_function=(A (B)+!A (B+((D)+!C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23751_4_lut.init = 16'hddcd;
    LUT4 reg_L_2__bdd_3_lut_24283 (.A(prog_data[2]), .B(prog_addr[2]), .C(reg_SP[2]), 
         .Z(n34850)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam reg_L_2__bdd_3_lut_24283.init = 16'hd8d8;
    PFUMX prog_data_6__I_0_727_Mux_3_i125 (.BLUT(n32602), .ALUT(n32603), 
          .C0(n3379), .Z(n125_adj_1326)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    PFUMX mux_176_Mux_6_i63 (.BLUT(n32855), .ALUT(n32856), .C0(prog_data[5]), 
          .Z(n63_adj_1327)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    LUT4 i23862_4_lut (.A(flag_Z_N_960), .B(n31898), .C(n32823), .D(n13_adj_1030), 
         .Z(CK_keep_enable_98)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam i23862_4_lut.init = 16'h0311;
    PFUMX prog_data_6__I_0_727_Mux_4_i125 (.BLUT(n32597), .ALUT(n32598), 
          .C0(n3379), .Z(n125_adj_1328)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    LUT4 i22901_3_lut (.A(n32825), .B(n22), .C(\CPU.state[0] ), .Z(n32823)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i22901_3_lut.init = 16'hecec;
    LUT4 i22063_3_lut (.A(n34501), .B(n32177), .C(n24930), .Z(n32178)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i22063_3_lut.init = 16'hacac;
    PFUMX prog_data_6__I_0_727_Mux_5_i125 (.BLUT(n32589), .ALUT(n32590), 
          .C0(n3379), .Z(n125_adj_1329)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    PFUMX prog_data_6__I_0_727_Mux_6_i125 (.BLUT(n32584), .ALUT(n32585), 
          .C0(n3379), .Z(n125_adj_1330)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    PFUMX prog_data_6__I_0_727_Mux_7_i125 (.BLUT(n32579), .ALUT(n32580), 
          .C0(n3379), .Z(n125_adj_1160)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    LUT4 i23428_4_lut (.A(n20162), .B(prog_data[6]), .C(prog_data[2]), 
         .D(prog_data[1]), .Z(n32825)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i23428_4_lut.init = 16'hffbf;
    LUT4 i22007_3_lut (.A(n1837[10]), .B(n1539[10]), .C(n15184), .Z(n32122)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22007_3_lut.init = 16'hcaca;
    PFUMX prog_data_6__I_0_727_Mux_0_i125 (.BLUT(n32536), .ALUT(n32537), 
          .C0(n3379), .Z(n125_adj_1157)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    PFUMX prog_data_6__I_0_729_Mux_1_i127 (.BLUT(n63_c), .ALUT(n32533), 
          .C0(n3377), .Z(alu_ctrl[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    LUT4 mux_4438_i1_4_lut (.A(n9782[0]), .B(n12188[0]), .C(n24637), .D(n31602), 
         .Z(n13683)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4438_i1_4_lut.init = 16'haca0;
    LUT4 alu_ctrl_3__I_0_Mux_7_i15_3_lut (.A(n7_adj_1260), .B(n10_adj_1041), 
         .C(alu_ctrl[3]), .Z(alu_out[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam alu_ctrl_3__I_0_Mux_7_i15_3_lut.init = 16'hcaca;
    PFUMX prog_data_6__I_0_729_Mux_2_i127 (.BLUT(n63_adj_1024), .ALUT(n32529), 
          .C0(n3377), .Z(alu_ctrl[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    LUT4 alu_ctrl_3__I_0_Mux_6_i15_3_lut (.A(n7_adj_1331), .B(n10_adj_1135), 
         .C(alu_ctrl[3]), .Z(alu_out[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam alu_ctrl_3__I_0_Mux_6_i15_3_lut.init = 16'hcaca;
    LUT4 reg_L_2__bdd_3_lut_24457 (.A(reg_L[2]), .B(n34850), .C(n20676), 
         .Z(n34851)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_L_2__bdd_3_lut_24457.init = 16'hcaca;
    LUT4 prog_data_6__I_0_727_Mux_5_i126_4_lut (.A(n16600), .B(n125_adj_1329), 
         .C(n3378), .D(n3380), .Z(n126_adj_1045)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_5_i126_4_lut.init = 16'hc0ca;
    LUT4 alu_ctrl_3__I_0_Mux_5_i15_3_lut (.A(n7_adj_1332), .B(n10_adj_1134), 
         .C(alu_ctrl[3]), .Z(alu_out[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam alu_ctrl_3__I_0_Mux_5_i15_3_lut.init = 16'hcaca;
    PFUMX mux_3188_i12 (.BLUT(n9485[11]), .ALUT(n32719), .C0(n9513), .Z(n9514[11]));
    LUT4 i4406_2_lut_3_lut (.A(\CPU.opcode [1]), .B(\CPU.opcode [2]), .C(\CPU.opcode [0]), 
         .Z(n13650)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(971[10:17])
    defparam i4406_2_lut_3_lut.init = 16'h4040;
    LUT4 prog_data_6__I_0_727_Mux_6_i126_4_lut (.A(n16574), .B(n125_adj_1330), 
         .C(n3378), .D(n3380), .Z(n126_adj_1039)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_6_i126_4_lut.init = 16'hc0ca;
    LUT4 i23136_2_lut (.A(\CPU.opcode [1]), .B(prog_data[2]), .Z(n32641)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23136_2_lut.init = 16'h4444;
    LUT4 i23390_2_lut_4_lut (.A(n12_c), .B(n9), .C(n24886), .D(cpu_data_in[5]), 
         .Z(n32740)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;
    defparam i23390_2_lut_4_lut.init = 16'h1500;
    LUT4 i1_2_lut_adj_331 (.A(n11092), .B(\CPU.state[0] ), .Z(n31660)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_331.init = 16'h2222;
    LUT4 n36410_bdd_3_lut (.A(n36410), .B(n36407), .C(alu_ctrl[3]), .Z(\CPU_ALU.result [8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n36410_bdd_3_lut.init = 16'hcaca;
    LUT4 prog_data_6__I_0_727_Mux_4_i126_4_lut (.A(n16636), .B(n125_adj_1328), 
         .C(n3378), .D(n3380), .Z(n126_adj_1036)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_4_i126_4_lut.init = 16'hc0ca;
    LUT4 \CPU_ALU.result_8__I_97_i2_3_lut  (.A(\CPU_ALU.result_8__N_653 [1]), 
         .B(\CPU_ALU.result_8__N_653 [0]), .C(alu_cin), .Z(\CPU_ALU.result_8__N_617 [1])) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(298[4] 299[47])
    defparam \CPU_ALU.result_8__I_97_i2_3_lut .init = 16'h9a9a;
    LUT4 alu_ctrl_3__I_0_Mux_4_i15_3_lut (.A(n7_adj_1261), .B(n10_adj_1117), 
         .C(alu_ctrl[3]), .Z(alu_out[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam alu_ctrl_3__I_0_Mux_4_i15_3_lut.init = 16'hcaca;
    LUT4 reg_L_6__bdd_3_lut_24859 (.A(reg_L[6]), .B(n35112), .C(n20676), 
         .Z(n35113)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_L_6__bdd_3_lut_24859.init = 16'hcaca;
    PFUMX mux_3447_i11 (.BLUT(n32681), .ALUT(n32682), .C0(n10514), .Z(n10528[10]));
    LUT4 reg_H_3__bdd_4_lut_24618 (.A(reg_H[3]), .B(prog_addr[11]), .C(n20676), 
         .D(prog_data[2]), .Z(n34857)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam reg_H_3__bdd_4_lut_24618.init = 16'hca0a;
    LUT4 prog_data_6__I_0_727_Mux_3_i126_4_lut (.A(n16662), .B(n125_adj_1326), 
         .C(n3378), .D(n3380), .Z(n126_adj_1038)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_3_i126_4_lut.init = 16'hc0ca;
    PFUMX mux_3447_i10 (.BLUT(n32679), .ALUT(n32680), .C0(n10514), .Z(n10528[9]));
    LUT4 alu_ctrl_3__I_0_Mux_3_i15_3_lut (.A(n7_adj_1262), .B(n10_adj_1116), 
         .C(alu_ctrl[3]), .Z(alu_out[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam alu_ctrl_3__I_0_Mux_3_i15_3_lut.init = 16'hcaca;
    LUT4 reg_H_3__bdd_3_lut_24619 (.A(reg_H[3]), .B(alu_out[3]), .C(n18280), 
         .Z(n34856)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_H_3__bdd_3_lut_24619.init = 16'hcaca;
    LUT4 prog_data_6__I_0_727_Mux_2_i126_4_lut (.A(n16688), .B(n125_adj_1324), 
         .C(n3378), .D(n3380), .Z(n126_adj_1034)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_2_i126_4_lut.init = 16'hc0ca;
    LUT4 alu_ctrl_3__I_0_Mux_2_i15_3_lut (.A(n7_adj_1333), .B(n10_adj_1115), 
         .C(alu_ctrl[3]), .Z(alu_out[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam alu_ctrl_3__I_0_Mux_2_i15_3_lut.init = 16'hcaca;
    LUT4 prog_data_6__I_0_727_Mux_1_i126_4_lut (.A(n16714), .B(n125_adj_1323), 
         .C(n3378), .D(n3380), .Z(n126_adj_1111)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam prog_data_6__I_0_727_Mux_1_i126_4_lut.init = 16'hc0ca;
    LUT4 alu_ctrl_3__I_0_Mux_1_i15_3_lut (.A(n7_adj_1334), .B(n10_adj_1114), 
         .C(alu_ctrl[3]), .Z(alu_out[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam alu_ctrl_3__I_0_Mux_1_i15_3_lut.init = 16'hcaca;
    LUT4 alu_ctrl_3__I_0_Mux_0_i15_4_lut (.A(n7_adj_1335), .B(n17849), .C(alu_ctrl[3]), 
         .D(alu_in_x[1]), .Z(alu_out[0])) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam alu_ctrl_3__I_0_Mux_0_i15_4_lut.init = 16'h3a0a;
    LUT4 i14703_4_lut (.A(\CPU.state[2] ), .B(\CPU.opcode[5] ), .C(n31692), 
         .D(n44), .Z(n43)) /* synthesis lut_function=(!(A+(B (C)+!B (C (D))))) */ ;
    defparam i14703_4_lut.init = 16'h0515;
    LUT4 i15261_2_lut (.A(reg_A[1]), .B(n19110), .Z(n63_adj_1336)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15261_2_lut.init = 16'h2222;
    LUT4 mux_3002_i8_4_lut (.A(n13632), .B(reg_L[7]), .C(\CPU.state[0] ), 
         .D(n24601), .Z(n9205[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_3002_i8_4_lut.init = 16'hcac0;
    PFUMX i22100 (.BLUT(n32499), .ALUT(n1332[11]), .C0(n15214), .Z(n32215));
    LUT4 i15092_2_lut (.A(n1837[7]), .B(n13096), .Z(n1916[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam i15092_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_adj_332 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_H[2]), .Z(n45_adj_1185)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_332.init = 16'hec00;
    PFUMX i159 (.BLUT(n32396), .ALUT(n32397), .C0(\CPU.state[0] ), .Z(n125_adj_1337));
    PFUMX i76 (.BLUT(n48), .ALUT(n32357), .C0(\CPU.state [4]), .Z(n54_adj_1325));
    LUT4 reg_L_6__bdd_3_lut_24448 (.A(prog_data[2]), .B(prog_addr[6]), .C(reg_SP[6]), 
         .Z(n35112)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam reg_L_6__bdd_3_lut_24448.init = 16'hd8d8;
    LUT4 i23306_2_lut (.A(n32262), .B(n20604), .Z(n32860)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i23306_2_lut.init = 16'h8888;
    LUT4 i23319_4_lut (.A(n31695), .B(\CPU.state[2] ), .C(n25295), .D(n22_adj_1338), 
         .Z(n32348)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C (D))+!B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(394[12:17])
    defparam i23319_4_lut.init = 16'h0c4c;
    LUT4 i15091_2_lut (.A(n1837[6]), .B(n13096), .Z(n1916[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam i15091_2_lut.init = 16'h8888;
    LUT4 \CPU_ALU.result_8__N_644_8__bdd_4_lut_25497  (.A(\CPU_ALU.result_8__N_644 [8]), 
         .B(alu_ctrl[1]), .C(alu_ctrl[0]), .D(n32504), .Z(n36409)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam \CPU_ALU.result_8__N_644_8__bdd_4_lut_25497 .init = 16'h3202;
    PFUMX mux_3188_i11 (.BLUT(n9485[10]), .ALUT(n32718), .C0(n9513), .Z(n9514[10]));
    PFUMX mux_3188_i10 (.BLUT(n9485[9]), .ALUT(n32717), .C0(n9513), .Z(n9514[9]));
    PFUMX mux_3188_i9 (.BLUT(n9485[8]), .ALUT(n32716), .C0(n9513), .Z(n9514[8]));
    LUT4 alu_in_x_7__I_0_i2_2_lut (.A(alu_in_x[1]), .B(alu_in_y[1]), .Z(\CPU_ALU.result_8__N_609 [1])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(316[6:47])
    defparam alu_in_x_7__I_0_i2_2_lut.init = 16'h8888;
    LUT4 i22054_3_lut (.A(n34481), .B(n32168), .C(n24930), .Z(n32169)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i22054_3_lut.init = 16'hacac;
    PFUMX mux_176_Mux_7_i63 (.BLUT(n32851), .ALUT(n32852), .C0(prog_data[5]), 
          .Z(n63_adj_1339)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    PFUMX mux_3447_i9 (.BLUT(n32677), .ALUT(n32678), .C0(n10514), .Z(n10528[8]));
    LUT4 alu_in_x_7__I_0_725_i2_2_lut (.A(alu_in_x[1]), .B(alu_in_y[1]), 
         .Z(\CPU_ALU.result_8__N_601 [1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(304[6:47])
    defparam alu_in_x_7__I_0_725_i2_2_lut.init = 16'h6666;
    LUT4 i23206_2_lut (.A(\CPU.opcode [1]), .B(prog_data[0]), .Z(n32345)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23206_2_lut.init = 16'h4444;
    LUT4 i22019_3_lut (.A(n1837[6]), .B(n1539[6]), .C(n15184), .Z(n32134)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22019_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_333 (.A(n12_c), .B(n9), .C(n24886), .D(cpu_data_in[7]), 
         .Z(n20217)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_333.init = 16'h1500;
    LUT4 alu_in_x_7__I_0_726_i2_2_lut (.A(alu_in_x[1]), .B(alu_in_y[1]), 
         .Z(\CPU_ALU.result_8__N_593 [1])) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(310[6:47])
    defparam alu_in_x_7__I_0_726_i2_2_lut.init = 16'heeee;
    LUT4 i5718_2_lut (.A(\CPU_ALU.result_8__N_653 [0]), .B(alu_cin), .Z(\CPU_ALU.result_8__N_617 [0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(298[4] 299[47])
    defparam i5718_2_lut.init = 16'h6666;
    LUT4 i22965_4_lut (.A(n32345), .B(n13856), .C(n1837[0]), .D(n13673), 
         .Z(n32369)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i22965_4_lut.init = 16'hc088;
    LUT4 alu_in_x_7__I_0_i1_2_lut (.A(alu_in_x[0]), .B(alu_in_y[0]), .Z(\CPU_ALU.result_8__N_609 [0])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(316[6:47])
    defparam alu_in_x_7__I_0_i1_2_lut.init = 16'h8888;
    LUT4 alu_in_x_7__I_0_725_i1_2_lut (.A(alu_in_x[0]), .B(alu_in_y[0]), 
         .Z(\CPU_ALU.result_8__N_601 [0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(304[6:47])
    defparam alu_in_x_7__I_0_725_i1_2_lut.init = 16'h6666;
    PFUMX mux_3447_i8 (.BLUT(n32675), .ALUT(n32676), .C0(n10514), .Z(n10528[7]));
    LUT4 i22051_3_lut (.A(n34462), .B(n32165), .C(n24930), .Z(n32166)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i22051_3_lut.init = 16'hacac;
    PFUMX i6979 (.BLUT(n32610), .ALUT(n85), .C0(n3379), .Z(n16714));
    LUT4 alu_in_x_7__I_0_726_i1_2_lut (.A(alu_in_x[0]), .B(alu_in_y[0]), 
         .Z(\CPU_ALU.result_8__N_593 [0])) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(310[6:47])
    defparam alu_in_x_7__I_0_726_i1_2_lut.init = 16'heeee;
    PFUMX i25617 (.BLUT(n37105), .ALUT(n37106), .C0(n12_adj_1042), .Z(n31701));
    LUT4 n35_bdd_4_lut_25253 (.A(n35_adj_1275), .B(n37095), .C(\CPU.state[0] ), 
         .D(n31735), .Z(n36453)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam n35_bdd_4_lut_25253.init = 16'hca0a;
    LUT4 i4390_2_lut (.A(n13698), .B(n13589), .Z(n13624)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i4390_2_lut.init = 16'h2222;
    LUT4 n36451_bdd_2_lut (.A(n36451), .B(\CPU.opcode[5] ), .Z(n36452)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n36451_bdd_2_lut.init = 16'h2222;
    LUT4 \CPU.opcode_5__bdd_4_lut_25872  (.A(n5_adj_1060), .B(n20040), .C(\CPU.state[0] ), 
         .D(\CPU.state[3] ), .Z(n36451)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam \CPU.opcode_5__bdd_4_lut_25872 .init = 16'h0004;
    PFUMX i6953 (.BLUT(n32605), .ALUT(n85_adj_1250), .C0(n3379), .Z(n16688));
    PFUMX i25615 (.BLUT(n37102), .ALUT(n37103), .C0(prog_data[3]), .Z(n37104));
    PFUMX i6927 (.BLUT(n32600), .ALUT(n85_adj_1251), .C0(n3379), .Z(n16662));
    LUT4 reg_L_3__bdd_3_lut_24289 (.A(prog_data[2]), .B(prog_addr[3]), .C(reg_SP[3]), 
         .Z(n34860)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam reg_L_3__bdd_3_lut_24289.init = 16'hd8d8;
    LUT4 mux_3321_i4_3_lut (.A(reg_E[3]), .B(reg_H[3]), .C(prog_data[0]), 
         .Z(n10205[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(588[6] 602[15])
    defparam mux_3321_i4_3_lut.init = 16'hcaca;
    PFUMX i6901 (.BLUT(n32595), .ALUT(n85_adj_1252), .C0(n3379), .Z(n16636));
    LUT4 mux_3317_i4_3_lut (.A(reg_C[3]), .B(reg_D[3]), .C(prog_data[0]), 
         .Z(n10193[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(588[6] 602[15])
    defparam mux_3317_i4_3_lut.init = 16'hcaca;
    PFUMX i6865 (.BLUT(n32587), .ALUT(n85_adj_1253), .C0(n3379), .Z(n16600));
    PFUMX i6839 (.BLUT(n32582), .ALUT(n85_adj_1254), .C0(n3379), .Z(n16574));
    LUT4 mux_3313_i4_3_lut (.A(reg_A[3]), .B(reg_B[3]), .C(prog_data[0]), 
         .Z(n10181[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(588[6] 602[15])
    defparam mux_3313_i4_3_lut.init = 16'hcaca;
    PFUMX i25613 (.BLUT(n37099), .ALUT(n37100), .C0(\CPU.opcode[5] ), 
          .Z(n37101));
    LUT4 mux_3317_i5_3_lut (.A(reg_C[4]), .B(reg_D[4]), .C(prog_data[0]), 
         .Z(n10193[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(588[6] 602[15])
    defparam mux_3317_i5_3_lut.init = 16'hcaca;
    PFUMX i6813 (.BLUT(n32576), .ALUT(n85_adj_1255), .C0(n3379), .Z(n16548));
    LUT4 mux_3313_i5_3_lut (.A(reg_A[4]), .B(reg_B[4]), .C(prog_data[0]), 
         .Z(n10181[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(588[6] 602[15])
    defparam mux_3313_i5_3_lut.init = 16'hcaca;
    LUT4 reg_L_3__bdd_3_lut_24438 (.A(reg_L[3]), .B(n34860), .C(n20676), 
         .Z(n34861)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_L_3__bdd_3_lut_24438.init = 16'hcaca;
    LUT4 i29_3_lut (.A(\CPU.opcode [1]), .B(\CPU.opcode [4]), .C(\CPU.opcode [2]), 
         .Z(n22_adj_1338)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;
    defparam i29_3_lut.init = 16'h3a3a;
    PFUMX i6561 (.BLUT(n32534), .ALUT(n85_adj_1256), .C0(n3379), .Z(n16288));
    LUT4 mux_3002_i6_4_lut (.A(n13630), .B(reg_L[5]), .C(\CPU.state[0] ), 
         .D(n24601), .Z(n9205[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_3002_i6_4_lut.init = 16'hcac0;
    LUT4 \CPU_ALU.result_8__I_97_i6_3_lut  (.A(\CPU_ALU.result_8__N_653 [5]), 
         .B(n10), .C(alu_cin), .Z(\CPU_ALU.result_8__N_617 [5])) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(298[4] 299[47])
    defparam \CPU_ALU.result_8__I_97_i6_3_lut .init = 16'h9a9a;
    PFUMX i22109 (.BLUT(n32512), .ALUT(n1332[9]), .C0(n15214), .Z(n32224));
    LUT4 i14786_4_lut (.A(\CPU.state[2] ), .B(cpu_data_in[4]), .C(reg_IY[4]), 
         .D(n15391), .Z(n35_adj_1249)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14786_4_lut.init = 16'h0511;
    PFUMX i22103 (.BLUT(n32511), .ALUT(n1332[10]), .C0(n15214), .Z(n32218));
    LUT4 mux_3317_i6_3_lut (.A(reg_C[5]), .B(reg_D[5]), .C(prog_data[0]), 
         .Z(n10193[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(588[6] 602[15])
    defparam mux_3317_i6_3_lut.init = 16'hcaca;
    LUT4 i22155_3_lut (.A(reg_C[0]), .B(reg_D[0]), .C(prog_data[0]), .Z(n32270)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22155_3_lut.init = 16'hcaca;
    LUT4 mux_3313_i6_3_lut (.A(reg_A[5]), .B(reg_B[5]), .C(prog_data[0]), 
         .Z(n10181[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(588[6] 602[15])
    defparam mux_3313_i6_3_lut.init = 16'hcaca;
    LUT4 mux_3317_i7_3_lut (.A(reg_C[6]), .B(reg_D[6]), .C(prog_data[0]), 
         .Z(n10193[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(588[6] 602[15])
    defparam mux_3317_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_334 (.A(n12_c), .B(n9), .C(n24886), .D(cpu_data_in[4]), 
         .Z(n20199)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_334.init = 16'h1500;
    LUT4 mux_3313_i7_3_lut (.A(reg_A[6]), .B(reg_B[6]), .C(prog_data[0]), 
         .Z(n10181[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(588[6] 602[15])
    defparam mux_3313_i7_3_lut.init = 16'hcaca;
    LUT4 i15090_2_lut (.A(n1837[5]), .B(n13096), .Z(n1916[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam i15090_2_lut.init = 16'h8888;
    LUT4 alu_in_x_7__I_0_i6_2_lut (.A(alu_in_x[5]), .B(alu_in_y[5]), .Z(\CPU_ALU.result_8__N_609 [5])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(316[6:47])
    defparam alu_in_x_7__I_0_i6_2_lut.init = 16'h8888;
    LUT4 i22048_3_lut (.A(n34444), .B(n32162), .C(n24930), .Z(n32163)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i22048_3_lut.init = 16'hacac;
    LUT4 alu_in_x_7__I_0_725_i6_2_lut (.A(alu_in_x[5]), .B(alu_in_y[5]), 
         .Z(\CPU_ALU.result_8__N_601 [5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(304[6:47])
    defparam alu_in_x_7__I_0_725_i6_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_335 (.A(flag_Z_N_960), .B(n31898), .C(n32827), .D(n13_adj_1030), 
         .Z(CK_keep_enable_105)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_335.init = 16'h3011;
    LUT4 i23054_4_lut (.A(n32830), .B(n22), .C(\CPU.state[0] ), .D(n31599), 
         .Z(n32827)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;
    defparam i23054_4_lut.init = 16'h2303;
    LUT4 alu_in_x_7__I_0_726_i6_2_lut (.A(alu_in_x[5]), .B(alu_in_y[5]), 
         .Z(\CPU_ALU.result_8__N_593 [5])) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(310[6:47])
    defparam alu_in_x_7__I_0_726_i6_2_lut.init = 16'heeee;
    LUT4 i22838_2_lut (.A(n6_adj_1138), .B(prog_data[1]), .Z(n32830)) /* synthesis lut_function=(A (B)) */ ;
    defparam i22838_2_lut.init = 16'h8888;
    PFUMX i21923 (.BLUT(n32898), .ALUT(n1332[6]), .C0(n15214), .Z(n32038));
    LUT4 mux_4461_i1_4_lut (.A(n9782[0]), .B(n12099[0]), .C(n24637), .D(n31602), 
         .Z(n13723)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4461_i1_4_lut.init = 16'haca0;
    LUT4 equal_447_i8_2_lut (.A(\CPU.opcode [1]), .B(\CPU.opcode [2]), .Z(n8_adj_1056)) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1070[10:17])
    defparam equal_447_i8_2_lut.init = 16'heeee;
    LUT4 i23161_3_lut (.A(n11250[4]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32445)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23161_3_lut.init = 16'h4c4c;
    LUT4 i23295_2_lut (.A(reg_A[4]), .B(prog_data[4]), .Z(n32859)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i23295_2_lut.init = 16'h8888;
    LUT4 alu_in_x_7__I_0_i7_2_lut (.A(alu_in_x[6]), .B(alu_in_y[6]), .Z(\CPU_ALU.result_8__N_609 [6])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(316[6:47])
    defparam alu_in_x_7__I_0_i7_2_lut.init = 16'h8888;
    LUT4 alu_in_x_7__I_0_725_i7_2_lut (.A(alu_in_x[6]), .B(alu_in_y[6]), 
         .Z(\CPU_ALU.result_8__N_601 [6])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(304[6:47])
    defparam alu_in_x_7__I_0_725_i7_2_lut.init = 16'h6666;
    PFUMX i25611 (.BLUT(n37096), .ALUT(n37097), .C0(prog_data[3]), .Z(n18576));
    LUT4 n19575_bdd_3_lut_25435 (.A(n18280), .B(alu_out[7]), .C(reg_H[7]), 
         .Z(n35115)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n19575_bdd_3_lut_25435.init = 16'hd8d8;
    LUT4 i1_2_lut_adj_336 (.A(prog_data[6]), .B(prog_data[2]), .Z(n31599)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_336.init = 16'h2222;
    LUT4 i14788_4_lut (.A(\CPU.state[2] ), .B(cpu_data_in[5]), .C(reg_IY[5]), 
         .D(n15391), .Z(n35_adj_1248)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14788_4_lut.init = 16'h0511;
    LUT4 i23267_3_lut (.A(n11250[5]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32450)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i23267_3_lut.init = 16'h4c4c;
    LUT4 alu_in_x_7__I_0_726_i7_2_lut (.A(alu_in_x[6]), .B(alu_in_y[6]), 
         .Z(\CPU_ALU.result_8__N_593 [6])) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(310[6:47])
    defparam alu_in_x_7__I_0_726_i7_2_lut.init = 16'heeee;
    LUT4 i4417_2_lut (.A(\CPU.opcode [1]), .B(\CPU.opcode [2]), .Z(n13661)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i4417_2_lut.init = 16'h2222;
    LUT4 i23396_2_lut_4_lut (.A(n12_c), .B(n9), .C(n24886), .D(cpu_data_in[6]), 
         .Z(n32745)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;
    defparam i23396_2_lut_4_lut.init = 16'h1500;
    LUT4 mux_3002_i5_4_lut (.A(n13629), .B(reg_L[4]), .C(\CPU.state[0] ), 
         .D(n24601), .Z(n9205[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_3002_i5_4_lut.init = 16'hcac0;
    LUT4 i23199_2_lut (.A(\CPU.opcode [1]), .B(prog_data[1]), .Z(n32640)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23199_2_lut.init = 16'h4444;
    LUT4 i15089_2_lut (.A(n1837[4]), .B(n13096), .Z(n1916[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam i15089_2_lut.init = 16'h8888;
    LUT4 mux_3002_i4_4_lut (.A(n13628), .B(reg_L[3]), .C(\CPU.state[0] ), 
         .D(n24601), .Z(n9205[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_3002_i4_4_lut.init = 16'hcac0;
    LUT4 i15088_2_lut (.A(n1837[3]), .B(n13096), .Z(n1916[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam i15088_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_337 (.A(prog_data[0]), .B(prog_data[5]), .C(n33598), 
         .D(n7), .Z(n19575)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i3_4_lut_adj_337.init = 16'hefff;
    LUT4 n19575_bdd_2_lut_24357 (.A(n19575), .B(reg_H[4]), .Z(n34878)) /* synthesis lut_function=(A (B)) */ ;
    defparam n19575_bdd_2_lut_24357.init = 16'h8888;
    LUT4 i1_2_lut_adj_338 (.A(\CPU.opcode [4]), .B(\CPU.opcode [1]), .Z(n13_adj_1050)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_338.init = 16'h2222;
    LUT4 i23703_2_lut (.A(prog_data[1]), .B(prog_data[2]), .Z(n33598)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i23703_2_lut.init = 16'h6666;
    LUT4 mux_3002_i3_4_lut (.A(n13627), .B(reg_L[2]), .C(\CPU.state[0] ), 
         .D(n24601), .Z(n9205[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_3002_i3_4_lut.init = 16'hcac0;
    LUT4 i15087_2_lut (.A(n1837[2]), .B(n13096), .Z(n1916[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam i15087_2_lut.init = 16'h8888;
    LUT4 mux_3002_i2_4_lut (.A(n13626), .B(reg_L[1]), .C(\CPU.state[0] ), 
         .D(n24601), .Z(n9205[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_3002_i2_4_lut.init = 16'hcac0;
    LUT4 i15086_2_lut (.A(n1837[1]), .B(n13096), .Z(n1916[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam i15086_2_lut.init = 16'h8888;
    PFUMX i24930 (.BLUT(n35902), .ALUT(n35901), .C0(n3380), .Z(n35903));
    LUT4 n19575_bdd_3_lut_24356 (.A(n18280), .B(alu_out[4]), .C(reg_H[4]), 
         .Z(n34877)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n19575_bdd_3_lut_24356.init = 16'hd8d8;
    LUT4 mux_3002_i1_4_lut (.A(n13625), .B(reg_L[0]), .C(\CPU.state[0] ), 
         .D(n24601), .Z(n9205[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_3002_i1_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_4_lut_adj_339 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_H[4]), .Z(n45_adj_1189)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_339.init = 16'hec00;
    PFUMX i24924 (.BLUT(n35890), .ALUT(n35886), .C0(n3378), .Z(n126_adj_1156));
    LUT4 i2_2_lut_3_lut_adj_340 (.A(prog_data[4]), .B(prog_data[5]), .C(n18885), 
         .Z(n6_adj_1308)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i2_2_lut_3_lut_adj_340.init = 16'h9f9f;
    PFUMX i24921 (.BLUT(n35888), .ALUT(n35887), .C0(n3379), .Z(n35889));
    LUT4 i23302_2_lut (.A(n32259), .B(n20604), .Z(n32861)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i23302_2_lut.init = 16'h8888;
    LUT4 i22045_3_lut (.A(n34435), .B(n32159), .C(n24930), .Z(n32160)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i22045_3_lut.init = 16'hacac;
    LUT4 i2_2_lut_3_lut_adj_341 (.A(prog_data[4]), .B(prog_data[5]), .C(n5_adj_1241), 
         .Z(n20162)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i2_2_lut_3_lut_adj_341.init = 16'hf9f9;
    LUT4 n19419_bdd_2_lut_24994 (.A(n19419), .B(prog_data[0]), .Z(n34875)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n19419_bdd_2_lut_24994.init = 16'h4444;
    LUT4 \CPU.state_7__bdd_4_lut_26029  (.A(\CPU.state [7]), .B(n31850), 
         .C(n10_adj_1049), .D(n36606), .Z(CK_keep_enable_5)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam \CPU.state_7__bdd_4_lut_26029 .init = 16'h0100;
    LUT4 i22017_3_lut (.A(n9205[7]), .B(n1916[7]), .C(n15184), .Z(n32132)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22017_3_lut.init = 16'hcaca;
    LUT4 n19419_bdd_2_lut_24294 (.A(n20165), .B(prog_data[1]), .Z(n34874)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam n19419_bdd_2_lut_24294.init = 16'h1111;
    PFUMX mux_3447_i7 (.BLUT(n32673), .ALUT(n32674), .C0(n10514), .Z(n10528[6]));
    LUT4 i14791_4_lut (.A(\CPU.state[2] ), .B(cpu_data_in[6]), .C(reg_IY[6]), 
         .D(n15391), .Z(n35_adj_1243)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14791_4_lut.init = 16'h0511;
    LUT4 i22940_3_lut (.A(n11250[6]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32452)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22940_3_lut.init = 16'h4c4c;
    LUT4 i3_4_lut_adj_342 (.A(TP2_c), .B(\CPU.state[2] ), .C(n25463), 
         .D(n31557), .Z(n19895)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_342.init = 16'hfffe;
    PFUMX i24916 (.BLUT(n35880), .ALUT(n125), .C0(n3378), .Z(n35881));
    LUT4 i2_4_lut_adj_343 (.A(n30), .B(n31546), .C(n125_adj_1337), .D(n25541), 
         .Z(n31557)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;
    defparam i2_4_lut_adj_343.init = 16'hddfd;
    PFUMX i24914 (.BLUT(n35878), .ALUT(n35877), .C0(n3379), .Z(n35879));
    LUT4 n32516_bdd_4_lut (.A(n31816), .B(\CPU.state [5]), .C(n15255), 
         .D(\CPU.state[2] ), .Z(n36605)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam n32516_bdd_4_lut.init = 16'h32c8;
    LUT4 n32516_bdd_4_lut_25319 (.A(n32516), .B(\CPU.state [5]), .C(n15255), 
         .D(\CPU.state[2] ), .Z(n36604)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;
    defparam n32516_bdd_4_lut_25319.init = 16'haaba;
    LUT4 i14793_4_lut (.A(\CPU.state[2] ), .B(cpu_data_in[7]), .C(reg_IY[7]), 
         .D(n15391), .Z(n35_adj_1237)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i14793_4_lut.init = 16'h0511;
    PFUMX mux_3447_i6 (.BLUT(n32671), .ALUT(n32672), .C0(n10514), .Z(n10528[5]));
    LUT4 i22942_3_lut (.A(n11250[7]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32454)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22942_3_lut.init = 16'h4c4c;
    LUT4 i1_2_lut_4_lut_adj_344 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_L[3]), .Z(n45_adj_1219)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_344.init = 16'hec00;
    PFUMX i22115 (.BLUT(n32514), .ALUT(n1332[7]), .C0(n15214), .Z(n32230));
    PFUMX i22112 (.BLUT(n32513), .ALUT(n1332[8]), .C0(n15214), .Z(n32227));
    LUT4 n35_bdd_2_lut_25227_4_lut (.A(n36120), .B(n36115), .C(\CPU.state[1] ), 
         .D(n31958), .Z(CK_keep_enable_8)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n35_bdd_2_lut_25227_4_lut.init = 16'h00ca;
    LUT4 i23859_4_lut (.A(flag_Z_N_960), .B(n31898), .C(n32315), .D(n13_adj_1030), 
         .Z(CK_keep_enable_112)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam i23859_4_lut.init = 16'h0311;
    LUT4 i1_2_lut_4_lut_adj_345 (.A(n12_c), .B(n9), .C(n24886), .D(cpu_data_in[3]), 
         .Z(n20226)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_345.init = 16'h1500;
    LUT4 i22811_4_lut (.A(n32318), .B(n22), .C(\CPU.state[0] ), .D(n19845), 
         .Z(n32315)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i22811_4_lut.init = 16'hfcec;
    LUT4 i23269_2_lut (.A(prog_data[6]), .B(prog_data[2]), .Z(n32318)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i23269_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_4_lut_adj_346 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_H[6]), .Z(n45_adj_1193)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_346.init = 16'hec00;
    LUT4 mux_4562_i1_4_lut (.A(n9782[0]), .B(n12010[0]), .C(n24637), .D(n31602), 
         .Z(n13877)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4562_i1_4_lut.init = 16'haca0;
    LUT4 mux_176_Mux_3_i31_3_lut (.A(prog_addr[11]), .B(reg_A[3]), .C(prog_data[4]), 
         .Z(n31)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_176_Mux_3_i31_3_lut.init = 16'hcaca;
    PFUMX mux_4123_i1 (.BLUT(n33575), .ALUT(n33576), .C0(\CPU.state[2] ), 
          .Z(n25581));
    PFUMX i25609 (.BLUT(n37093), .ALUT(n37094), .C0(prog_data[0]), .Z(n37095));
    LUT4 i1_2_lut_4_lut_adj_347 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_H[1]), .Z(n45_adj_1179)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_347.init = 16'hec00;
    LUT4 i23353_4_lut (.A(cpu_data_in[7]), .B(n31602), .C(reg_A[7]), .D(n9_adj_1044), 
         .Z(n32748)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23353_4_lut.init = 16'hc088;
    LUT4 i22042_3_lut (.A(n34426), .B(n32156), .C(n24930), .Z(n32157)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i22042_3_lut.init = 16'hacac;
    LUT4 i23719_2_lut (.A(\CPU.state[1] ), .B(\CPU.state[0] ), .Z(n4_adj_1004)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i23719_2_lut.init = 16'h1111;
    LUT4 i1_2_lut_4_lut_adj_348 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_L[6]), .Z(n45_adj_1229)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_348.init = 16'hec00;
    LUT4 i14870_2_lut_3_lut (.A(n33369), .B(n3376), .C(reg_B[7]), .Z(n126_adj_1107)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i14870_2_lut_3_lut.init = 16'h7070;
    LUT4 i23065_4_lut (.A(n21[8]), .B(alu_cin), .C(\CPU_ALU.result_8__N_653 [7]), 
         .D(n14), .Z(n32504)) /* synthesis lut_function=(A (B (C+(D)))+!A !((C+(D))+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(289[3] 365[12])
    defparam i23065_4_lut.init = 16'h8884;
    LUT4 i14795_2_lut (.A(\CPU.state[2] ), .B(reg_IY[8]), .Z(n35_adj_1236)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14795_2_lut.init = 16'h1111;
    LUT4 i22944_3_lut (.A(n11250[8]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32456)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22944_3_lut.init = 16'h4c4c;
    LUT4 i2_4_lut_adj_349 (.A(reg_L[0]), .B(n71), .C(n32465), .D(\CPU.state[3] ), 
         .Z(n42_adj_1340)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_349.init = 16'h3022;
    FD1P3JX reg_L_i0_i7 (.D(n42), .SP(CK_keep_enable_130), .PD(n20730), 
            .CK(CK_keep), .Q(reg_L[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_L_i0_i7.GSR = "ENABLED";
    FD1P3JX reg_L_i0_i6 (.D(n42_adj_1290), .SP(CK_keep_enable_130), .PD(n20729), 
            .CK(CK_keep), .Q(reg_L[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_L_i0_i6.GSR = "ENABLED";
    FD1P3JX reg_L_i0_i5 (.D(n42_adj_1291), .SP(CK_keep_enable_130), .PD(n20728), 
            .CK(CK_keep), .Q(reg_L[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_L_i0_i5.GSR = "ENABLED";
    FD1P3JX reg_L_i0_i4 (.D(n42_adj_1294), .SP(CK_keep_enable_130), .PD(n20727), 
            .CK(CK_keep), .Q(reg_L[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_L_i0_i4.GSR = "ENABLED";
    FD1P3JX reg_L_i0_i3 (.D(n42_adj_1299), .SP(CK_keep_enable_130), .PD(n20726), 
            .CK(CK_keep), .Q(reg_L[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_L_i0_i3.GSR = "ENABLED";
    LUT4 i22985_4_lut (.A(n1520[0]), .B(n31643), .C(reg_L[0]), .D(n33557), 
         .Z(n32465)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22985_4_lut.init = 16'hc088;
    LUT4 i14566_2_lut (.A(\CPU.state [5]), .B(\CPU.state [4]), .Z(n24642)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14566_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_350 (.A(prog_data[1]), .B(n20162), .Z(n19845)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_350.init = 16'hdddd;
    PFUMX i21953 (.BLUT(n32309), .ALUT(n1332[0]), .C0(n15214), .Z(n32068));
    FD1P3JX reg_L_i0_i2 (.D(n42_adj_1301), .SP(CK_keep_enable_130), .PD(n20725), 
            .CK(CK_keep), .Q(reg_L[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_L_i0_i2.GSR = "ENABLED";
    FD1P3JX reg_L_i0_i1 (.D(n42_adj_1304), .SP(CK_keep_enable_130), .PD(n20724), 
            .CK(CK_keep), .Q(reg_L[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_L_i0_i1.GSR = "ENABLED";
    FD1P3JX reg_H_i0_i7 (.D(n42_adj_1305), .SP(CK_keep_enable_130), .PD(n20723), 
            .CK(CK_keep), .Q(reg_H[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_H_i0_i7.GSR = "ENABLED";
    FD1P3JX reg_H_i0_i6 (.D(n42_adj_1306), .SP(CK_keep_enable_130), .PD(n20722), 
            .CK(CK_keep), .Q(reg_H[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_H_i0_i6.GSR = "ENABLED";
    FD1P3JX reg_H_i0_i5 (.D(n42_adj_1307), .SP(CK_keep_enable_130), .PD(n20721), 
            .CK(CK_keep), .Q(reg_H[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_H_i0_i5.GSR = "ENABLED";
    FD1P3JX reg_H_i0_i4 (.D(n42_adj_1309), .SP(CK_keep_enable_130), .PD(n20720), 
            .CK(CK_keep), .Q(reg_H[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_H_i0_i4.GSR = "ENABLED";
    FD1P3JX reg_H_i0_i3 (.D(n42_adj_1310), .SP(CK_keep_enable_130), .PD(n20719), 
            .CK(CK_keep), .Q(reg_H[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_H_i0_i3.GSR = "ENABLED";
    LUT4 i14568_4_lut (.A(cpu_data_in[0]), .B(n12385), .C(reg_L[0]), .D(n13645), 
         .Z(n1520[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14568_4_lut.init = 16'hc088;
    LUT4 i14797_2_lut (.A(\CPU.state[2] ), .B(reg_IY[9]), .Z(n35_adj_1215)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14797_2_lut.init = 16'h1111;
    LUT4 i15284_2_lut (.A(reg_A[7]), .B(n19110), .Z(n63_adj_1238)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15284_2_lut.init = 16'h2222;
    LUT4 i14886_2_lut_3_lut (.A(n33369), .B(n3376), .C(reg_B[5]), .Z(n126_adj_1112)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i14886_2_lut_3_lut.init = 16'h7070;
    PFUMX i21950 (.BLUT(n32308), .ALUT(n1332[1]), .C0(n15214), .Z(n32065));
    PFUMX i21941 (.BLUT(n32306), .ALUT(n1332[2]), .C0(n15214), .Z(n32056));
    LUT4 i23387_2_lut_4_lut (.A(n12_c), .B(n9), .C(n24886), .D(cpu_data_in[2]), 
         .Z(n32685)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;
    defparam i23387_2_lut_4_lut.init = 16'h1500;
    PFUMX i21938 (.BLUT(n32305), .ALUT(n1332[3]), .C0(n15214), .Z(n32053));
    LUT4 i14871_2_lut_3_lut (.A(n33369), .B(n3376), .C(reg_B[6]), .Z(n126_adj_1113)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i14871_2_lut_3_lut.init = 16'h7070;
    LUT4 i1_4_lut_adj_351 (.A(cpu_data_in[6]), .B(n31602), .C(reg_A[6]), 
         .D(n9_adj_1044), .Z(n31641)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(965[5] 1022[14])
    defparam i1_4_lut_adj_351.init = 16'hc088;
    PFUMX i21929 (.BLUT(n32279), .ALUT(n1332[4]), .C0(n15214), .Z(n32044));
    PFUMX i23975 (.BLUT(n34345), .ALUT(n34344), .C0(\CPU.opcode [2]), 
          .Z(n34346));
    LUT4 i2_4_lut_adj_352 (.A(reg_H[0]), .B(n71), .C(n32302), .D(\CPU.state[3] ), 
         .Z(n42_adj_1341)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_352.init = 16'h3022;
    FD1P3JX reg_H_i0_i2 (.D(n42_adj_1311), .SP(CK_keep_enable_130), .PD(n20718), 
            .CK(CK_keep), .Q(reg_H[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_H_i0_i2.GSR = "ENABLED";
    LUT4 i22844_4_lut (.A(n1511[0]), .B(n31643), .C(reg_H[0]), .D(n33557), 
         .Z(n32302)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22844_4_lut.init = 16'hc088;
    PFUMX i21926 (.BLUT(n32275), .ALUT(n1332[5]), .C0(n15214), .Z(n32041));
    LUT4 i14573_4_lut (.A(reg_H[0]), .B(n12385), .C(cpu_data_in[0]), .D(n13650), 
         .Z(n1511[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam i14573_4_lut.init = 16'hc088;
    LUT4 i22946_3_lut (.A(n11250[9]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32458)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22946_3_lut.init = 16'h4c4c;
    LUT4 i14889_2_lut_3_lut (.A(n33369), .B(n3376), .C(reg_B[3]), .Z(n126_adj_1122)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i14889_2_lut_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_adj_353 (.A(\CPU.opcode [3]), .B(\CPU.opcode [2]), .Z(n30_adj_1245)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_353.init = 16'h2222;
    LUT4 i1_2_lut_4_lut_adj_354 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_L[7]), .Z(n45_adj_1234)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_354.init = 16'hec00;
    LUT4 i14888_2_lut_3_lut (.A(n33369), .B(n3376), .C(reg_B[4]), .Z(n126_adj_1123)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i14888_2_lut_3_lut.init = 16'h7070;
    LUT4 i1_4_lut_adj_355 (.A(cpu_data_in[5]), .B(n31602), .C(reg_A[5]), 
         .D(n9_adj_1044), .Z(n31640)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(965[5] 1022[14])
    defparam i1_4_lut_adj_355.init = 16'hc088;
    PFUMX mux_176_Mux_1_i46 (.BLUT(n32863), .ALUT(n441[1]), .C0(prog_data[3]), 
          .Z(n46_adj_1282)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    FD1P3JX reg_H_i0_i1 (.D(n42_adj_1313), .SP(CK_keep_enable_130), .PD(n20717), 
            .CK(CK_keep), .Q(reg_H[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_H_i0_i1.GSR = "ENABLED";
    LUT4 i14892_2_lut_3_lut (.A(n33369), .B(n3376), .C(reg_B[1]), .Z(n126_adj_1142)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i14892_2_lut_3_lut.init = 16'h7070;
    LUT4 i23370_4_lut (.A(cpu_data_in[4]), .B(n31602), .C(reg_A[4]), .D(n9_adj_1044), 
         .Z(n32737)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23370_4_lut.init = 16'hc088;
    FD1P3DX STOF_716 (.D(n40529), .SP(CK_keep_enable_128), .CK(CK_keep), 
            .CD(TP2_c), .Q(CPUSTOF)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1299[3] 1305[10])
    defparam STOF_716.GSR = "ENABLED";
    LUT4 i14891_2_lut_3_lut (.A(n33369), .B(n3376), .C(reg_B[2]), .Z(n126_adj_1145)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i14891_2_lut_3_lut.init = 16'h7070;
    PFUMX mux_176_Mux_2_i46 (.BLUT(n32862), .ALUT(n441[2]), .C0(prog_data[3]), 
          .Z(n46_adj_1284)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    PFUMX i84 (.BLUT(n57_adj_1342), .ALUT(n55), .C0(prog_data[4]), .Z(n63_adj_1277));
    LUT4 i23320_4_lut (.A(cpu_data_in[3]), .B(n31602), .C(reg_A[3]), .D(n9_adj_1044), 
         .Z(n32729)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23320_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_3_lut_adj_356 (.A(\CPU.opcode [1]), .B(\CPU.opcode [2]), 
         .C(n12_adj_1042), .Z(n31752)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1013[10:17])
    defparam i1_2_lut_3_lut_adj_356.init = 16'hfdfd;
    LUT4 equal_317_i9_2_lut_3_lut (.A(\CPU.opcode [1]), .B(\CPU.opcode [2]), 
         .C(\CPU.opcode [0]), .Z(n9_adj_1023)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1013[10:17])
    defparam equal_317_i9_2_lut_3_lut.init = 16'hdfdf;
    LUT4 reg_L_4__bdd_3_lut_24303 (.A(prog_data[2]), .B(prog_addr[4]), .C(reg_SP[4]), 
         .Z(n34885)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam reg_L_4__bdd_3_lut_24303.init = 16'hd8d8;
    LUT4 reg_L_4__bdd_3_lut_24816 (.A(reg_L[4]), .B(n34885), .C(n20676), 
         .Z(n34886)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_L_4__bdd_3_lut_24816.init = 16'hcaca;
    LUT4 i1_4_lut_adj_357 (.A(cpu_data_in[2]), .B(n31602), .C(reg_A[2]), 
         .D(n9_adj_1044), .Z(n31603)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(965[5] 1022[14])
    defparam i1_4_lut_adj_357.init = 16'hc088;
    LUT4 i14801_2_lut (.A(\CPU.state[2] ), .B(reg_IY[10]), .Z(n35)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14801_2_lut.init = 16'h1111;
    LUT4 i22948_3_lut (.A(n11250[10]), .B(\CPU.state[2] ), .C(n11092), 
         .Z(n32460)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(466[4] 1112[11])
    defparam i22948_3_lut.init = 16'h4c4c;
    PFUMX i21 (.BLUT(n32780), .ALUT(n8_adj_1259), .C0(\CPU.state[2] ), 
          .Z(n10_adj_1242));
    LUT4 i1_4_lut_adj_358 (.A(n4_adj_1343), .B(n25295), .C(\CPU.opcode [2]), 
         .D(\CPU.opcode [1]), .Z(n10514)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_358.init = 16'h0c88;
    LUT4 mux_3789_i5_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n8_adj_1056), 
         .C(cpu_data_in[4]), .D(reg_B[4]), .Z(n11921[4])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3789_i5_3_lut_4_lut.init = 16'hfd20;
    LUT4 prog_data_6__I_0_730_i13_2_lut_4_lut (.A(prog_data[1]), .B(prog_data[2]), 
         .C(prog_data[0]), .D(n12), .Z(alu_ctrl_3__N_885)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1203[55:75])
    defparam prog_data_6__I_0_730_i13_2_lut_4_lut.init = 16'hfff7;
    LUT4 i23117_2_lut (.A(ram_out[1]), .B(n25429), .Z(n32709)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23117_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_359 (.A(cpu_data_in[1]), .B(n31602), .C(reg_A[1]), 
         .D(n9_adj_1044), .Z(n31623)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(965[5] 1022[14])
    defparam i1_4_lut_adj_359.init = 16'hc088;
    PFUMX i25607 (.BLUT(n37090), .ALUT(n37091), .C0(prog_data[0]), .Z(n37092));
    LUT4 i1_2_lut_adj_360 (.A(\CPU.opcode [4]), .B(\CPU.opcode [0]), .Z(n4_adj_1343)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i1_2_lut_adj_360.init = 16'h8888;
    LUT4 i23403_4_lut (.A(cpu_data_in[0]), .B(n31602), .C(reg_A[0]), .D(n9_adj_1044), 
         .Z(n32507)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23403_4_lut.init = 16'hc088;
    LUT4 mux_3183_i2_4_lut (.A(n946[1]), .B(n32687), .C(n9484), .D(n16823), 
         .Z(n9485[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3183_i2_4_lut.init = 16'hca0a;
    LUT4 i23291_2_lut (.A(reg_SP[10]), .B(n13589), .Z(n32848)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i23291_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_4_lut_adj_361 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_L[1]), .Z(n45_adj_1209)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_361.init = 16'hec00;
    LUT4 i1_2_lut_adj_362 (.A(prog_data[0]), .B(prog_data[1]), .Z(n19988)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i1_2_lut_adj_362.init = 16'h2222;
    LUT4 n19575_bdd_2_lut_25436 (.A(n19575), .B(reg_H[7]), .Z(n35116)) /* synthesis lut_function=(A (B)) */ ;
    defparam n19575_bdd_2_lut_25436.init = 16'h8888;
    LUT4 i23378_2_lut (.A(reg_SP[9]), .B(n13589), .Z(n32420)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i23378_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_4_lut_adj_363 (.A(\CPU.state[3] ), .B(n20123), .C(n71), 
         .D(reg_L[4]), .Z(n45_adj_1221)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_363.init = 16'hec00;
    LUT4 i23280_2_lut (.A(reg_SP[8]), .B(n13589), .Z(n32421)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i23280_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_364 (.A(prog_data[5]), .B(prog_data[6]), .C(n20141), 
         .Z(n12_adj_1006)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1204[35:55])
    defparam i1_2_lut_3_lut_adj_364.init = 16'hfbfb;
    LUT4 i23159_2_lut (.A(reg_SP[7]), .B(n13589), .Z(n32426)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i23159_2_lut.init = 16'h2222;
    LUT4 i23426_2_lut (.A(ram_out[2]), .B(n25429), .Z(n32710)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23426_2_lut.init = 16'h8888;
    LUT4 mux_3190_i3_4_lut (.A(n9514[2]), .B(n32058), .C(n9527), .D(n11092), 
         .Z(n9528[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3190_i3_4_lut.init = 16'hca0a;
    LUT4 i21943_3_lut (.A(n32056), .B(n32057), .C(n10514), .Z(n32058)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i21943_3_lut.init = 16'hcaca;
    LUT4 i23213_4_lut (.A(n946[2]), .B(prog_data[2]), .C(n10369), .D(n15214), 
         .Z(n32057)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i23213_4_lut.init = 16'haaca;
    LUT4 mux_3190_i4_4_lut (.A(n9514[3]), .B(n32055), .C(n9527), .D(n11092), 
         .Z(n9528[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3190_i4_4_lut.init = 16'hca0a;
    LUT4 mux_3183_i3_4_lut (.A(n946[2]), .B(\CPU.second_operand [2]), .C(n9484), 
         .D(n25312), .Z(n9485[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3183_i3_4_lut.init = 16'hca0a;
    LUT4 i21940_3_lut (.A(n32053), .B(n32054), .C(n10514), .Z(n32055)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i21940_3_lut.init = 16'hcaca;
    LUT4 \CPU.opcode_0__bdd_4_lut_24160  (.A(\CPU.opcode [0]), .B(\CPU.opcode [1]), 
         .C(\CPU.opcode [3]), .D(\CPU.opcode [4]), .Z(n34489)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B ((D)+!C)))) */ ;
    defparam \CPU.opcode_0__bdd_4_lut_24160 .init = 16'h0e1e;
    LUT4 i23219_4_lut (.A(n946[3]), .B(prog_data[3]), .C(n10369), .D(n15214), 
         .Z(n32054)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i23219_4_lut.init = 16'haaca;
    LUT4 i23425_2_lut (.A(ram_out[3]), .B(n25429), .Z(n32711)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23425_2_lut.init = 16'h8888;
    LUT4 n7453_bdd_4_lut (.A(n6965), .B(prog_data[4]), .C(prog_data[2]), 
         .D(prog_data[3]), .Z(n36781)) /* synthesis lut_function=(A (C+!(D))+!A (B+(C+!(D)))) */ ;
    defparam n7453_bdd_4_lut.init = 16'hf4ff;
    LUT4 i22016_3_lut (.A(n1837[7]), .B(n1539[7]), .C(n15184), .Z(n32131)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22016_3_lut.init = 16'hcaca;
    LUT4 mux_3183_i4_4_lut (.A(n946[3]), .B(\CPU.second_operand [3]), .C(n9484), 
         .D(n25312), .Z(n9485[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3183_i4_4_lut.init = 16'hca0a;
    LUT4 mux_3190_i5_4_lut (.A(n9514[4]), .B(n32046), .C(n9527), .D(n11092), 
         .Z(n9528[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3190_i5_4_lut.init = 16'hca0a;
    LUT4 i23424_2_lut (.A(ram_out[4]), .B(n25429), .Z(n32712)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23424_2_lut.init = 16'h8888;
    PFUMX i25605 (.BLUT(n37087), .ALUT(n37088), .C0(prog_data[0]), .Z(n37089));
    LUT4 n36782_bdd_3_lut (.A(n36782), .B(n7354), .C(prog_data[6]), .Z(n36783)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n36782_bdd_3_lut.init = 16'hcaca;
    LUT4 i21931_3_lut (.A(n32044), .B(n32045), .C(n10514), .Z(n32046)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i21931_3_lut.init = 16'hcaca;
    LUT4 i23322_4_lut (.A(n946[4]), .B(prog_data[4]), .C(n10369), .D(n15214), 
         .Z(n32045)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i23322_4_lut.init = 16'haaca;
    LUT4 prog_data_4__bdd_4_lut (.A(prog_data[5]), .B(n7417), .C(n7453), 
         .D(prog_data[1]), .Z(n39885)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((D)+!B)) */ ;
    defparam prog_data_4__bdd_4_lut.init = 16'hff3b;
    LUT4 i1_2_lut_adj_365 (.A(\CPU.opcode[6] ), .B(n41_adj_1096), .Z(n14361)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_365.init = 16'h4444;
    LUT4 mux_3190_i6_4_lut (.A(n9514[5]), .B(n32043), .C(n9527), .D(n11092), 
         .Z(n9528[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3190_i6_4_lut.init = 16'hca0a;
    LUT4 mux_3183_i5_4_lut (.A(n946[4]), .B(\CPU.second_operand [4]), .C(n9484), 
         .D(n25312), .Z(n9485[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3183_i5_4_lut.init = 16'hca0a;
    LUT4 i21928_3_lut (.A(n32041), .B(n32042), .C(n10514), .Z(n32043)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i21928_3_lut.init = 16'hcaca;
    LUT4 i23342_4_lut (.A(n946[5]), .B(prog_data[5]), .C(n10369), .D(n15214), 
         .Z(n32042)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i23342_4_lut.init = 16'haaca;
    LUT4 mux_3190_i7_4_lut (.A(n9514[6]), .B(n32040), .C(n9527), .D(n11092), 
         .Z(n9528[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3190_i7_4_lut.init = 16'hca0a;
    PFUMX i22146 (.BLUT(n10205[4]), .ALUT(n32298), .C0(prog_data[1]), 
          .Z(n32261));
    LUT4 i21925_3_lut (.A(n32038), .B(n32039), .C(n10514), .Z(n32040)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i21925_3_lut.init = 16'hcaca;
    LUT4 i23356_4_lut (.A(n946[6]), .B(prog_data[6]), .C(n10369), .D(n15214), 
         .Z(n32039)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i23356_4_lut.init = 16'haaca;
    LUT4 i4510_2_lut_3_lut (.A(n10514), .B(\CPU.opcode [0]), .C(\CPU.opcode [1]), 
         .Z(n13785)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i4510_2_lut_3_lut.init = 16'h0808;
    LUT4 prog_data_4__bdd_2_lut (.A(n31549), .B(n39887), .Z(n39888)) /* synthesis lut_function=(A (B)) */ ;
    defparam prog_data_4__bdd_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_adj_366 (.A(n13785), .B(\CPU.opcode [2]), .C(n11092), 
         .D(n31564), .Z(n20643)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut_adj_366.init = 16'h0080;
    LUT4 i23423_2_lut (.A(ram_out[5]), .B(n25429), .Z(n32713)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23423_2_lut.init = 16'h8888;
    LUT4 reg_L_7__bdd_3_lut_24461 (.A(prog_data[2]), .B(prog_addr[7]), .C(reg_SP[7]), 
         .Z(n35127)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam reg_L_7__bdd_3_lut_24461.init = 16'hd8d8;
    LUT4 mux_3190_i8_4_lut (.A(n9514[7]), .B(n32232), .C(n9527), .D(n11092), 
         .Z(n9528[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3190_i8_4_lut.init = 16'hca0a;
    PFUMX i25603 (.BLUT(n37084), .ALUT(n37085), .C0(prog_data[0]), .Z(n37086));
    LUT4 i22117_3_lut (.A(n32230), .B(n32231), .C(n10514), .Z(n32232)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22117_3_lut.init = 16'hcaca;
    LUT4 i22952_4_lut (.A(n946[7]), .B(prog_data[7]), .C(n10369), .D(n15214), 
         .Z(n32231)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i22952_4_lut.init = 16'haaca;
    CCU2D add_3243_3 (.A0(reg_IX[1]), .B0(n19419), .C0(prog_data[0]), 
          .D0(GND_net), .A1(reg_IX[2]), .B1(n19419), .C1(prog_data[0]), 
          .D1(GND_net), .CIN(n29152), .COUT(n29153), .S0(n61), .S1(n61_adj_1151));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3243_3.INIT0 = 16'hd212;
    defparam add_3243_3.INIT1 = 16'hd212;
    defparam add_3243_3.INJECT1_0 = "NO";
    defparam add_3243_3.INJECT1_1 = "NO";
    PFUMX mux_3447_i5 (.BLUT(n32669), .ALUT(n32670), .C0(n10514), .Z(n10528[4]));
    LUT4 mux_3183_i6_4_lut (.A(n946[5]), .B(\CPU.second_operand [5]), .C(n9484), 
         .D(n25312), .Z(n9485[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3183_i6_4_lut.init = 16'hca0a;
    LUT4 i23879_4_lut (.A(n9_adj_1058), .B(n32844), .C(n7_adj_1258), .D(n9527), 
         .Z(CK_keep_enable_140)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i23879_4_lut.init = 16'h0511;
    LUT4 i23292_4_lut (.A(n8_adj_1056), .B(n20192), .C(n8_adj_1054), .D(n11), 
         .Z(n32844)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;
    defparam i23292_4_lut.init = 16'hccdc;
    LUT4 i22158_3_lut (.A(reg_H[0]), .B(flag_Z), .C(prog_data[1]), .Z(n32273)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22158_3_lut.init = 16'hcaca;
    CCU2D add_3243_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_IX[0]), .B1(n19419), .C1(prog_data[0]), .D1(GND_net), 
          .COUT(n29152), .S1(n61_adj_1322));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3243_1.INIT0 = 16'hF000;
    defparam add_3243_1.INIT1 = 16'hd212;
    defparam add_3243_1.INJECT1_0 = "NO";
    defparam add_3243_1.INJECT1_1 = "NO";
    LUT4 mux_3190_i9_4_lut (.A(n9514[8]), .B(n32229), .C(n9527), .D(n11092), 
         .Z(n9528[8])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3190_i9_4_lut.init = 16'hca0a;
    LUT4 i23415_2_lut (.A(ram_out[6]), .B(n25429), .Z(n32714)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23415_2_lut.init = 16'h8888;
    LUT4 mux_3183_i7_4_lut (.A(n946[6]), .B(\CPU.second_operand [6]), .C(n9484), 
         .D(n25312), .Z(n9485[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3183_i7_4_lut.init = 16'hca0a;
    LUT4 i22114_3_lut (.A(n32227), .B(n32228), .C(n10514), .Z(n32229)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22114_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_367 (.A(prog_data[3]), .B(prog_data[0]), .Z(n5_adj_1241)) /* synthesis lut_function=(A+(B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i1_2_lut_adj_367.init = 16'heeee;
    LUT4 i22970_4_lut (.A(n946[8]), .B(\CPU.first_operand [0]), .C(n10369), 
         .D(n15214), .Z(n32228)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i22970_4_lut.init = 16'haaca;
    LUT4 n19575_bdd_3_lut_24420 (.A(n18280), .B(alu_out[5]), .C(reg_H[5]), 
         .Z(n34969)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n19575_bdd_3_lut_24420.init = 16'hd8d8;
    LUT4 prog_data_4__bdd_2_lut_25721 (.A(prog_data[4]), .B(n7453), .Z(n36897)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam prog_data_4__bdd_2_lut_25721.init = 16'h1111;
    LUT4 mux_3190_i10_4_lut (.A(n9514[9]), .B(n32226), .C(n9527), .D(n11092), 
         .Z(n9528[9])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3190_i10_4_lut.init = 16'hca0a;
    LUT4 i22111_3_lut (.A(n32224), .B(n32225), .C(n10514), .Z(n32226)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22111_3_lut.init = 16'hcaca;
    LUT4 i22974_4_lut (.A(n946[9]), .B(\CPU.first_operand [1]), .C(n10369), 
         .D(n15214), .Z(n32225)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i22974_4_lut.init = 16'haaca;
    LUT4 mux_3190_i11_4_lut (.A(n9514[10]), .B(n32220), .C(n9527), .D(n11092), 
         .Z(n9528[10])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3190_i11_4_lut.init = 16'hca0a;
    LUT4 prog_data_4__bdd_4_lut_25720 (.A(prog_data[4]), .B(prog_data[1]), 
         .C(n7437), .D(prog_data[0]), .Z(n36898)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C (D))))) */ ;
    defparam prog_data_4__bdd_4_lut_25720.init = 16'h3020;
    LUT4 i22105_3_lut (.A(n32218), .B(n32219), .C(n10514), .Z(n32220)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22105_3_lut.init = 16'hcaca;
    LUT4 i23411_2_lut (.A(ram_out[7]), .B(n25429), .Z(n32715)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23411_2_lut.init = 16'h8888;
    LUT4 i22979_4_lut (.A(n946[10]), .B(\CPU.first_operand [2]), .C(n10369), 
         .D(n15214), .Z(n32219)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i22979_4_lut.init = 16'haaca;
    LUT4 mux_3183_i8_4_lut (.A(n946[7]), .B(\CPU.second_operand [7]), .C(n9484), 
         .D(n25312), .Z(n9485[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3183_i8_4_lut.init = 16'hca0a;
    LUT4 mux_3190_i12_4_lut (.A(n9514[11]), .B(n32217), .C(n9527), .D(n11092), 
         .Z(n9528[11])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_3190_i12_4_lut.init = 16'hca0a;
    LUT4 i22848_4_lut (.A(prog_addr[4]), .B(n13096), .C(n1851[4]), .D(\CPU.opcode[5] ), 
         .Z(n32418)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22848_4_lut.init = 16'hc088;
    LUT4 i22102_3_lut (.A(n32215), .B(n32216), .C(n10514), .Z(n32217)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i22102_3_lut.init = 16'hcaca;
    LUT4 i22981_4_lut (.A(n946[11]), .B(\CPU.first_operand [3]), .C(n10369), 
         .D(n15214), .Z(n32216)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i22981_4_lut.init = 16'haaca;
    LUT4 mux_4796_i5_4_lut (.A(n20643), .B(n63_adj_1247), .C(\CPU.state[0] ), 
         .D(reg_A[4]), .Z(n14373[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_4796_i5_4_lut.init = 16'hcac0;
    LUT4 i22998_4_lut (.A(prog_addr[5]), .B(n13096), .C(n1851[5]), .D(\CPU.opcode[5] ), 
         .Z(n32425)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22998_4_lut.init = 16'hc088;
    LUT4 mux_4796_i6_4_lut (.A(n20643), .B(n63_adj_1286), .C(\CPU.state[0] ), 
         .D(reg_A[5]), .Z(n14373[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_4796_i6_4_lut.init = 16'hcac0;
    LUT4 mux_442_i8_3_lut (.A(reg_IX[7]), .B(reg_IY[7]), .C(n13), .Z(n1851[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1075[6] 1078[15])
    defparam mux_442_i8_3_lut.init = 16'hcaca;
    LUT4 n19575_bdd_2_lut_24421 (.A(n19575), .B(reg_H[5]), .Z(n34970)) /* synthesis lut_function=(A (B)) */ ;
    defparam n19575_bdd_2_lut_24421.init = 16'h8888;
    LUT4 i1_4_lut_adj_368 (.A(flag_Z_N_960), .B(n31898), .C(n32818), .D(n13_adj_1030), 
         .Z(CK_keep_enable_23)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_368.init = 16'h3011;
    LUT4 i23285_4_lut (.A(prog_addr[6]), .B(n13096), .C(n1851[6]), .D(\CPU.opcode[5] ), 
         .Z(n32439)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23285_4_lut.init = 16'hc088;
    LUT4 mux_4796_i7_4_lut (.A(n20643), .B(n63_adj_1327), .C(\CPU.state[0] ), 
         .D(reg_A[6]), .Z(n14373[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_4796_i7_4_lut.init = 16'hcac0;
    LUT4 i23377_4_lut (.A(n32821), .B(n22), .C(\CPU.state[0] ), .D(n31599), 
         .Z(n32818)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C)))) */ ;
    defparam i23377_4_lut.init = 16'h2303;
    CCU2D sub_11_add_2_7 (.A0(alu_in_y[5]), .B0(n3377), .C0(n63_adj_1075), 
          .D0(n126_adj_1045), .A1(alu_in_y[6]), .B1(n3377), .C1(n63_adj_1066), 
          .D1(n126_adj_1039), .CIN(n29127), .COUT(n29128), .S0(\CPU_ALU.result_8__N_653 [5]), 
          .S1(\CPU_ALU.result_8__N_653 [6]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(299[19:27])
    defparam sub_11_add_2_7.INIT0 = 16'ha965;
    defparam sub_11_add_2_7.INIT1 = 16'ha965;
    defparam sub_11_add_2_7.INJECT1_0 = "NO";
    defparam sub_11_add_2_7.INJECT1_1 = "NO";
    LUT4 prog_data_4__bdd_3_lut (.A(prog_data[5]), .B(n7453), .C(prog_data[1]), 
         .Z(n39886)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam prog_data_4__bdd_3_lut.init = 16'hd0d0;
    LUT4 i1_4_lut_adj_369 (.A(n34671), .B(\CPU.opcode [4]), .C(n4_adj_1344), 
         .D(n37059), .Z(n41_adj_1096)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_369.init = 16'heca0;
    MUX81 alu_ctrl_3__I_0_Mux_2_i781 (.D0(\CPU_ALU.result_8__N_644 [2]), .D1(\CPU_ALU.result_8__N_617 [2]), 
          .D2(\CPU_ALU.result_8__N_609 [2]), .D3(\CPU_ALU.result_8__N_601 [2]), 
          .D4(\CPU_ALU.result_8__N_593 [2]), .D5(alu_in_x[1]), .D6(alu_in_x[1]), 
          .D7(alu_in_x[3]), .SD1(alu_ctrl[0]), .SD2(alu_ctrl[1]), .SD3(alu_ctrl[2]), 
          .Z(n7_adj_1333));
    PFUMX mux_3447_i4 (.BLUT(n32667), .ALUT(n32668), .C0(n10514), .Z(n10528[3]));
    LUT4 i22936_4_lut (.A(prog_addr[7]), .B(n13096), .C(n1851[7]), .D(\CPU.opcode[5] ), 
         .Z(n32444)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22936_4_lut.init = 16'hc088;
    LUT4 mux_4796_i8_4_lut (.A(n20643), .B(n63_adj_1339), .C(\CPU.state[0] ), 
         .D(reg_A[7]), .Z(n14373[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam mux_4796_i8_4_lut.init = 16'hcac0;
    LUT4 i23007_4_lut (.A(n10528[0]), .B(n13713), .C(n32280), .D(n13698), 
         .Z(n32497)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23007_4_lut.init = 16'hc088;
    CCU2D sub_11_add_2_5 (.A0(alu_in_y[3]), .B0(n3377), .C0(n63_adj_1127), 
          .D0(n126_adj_1038), .A1(alu_in_y[4]), .B1(n3377), .C1(n63_adj_1131), 
          .D1(n126_adj_1036), .CIN(n29126), .COUT(n29127), .S0(\CPU_ALU.result_8__N_653 [3]), 
          .S1(\CPU_ALU.result_8__N_653 [4]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(299[19:27])
    defparam sub_11_add_2_5.INIT0 = 16'ha965;
    defparam sub_11_add_2_5.INIT1 = 16'ha965;
    defparam sub_11_add_2_5.INJECT1_0 = "NO";
    defparam sub_11_add_2_5.INJECT1_1 = "NO";
    LUT4 reg_L_5__bdd_3_lut_24361 (.A(prog_data[2]), .B(prog_addr[5]), .C(reg_SP[5]), 
         .Z(n34973)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam reg_L_5__bdd_3_lut_24361.init = 16'hd8d8;
    CCU2D sub_11_add_2_3 (.A0(alu_in_y[1]), .B0(n3377), .C0(n63_adj_1336), 
          .D0(n126_adj_1111), .A1(alu_in_y[2]), .B1(n3377), .C1(n63_adj_1169), 
          .D1(n126_adj_1034), .CIN(n29125), .COUT(n29126), .S0(\CPU_ALU.result_8__N_653 [1]), 
          .S1(\CPU_ALU.result_8__N_653 [2]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(299[19:27])
    defparam sub_11_add_2_3.INIT0 = 16'ha965;
    defparam sub_11_add_2_3.INIT1 = 16'ha965;
    defparam sub_11_add_2_3.INJECT1_0 = "NO";
    defparam sub_11_add_2_3.INJECT1_1 = "NO";
    CCU2D add_439_11 (.A0(reg_SP[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_SP[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29150), .S0(n1837[9]), .S1(n1837[10]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam add_439_11.INIT0 = 16'h5aaa;
    defparam add_439_11.INIT1 = 16'h5aaa;
    defparam add_439_11.INJECT1_0 = "NO";
    defparam add_439_11.INJECT1_1 = "NO";
    LUT4 reg_L_5__bdd_3_lut_24838 (.A(reg_L[5]), .B(n34973), .C(n20676), 
         .Z(n34974)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_L_5__bdd_3_lut_24838.init = 16'hcaca;
    LUT4 i23308_4_lut (.A(n10528[1]), .B(n13713), .C(n32438), .D(n13698), 
         .Z(n32500)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23308_4_lut.init = 16'hc088;
    PFUMX i25601 (.BLUT(n37081), .ALUT(n37082), .C0(prog_data[0]), .Z(n37083));
    LUT4 mux_4571_i8_4_lut (.A(n9782[7]), .B(n11921[7]), .C(n24637), .D(n31602), 
         .Z(n13900)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4571_i8_4_lut.init = 16'haca0;
    LUT4 i14873_2_lut (.A(alu_out[7]), .B(\CPU.state[0] ), .Z(n9782[7])) /* synthesis lut_function=(A (B)) */ ;
    defparam i14873_2_lut.init = 16'h8888;
    LUT4 i14497_2_lut (.A(\CPU.state[3] ), .B(\CPU.state[2] ), .Z(n24573)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14497_2_lut.init = 16'heeee;
    CCU2D sub_11_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(alu_in_y[0]), .B1(n3377), .C1(n63_adj_1270), .D1(n126), 
          .COUT(n29125), .S1(\CPU_ALU.result_8__N_653 [0]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(299[19:27])
    defparam sub_11_add_2_1.INIT0 = 16'h0000;
    defparam sub_11_add_2_1.INIT1 = 16'ha965;
    defparam sub_11_add_2_1.INJECT1_0 = "NO";
    defparam sub_11_add_2_1.INJECT1_1 = "NO";
    LUT4 i23064_4_lut (.A(n10528[2]), .B(n13713), .C(n32435), .D(n13698), 
         .Z(n32502)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23064_4_lut.init = 16'hc088;
    LUT4 mux_442_i7_3_lut (.A(reg_IX[6]), .B(reg_IY[6]), .C(n13), .Z(n1851[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1075[6] 1078[15])
    defparam mux_442_i7_3_lut.init = 16'hcaca;
    LUT4 mux_3789_i4_3_lut_4_lut (.A(\CPU.opcode [0]), .B(n8_adj_1056), 
         .C(cpu_data_in[3]), .D(reg_B[3]), .Z(n11921[3])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(980[6] 993[15])
    defparam mux_3789_i4_3_lut_4_lut.init = 16'hfd20;
    LUT4 i85_4_lut_4_lut_4_lut (.A(prog_data[0]), .B(n19382), .C(prog_data[5]), 
         .D(prog_data[3]), .Z(n57_adj_1342)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B (C)+!B (D)))) */ ;
    defparam i85_4_lut_4_lut_4_lut.init = 16'h0c35;
    LUT4 i22890_4_lut (.A(n10528[3]), .B(n13713), .C(n32434), .D(n13698), 
         .Z(n32622)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i22890_4_lut.init = 16'hc088;
    LUT4 i23170_4_lut (.A(n10528[4]), .B(n13713), .C(n32433), .D(n13698), 
         .Z(n32730)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23170_4_lut.init = 16'hc088;
    LUT4 prog_data_1__bdd_2_lut_26022 (.A(prog_data[6]), .B(n37254), .Z(n37255)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam prog_data_1__bdd_2_lut_26022.init = 16'h4444;
    CCU2D add_439_9 (.A0(reg_SP[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_SP[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29149), .COUT(n29150), .S0(n1837[7]), .S1(n1837[8]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam add_439_9.INIT0 = 16'h5aaa;
    defparam add_439_9.INIT1 = 16'h5aaa;
    defparam add_439_9.INJECT1_0 = "NO";
    defparam add_439_9.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_370 (.A(n10514), .B(\CPU.opcode [0]), .C(\CPU.opcode [2]), 
         .D(\CPU.opcode [1]), .Z(n13766)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i1_3_lut_4_lut_adj_370.init = 16'hfff7;
    LUT4 mux_4571_i7_4_lut (.A(n9856[6]), .B(n11921[6]), .C(n24637), .D(n31602), 
         .Z(n13899)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4571_i7_4_lut.init = 16'haca0;
    LUT4 i1_2_lut_adj_371 (.A(\CPU.opcode[5] ), .B(\CPU.opcode [1]), .Z(n4_adj_1344)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_371.init = 16'h4444;
    CCU2D add_439_7 (.A0(reg_SP[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_SP[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29148), .COUT(n29149), .S0(n1837[5]), .S1(n1837[6]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam add_439_7.INIT0 = 16'h5aaa;
    defparam add_439_7.INIT1 = 16'h5aaa;
    defparam add_439_7.INJECT1_0 = "NO";
    defparam add_439_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_372 (.A(n26), .B(n31692), .Z(n14329)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1035[10:16])
    defparam i1_2_lut_adj_372.init = 16'h8888;
    CCU2D add_439_5 (.A0(reg_SP[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_SP[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29147), .COUT(n29148), .S0(n1837[3]), .S1(n1837[4]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam add_439_5.INIT0 = 16'h5aaa;
    defparam add_439_5.INIT1 = 16'h5aaa;
    defparam add_439_5.INJECT1_0 = "NO";
    defparam add_439_5.INJECT1_1 = "NO";
    CCU2D add_439_3 (.A0(reg_SP[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_SP[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29146), .COUT(n29147), .S0(n1837[1]), .S1(n1837[2]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam add_439_3.INIT0 = 16'h5aaa;
    defparam add_439_3.INIT1 = 16'h5aaa;
    defparam add_439_3.INJECT1_0 = "NO";
    defparam add_439_3.INJECT1_1 = "NO";
    LUT4 i14890_2_lut (.A(alu_out[6]), .B(\CPU.state[0] ), .Z(n9856[6])) /* synthesis lut_function=(A (B)) */ ;
    defparam i14890_2_lut.init = 16'h8888;
    LUT4 equal_5008_i18_2_lut (.A(\CPU.state [5]), .B(\CPU.state [7]), .Z(n18_adj_1047)) /* synthesis lut_function=(A+(B)) */ ;
    defparam equal_5008_i18_2_lut.init = 16'heeee;
    LUT4 i23397_4_lut (.A(n10528[5]), .B(n13713), .C(n32430), .D(n13698), 
         .Z(n32741)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23397_4_lut.init = 16'hc088;
    CCU2D add_439_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_SP[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n29146), .S1(n1837[0]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam add_439_1.INIT0 = 16'hF000;
    defparam add_439_1.INIT1 = 16'h5555;
    defparam add_439_1.INJECT1_0 = "NO";
    defparam add_439_1.INJECT1_1 = "NO";
    CCU2D add_806_11 (.A0(reg_SP[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_SP[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29144), .S0(n1539[9]), .S1(n1539[10]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_806_11.INIT0 = 16'h5555;
    defparam add_806_11.INIT1 = 16'h5555;
    defparam add_806_11.INJECT1_0 = "NO";
    defparam add_806_11.INJECT1_1 = "NO";
    PFUMX mux_3447_i3 (.BLUT(n32665), .ALUT(n32666), .C0(n10514), .Z(n10528[2]));
    LUT4 i15324_2_lut (.A(prog_data[7]), .B(n19110), .Z(n63_adj_1106)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1146[4] 1240[13])
    defparam i15324_2_lut.init = 16'h2222;
    CCU2D add_806_9 (.A0(reg_SP[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_SP[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29143), .COUT(n29144), .S0(n1539[7]), .S1(n1539[8]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_806_9.INIT0 = 16'h5555;
    defparam add_806_9.INIT1 = 16'h5555;
    defparam add_806_9.INJECT1_0 = "NO";
    defparam add_806_9.INJECT1_1 = "NO";
    PFUMX i64 (.BLUT(n32484), .ALUT(n32485), .C0(\CPU.state[2] ), .Z(n38_adj_1235));
    PFUMX i64_adj_373 (.BLUT(n32326), .ALUT(n32327), .C0(\CPU.state[2] ), 
          .Z(n38_adj_1204));
    PFUMX i160 (.BLUT(n32392), .ALUT(n32393), .C0(prog_data[5]), .Z(n160));
    LUT4 i23166_4_lut (.A(n10528[6]), .B(n13713), .C(n32429), .D(n13698), 
         .Z(n32749)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23166_4_lut.init = 16'hc088;
    LUT4 \CPU.opcode_0__bdd_3_lut  (.A(\CPU.opcode [1]), .B(\CPU.opcode [3]), 
         .C(\CPU.opcode [4]), .Z(n34488)) /* synthesis lut_function=(!(A (B+(C))+!A (B))) */ ;
    defparam \CPU.opcode_0__bdd_3_lut .init = 16'h1313;
    PFUMX i64_adj_374 (.BLUT(n32481), .ALUT(n32482), .C0(\CPU.state[2] ), 
          .Z(n38_adj_1230));
    MUX81 alu_ctrl_3__I_0_Mux_1_i782 (.D0(\CPU_ALU.result_8__N_644 [1]), .D1(\CPU_ALU.result_8__N_617 [1]), 
          .D2(\CPU_ALU.result_8__N_609 [1]), .D3(\CPU_ALU.result_8__N_601 [1]), 
          .D4(\CPU_ALU.result_8__N_593 [1]), .D5(alu_in_x[0]), .D6(alu_in_x[0]), 
          .D7(alu_in_x[2]), .SD1(alu_ctrl[0]), .SD2(alu_ctrl[1]), .SD3(alu_ctrl[2]), 
          .Z(n7_adj_1334));
    MUX81 alu_ctrl_3__I_0_Mux_0_i783 (.D0(\CPU_ALU.result_8__N_644 [0]), .D1(\CPU_ALU.result_8__N_617 [0]), 
          .D2(\CPU_ALU.result_8__N_609 [0]), .D3(\CPU_ALU.result_8__N_601 [0]), 
          .D4(\CPU_ALU.result_8__N_593 [0]), .D5(alu_cin), .D6(alu_in_x[7]), 
          .D7(alu_in_x[1]), .SD1(alu_ctrl[0]), .SD2(alu_ctrl[1]), .SD3(alu_ctrl[2]), 
          .Z(n7_adj_1335));
    LUT4 i1_3_lut (.A(\CPU.opcode [3]), .B(\CPU.opcode[6] ), .C(\CPU.opcode [4]), 
         .Z(n31692)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(392[12:18])
    defparam i1_3_lut.init = 16'h1010;
    LUT4 mux_4571_i6_4_lut (.A(n9856[5]), .B(n11921[5]), .C(n24637), .D(n31602), 
         .Z(n13898)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4571_i6_4_lut.init = 16'haca0;
    LUT4 i23068_4_lut (.A(n10528[7]), .B(n13713), .C(n32426), .D(n13698), 
         .Z(n32751)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23068_4_lut.init = 16'hc088;
    MUX81 alu_ctrl_3__I_0_Mux_5_i778 (.D0(\CPU_ALU.result_8__N_644 [5]), .D1(\CPU_ALU.result_8__N_617 [5]), 
          .D2(\CPU_ALU.result_8__N_609 [5]), .D3(\CPU_ALU.result_8__N_601 [5]), 
          .D4(\CPU_ALU.result_8__N_593 [5]), .D5(alu_in_x[4]), .D6(alu_in_x[4]), 
          .D7(alu_in_x[6]), .SD1(alu_ctrl[0]), .SD2(alu_ctrl[1]), .SD3(alu_ctrl[2]), 
          .Z(n7_adj_1332));
    LUT4 i1_2_lut_adj_375 (.A(prog_data[2]), .B(prog_data[1]), .Z(n18885)) /* synthesis lut_function=(A (B)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam i1_2_lut_adj_375.init = 16'h8888;
    MUX81 mux_3333_i392 (.D0(reg_A[2]), .D1(reg_B[2]), .D2(reg_C[2]), 
          .D3(reg_D[2]), .D4(reg_E[2]), .D5(reg_H[2]), .D6(reg_L[2]), 
          .D7(flag_C), .SD1(prog_data[0]), .SD2(prog_data[1]), .SD3(prog_data[2]), 
          .Z(n10249[2]));
    PFUMX i33 (.BLUT(n14_adj_1052), .ALUT(n32376), .C0(\CPU.opcode[5] ), 
          .Z(n20));
    PFUMX i25599 (.BLUT(n37078), .ALUT(n37079), .C0(prog_data[0]), .Z(n37080));
    LUT4 i21678_2_lut (.A(\CPU.opcode [0]), .B(\CPU.opcode [2]), .Z(n31784)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i21678_2_lut.init = 16'heeee;
    LUT4 i14926_2_lut (.A(alu_out[5]), .B(\CPU.state[0] ), .Z(n9856[5])) /* synthesis lut_function=(A (B)) */ ;
    defparam i14926_2_lut.init = 16'h8888;
    MUX81 mux_3333_i897 (.D0(reg_A[7]), .D1(reg_B[7]), .D2(reg_C[7]), 
          .D3(reg_D[7]), .D4(reg_E[7]), .D5(reg_H[7]), .D6(reg_L[7]), 
          .D7(flag_I), .SD1(prog_data[0]), .SD2(prog_data[1]), .SD3(prog_data[2]), 
          .Z(n10249[7]));
    MUX81 i798 (.D0(reg_A[1]), .D1(reg_B[1]), .D2(reg_C[1]), .D3(reg_D[1]), 
          .D4(reg_E[1]), .D5(reg_H[1]), .D6(reg_L[1]), .D7(flag_S), 
          .SD1(prog_data[0]), .SD2(prog_data[1]), .SD3(prog_data[2]), 
          .Z(n10249[1]));
    PFUMX i64_adj_376 (.BLUT(n32355), .ALUT(n32356), .C0(\CPU.state[2] ), 
          .Z(n38_adj_1194));
    MUX81 alu_ctrl_3__I_0_Mux_6_i777 (.D0(\CPU_ALU.result_8__N_644 [6]), .D1(\CPU_ALU.result_8__N_617 [6]), 
          .D2(\CPU_ALU.result_8__N_609 [6]), .D3(\CPU_ALU.result_8__N_601 [6]), 
          .D4(\CPU_ALU.result_8__N_593 [6]), .D5(alu_in_x[5]), .D6(alu_in_x[5]), 
          .D7(alu_in_x[7]), .SD1(alu_ctrl[0]), .SD2(alu_ctrl[1]), .SD3(alu_ctrl[2]), 
          .Z(n7_adj_1331));
    LUT4 i3_4_lut_adj_377 (.A(n31956), .B(n73), .C(TP2_c), .D(n20_adj_1053), 
         .Z(CK_keep_enable_57)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut_adj_377.init = 16'h0400;
    PFUMX mux_3447_i2 (.BLUT(n32663), .ALUT(n32664), .C0(n10514), .Z(n10528[1]));
    LUT4 mux_4571_i5_4_lut (.A(n9856[4]), .B(n11921[4]), .C(n24637), .D(n31602), 
         .Z(n13897)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4571_i5_4_lut.init = 16'haca0;
    CCU2D add_806_7 (.A0(reg_SP[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_SP[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29142), .COUT(n29143), .S0(n1539[5]), .S1(n1539[6]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_806_7.INIT0 = 16'h5555;
    defparam add_806_7.INIT1 = 16'h5555;
    defparam add_806_7.INJECT1_0 = "NO";
    defparam add_806_7.INJECT1_1 = "NO";
    CCU2D add_806_5 (.A0(reg_SP[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_SP[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29141), .COUT(n29142), .S0(n1539[3]), .S1(n1539[4]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_806_5.INIT0 = 16'h5555;
    defparam add_806_5.INIT1 = 16'h5555;
    defparam add_806_5.INJECT1_0 = "NO";
    defparam add_806_5.INJECT1_1 = "NO";
    PFUMX i25597 (.BLUT(n37075), .ALUT(n37076), .C0(prog_data[0]), .Z(n37077));
    CCU2D add_806_3 (.A0(reg_SP[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_SP[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29140), .COUT(n29141), .S0(n1539[1]), .S1(n1539[2]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_806_3.INIT0 = 16'h5555;
    defparam add_806_3.INIT1 = 16'h5555;
    defparam add_806_3.INJECT1_0 = "NO";
    defparam add_806_3.INJECT1_1 = "NO";
    CCU2D add_806_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_SP[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n29140), .S1(n1539[0]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_806_1.INIT0 = 16'hF000;
    defparam add_806_1.INIT1 = 16'h5555;
    defparam add_806_1.INJECT1_0 = "NO";
    defparam add_806_1.INJECT1_1 = "NO";
    PFUMX i22057 (.BLUT(n32170), .ALUT(n32171), .C0(n15239), .Z(n32172));
    PFUMX i24124 (.BLUT(n32592), .ALUT(n34581), .C0(n9513), .Z(n34582));
    PFUMX i24116 (.BLUT(n34569), .ALUT(n34568), .C0(\CPU.opcode [2]), 
          .Z(n34570));
    LUT4 reg_L_7__bdd_3_lut_24889 (.A(reg_L[7]), .B(n35127), .C(n20676), 
         .Z(n35128)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam reg_L_7__bdd_3_lut_24889.init = 16'hcaca;
    LUT4 i1_4_lut_adj_378 (.A(n15255), .B(n31816), .C(n37255), .D(\CPU.state[0] ), 
         .Z(n73)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_378.init = 16'hfaee;
    PFUMX i64_adj_379 (.BLUT(n32478), .ALUT(n32479), .C0(\CPU.state[2] ), 
          .Z(n38_adj_1224));
    PFUMX i22149 (.BLUT(n10205[5]), .ALUT(n32292), .C0(prog_data[1]), 
          .Z(n32264));
    PFUMX i22152 (.BLUT(n10205[6]), .ALUT(n32284), .C0(prog_data[1]), 
          .Z(n32267));
    PFUMX i22156 (.BLUT(n32269), .ALUT(n32270), .C0(prog_data[1]), .Z(n32271));
    PFUMX i64_adj_380 (.BLUT(n32367), .ALUT(n32368), .C0(\CPU.state[2] ), 
          .Z(n38_adj_1192));
    PFUMX i25595 (.BLUT(n37072), .ALUT(n37073), .C0(prog_data[0]), .Z(n37074));
    LUT4 mux_1303_Mux_2_i62_3_lut (.A(n6928[2]), .B(n6940[2]), .C(prog_data[5]), 
         .Z(n62_adj_1266)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam mux_1303_Mux_2_i62_3_lut.init = 16'hcaca;
    FD1P3JX reg_L_i0_i0 (.D(n42_adj_1340), .SP(CK_keep_enable_130), .PD(n20702), 
            .CK(CK_keep), .Q(reg_L[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_L_i0_i0.GSR = "ENABLED";
    CCU2D add_3237_11 (.A0(reg_IY[9]), .B0(prog_data[0]), .C0(GND_net), 
          .D0(GND_net), .A1(reg_IY[10]), .B1(prog_data[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n29174), .S0(n6940[9]), .S1(n6940[10]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3237_11.INIT0 = 16'h5999;
    defparam add_3237_11.INIT1 = 16'h5999;
    defparam add_3237_11.INJECT1_0 = "NO";
    defparam add_3237_11.INJECT1_1 = "NO";
    PFUMX i25593 (.BLUT(n37069), .ALUT(n37070), .C0(prog_data[4]), .Z(n33369));
    PFUMX i22120 (.BLUT(n32233), .ALUT(n32234), .C0(n3382), .Z(n81_adj_1031));
    LUT4 i14924_2_lut (.A(alu_out[4]), .B(\CPU.state[0] ), .Z(n9856[4])) /* synthesis lut_function=(A (B)) */ ;
    defparam i14924_2_lut.init = 16'h8888;
    PFUMX i22060 (.BLUT(n32173), .ALUT(n32174), .C0(n15239), .Z(n32175));
    FD1P3JX reg_H_i0_i0 (.D(n42_adj_1341), .SP(CK_keep_enable_130), .PD(n20701), 
            .CK(CK_keep), .Q(reg_H[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam reg_H_i0_i0.GSR = "ENABLED";
    PFUMX i24113 (.BLUT(n34565), .ALUT(n34564), .C0(prog_data[6]), .Z(n34566));
    PFUMX i64_adj_381 (.BLUT(n32475), .ALUT(n32476), .C0(\CPU.state[2] ), 
          .Z(n38_adj_1222));
    PFUMX i64_adj_382 (.BLUT(n32380), .ALUT(n32381), .C0(\CPU.state[2] ), 
          .Z(n38_adj_1190));
    PFUMX i24105 (.BLUT(n1916[1]), .ALUT(n34556), .C0(\CPU.state[0] ), 
          .Z(n34557));
    LUT4 mux_4571_i4_4_lut (.A(n9856[3]), .B(n11921[3]), .C(n24637), .D(n31602), 
         .Z(n13896)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4571_i4_4_lut.init = 16'haca0;
    PFUMX mux_176_Mux_0_i46 (.BLUT(n32382), .ALUT(n441[0]), .C0(prog_data[3]), 
          .Z(n46_adj_1279)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;
    LUT4 i23324_2_lut_3_lut (.A(\CPU.opcode [1]), .B(n13673), .C(n946[5]), 
         .Z(n32275)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23324_2_lut_3_lut.init = 16'h1010;
    CCU2D add_3237_9 (.A0(reg_IY[7]), .B0(prog_data[0]), .C0(GND_net), 
          .D0(GND_net), .A1(reg_IY[8]), .B1(prog_data[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n29173), .COUT(n29174), .S0(n6940[7]), 
          .S1(n6940[8]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3237_9.INIT0 = 16'h5999;
    defparam add_3237_9.INIT1 = 16'h5999;
    defparam add_3237_9.INJECT1_0 = "NO";
    defparam add_3237_9.INJECT1_1 = "NO";
    PFUMX i29 (.BLUT(n32375), .ALUT(n16), .C0(\CPU.state[2] ), .Z(n18_adj_1246));
    PFUMX i24096 (.BLUT(n1916[2]), .ALUT(n34542), .C0(\CPU.state[0] ), 
          .Z(n34543));
    PFUMX i22066 (.BLUT(n32179), .ALUT(n32180), .C0(n15239), .Z(n32181));
    PFUMX i25591 (.BLUT(n37066), .ALUT(n37067), .C0(prog_data[0]), .Z(n37068));
    LUT4 prog_data_5__bdd_4_lut_27650 (.A(prog_data[5]), .B(n22), .C(\CPU.state[0] ), 
         .D(n40215), .Z(n40216)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam prog_data_5__bdd_4_lut_27650.init = 16'h2000;
    PFUMX i64_adj_383 (.BLUT(n32472), .ALUT(n32473), .C0(\CPU.state[2] ), 
          .Z(n38_adj_1220));
    PFUMX i64_adj_384 (.BLUT(n32413), .ALUT(n32414), .C0(\CPU.state[2] ), 
          .Z(n38_adj_1188));
    LUT4 n12_bdd_3_lut_25576 (.A(n12_adj_1257), .B(\CPU.opcode [1]), .C(\CPU.opcode [0]), 
         .Z(n35197)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam n12_bdd_3_lut_25576.init = 16'h4040;
    LUT4 i23069_4_lut (.A(n10528[8]), .B(n13713), .C(n32421), .D(n13698), 
         .Z(n32753)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23069_4_lut.init = 16'hc088;
    PFUMX i12825 (.BLUT(n32287), .ALUT(n22926), .C0(n3376), .Z(alu_cin_N_949));
    PFUMX i22069 (.BLUT(n32182), .ALUT(n32183), .C0(n15239), .Z(n32184));
    PFUMX i25589 (.BLUT(n37063), .ALUT(n37064), .C0(\CPU.state [5]), .Z(n37065));
    PFUMX i64_adj_385 (.BLUT(n32469), .ALUT(n32470), .C0(\CPU.state[2] ), 
          .Z(n38_adj_1217));
    CCU2D add_76_13 (.A0(prog_addr[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n29139), 
          .S0(n946[11]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam add_76_13.INIT0 = 16'h5aaa;
    defparam add_76_13.INIT1 = 16'h0000;
    defparam add_76_13.INJECT1_0 = "NO";
    defparam add_76_13.INJECT1_1 = "NO";
    PFUMX i64_adj_386 (.BLUT(n32285), .ALUT(n32286), .C0(\CPU.state[2] ), 
          .Z(n38_adj_1186));
    PFUMX i24087 (.BLUT(n1916[3]), .ALUT(n34528), .C0(\CPU.state[0] ), 
          .Z(n34529));
    PFUMX i25587 (.BLUT(n37060), .ALUT(n37061), .C0(n10514), .Z(n31564));
    LUT4 i1548_2_lut (.A(prog_data[5]), .B(n7453), .Z(n7357)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i1548_2_lut.init = 16'h2222;
    CCU2D add_3237_7 (.A0(reg_IY[5]), .B0(prog_data[0]), .C0(GND_net), 
          .D0(GND_net), .A1(reg_IY[6]), .B1(prog_data[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n29172), .COUT(n29173), .S0(n6940[5]), 
          .S1(n6940[6]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3237_7.INIT0 = 16'h5999;
    defparam add_3237_7.INIT1 = 16'h5999;
    defparam add_3237_7.INJECT1_0 = "NO";
    defparam add_3237_7.INJECT1_1 = "NO";
    LUT4 i23389_2_lut_3_lut (.A(\CPU.opcode [1]), .B(n13673), .C(n946[4]), 
         .Z(n32279)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(869[5] 959[14])
    defparam i23389_2_lut_3_lut.init = 16'h1010;
    PFUMX i25585 (.BLUT(n37057), .ALUT(n37058), .C0(\CPU.opcode [3]), 
          .Z(n37059));
    CCU2D add_3237_5 (.A0(reg_IY[3]), .B0(prog_data[0]), .C0(GND_net), 
          .D0(GND_net), .A1(reg_IY[4]), .B1(prog_data[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n29171), .COUT(n29172), .S0(n6940[3]), 
          .S1(n6940[4]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3237_5.INIT0 = 16'h5999;
    defparam add_3237_5.INIT1 = 16'h5999;
    defparam add_3237_5.INJECT1_0 = "NO";
    defparam add_3237_5.INJECT1_1 = "NO";
    PFUMX i22075 (.BLUT(n32188), .ALUT(n32189), .C0(n15239), .Z(n32190));
    PFUMX i64_adj_387 (.BLUT(n32466), .ALUT(n32467), .C0(\CPU.state[2] ), 
          .Z(n38_adj_1210));
    LUT4 i14887_2_lut (.A(alu_out[3]), .B(\CPU.state[0] ), .Z(n9856[3])) /* synthesis lut_function=(A (B)) */ ;
    defparam i14887_2_lut.init = 16'h8888;
    PFUMX i24080 (.BLUT(n1916[4]), .ALUT(n34519), .C0(\CPU.state[0] ), 
          .Z(n34520));
    LUT4 i5705_4_lut (.A(n14373[1]), .B(n13122[1]), .C(n15255), .D(n13096), 
         .Z(n15285)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i5705_4_lut.init = 16'hca0a;
    PFUMX i64_adj_388 (.BLUT(n32296), .ALUT(n32297), .C0(\CPU.state[2] ), 
          .Z(n38_adj_1180));
    LUT4 mux_4104_i2_3_lut (.A(prog_addr[1]), .B(n1851[1]), .C(\CPU.opcode[5] ), 
         .Z(n13122[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(1065[5] 1103[14])
    defparam mux_4104_i2_3_lut.init = 16'hcaca;
    LUT4 mux_4571_i3_4_lut (.A(n9856[2]), .B(n11921[2]), .C(n24637), .D(n31602), 
         .Z(n13895)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam mux_4571_i3_4_lut.init = 16'haca0;
    CCU2D add_76_11 (.A0(prog_addr[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(prog_addr[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29138), .COUT(n29139), .S0(n946[9]), .S1(n946[10]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam add_76_11.INIT0 = 16'h5aaa;
    defparam add_76_11.INIT1 = 16'h5aaa;
    defparam add_76_11.INJECT1_0 = "NO";
    defparam add_76_11.INJECT1_1 = "NO";
    PFUMX i22078 (.BLUT(n32191), .ALUT(n32192), .C0(n15239), .Z(n32193));
    LUT4 i1555_2_lut (.A(prog_data[6]), .B(n7354), .Z(n7374)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam i1555_2_lut.init = 16'h2222;
    PFUMX i22084 (.BLUT(n32197), .ALUT(n32198), .C0(n15239), .Z(n32199));
    PFUMX i64_adj_389 (.BLUT(n32463), .ALUT(n32464), .C0(\CPU.state[2] ), 
          .Z(n38_adj_1070));
    PFUMX i64_adj_390 (.BLUT(n32303), .ALUT(n32304), .C0(\CPU.state[2] ), 
          .Z(n38));
    CCU2D add_3237_3 (.A0(reg_IY[1]), .B0(prog_data[0]), .C0(GND_net), 
          .D0(GND_net), .A1(reg_IY[2]), .B1(prog_data[0]), .C1(GND_net), 
          .D1(GND_net), .CIN(n29170), .COUT(n29171), .S0(n6940[1]), 
          .S1(n6940[2]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3237_3.INIT0 = 16'h5999;
    defparam add_3237_3.INIT1 = 16'h5999;
    defparam add_3237_3.INJECT1_0 = "NO";
    defparam add_3237_3.INJECT1_1 = "NO";
    PFUMX i22087 (.BLUT(n32200), .ALUT(n32201), .C0(n15239), .Z(n32202));
    CCU2D add_3237_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_IY[0]), .B1(prog_data[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n29170), .S1(n6940[0]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3237_1.INIT0 = 16'hF000;
    defparam add_3237_1.INIT1 = 16'h5999;
    defparam add_3237_1.INJECT1_0 = "NO";
    defparam add_3237_1.INJECT1_1 = "NO";
    CCU2D add_3239_11 (.A0(reg_IY[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(reg_IY[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n29168), .S0(n6928[9]), .S1(n6928[10]));   // c:/kevan/a3041/p3041a/osr8v3.vhd(478[5] 817[14])
    defparam add_3239_11.INIT0 = 16'h5aaa;
    defparam add_3239_11.INIT1 = 16'h5aaa;
    defparam add_3239_11.INJECT1_0 = "NO";
    defparam add_3239_11.INJECT1_1 = "NO";
    L6MUX21 mux_3333_i1 (.D0(n32271), .D1(n32274), .SD(prog_data[2]), 
            .Z(n10249[0]));
    PFUMX i25583 (.BLUT(n37054), .ALUT(n37055), .C0(prog_data[2]), .Z(n37056));
    FD1P3DX prog_cntr_i0_i2 (.D(n9528[2]), .SP(CK_keep_enable_136), .CK(CK_keep), 
            .CD(TP2_c), .Q(prog_addr[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam prog_cntr_i0_i2.GSR = "ENABLED";
    FD1P3DX prog_cntr_i0_i3 (.D(n9528[3]), .SP(CK_keep_enable_136), .CK(CK_keep), 
            .CD(TP2_c), .Q(prog_addr[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam prog_cntr_i0_i3.GSR = "ENABLED";
    FD1P3DX prog_cntr_i0_i4 (.D(n9528[4]), .SP(CK_keep_enable_136), .CK(CK_keep), 
            .CD(TP2_c), .Q(prog_addr[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam prog_cntr_i0_i4.GSR = "ENABLED";
    FD1P3DX prog_cntr_i0_i5 (.D(n9528[5]), .SP(CK_keep_enable_136), .CK(CK_keep), 
            .CD(TP2_c), .Q(prog_addr[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam prog_cntr_i0_i5.GSR = "ENABLED";
    FD1P3DX prog_cntr_i0_i6 (.D(n9528[6]), .SP(CK_keep_enable_136), .CK(CK_keep), 
            .CD(TP2_c), .Q(prog_addr[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam prog_cntr_i0_i6.GSR = "ENABLED";
    FD1P3DX prog_cntr_i0_i7 (.D(n9528[7]), .SP(CK_keep_enable_136), .CK(CK_keep), 
            .CD(TP2_c), .Q(prog_addr[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam prog_cntr_i0_i7.GSR = "ENABLED";
    FD1P3DX prog_cntr_i0_i8 (.D(n9528[8]), .SP(CK_keep_enable_140), .CK(CK_keep), 
            .CD(TP2_c), .Q(prog_addr[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam prog_cntr_i0_i8.GSR = "ENABLED";
    FD1P3DX prog_cntr_i0_i9 (.D(n9528[9]), .SP(CK_keep_enable_140), .CK(CK_keep), 
            .CD(TP2_c), .Q(prog_addr[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam prog_cntr_i0_i9.GSR = "ENABLED";
    FD1P3DX prog_cntr_i0_i10 (.D(n9528[10]), .SP(CK_keep_enable_140), .CK(CK_keep), 
            .CD(TP2_c), .Q(prog_addr[10])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam prog_cntr_i0_i10.GSR = "ENABLED";
    FD1P3DX prog_cntr_i0_i11 (.D(n9528[11]), .SP(CK_keep_enable_140), .CK(CK_keep), 
            .CD(TP2_c), .Q(prog_addr[11])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=23, LSE_LLINE=301, LSE_RLINE=301 */ ;   // c:/kevan/a3041/p3041a/osr8v3.vhd(421[3] 1131[10])
    defparam prog_cntr_i0_i11.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module ROM
//

module ROM (prog_addr, CK_keep_N_7, VCC_net, TP2_c, prog_data, GND_net, 
            n20690, n3376, n12, n31749, n63) /* synthesis NGD_DRC_MASK=1 */ ;
    input [11:0]prog_addr;
    input CK_keep_N_7;
    input VCC_net;
    input TP2_c;
    output [7:0]prog_data;
    input GND_net;
    output n20690;
    input n3376;
    input n12;
    output n31749;
    output n63;
    
    wire CK_keep_N_7 /* synthesis is_inv_clock=1, is_clock=1 */ ;   // c:/kevan/a3041/p3041a/main.vhd(154[9:18])
    wire TP2_c /* synthesis nomerge="" */ ;   // c:/kevan/a3041/p3041a/main.vhd(104[43:48])
    
    wire n35246;
    
    DP8KC ROM_0_0_3_0 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(GND_net), .ADA1(prog_addr[0]), 
          .ADA2(prog_addr[1]), .ADA3(prog_addr[2]), .ADA4(prog_addr[3]), 
          .ADA5(prog_addr[4]), .ADA6(prog_addr[5]), .ADA7(prog_addr[6]), 
          .ADA8(prog_addr[7]), .ADA9(prog_addr[8]), .ADA10(prog_addr[9]), 
          .ADA11(prog_addr[10]), .ADA12(prog_addr[11]), .CEA(VCC_net), 
          .OCEA(VCC_net), .CLKA(CK_keep_N_7), .WEA(GND_net), .CSA0(GND_net), 
          .CSA1(GND_net), .CSA2(GND_net), .RSTA(TP2_c), .DIB0(GND_net), 
          .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), 
          .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), 
          .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), 
          .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), 
          .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), 
          .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), 
          .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), 
          .RSTB(GND_net), .DOA0(prog_data[6]), .DOA1(prog_data[7])) /* synthesis MEM_LPC_FILE="ROM.lpc", MEM_INIT_FILE="rom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=293, LSE_RLINE=293 */ ;   // c:/kevan/a3041/p3041a/main.vhd(293[8:18])
    defparam ROM_0_0_3_0.DATA_WIDTH_A = 2;
    defparam ROM_0_0_3_0.DATA_WIDTH_B = 2;
    defparam ROM_0_0_3_0.REGMODE_A = "NOREG";
    defparam ROM_0_0_3_0.REGMODE_B = "NOREG";
    defparam ROM_0_0_3_0.CSDECODE_A = "0b000";
    defparam ROM_0_0_3_0.CSDECODE_B = "0b111";
    defparam ROM_0_0_3_0.WRITEMODE_A = "NORMAL";
    defparam ROM_0_0_3_0.WRITEMODE_B = "NORMAL";
    defparam ROM_0_0_3_0.GSR = "ENABLED";
    defparam ROM_0_0_3_0.RESETMODE = "ASYNC";
    defparam ROM_0_0_3_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_0_0_3_0.INIT_DATA = "STATIC";
    defparam ROM_0_0_3_0.INITVAL_00 = "0x00000000000000000040000000021000000000100000000040000000000400000000000000101030";
    defparam ROM_0_0_3_0.INITVAL_01 = "0x01201080000000000800000000480500000000000200000000120140000000000080000000208050";
    defparam ROM_0_0_3_0.INITVAL_02 = "0x00000008000000000200000000120108000000000080000000020090024000000000040000000010";
    defparam ROM_0_0_3_0.INITVAL_03 = "0x0000000004000C00000002000182700000006000002070080700C050080000000000000020000240";
    defparam ROM_0_0_3_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_3_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_0_0_1_2 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(GND_net), .ADA1(prog_addr[0]), 
          .ADA2(prog_addr[1]), .ADA3(prog_addr[2]), .ADA4(prog_addr[3]), 
          .ADA5(prog_addr[4]), .ADA6(prog_addr[5]), .ADA7(prog_addr[6]), 
          .ADA8(prog_addr[7]), .ADA9(prog_addr[8]), .ADA10(prog_addr[9]), 
          .ADA11(prog_addr[10]), .ADA12(prog_addr[11]), .CEA(VCC_net), 
          .OCEA(VCC_net), .CLKA(CK_keep_N_7), .WEA(GND_net), .CSA0(GND_net), 
          .CSA1(GND_net), .CSA2(GND_net), .RSTA(TP2_c), .DIB0(GND_net), 
          .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), 
          .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), 
          .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), 
          .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), 
          .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), 
          .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), 
          .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), 
          .RSTB(GND_net), .DOA0(prog_data[2]), .DOA1(prog_data[3])) /* synthesis MEM_LPC_FILE="ROM.lpc", MEM_INIT_FILE="rom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=293, LSE_RLINE=293 */ ;   // c:/kevan/a3041/p3041a/main.vhd(293[8:18])
    defparam ROM_0_0_1_2.DATA_WIDTH_A = 2;
    defparam ROM_0_0_1_2.DATA_WIDTH_B = 2;
    defparam ROM_0_0_1_2.REGMODE_A = "NOREG";
    defparam ROM_0_0_1_2.REGMODE_B = "NOREG";
    defparam ROM_0_0_1_2.CSDECODE_A = "0b000";
    defparam ROM_0_0_1_2.CSDECODE_B = "0b111";
    defparam ROM_0_0_1_2.WRITEMODE_A = "NORMAL";
    defparam ROM_0_0_1_2.WRITEMODE_B = "NORMAL";
    defparam ROM_0_0_1_2.GSR = "ENABLED";
    defparam ROM_0_0_1_2.RESETMODE = "ASYNC";
    defparam ROM_0_0_1_2.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_0_0_1_2.INIT_DATA = "STATIC";
    defparam ROM_0_0_1_2.INITVAL_00 = "0x1A83401A211A03401A07080D8068100E80D086711A03401AC203A03080D00E80D08E401A83700030";
    defparam ROM_0_0_1_2.INITVAL_01 = "0x0003508E501A0341081D068D3080D503A430A0D2020741A64D006540EA0D08648082D309A3401A51";
    defparam ROM_0_0_1_2.INITVAL_02 = "0x0681D000301AE400420709A341A03508E501A8341081D068D30A00006A470A0D40688403A341A650";
    defparam ROM_0_0_1_2.INITVAL_03 = "0x00033084D003AC0124750248000070044470E0D7080220422004420040741A0B405A01102130844D";
    defparam ROM_0_0_1_2.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_1_2.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_0_0_0_3 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(GND_net), .ADA1(prog_addr[0]), 
          .ADA2(prog_addr[1]), .ADA3(prog_addr[2]), .ADA4(prog_addr[3]), 
          .ADA5(prog_addr[4]), .ADA6(prog_addr[5]), .ADA7(prog_addr[6]), 
          .ADA8(prog_addr[7]), .ADA9(prog_addr[8]), .ADA10(prog_addr[9]), 
          .ADA11(prog_addr[10]), .ADA12(prog_addr[11]), .CEA(VCC_net), 
          .OCEA(VCC_net), .CLKA(CK_keep_N_7), .WEA(GND_net), .CSA0(GND_net), 
          .CSA1(GND_net), .CSA2(GND_net), .RSTA(TP2_c), .DIB0(GND_net), 
          .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), 
          .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), 
          .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), 
          .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), 
          .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), 
          .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), 
          .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), 
          .RSTB(GND_net), .DOA0(prog_data[0]), .DOA1(prog_data[1])) /* synthesis MEM_LPC_FILE="ROM.lpc", MEM_INIT_FILE="rom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=293, LSE_RLINE=293 */ ;   // c:/kevan/a3041/p3041a/main.vhd(293[8:18])
    defparam ROM_0_0_0_3.DATA_WIDTH_A = 2;
    defparam ROM_0_0_0_3.DATA_WIDTH_B = 2;
    defparam ROM_0_0_0_3.REGMODE_A = "NOREG";
    defparam ROM_0_0_0_3.REGMODE_B = "NOREG";
    defparam ROM_0_0_0_3.CSDECODE_A = "0b000";
    defparam ROM_0_0_0_3.CSDECODE_B = "0b111";
    defparam ROM_0_0_0_3.WRITEMODE_A = "NORMAL";
    defparam ROM_0_0_0_3.WRITEMODE_B = "NORMAL";
    defparam ROM_0_0_0_3.GSR = "ENABLED";
    defparam ROM_0_0_0_3.RESETMODE = "ASYNC";
    defparam ROM_0_0_0_3.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_0_0_0_3.INIT_DATA = "STATIC";
    defparam ROM_0_0_0_3.INITVAL_00 = "0x128A60522013067052420C2941483804C19014501306705202012C60849C04E1908471120A600255";
    defparam ROM_0_0_0_3.INITVAL_01 = "0x0822310442130A411C090CA820888E0124A0C4920702512C090243804A29014481C0960B024090E0";
    defparam ROM_0_0_0_3.INITVAL_02 = "0x04A0902A3013441046820B2601222310442130A411C090CA820804104682084901488E0126510440";
    defparam ROM_0_0_0_3.INITVAL_03 = "0x0000A0A090012C4040A6068CF0B2F1046C20E09A080400004100403008A4128240124310A6208668";
    defparam ROM_0_0_0_3.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_0_3.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_0_0_2_1 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(GND_net), .ADA1(prog_addr[0]), 
          .ADA2(prog_addr[1]), .ADA3(prog_addr[2]), .ADA4(prog_addr[3]), 
          .ADA5(prog_addr[4]), .ADA6(prog_addr[5]), .ADA7(prog_addr[6]), 
          .ADA8(prog_addr[7]), .ADA9(prog_addr[8]), .ADA10(prog_addr[9]), 
          .ADA11(prog_addr[10]), .ADA12(prog_addr[11]), .CEA(VCC_net), 
          .OCEA(VCC_net), .CLKA(CK_keep_N_7), .WEA(GND_net), .CSA0(GND_net), 
          .CSA1(GND_net), .CSA2(GND_net), .RSTA(TP2_c), .DIB0(GND_net), 
          .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), 
          .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), 
          .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), 
          .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), 
          .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), 
          .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), 
          .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), 
          .RSTB(GND_net), .DOA0(prog_data[4]), .DOA1(prog_data[5])) /* synthesis MEM_LPC_FILE="ROM.lpc", MEM_INIT_FILE="rom.mem", syn_instantiated=1, LSE_LINE_FILE_ID=25, LSE_LCOL=8, LSE_RCOL=18, LSE_LLINE=293, LSE_RLINE=293 */ ;   // c:/kevan/a3041/p3041a/main.vhd(293[8:18])
    defparam ROM_0_0_2_1.DATA_WIDTH_A = 2;
    defparam ROM_0_0_2_1.DATA_WIDTH_B = 2;
    defparam ROM_0_0_2_1.REGMODE_A = "NOREG";
    defparam ROM_0_0_2_1.REGMODE_B = "NOREG";
    defparam ROM_0_0_2_1.CSDECODE_A = "0b000";
    defparam ROM_0_0_2_1.CSDECODE_B = "0b111";
    defparam ROM_0_0_2_1.WRITEMODE_A = "NORMAL";
    defparam ROM_0_0_2_1.WRITEMODE_B = "NORMAL";
    defparam ROM_0_0_2_1.GSR = "ENABLED";
    defparam ROM_0_0_2_1.RESETMODE = "ASYNC";
    defparam ROM_0_0_2_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_0_0_2_1.INIT_DATA = "STATIC";
    defparam ROM_0_0_2_1.INITVAL_00 = "0x0A2150CA8C0A21408A11088550286D02845022740A21408AD818A1108851028450A2440AA170C800";
    defparam ROM_0_0_2_1.INITVAL_01 = "0x1C016022440AA9607665128590805808A110AC581DA960A26500261028450B26316C5908A9400A84";
    defparam ROM_0_0_2_1.INITVAL_02 = "0x1A8751D6870BA4611CD90CA160A016022440AA960766512859082E002C110885512C3B0CA940B241";
    defparam ROM_0_0_2_1.INITVAL_03 = "0x0000508A580AADC000940C041084B7108F50EE5D0880600A0400A0700AD70A2D40EA1A07E0D08835";
    defparam ROM_0_0_2_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_0_0_2_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    LUT4 prog_data_6__bdd_3_lut_26016 (.A(prog_data[6]), .B(prog_data[1]), 
         .C(n35246), .Z(n20690)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam prog_data_6__bdd_3_lut_26016.init = 16'h8080;
    LUT4 prog_data_6__bdd_4_lut_24800 (.A(prog_data[5]), .B(prog_data[2]), 
         .C(prog_data[3]), .D(prog_data[4]), .Z(n35246)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam prog_data_6__bdd_4_lut_24800.init = 16'h1020;
    LUT4 i1_2_lut_3_lut (.A(prog_data[0]), .B(n3376), .C(n12), .Z(n31749)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(293[8:18])
    defparam i1_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i15316_3_lut_2_lut (.A(prog_data[0]), .B(n3376), .Z(n63)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/kevan/a3041/p3041a/main.vhd(293[8:18])
    defparam i15316_3_lut_2_lut.init = 16'h2222;
    
endmodule
