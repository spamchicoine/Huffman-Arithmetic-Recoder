/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Wed May 14 12:23:57 2025
/////////////////////////////////////////////////////////////


module HF_tANS_recoder ( PHI, RST, I_F, i_stream, BTR, o_stream, final_state
 );
  output [1:0] BTR;
  output [2:0] o_stream;
  output [3:0] final_state;
  input PHI, RST, I_F, i_stream;
  wire   n92, n93, n94, n95, n96, n97, n98, n99, n101, n103, n104, n105, n107,
         n110, n111, n124, n125, n126, n127, n128, n129, n130, n131, n133,
         n135, n136, n137, n139, n142, n143, n172, n173, n175, n174, n176,
         n177, n178, n179, n189, n191, \U24/Z_0 , \U24/Z_1 , \U24/Z_2 ,
         \U24/Z_3 , \U24/DATA2_0 , \U24/DATA2_1 , \U24/DATA2_2 , \U24/DATA2_3 ,
         \U20/Z_0 , \U19/Z_0 , \U19/Z_1 , \U19/Z_2 , \U19/Z_3 , \U18/Z_0 ,
         \U18/Z_1 , \U18/DATA1_0 , \U18/DATA1_1 , \srl_165/B[2] ,
         \srl_165/B[1] , \srl_165/B[0] , \sll_165/A[3] , \sll_165/A[2] ,
         \sub_125/A[1] , \sub_125/A[2] , \sub_125/A[3] , \sub_148/B[0] ,
         \sub_148/B[1] , \sub_148/B[2] , n267, n268, n269, n270, n271, n272,
         n273, n276, n278, n279, n280, n286, n288, n289, n290, n291, n292,
         n293, n294, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n308, n309, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453;
  assign final_state[0] = \U24/DATA2_0 ;
  assign final_state[1] = \U24/DATA2_1 ;
  assign final_state[2] = \U24/DATA2_2 ;
  assign final_state[3] = \U24/DATA2_3 ;
  assign BTR[0] = \U18/Z_0 ;
  assign BTR[1] = \U18/Z_1 ;
  assign o_stream[2] = \srl_165/B[2] ;
  assign o_stream[1] = \srl_165/B[1] ;
  assign o_stream[0] = \srl_165/B[0] ;

  DFFQXL CS1_reg ( .D(n366), .CK(PHI), .Q(n173) );
  DFFQXL CS2_reg ( .D(n365), .CK(PHI), .Q(n179) );
  DFFQXL CS3_reg ( .D(n364), .CK(PHI), .Q(n178) );
  DFFQXL I_F0_reg ( .D(n363), .CK(PHI), .Q(n177) );
  DFFQXL I_F1_reg ( .D(n362), .CK(PHI), .Q(n176) );
  DFFQXL I_F2_reg ( .D(n361), .CK(PHI), .Q(n191) );
  DFFQXL \symbol0_reg[1]  ( .D(n360), .CK(PHI), .Q(n175) );
  DFFQXL \symbol0_reg[0]  ( .D(n359), .CK(PHI), .Q(n174) );
  DFFQXL \symbol1_reg[1]  ( .D(n358), .CK(PHI), .Q(n172) );
  DFFQXL \symbol2_reg[1]  ( .D(n357), .CK(PHI), .Q(n189) );
  DFFQXL \LS2_reg[2]  ( .D(n353), .CK(PHI), .Q(\sub_148/B[2] ) );
  DFFQXL \LS2_reg[1]  ( .D(n352), .CK(PHI), .Q(\sub_148/B[1] ) );
  DFFQXL \LS2_reg[0]  ( .D(n351), .CK(PHI), .Q(\sub_148/B[0] ) );
  DFFQXL \match_spread_reg[4][1][3]  ( .D(n350), .CK(PHI), .Q(n143) );
  DFFQXL \match_spread_reg[4][1][2]  ( .D(n349), .CK(PHI), .Q(n142) );
  DFFQXL \match_spread_reg[3][1][3]  ( .D(n348), .CK(PHI), .Q(n139) );
  DFFQXL \match_spread_reg[3][1][1]  ( .D(n347), .CK(PHI), .Q(n137) );
  DFFQXL \match_spread_reg[3][1][0]  ( .D(n346), .CK(PHI), .Q(n136) );
  DFFQXL \match_spread_reg[2][1][3]  ( .D(n345), .CK(PHI), .Q(n135) );
  DFFQXL \match_spread_reg[2][1][1]  ( .D(n344), .CK(PHI), .Q(n133) );
  DFFQXL \match_spread_reg[1][1][3]  ( .D(n343), .CK(PHI), .Q(n131) );
  DFFQXL \match_spread_reg[1][1][2]  ( .D(n342), .CK(PHI), .Q(n130) );
  DFFQXL \match_spread_reg[1][1][1]  ( .D(n341), .CK(PHI), .Q(n129) );
  DFFQXL \match_spread_reg[1][1][0]  ( .D(n340), .CK(PHI), .Q(n128) );
  DFFQXL \match_spread_reg[0][1][3]  ( .D(n339), .CK(PHI), .Q(n127) );
  DFFQXL \match_spread_reg[0][1][2]  ( .D(n338), .CK(PHI), .Q(n126) );
  DFFQXL \match_spread_reg[0][1][1]  ( .D(n337), .CK(PHI), .Q(n125) );
  DFFQXL \match_spread_reg[0][1][0]  ( .D(n336), .CK(PHI), .Q(n124) );
  DFFQXL \state_spread_reg[4][1][3]  ( .D(n335), .CK(PHI), .Q(n111) );
  DFFQXL \state_spread_reg[4][1][2]  ( .D(n334), .CK(PHI), .Q(n110) );
  DFFQXL \state_spread_reg[3][1][3]  ( .D(n333), .CK(PHI), .Q(n107) );
  DFFQXL \state_spread_reg[3][1][1]  ( .D(n332), .CK(PHI), .Q(n105) );
  DFFQXL \state_spread_reg[3][1][0]  ( .D(n331), .CK(PHI), .Q(n104) );
  DFFQXL \state_spread_reg[2][1][3]  ( .D(n330), .CK(PHI), .Q(n103) );
  DFFQXL \state_spread_reg[2][1][1]  ( .D(n329), .CK(PHI), .Q(n101) );
  DFFQXL \state_spread_reg[1][1][3]  ( .D(n328), .CK(PHI), .Q(n99) );
  DFFQXL \state_spread_reg[1][1][2]  ( .D(n327), .CK(PHI), .Q(n98) );
  DFFQXL \state_spread_reg[1][1][1]  ( .D(n326), .CK(PHI), .Q(n97) );
  DFFQXL \state_spread_reg[1][1][0]  ( .D(n325), .CK(PHI), .Q(n96) );
  DFFQXL \state_spread_reg[0][1][3]  ( .D(n324), .CK(PHI), .Q(n95) );
  DFFQXL \state_spread_reg[0][1][2]  ( .D(n323), .CK(PHI), .Q(n94) );
  DFFQXL \state_spread_reg[0][1][1]  ( .D(n322), .CK(PHI), .Q(n93) );
  DFFQXL \state_spread_reg[0][1][0]  ( .D(n321), .CK(PHI), .Q(n92) );
  TLATXL \next_state_reg[0]  ( .G(\U20/Z_0 ), .D(\U19/Z_0 ), .Q(\U24/DATA2_0 )
         );
  TLATXL \next_state_reg[1]  ( .G(\U20/Z_0 ), .D(\U19/Z_1 ), .Q(\U24/DATA2_1 ), 
        .QN(n371) );
  TLATXL \next_state_reg[3]  ( .G(\U20/Z_0 ), .D(\U19/Z_3 ), .Q(\U24/DATA2_3 ), 
        .QN(n369) );
  DFFRHQX1 \state0_reg[3]  ( .D(\U24/Z_3 ), .CK(PHI), .RN(n386), .Q(
        \sll_165/A[3] ) );
  TLATXL \next_state_reg[2]  ( .G(\U20/Z_0 ), .D(\U19/Z_2 ), .Q(\U24/DATA2_2 ), 
        .QN(n370) );
  DFFRHQX1 \state0_reg[2]  ( .D(\U24/Z_2 ), .CK(PHI), .RN(n386), .Q(
        \sll_165/A[2] ) );
  AO22X1 U36 ( .A0(n383), .A1(n92), .B0(n385), .B1(n124), .Y(n321) );
  AO22X1 U37 ( .A0(n383), .A1(n93), .B0(n385), .B1(n125), .Y(n322) );
  AO22X1 U38 ( .A0(n383), .A1(n94), .B0(n385), .B1(n126), .Y(n323) );
  OAI22X1 U39 ( .A0(n386), .A1(n267), .B0(n383), .B1(n268), .Y(n324) );
  AO22X1 U40 ( .A0(n383), .A1(n96), .B0(n385), .B1(n128), .Y(n325) );
  AO22X1 U41 ( .A0(n383), .A1(n97), .B0(n385), .B1(n129), .Y(n326) );
  AO22X1 U42 ( .A0(n383), .A1(n98), .B0(n385), .B1(n130), .Y(n327) );
  AO22X1 U43 ( .A0(n383), .A1(n99), .B0(n385), .B1(n131), .Y(n328) );
  AO22X1 U44 ( .A0(n383), .A1(n101), .B0(n385), .B1(n133), .Y(n329) );
  AO22X1 U45 ( .A0(n383), .A1(n103), .B0(n385), .B1(n135), .Y(n330) );
  AO22X1 U46 ( .A0(n383), .A1(n104), .B0(n385), .B1(n136), .Y(n331) );
  AO22X1 U47 ( .A0(n383), .A1(n105), .B0(n385), .B1(n137), .Y(n332) );
  AO22X1 U48 ( .A0(n383), .A1(n107), .B0(n385), .B1(n139), .Y(n333) );
  AO22X1 U49 ( .A0(n383), .A1(n110), .B0(n385), .B1(n142), .Y(n334) );
  AO22X1 U50 ( .A0(n383), .A1(n111), .B0(n385), .B1(n143), .Y(n335) );
  OAI2BB1X1 U51 ( .A0N(n124), .A1N(n383), .B0(n269), .Y(n336) );
  OAI2BB1X1 U52 ( .A0N(n125), .A1N(n383), .B0(n270), .Y(n337) );
  OAI2BB1X1 U53 ( .A0N(n126), .A1N(n384), .B0(n269), .Y(n338) );
  OAI211X1 U54 ( .A0(n386), .A1(n268), .B0(n271), .C0(n269), .Y(n339) );
  INVX1 U55 ( .A(n127), .Y(n268) );
  OAI2BB1X1 U56 ( .A0N(n128), .A1N(n383), .B0(n272), .Y(n340) );
  OAI2BB1X1 U57 ( .A0N(n129), .A1N(n383), .B0(n273), .Y(n341) );
  OAI2BB1X1 U58 ( .A0N(n130), .A1N(n384), .B0(n273), .Y(n342) );
  OAI2BB1X1 U59 ( .A0N(n131), .A1N(n383), .B0(n271), .Y(n343) );
  OAI2BB1X1 U60 ( .A0N(n133), .A1N(n384), .B0(n272), .Y(n344) );
  OAI2BB1X1 U61 ( .A0N(n135), .A1N(n384), .B0(n272), .Y(n345) );
  OAI2BB1X1 U62 ( .A0N(n136), .A1N(n384), .B0(n272), .Y(n346) );
  OAI2BB1X1 U63 ( .A0N(n137), .A1N(n384), .B0(n272), .Y(n347) );
  OAI2BB1X1 U64 ( .A0N(n139), .A1N(n384), .B0(n272), .Y(n348) );
  OAI2BB1X1 U65 ( .A0N(n142), .A1N(n384), .B0(n272), .Y(n349) );
  OAI2BB1X1 U66 ( .A0N(n143), .A1N(n384), .B0(n272), .Y(n350) );
  NAND2X1 U78 ( .A(n386), .B(n453), .Y(n271) );
  AO22X1 U80 ( .A0(n383), .A1(n189), .B0(n385), .B1(n172), .Y(n357) );
  OAI2BB1X1 U81 ( .A0N(n172), .A1N(n384), .B0(n269), .Y(n358) );
  INVX1 U82 ( .A(n276), .Y(n269) );
  NOR2X1 U83 ( .A(n278), .B(n383), .Y(n276) );
  OAI22X1 U84 ( .A0(n386), .A1(n453), .B0(n383), .B1(n279), .Y(n359) );
  OAI22X1 U86 ( .A0(n386), .A1(n278), .B0(n383), .B1(n280), .Y(n360) );
  INVX1 U87 ( .A(n175), .Y(n278) );
  AO22X1 U89 ( .A0(n383), .A1(n176), .B0(n385), .B1(n177), .Y(n362) );
  AO22X1 U90 ( .A0(n177), .A1(n383), .B0(I_F), .B1(n385), .Y(n363) );
  AO22X1 U91 ( .A0(n383), .A1(n178), .B0(n385), .B1(n179), .Y(n364) );
  AO22X1 U92 ( .A0(n383), .A1(n179), .B0(n385), .B1(n173), .Y(n365) );
  OAI32X1 U93 ( .A0(n279), .A1(n173), .A2(n383), .B0(n385), .B1(n280), .Y(n366) );
  INVX1 U94 ( .A(n173), .Y(n280) );
  INVX1 U95 ( .A(i_stream), .Y(n279) );
  NAND2X1 U97 ( .A(n369), .B(n452), .Y(\U24/Z_3 ) );
  OAI222X1 U105 ( .A0(n267), .A1(n289), .B0(n290), .B1(n291), .C0(n292), .C1(
        n293), .Y(n288) );
  INVX1 U106 ( .A(n103), .Y(n292) );
  NAND2X1 U107 ( .A(n294), .B(n375), .Y(n291) );
  INVX1 U108 ( .A(n111), .Y(n290) );
  INVX1 U109 ( .A(n95), .Y(n267) );
  AOI221X1 U114 ( .A0(n286), .A1(n98), .B0(n298), .B1(n94), .C0(n299), .Y(n297) );
  AND4X1 U115 ( .A(n375), .B(n294), .C(n110), .D(n451), .Y(n299) );
  AOI221X1 U117 ( .A0(n450), .A1(n105), .B0(n286), .B1(n97), .C0(n301), .Y(
        n300) );
  AOI32X1 U119 ( .A0(n451), .A1(n101), .A2(n303), .B0(n93), .B1(n298), .Y(n302) );
  AOI222X1 U122 ( .A0(n104), .A1(n450), .B0(n92), .B1(n298), .C0(n96), .C1(
        n286), .Y(n304) );
  NOR2X1 U123 ( .A(n289), .B(n451), .Y(n286) );
  NOR2X1 U124 ( .A(n305), .B(n289), .Y(n298) );
  NAND2BX1 U125 ( .AN(n294), .B(n375), .Y(n289) );
  NOR2X1 U130 ( .A(n375), .B(n294), .Y(n303) );
  CLKXOR2X1 U131 ( .A(n308), .B(n309), .Y(n294) );
  DFFHQX1 \shift1_reg[0]  ( .D(n320), .CK(PHI), .Q(\U18/DATA1_0 ) );
  DFFHQX1 \shift1_reg[1]  ( .D(n319), .CK(PHI), .Q(\U18/DATA1_1 ) );
  DFFHQX1 \LS1_reg[2]  ( .D(n356), .CK(PHI), .Q(\sub_125/A[3] ) );
  DFFHQX1 \LS1_reg[1]  ( .D(n355), .CK(PHI), .Q(\sub_125/A[2] ) );
  DFFRX1 \state0_reg[1]  ( .D(\U24/Z_1 ), .CK(PHI), .RN(n386), .Q(n446), .QN(
        n367) );
  DFFRX1 \state0_reg[0]  ( .D(\U24/Z_0 ), .CK(PHI), .RN(n386), .Q(n422), .QN(
        n368) );
  DFFHQX1 \LS1_reg[0]  ( .D(n354), .CK(PHI), .Q(\sub_125/A[1] ) );
  INVX2 U156 ( .A(\sub_125/A[1] ), .Y(n404) );
  OAI22X2 U157 ( .A0(n408), .A1(n407), .B0(n406), .B1(n405), .Y(n419) );
  AOI211X1 U158 ( .A0(n383), .A1(\U18/DATA1_0 ), .B0(n417), .C0(n416), .Y(n418) );
  OAI21X1 U159 ( .A0(n420), .A1(n419), .B0(n418), .Y(n320) );
  OAI31X2 U160 ( .A0(\U24/DATA2_3 ), .A1(n370), .A2(n430), .B0(n378), .Y(n407)
         );
  OAI21X2 U161 ( .A0(n399), .A1(n398), .B0(n397), .Y(n378) );
  NAND3BX2 U162 ( .AN(\sub_125/A[2] ), .B(n404), .C(\sub_125/A[3] ), .Y(n401)
         );
  NAND2BX1 U163 ( .AN(\U18/DATA1_1 ), .B(\U18/DATA1_0 ), .Y(n444) );
  OA21XL U164 ( .A0(n399), .A1(n398), .B0(n397), .Y(n373) );
  NAND2XL U165 ( .A(\sub_125/A[1] ), .B(n411), .Y(n415) );
  INVX1 U166 ( .A(n394), .Y(n408) );
  INVX1 U167 ( .A(n386), .Y(n383) );
  INVX1 U168 ( .A(n386), .Y(n384) );
  INVX1 U169 ( .A(n303), .Y(n293) );
  INVX1 U170 ( .A(n409), .Y(n410) );
  INVX1 U171 ( .A(n391), .Y(n413) );
  BUFX2 U172 ( .A(n386), .Y(n385) );
  NAND2X1 U173 ( .A(n409), .B(n386), .Y(n393) );
  OAI2BB1X1 U174 ( .A0N(n452), .A1N(\U24/DATA2_0 ), .B0(n421), .Y(\U24/Z_0 )
         );
  INVX1 U175 ( .A(n305), .Y(n451) );
  INVX1 U176 ( .A(n427), .Y(n450) );
  INVX1 U177 ( .A(n449), .Y(n439) );
  OAI2BB1X1 U178 ( .A0N(n394), .A1N(n393), .B0(n392), .Y(n420) );
  OAI2BB1X1 U179 ( .A0N(n369), .A1N(n379), .B0(n401), .Y(n398) );
  INVX1 U180 ( .A(n395), .Y(n402) );
  INVX1 U181 ( .A(n430), .Y(n431) );
  OAI2BB1X1 U182 ( .A0N(n448), .A1N(n381), .B0(n447), .Y(\srl_165/B[1] ) );
  INVX1 U183 ( .A(\sub_125/A[2] ), .Y(n411) );
  AOI21X1 U184 ( .A0(n411), .A1(n396), .B0(n404), .Y(n399) );
  NAND2X1 U185 ( .A(n369), .B(n370), .Y(n396) );
  NAND3BXL U186 ( .AN(n370), .B(\sub_125/A[1] ), .C(\U24/DATA2_3 ), .Y(n397)
         );
  OAI22X1 U187 ( .A0(n404), .A1(n371), .B0(\sub_125/A[1] ), .B1(n403), .Y(n405) );
  NAND2X1 U188 ( .A(\U24/DATA2_0 ), .B(n402), .Y(n403) );
  OR2XL U189 ( .A(n271), .B(n175), .Y(n272) );
  OAI2BB1X1 U190 ( .A0N(\sub_125/A[1] ), .A1N(n384), .B0(n272), .Y(n387) );
  NOR2X1 U191 ( .A(n411), .B(n404), .Y(n400) );
  NOR2X1 U192 ( .A(n415), .B(n414), .Y(n416) );
  NAND2X1 U193 ( .A(n413), .B(n412), .Y(n414) );
  INVX1 U194 ( .A(n174), .Y(n453) );
  OAI2BB1X1 U195 ( .A0N(\sub_125/A[2] ), .A1N(n384), .B0(n273), .Y(n355) );
  OAI2BB1X1 U196 ( .A0N(n452), .A1N(\U24/DATA2_2 ), .B0(n421), .Y(\U24/Z_2 )
         );
  OAI2BB1X1 U197 ( .A0N(n452), .A1N(\U24/DATA2_1 ), .B0(n421), .Y(\U24/Z_1 )
         );
  NAND2X1 U198 ( .A(n370), .B(\sub_125/A[2] ), .Y(n392) );
  OAI2BB1X1 U199 ( .A0N(n439), .A1N(n446), .B0(n435), .Y(n442) );
  OA22X1 U200 ( .A0(n434), .A1(n382), .B0(n433), .B1(n444), .Y(n435) );
  INVX1 U201 ( .A(\sll_165/A[3] ), .Y(n434) );
  OAI2BB1X1 U202 ( .A0N(n426), .A1N(n425), .B0(n441), .Y(n305) );
  INVX1 U203 ( .A(\sub_148/B[0] ), .Y(n425) );
  NAND2X1 U204 ( .A(n374), .B(n424), .Y(n426) );
  AOI22X1 U205 ( .A0(n439), .A1(n422), .B0(n438), .B1(n446), .Y(n374) );
  INVX1 U206 ( .A(n302), .Y(n301) );
  OAI21X1 U207 ( .A0(n437), .A1(n442), .B0(n436), .Y(n308) );
  XNOR2X1 U208 ( .A(n376), .B(n442), .Y(n375) );
  XNOR2X1 U209 ( .A(n441), .B(\sub_148/B[1] ), .Y(n376) );
  INVX1 U210 ( .A(\sll_165/A[2] ), .Y(n433) );
  OAI2BB1X1 U211 ( .A0N(n288), .A1N(n451), .B0(n452), .Y(n428) );
  OR2XL U212 ( .A(n410), .B(n391), .Y(n377) );
  NOR2BX1 U213 ( .AN(n373), .B(n377), .Y(n417) );
  AOI211XL U214 ( .A0(n431), .A1(\U24/DATA2_3 ), .B0(\sub_125/A[3] ), .C0(n373), .Y(n432) );
  NOR2BX1 U215 ( .AN(n443), .B(n438), .Y(n381) );
  AO21XL U216 ( .A0(n370), .A1(n371), .B0(\sub_125/A[2] ), .Y(n379) );
  INVX1 U217 ( .A(RST), .Y(n386) );
  OAI22XL U218 ( .A0(n368), .A1(n381), .B0(n368), .B1(n445), .Y(\srl_165/B[0] ) );
  NAND3BXL U219 ( .AN(\sub_125/A[2] ), .B(n404), .C(\sub_125/A[3] ), .Y(n380)
         );
  INVX1 U220 ( .A(n444), .Y(n438) );
  OAI2BB1X1 U221 ( .A0N(\sub_125/A[3] ), .A1N(n384), .B0(n272), .Y(n356) );
  INVX1 U222 ( .A(\sub_125/A[3] ), .Y(n412) );
  OAI2BB1X1 U223 ( .A0N(n404), .A1N(n411), .B0(\sub_125/A[3] ), .Y(n409) );
  NAND2BXL U224 ( .AN(\U18/DATA1_0 ), .B(\U18/DATA1_1 ), .Y(n382) );
  NAND2BXL U225 ( .AN(\U18/DATA1_0 ), .B(\U18/DATA1_1 ), .Y(n443) );
  INVX1 U226 ( .A(\U18/DATA1_0 ), .Y(n445) );
  NAND3BXL U227 ( .AN(\U18/DATA1_0 ), .B(n449), .C(n446), .Y(n447) );
  INVX1 U228 ( .A(n191), .Y(n452) );
  MX2XL U229 ( .A(n176), .B(n191), .S0(n383), .Y(n361) );
  NAND2BX1 U230 ( .AN(n191), .B(n178), .Y(\U20/Z_0 ) );
  NAND2BX1 U231 ( .AN(n453), .B(n276), .Y(n270) );
  NAND2BX1 U232 ( .AN(n387), .B(n270), .Y(n354) );
  NAND2BX1 U233 ( .AN(n174), .B(n276), .Y(n273) );
  NOR2BX1 U234 ( .AN(n452), .B(n297), .Y(n388) );
  NAND2BX1 U235 ( .AN(n452), .B(n189), .Y(n421) );
  NAND2BX1 U236 ( .AN(n388), .B(n421), .Y(\U19/Z_2 ) );
  NOR2BX1 U237 ( .AN(n452), .B(n304), .Y(n389) );
  NAND2BX1 U238 ( .AN(n389), .B(n421), .Y(\U19/Z_0 ) );
  NOR2BX1 U239 ( .AN(n452), .B(n300), .Y(n390) );
  NAND2BX1 U240 ( .AN(n390), .B(n421), .Y(\U19/Z_1 ) );
  NAND2BX1 U241 ( .AN(n369), .B(n385), .Y(n391) );
  NAND2BX1 U242 ( .AN(n412), .B(n413), .Y(n394) );
  NAND2BX1 U243 ( .AN(\sub_125/A[2] ), .B(n412), .Y(n395) );
  NAND2BX1 U244 ( .AN(\sub_125/A[1] ), .B(n402), .Y(n430) );
  NOR3BX1 U245 ( .AN(n380), .B(n370), .C(n400), .Y(n406) );
  MX2XL U246 ( .A(\sub_125/A[1] ), .B(\sub_148/B[0] ), .S0(n383), .Y(n351) );
  NAND2BX1 U247 ( .AN(\U18/DATA1_1 ), .B(n445), .Y(n449) );
  AND3XL U248 ( .A(\U18/DATA1_0 ), .B(\U18/DATA1_1 ), .C(\sll_165/A[3] ), .Y(
        n423) );
  AOI2BB1XL U249 ( .A0N(n433), .A1N(n382), .B0(n423), .Y(n424) );
  NAND2BX1 U250 ( .AN(n426), .B(\sub_148/B[0] ), .Y(n441) );
  NAND2BX1 U251 ( .AN(n293), .B(n305), .Y(n427) );
  AO22XL U252 ( .A0(n286), .A1(n99), .B0(n107), .B1(n450), .Y(n429) );
  OR2XL U253 ( .A(n429), .B(n428), .Y(\U19/Z_3 ) );
  MX2XL U254 ( .A(n432), .B(\U18/DATA1_1 ), .S0(n383), .Y(n319) );
  MX2XL U255 ( .A(\sub_125/A[2] ), .B(\sub_148/B[1] ), .S0(n383), .Y(n352) );
  NOR2BX1 U256 ( .AN(n441), .B(\sub_148/B[1] ), .Y(n437) );
  NAND2BX1 U257 ( .AN(n441), .B(\sub_148/B[1] ), .Y(n436) );
  MX2XL U258 ( .A(\sub_125/A[3] ), .B(\sub_148/B[2] ), .S0(n383), .Y(n353) );
  AO22XL U259 ( .A0(n439), .A1(\sll_165/A[2] ), .B0(n438), .B1(\sll_165/A[3] ), 
        .Y(n440) );
  XOR2XL U260 ( .A(n440), .B(\sub_148/B[2] ), .Y(n309) );
  NOR2BX1 U261 ( .AN(n449), .B(n367), .Y(n448) );
  AND3XL U262 ( .A(\sll_165/A[2] ), .B(n449), .C(n381), .Y(\srl_165/B[2] ) );
  NOR2BX1 U263 ( .AN(\U18/DATA1_0 ), .B(n178), .Y(\U18/Z_0 ) );
  NOR2BX1 U264 ( .AN(\U18/DATA1_1 ), .B(n178), .Y(\U18/Z_1 ) );
endmodule

