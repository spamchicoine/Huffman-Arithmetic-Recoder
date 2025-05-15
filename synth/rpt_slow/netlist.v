/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Thu May 15 12:44:25 2025
/////////////////////////////////////////////////////////////


module HF_tANS_recoder ( PHI, I_F, i_stream, BTR, o_stream, final_state );
  input [1:0] i_stream;
  output [1:0] BTR;
  output [2:0] o_stream;
  output [3:0] final_state;
  input PHI, I_F;
  wire   n90, n91, n92, n93, n94, n95, n96, n97, n99, n101, n102, n103, n105,
         n108, n109, n122, n123, n124, n125, n126, n127, n128, n129, n131,
         n133, n134, n135, n137, n140, n141, n171, n170, n173, n172, n174,
         n175, n194, n193, n196, \U23/Z_0 , \U23/Z_1 , \U23/Z_2 , \U21/Z_2 ,
         \U21/Z_3 , \U20/Z_0 , \U20/Z_1 , \srl_146/B[2] , \srl_146/B[1] ,
         \srl_146/B[0] , \sll_146/A[3] , \sll_146/A[2] , \sll_146/A[1] ,
         \sll_146/A[0] , \r419/B[0] , \r419/B[1] , \sub_108/A[1] ,
         \sub_108/A[2] , \sub_108/A[3] , \sub_130/B[0] , \sub_130/B[1] ,
         \sub_130/B[2] , n248, n250, n269, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n358, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468;
  assign o_stream[2] = \srl_146/B[2] ;
  assign o_stream[1] = \srl_146/B[1] ;
  assign o_stream[0] = \srl_146/B[0] ;
  assign final_state[3] = \sll_146/A[3] ;
  assign final_state[2] = \sll_146/A[2] ;
  assign final_state[1] = \sll_146/A[1] ;
  assign final_state[0] = \sll_146/A[0] ;

  DFFQXL I_F0_reg ( .D(I_F), .CK(PHI), .Q(n175) );
  DFFQXL I_F1_reg ( .D(n175), .CK(PHI), .Q(n174) );
  DFFQXL \symbol0_reg[1]  ( .D(i_stream[1]), .CK(PHI), .Q(n173) );
  DFFQXL \symbol0_reg[0]  ( .D(i_stream[0]), .CK(PHI), .Q(n172) );
  DFFQXL \symbol1_reg[1]  ( .D(n173), .CK(PHI), .Q(n171) );
  DFFQXL \symbol1_reg[0]  ( .D(n172), .CK(PHI), .Q(n170) );
  DFFQXL \symbol2_reg[1]  ( .D(n171), .CK(PHI), .Q(n194) );
  DFFQXL \symbol2_reg[0]  ( .D(n170), .CK(PHI), .Q(n193) );
  DFFQXL \LS1_reg[2]  ( .D(n467), .CK(PHI), .Q(\sub_108/A[3] ) );
  DFFQXL \LS1_reg[1]  ( .D(n466), .CK(PHI), .Q(\sub_108/A[2] ) );
  DFFQXL \LS1_reg[0]  ( .D(n248), .CK(PHI), .Q(\sub_108/A[1] ) );
  DFFQXL \LS2_reg[2]  ( .D(\sub_108/A[3] ), .CK(PHI), .Q(\sub_130/B[2] ) );
  DFFQXL \LS2_reg[1]  ( .D(\sub_108/A[2] ), .CK(PHI), .Q(\sub_130/B[1] ) );
  DFFQXL \LS2_reg[0]  ( .D(\sub_108/A[1] ), .CK(PHI), .Q(\sub_130/B[0] ) );
  DFFQXL \match_spread_reg[4][1][3]  ( .D(n467), .CK(PHI), .Q(n141) );
  DFFQXL \match_spread_reg[4][1][2]  ( .D(n467), .CK(PHI), .Q(n140) );
  DFFQXL \match_spread_reg[3][1][3]  ( .D(n467), .CK(PHI), .Q(n137) );
  DFFQXL \match_spread_reg[3][1][1]  ( .D(n467), .CK(PHI), .Q(n135) );
  DFFQXL \match_spread_reg[3][1][0]  ( .D(n467), .CK(PHI), .Q(n134) );
  DFFQXL \match_spread_reg[2][1][3]  ( .D(n467), .CK(PHI), .Q(n133) );
  DFFQXL \match_spread_reg[2][1][1]  ( .D(n467), .CK(PHI), .Q(n131) );
  DFFQXL \match_spread_reg[1][1][3]  ( .D(n468), .CK(PHI), .Q(n129) );
  DFFQXL \match_spread_reg[1][1][2]  ( .D(n466), .CK(PHI), .Q(n128) );
  DFFQXL \match_spread_reg[1][1][1]  ( .D(n466), .CK(PHI), .Q(n127) );
  DFFQXL \match_spread_reg[1][1][0]  ( .D(n467), .CK(PHI), .Q(n126) );
  DFFQXL \match_spread_reg[0][1][3]  ( .D(\U21/Z_3 ), .CK(PHI), .Q(n125) );
  DFFQXL \match_spread_reg[0][1][2]  ( .D(\U21/Z_2 ), .CK(PHI), .Q(n124) );
  DFFQXL \match_spread_reg[0][1][1]  ( .D(n250), .CK(PHI), .Q(n123) );
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
  DFFQXL \state0_reg[0]  ( .D(\U23/Z_0 ), .CK(PHI), .Q(\sll_146/A[0] ) );
  DFFHQX1 I_F2_reg ( .D(n174), .CK(PHI), .Q(n196) );
  DFFQXL \state0_reg[2]  ( .D(\U23/Z_2 ), .CK(PHI), .Q(\sll_146/A[2] ) );
  DFFHQX1 \state0_reg[1]  ( .D(n344), .CK(PHI), .Q(\sll_146/A[1] ) );
  DFFQX1 \shift1_reg[1]  ( .D(\U20/Z_1 ), .CK(PHI), .Q(\r419/B[1] ) );
  DFFQX1 \state0_reg[3]  ( .D(n335), .CK(PHI), .Q(\sll_146/A[3] ) );
  DFFQX1 \shift1_reg[0]  ( .D(\U20/Z_0 ), .CK(PHI), .Q(\r419/B[0] ) );
  NAND2X1 U125 ( .A(\sll_146/A[2] ), .B(n363), .Y(n369) );
  NAND2BX2 U126 ( .AN(n441), .B(n465), .Y(n448) );
  NOR3X1 U127 ( .A(n400), .B(n399), .C(n196), .Y(n343) );
  INVX2 U128 ( .A(n431), .Y(n420) );
  DLY1X1 U129 ( .A(\r419/B[1] ), .Y(BTR[1]) );
  NOR2BXL U130 ( .AN(\r419/B[0] ), .B(\r419/B[1] ), .Y(n363) );
  NAND4X1 U131 ( .A(n347), .B(n380), .C(n382), .D(n383), .Y(n352) );
  INVX2 U132 ( .A(n358), .Y(BTR[0]) );
  NOR2BXL U133 ( .AN(n405), .B(n429), .Y(n333) );
  NOR2BXL U134 ( .AN(n429), .B(n94), .Y(n432) );
  OR2XL U135 ( .A(n196), .B(n429), .Y(n416) );
  INVXL U136 ( .A(n429), .Y(n428) );
  NOR2BX1 U137 ( .AN(n392), .B(n332), .Y(n393) );
  INVX1 U138 ( .A(\r419/B[1] ), .Y(n458) );
  NAND2XL U139 ( .A(n429), .B(n426), .Y(n407) );
  NAND2XL U140 ( .A(n97), .B(n429), .Y(n418) );
  XNOR2X1 U141 ( .A(n345), .B(\sub_130/B[1] ), .Y(n354) );
  NAND2X1 U142 ( .A(n105), .B(n405), .Y(n406) );
  NOR2X1 U143 ( .A(n349), .B(n411), .Y(n414) );
  NOR4BBX1 U144 ( .AN(n108), .BN(n354), .C(n416), .D(n396), .Y(n388) );
  OAI21X1 U145 ( .A0(n196), .A1(n418), .B0(n417), .Y(n419) );
  AOI2BB2XL U146 ( .B0(n397), .B1(n396), .A0N(n455), .A1N(n413), .Y(n398) );
  NAND2X1 U147 ( .A(\U23/Z_1 ), .B(n439), .Y(n447) );
  NAND3X1 U148 ( .A(n368), .B(n334), .C(n369), .Y(n326) );
  NAND3XL U149 ( .A(n368), .B(n334), .C(n369), .Y(n345) );
  OR3XL U150 ( .A(n196), .B(n429), .C(n327), .Y(n395) );
  INVX1 U151 ( .A(n91), .Y(n327) );
  NAND2BXL U152 ( .AN(n366), .B(n351), .Y(n340) );
  OR3XL U153 ( .A(\r419/B[1] ), .B(n358), .C(n328), .Y(n370) );
  INVX1 U154 ( .A(\sll_146/A[3] ), .Y(n328) );
  AOI32X4 U155 ( .A0(n421), .A1(n101), .A2(n350), .B0(n420), .B1(n419), .Y(
        n424) );
  INVX1 U156 ( .A(n416), .Y(n421) );
  NAND2BX1 U157 ( .AN(n463), .B(\sll_146/A[3] ), .Y(n334) );
  AOI22XL U158 ( .A0(n439), .A1(n331), .B0(n465), .B1(n438), .Y(n337) );
  NAND2BXL U159 ( .AN(n463), .B(\sll_146/A[2] ), .Y(n329) );
  INVX1 U160 ( .A(n379), .Y(n415) );
  NAND2BXL U161 ( .AN(\sub_130/B[1] ), .B(n385), .Y(n330) );
  NAND3X1 U162 ( .A(n368), .B(n367), .C(n369), .Y(n385) );
  NAND2BXL U163 ( .AN(n387), .B(n336), .Y(n346) );
  NAND2BX1 U164 ( .AN(n343), .B(n398), .Y(\U23/Z_1 ) );
  OAI2BB1X1 U165 ( .A0N(n420), .A1N(n390), .B0(n389), .Y(n331) );
  NAND2BX1 U166 ( .AN(\sub_130/B[0] ), .B(n352), .Y(n392) );
  DLY1X1 U167 ( .A(n463), .Y(n348) );
  NAND2BX1 U168 ( .AN(n387), .B(n386), .Y(n379) );
  NAND4X1 U169 ( .A(\sub_130/B[1] ), .B(n368), .C(n334), .D(n369), .Y(n373) );
  INVXL U170 ( .A(n365), .Y(n332) );
  INVXL U171 ( .A(n374), .Y(n391) );
  NAND2X1 U172 ( .A(\sll_146/A[1] ), .B(n342), .Y(n368) );
  INVX1 U173 ( .A(\sll_146/A[1] ), .Y(n362) );
  CLKAND2X3 U174 ( .A(n426), .B(n415), .Y(n350) );
  NAND2BX1 U175 ( .AN(n426), .B(n415), .Y(n431) );
  OA21XL U176 ( .A0(n376), .A1(n385), .B0(n375), .Y(n377) );
  NAND2BXL U177 ( .AN(n463), .B(\sll_146/A[3] ), .Y(n367) );
  XNOR2XL U178 ( .A(\sub_130/B[1] ), .B(n326), .Y(n364) );
  NAND2X1 U179 ( .A(n353), .B(n414), .Y(n425) );
  INVX1 U180 ( .A(\r419/B[0] ), .Y(n358) );
  AOI2BB1X1 U181 ( .A0N(n453), .A1N(n454), .B0(n452), .Y(\U20/Z_0 ) );
  NAND2BXL U182 ( .AN(n463), .B(\sll_146/A[2] ), .Y(n382) );
  AND2X1 U183 ( .A(n329), .B(n383), .Y(n351) );
  BUFX2 U184 ( .A(n465), .Y(n335) );
  NAND3XL U185 ( .A(n447), .B(n339), .C(n448), .Y(n423) );
  NAND2X2 U186 ( .A(n365), .B(n392), .Y(n429) );
  OAI2BB1X1 U187 ( .A0N(n330), .A1N(n391), .B0(n377), .Y(n336) );
  OAI2BB1XL U188 ( .A0N(n391), .A1N(n330), .B0(n377), .Y(n386) );
  AO22XL U189 ( .A0(n335), .A1(n446), .B0(\U23/Z_2 ), .B1(n437), .Y(n453) );
  NOR3BX1 U190 ( .AN(n451), .B(n450), .C(n449), .Y(n452) );
  OR2XL U191 ( .A(n341), .B(n337), .Y(n451) );
  NAND2BXL U192 ( .AN(n465), .B(n441), .Y(n338) );
  NAND2X1 U193 ( .A(n438), .B(\U23/Z_2 ), .Y(n339) );
  NAND2XL U194 ( .A(n331), .B(n438), .Y(n445) );
  NAND2X1 U195 ( .A(n465), .B(n439), .Y(n440) );
  NAND2BXL U196 ( .AN(n465), .B(n441), .Y(n442) );
  AOI21XL U197 ( .A0(n394), .A1(n395), .B0(n426), .Y(n397) );
  NAND2BXL U198 ( .AN(n366), .B(n351), .Y(n365) );
  NAND2BX1 U199 ( .AN(\sub_130/B[1] ), .B(n385), .Y(n378) );
  NAND2XL U200 ( .A(n437), .B(n440), .Y(n341) );
  NAND2BX1 U201 ( .AN(\r419/B[0] ), .B(\r419/B[1] ), .Y(n463) );
  NOR2XL U202 ( .A(\r419/B[0] ), .B(\r419/B[1] ), .Y(n342) );
  INVXL U203 ( .A(\U23/Z_1 ), .Y(n435) );
  NAND2BX1 U204 ( .AN(n362), .B(n363), .Y(n383) );
  INVX1 U205 ( .A(n346), .Y(n396) );
  NAND2BX4 U206 ( .AN(n425), .B(n424), .Y(n465) );
  NAND3X2 U207 ( .A(n380), .B(\sub_130/B[0] ), .C(n381), .Y(n366) );
  NAND2BX1 U208 ( .AN(n387), .B(n336), .Y(n408) );
  NAND3BX1 U209 ( .AN(n458), .B(BTR[0]), .C(\sll_146/A[3] ), .Y(n381) );
  INVXL U210 ( .A(n435), .Y(n344) );
  OAI2BB1XL U211 ( .A0N(n342), .A1N(\sll_146/A[2] ), .B0(n370), .Y(n371) );
  NAND3BX2 U212 ( .AN(\r419/B[1] ), .B(n462), .C(\sll_146/A[0] ), .Y(n380) );
  INVXL U213 ( .A(\r419/B[0] ), .Y(n462) );
  MXI2XL U214 ( .A(n103), .B(n99), .S0(n393), .Y(n399) );
  NAND2X1 U215 ( .A(n396), .B(n426), .Y(n400) );
  NAND3BXL U216 ( .AN(n458), .B(BTR[0]), .C(\sll_146/A[3] ), .Y(n347) );
  NAND2XL U217 ( .A(n109), .B(n354), .Y(n409) );
  NAND2XL U218 ( .A(n333), .B(n408), .Y(n410) );
  INVX1 U219 ( .A(\sub_130/B[1] ), .Y(n376) );
  AO21XL U220 ( .A0(n196), .A1(n413), .B0(n412), .Y(n349) );
  INVX1 U221 ( .A(n446), .Y(n444) );
  INVXL U222 ( .A(n442), .Y(n443) );
  INVX1 U223 ( .A(n438), .Y(n434) );
  OAI2BB1X1 U224 ( .A0N(n457), .A1N(n456), .B0(n455), .Y(\U23/Z_0 ) );
  INVX1 U225 ( .A(n455), .Y(n412) );
  OAI2BB1X1 U226 ( .A0N(n355), .A1N(n462), .B0(n461), .Y(\srl_146/B[1] ) );
  INVX1 U227 ( .A(n437), .Y(n441) );
  INVX1 U228 ( .A(n403), .Y(n422) );
  INVX1 U229 ( .A(n402), .Y(n439) );
  INVX1 U230 ( .A(n269), .Y(n250) );
  OAI2BB1X1 U231 ( .A0N(n92), .A1N(n421), .B0(n384), .Y(n390) );
  NAND3BXL U232 ( .AN(n428), .B(n96), .C(n405), .Y(n384) );
  OR3XL U233 ( .A(n406), .B(n408), .C(n407), .Y(n353) );
  NAND2XL U234 ( .A(n93), .B(n333), .Y(n417) );
  OAI21XL U235 ( .A0(n432), .A1(n431), .B0(n430), .Y(n456) );
  NAND2XL U236 ( .A(n102), .B(n350), .Y(n430) );
  INVX1 U237 ( .A(n196), .Y(n405) );
  NOR2XL U238 ( .A(n458), .B(n356), .Y(n355) );
  AOI22XL U239 ( .A0(\sll_146/A[1] ), .A1(n462), .B0(\sll_146/A[2] ), .B1(n348), .Y(n356) );
  OAI2BB1X1 U240 ( .A0N(n404), .A1N(n403), .B0(n402), .Y(n437) );
  INVX1 U241 ( .A(\sub_108/A[1] ), .Y(n401) );
  INVX1 U242 ( .A(n193), .Y(n413) );
  INVX1 U243 ( .A(n172), .Y(n468) );
  INVX1 U244 ( .A(n361), .Y(n466) );
  NAND2X1 U245 ( .A(n172), .B(n173), .Y(n269) );
  NOR2X1 U246 ( .A(n409), .B(n410), .Y(n411) );
  AOI211X1 U247 ( .A0(n373), .A1(n340), .B0(n375), .C0(n372), .Y(n387) );
  AOI21XL U248 ( .A0(n428), .A1(n427), .B0(n196), .Y(n457) );
  INVXL U249 ( .A(n378), .Y(n372) );
  NAND3XL U250 ( .A(n405), .B(n95), .C(n429), .Y(n394) );
  INVXL U251 ( .A(n348), .Y(n460) );
  NAND3BXL U252 ( .AN(n460), .B(BTR[1]), .C(n459), .Y(n461) );
  CLKXOR2X1 U253 ( .A(n374), .B(n364), .Y(n426) );
  OAI2BB1X1 U254 ( .A0N(n420), .A1N(n390), .B0(n389), .Y(\U23/Z_2 ) );
  INVX1 U255 ( .A(n360), .Y(n467) );
  NAND2BX1 U256 ( .AN(n173), .B(n468), .Y(n360) );
  NAND2BX1 U257 ( .AN(n172), .B(n173), .Y(n361) );
  NAND2BX1 U258 ( .AN(n467), .B(n269), .Y(n248) );
  NAND2BX1 U259 ( .AN(n366), .B(n351), .Y(n374) );
  XOR2XL U260 ( .A(\sub_130/B[2] ), .B(n371), .Y(n375) );
  NAND2BX1 U261 ( .AN(n405), .B(n194), .Y(n455) );
  NOR2BX1 U262 ( .AN(n455), .B(n388), .Y(n389) );
  NAND2BX1 U263 ( .AN(\sub_108/A[2] ), .B(n401), .Y(n403) );
  NAND2BX1 U264 ( .AN(\sub_108/A[3] ), .B(n422), .Y(n402) );
  NAND2BX1 U265 ( .AN(\sub_108/A[1] ), .B(n402), .Y(n438) );
  NAND2BX1 U266 ( .AN(n401), .B(\sub_108/A[2] ), .Y(n404) );
  NAND2BX1 U267 ( .AN(n422), .B(\sub_108/A[3] ), .Y(n446) );
  AND4XL U268 ( .A(n446), .B(n440), .C(n338), .D(n423), .Y(\U20/Z_1 ) );
  NAND2BX1 U269 ( .AN(n468), .B(n269), .Y(\U21/Z_3 ) );
  NAND2BX1 U270 ( .AN(n426), .B(n90), .Y(n427) );
  AND3XL U271 ( .A(n457), .B(n456), .C(n439), .Y(n433) );
  AOI2BB1XL U272 ( .A0N(n435), .A1N(n434), .B0(n433), .Y(n436) );
  AOI2BB1XL U273 ( .A0N(\U23/Z_2 ), .A1N(n437), .B0(n436), .Y(n454) );
  AO22XL U274 ( .A0(n444), .A1(n465), .B0(n443), .B1(n446), .Y(n450) );
  AND4XL U275 ( .A(n446), .B(n447), .C(n445), .D(n448), .Y(n449) );
  NAND2BX1 U276 ( .AN(n466), .B(n269), .Y(\U21/Z_2 ) );
  AO22XL U277 ( .A0(\sll_146/A[0] ), .A1(n460), .B0(\sll_146/A[1] ), .B1(n348), 
        .Y(n459) );
  MX2XL U278 ( .A(n459), .B(n355), .S0(BTR[0]), .Y(n464) );
  AO22XL U279 ( .A0(n460), .A1(n464), .B0(BTR[0]), .B1(\sll_146/A[0] ), .Y(
        \srl_146/B[0] ) );
  AND3XL U280 ( .A(n464), .B(n348), .C(BTR[1]), .Y(\srl_146/B[2] ) );
endmodule

