/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Thu May 15 12:44:37 2025
/////////////////////////////////////////////////////////////


module HF_tANS_recoder ( PHI, I_F, i_stream, BTR, o_stream, final_state );
  input [1:0] i_stream;
  output [1:0] BTR;
  output [2:0] o_stream;
  output [3:0] final_state;
  input PHI, I_F;
  wire   n81, n90, n91, n92, n93, n94, n95, n96, n97, n99, n101, n102, n103,
         n105, n108, n109, n122, n123, n124, n125, n126, n127, n128, n129,
         n131, n133, n134, n135, n137, n140, n141, n171, n170, n173, n172,
         n174, n175, n194, n193, n196, \U23/Z_0 , \U23/Z_1 , \U23/Z_2 ,
         \U22/Z_1 , \U21/Z_2 , \U21/Z_3 , \U21/Z_5 , \U20/Z_0 , \U20/Z_1 ,
         \srl_146/B[2] , \srl_146/B[1] , \sll_146/A[3] , \sll_146/A[2] ,
         \sll_146/A[1] , \sll_146/A[0] , \r419/B[0] , \r419/B[1] ,
         \sub_108/A[1] , \sub_108/A[2] , \sub_108/A[3] , \sub_130/B[0] ,
         \sub_130/B[1] , \sub_130/B[2] , n248, n249, n268, n269, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n414, n415;
  assign o_stream[2] = \srl_146/B[2] ;
  assign o_stream[1] = \srl_146/B[1] ;
  assign final_state[3] = \sll_146/A[3] ;
  assign final_state[2] = \sll_146/A[2] ;
  assign final_state[1] = \sll_146/A[1] ;
  assign final_state[0] = \sll_146/A[0] ;
  assign BTR[0] = \r419/B[0] ;
  assign BTR[1] = \r419/B[1] ;

  DFFQXL I_F0_reg ( .D(I_F), .CK(PHI), .Q(n175) );
  DFFQXL I_F1_reg ( .D(n175), .CK(PHI), .Q(n174) );
  DFFQXL I_F2_reg ( .D(n174), .CK(PHI), .Q(n196) );
  DFFQXL \symbol0_reg[1]  ( .D(i_stream[1]), .CK(PHI), .Q(n173) );
  DFFQXL \symbol0_reg[0]  ( .D(i_stream[0]), .CK(PHI), .Q(n172) );
  DFFQXL \symbol1_reg[1]  ( .D(n173), .CK(PHI), .Q(n171) );
  DFFQXL \symbol1_reg[0]  ( .D(n172), .CK(PHI), .Q(n170) );
  DFFQXL \symbol2_reg[1]  ( .D(n171), .CK(PHI), .Q(n194) );
  DFFQXL \symbol2_reg[0]  ( .D(n170), .CK(PHI), .Q(n193) );
  DFFQXL \LS1_reg[2]  ( .D(n81), .CK(PHI), .Q(\sub_108/A[3] ) );
  DFFQXL \LS1_reg[1]  ( .D(\U22/Z_1 ), .CK(PHI), .Q(\sub_108/A[2] ) );
  DFFQXL \LS1_reg[0]  ( .D(n248), .CK(PHI), .Q(\sub_108/A[1] ) );
  DFFQXL \LS2_reg[2]  ( .D(\sub_108/A[3] ), .CK(PHI), .Q(\sub_130/B[2] ) );
  DFFQXL \LS2_reg[1]  ( .D(\sub_108/A[2] ), .CK(PHI), .Q(\sub_130/B[1] ) );
  DFFQXL \LS2_reg[0]  ( .D(\sub_108/A[1] ), .CK(PHI), .Q(\sub_130/B[0] ) );
  DFFQXL \match_spread_reg[4][1][3]  ( .D(n81), .CK(PHI), .Q(n141) );
  DFFQXL \match_spread_reg[4][1][2]  ( .D(n81), .CK(PHI), .Q(n140) );
  DFFQXL \match_spread_reg[3][1][3]  ( .D(n81), .CK(PHI), .Q(n137) );
  DFFQXL \match_spread_reg[3][1][1]  ( .D(n81), .CK(PHI), .Q(n135) );
  DFFQXL \match_spread_reg[3][1][0]  ( .D(n81), .CK(PHI), .Q(n134) );
  DFFQXL \match_spread_reg[2][1][3]  ( .D(n81), .CK(PHI), .Q(n133) );
  DFFQXL \match_spread_reg[2][1][1]  ( .D(n81), .CK(PHI), .Q(n131) );
  DFFQXL \match_spread_reg[1][1][3]  ( .D(\U21/Z_5 ), .CK(PHI), .Q(n129) );
  DFFQXL \match_spread_reg[1][1][2]  ( .D(\U22/Z_1 ), .CK(PHI), .Q(n128) );
  DFFQXL \match_spread_reg[1][1][1]  ( .D(\U22/Z_1 ), .CK(PHI), .Q(n127) );
  DFFQXL \match_spread_reg[1][1][0]  ( .D(n81), .CK(PHI), .Q(n126) );
  DFFQXL \match_spread_reg[0][1][3]  ( .D(\U21/Z_3 ), .CK(PHI), .Q(n125) );
  DFFQXL \match_spread_reg[0][1][2]  ( .D(\U21/Z_2 ), .CK(PHI), .Q(n124) );
  DFFQXL \match_spread_reg[0][1][1]  ( .D(n414), .CK(PHI), .Q(n123) );
  DFFQXL \match_spread_reg[0][1][0]  ( .D(\U21/Z_2 ), .CK(PHI), .Q(n122) );
  DFFQXL \state_spread_reg[4][1][3]  ( .D(n141), .CK(PHI), .Q(n109) );
  DFFQXL \state_spread_reg[4][1][2]  ( .D(n140), .CK(PHI), .Q(n108) );
  DFFQXL \state_spread_reg[3][1][3]  ( .D(n137), .CK(PHI), .Q(n105) );
  DFFQXL \state_spread_reg[3][1][1]  ( .D(n135), .CK(PHI), .Q(n103) );
  DFFQXL \state_spread_reg[3][1][0]  ( .D(n134), .CK(PHI), .Q(n102) );
  DFFQXL \state_spread_reg[2][1][3]  ( .D(n133), .CK(PHI), .Q(n101) );
  DFFQXL \state_spread_reg[2][1][1]  ( .D(n131), .CK(PHI), .Q(n99) );
  DFFQXL \state_spread_reg[1][1][3]  ( .D(n129), .CK(PHI), .Q(n97) );
  DFFQXL \state_spread_reg[1][1][2]  ( .D(n128), .CK(PHI), .Q(n96) );
  DFFQXL \state_spread_reg[1][1][1]  ( .D(n127), .CK(PHI), .Q(n95) );
  DFFQXL \state_spread_reg[1][1][0]  ( .D(n126), .CK(PHI), .Q(n94) );
  DFFQXL \state_spread_reg[0][1][3]  ( .D(n125), .CK(PHI), .Q(n93) );
  DFFQXL \state_spread_reg[0][1][2]  ( .D(n124), .CK(PHI), .Q(n92) );
  DFFQXL \state_spread_reg[0][1][1]  ( .D(n123), .CK(PHI), .Q(n91) );
  DFFQXL \state_spread_reg[0][1][0]  ( .D(n122), .CK(PHI), .Q(n90) );
  DFFQXL \state0_reg[1]  ( .D(\U23/Z_1 ), .CK(PHI), .Q(\sll_146/A[1] ) );
  DFFQXL \state0_reg[2]  ( .D(\U23/Z_2 ), .CK(PHI), .Q(\sll_146/A[2] ) );
  DFFQXL \state0_reg[3]  ( .D(n328), .CK(PHI), .Q(\sll_146/A[3] ) );
  DFFQXL \state0_reg[0]  ( .D(\U23/Z_0 ), .CK(PHI), .Q(\sll_146/A[0] ) );
  OR2X1 U70 ( .A(n81), .B(\U22/Z_1 ), .Y(\U21/Z_5 ) );
  NAND2X1 U71 ( .A(n249), .B(n268), .Y(\U21/Z_3 ) );
  NAND2X1 U72 ( .A(n269), .B(n249), .Y(\U21/Z_2 ) );
  NOR2BX1 U73 ( .AN(n173), .B(n172), .Y(\U22/Z_1 ) );
  NAND2X1 U74 ( .A(n172), .B(n173), .Y(n269) );
  DFFHQX1 \shift1_reg[1]  ( .D(\U20/Z_1 ), .CK(PHI), .Q(\r419/B[1] ) );
  DFFQXL \shift1_reg[0]  ( .D(\U20/Z_0 ), .CK(PHI), .Q(\r419/B[0] ) );
  XNOR2X1 U125 ( .A(\sub_130/B[2] ), .B(n354), .Y(n334) );
  INVX1 U126 ( .A(\sll_146/A[3] ), .Y(n339) );
  AND2X1 U127 ( .A(n368), .B(n412), .Y(n326) );
  AOI2BB2X1 U128 ( .B0(n353), .B1(n352), .A0N(n351), .A1N(n358), .Y(n354) );
  INVX1 U129 ( .A(n93), .Y(n327) );
  AOI2BB2X1 U130 ( .B0(n361), .B1(n360), .A0N(n327), .A1N(n398), .Y(n363) );
  NAND2X1 U131 ( .A(\sub_130/B[0] ), .B(n333), .Y(n358) );
  INVXL U132 ( .A(n398), .Y(n396) );
  AND2XL U133 ( .A(\r419/B[1] ), .B(n342), .Y(n335) );
  AND2X1 U134 ( .A(n372), .B(n359), .Y(n331) );
  INVXL U135 ( .A(n358), .Y(n357) );
  AOI22XL U136 ( .A0(n335), .A1(\sll_146/A[2] ), .B0(n348), .B1(\sll_146/A[0] ), .Y(n349) );
  INVXL U137 ( .A(\r419/B[0] ), .Y(n342) );
  AOI22XL U138 ( .A0(n345), .A1(\sll_146/A[2] ), .B0(n335), .B1(\sll_146/A[3] ), .Y(n343) );
  INVX1 U139 ( .A(n326), .Y(n328) );
  INVX1 U140 ( .A(n347), .Y(n348) );
  INVX1 U141 ( .A(n390), .Y(n408) );
  INVX1 U142 ( .A(n389), .Y(n400) );
  INVX1 U143 ( .A(n268), .Y(n248) );
  OAI2BB1X1 U144 ( .A0N(n388), .A1N(n329), .B0(n330), .Y(n393) );
  AND2XL U145 ( .A(n391), .B(n390), .Y(n329) );
  OA21X1 U146 ( .A0(n328), .A1(n390), .B0(n385), .Y(n330) );
  INVX1 U147 ( .A(\U23/Z_2 ), .Y(n407) );
  AND2XL U148 ( .A(n396), .B(n394), .Y(n332) );
  INVX1 U149 ( .A(n359), .Y(n369) );
  INVX1 U150 ( .A(\U23/Z_1 ), .Y(n401) );
  INVX1 U151 ( .A(n394), .Y(n397) );
  INVX1 U152 ( .A(n402), .Y(n387) );
  INVX1 U153 ( .A(n403), .Y(n392) );
  INVX1 U154 ( .A(\U22/Z_1 ), .Y(n249) );
  NOR2X1 U155 ( .A(n81), .B(n414), .Y(n268) );
  INVX1 U156 ( .A(n269), .Y(n414) );
  INVX1 U157 ( .A(n356), .Y(n353) );
  INVX1 U158 ( .A(\sub_130/B[1] ), .Y(n351) );
  AND2XL U159 ( .A(n350), .B(n349), .Y(n333) );
  XNOR2X1 U160 ( .A(n355), .B(n334), .Y(n372) );
  MXI2XL U161 ( .A(n367), .B(n379), .S0(n196), .Y(n368) );
  OAI2BB1X1 U162 ( .A0N(n97), .A1N(n332), .B0(n366), .Y(n367) );
  INVX1 U163 ( .A(\r419/B[1] ), .Y(n338) );
  INVX1 U164 ( .A(\sll_146/A[1] ), .Y(n344) );
  XNOR2X1 U165 ( .A(n336), .B(n357), .Y(n359) );
  XNOR2X1 U166 ( .A(n356), .B(\sub_130/B[1] ), .Y(n336) );
  OA21X1 U167 ( .A0(\r419/B[0] ), .A1(n335), .B0(\sll_146/A[0] ), .Y(
        o_stream[0]) );
  OR3XL U168 ( .A(n399), .B(n196), .C(n337), .Y(n411) );
  OA21X1 U169 ( .A0(n415), .A1(n398), .B0(n397), .Y(n337) );
  INVX1 U170 ( .A(\sll_146/A[2] ), .Y(n340) );
  NAND2BX1 U171 ( .AN(n94), .B(n394), .Y(n395) );
  OR2XL U172 ( .A(n386), .B(\sub_108/A[3] ), .Y(n402) );
  INVX1 U173 ( .A(\sub_108/A[1] ), .Y(n383) );
  INVX1 U174 ( .A(\sub_108/A[2] ), .Y(n381) );
  INVX1 U175 ( .A(n193), .Y(n379) );
  INVX1 U176 ( .A(n90), .Y(n415) );
  NOR2X1 U177 ( .A(n172), .B(n173), .Y(n81) );
  OAI22XL U178 ( .A0(n340), .A1(n347), .B0(n339), .B1(n341), .Y(n355) );
  INVX1 U179 ( .A(n341), .Y(n345) );
  INVXL U180 ( .A(n372), .Y(n360) );
  AOI22XL U181 ( .A0(n405), .A1(n404), .B0(n403), .B1(n328), .Y(n406) );
  NAND2XL U182 ( .A(n387), .B(n328), .Y(n388) );
  NAND2XL U183 ( .A(\r419/B[0] ), .B(n338), .Y(n341) );
  NAND2X1 U184 ( .A(n338), .B(n342), .Y(n347) );
  OAI21X1 U185 ( .A0(n344), .A1(n347), .B0(n343), .Y(n356) );
  AND2XL U186 ( .A(\r419/B[1] ), .B(\r419/B[0] ), .Y(n346) );
  AOI22X1 U187 ( .A0(\sll_146/A[3] ), .A1(n346), .B0(n345), .B1(\sll_146/A[1] ), .Y(n350) );
  NAND2X1 U188 ( .A(n358), .B(n351), .Y(n352) );
  NAND2X1 U189 ( .A(n372), .B(n369), .Y(n398) );
  OAI21X1 U190 ( .A0(\sub_130/B[0] ), .A1(n333), .B0(n358), .Y(n394) );
  NAND2X1 U191 ( .A(n105), .B(n331), .Y(n365) );
  AND2XL U192 ( .A(n109), .B(n369), .Y(n361) );
  NAND2X1 U193 ( .A(n101), .B(n331), .Y(n362) );
  AND2XL U194 ( .A(n363), .B(n362), .Y(n364) );
  MX2XL U195 ( .A(n365), .B(n364), .S0(n397), .Y(n366) );
  NAND2X1 U196 ( .A(n194), .B(n196), .Y(n412) );
  NAND2X1 U197 ( .A(n108), .B(n369), .Y(n371) );
  NAND2X1 U198 ( .A(n92), .B(n396), .Y(n370) );
  OAI21X1 U199 ( .A0(n372), .A1(n371), .B0(n370), .Y(n373) );
  AOI22X1 U200 ( .A0(n397), .A1(n373), .B0(n96), .B1(n332), .Y(n374) );
  OAI21X1 U201 ( .A0(n196), .A1(n374), .B0(n412), .Y(\U23/Z_2 ) );
  AND2XL U202 ( .A(n91), .B(n396), .Y(n376) );
  MX2XL U203 ( .A(n103), .B(n99), .S0(n397), .Y(n375) );
  AOI22X1 U204 ( .A0(n376), .A1(n397), .B0(n331), .B1(n375), .Y(n378) );
  NAND2X1 U205 ( .A(n95), .B(n332), .Y(n377) );
  AND2XL U206 ( .A(n378), .B(n377), .Y(n380) );
  OAI22X1 U207 ( .A0(n196), .A1(n380), .B0(n412), .B1(n379), .Y(\U23/Z_1 ) );
  NAND2X1 U208 ( .A(n383), .B(n381), .Y(n386) );
  OAI21X1 U209 ( .A0(n383), .A1(n381), .B0(n386), .Y(n382) );
  NAND2X1 U210 ( .A(n382), .B(n402), .Y(n390) );
  NAND2X1 U211 ( .A(n402), .B(n383), .Y(n389) );
  AOI22X1 U212 ( .A0(\U23/Z_2 ), .A1(n389), .B0(n387), .B1(\U23/Z_1 ), .Y(n384) );
  OAI21X1 U213 ( .A0(n408), .A1(n326), .B0(n384), .Y(n385) );
  NAND2X1 U214 ( .A(\sub_108/A[3] ), .B(n386), .Y(n403) );
  AND3XL U215 ( .A(n330), .B(n403), .C(n388), .Y(\U20/Z_1 ) );
  OAI22X1 U216 ( .A0(n407), .A1(n402), .B0(n400), .B1(n326), .Y(n391) );
  MX2XL U217 ( .A(n393), .B(n328), .S0(n392), .Y(n410) );
  NAND2X1 U218 ( .A(n408), .B(n407), .Y(n405) );
  AOI22X1 U219 ( .A0(n396), .A1(n395), .B0(n102), .B1(n331), .Y(n399) );
  OAI22X1 U220 ( .A0(n411), .A1(n402), .B0(n401), .B1(n400), .Y(n404) );
  OAI21X1 U221 ( .A0(n408), .A1(n407), .B0(n406), .Y(n409) );
  AND2XL U222 ( .A(n410), .B(n409), .Y(\U20/Z_0 ) );
  NAND2X1 U223 ( .A(n412), .B(n411), .Y(\U23/Z_0 ) );
  AND2XL U224 ( .A(\sll_146/A[1] ), .B(\r419/B[1] ), .Y(\srl_146/B[1] ) );
  AND3XL U225 ( .A(\sll_146/A[2] ), .B(\r419/B[0] ), .C(\r419/B[1] ), .Y(
        \srl_146/B[2] ) );
endmodule

