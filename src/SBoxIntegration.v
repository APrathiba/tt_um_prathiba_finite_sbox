module SBoxIntegration(idat,odat);
input [3:0] idat;
output [3:0]odat;
wire [3:0]iso_out,inv_iso_out;
wire [1:0]squrOut,PhaseOut,ExorDown,MultiOut,ExorMiddle,InverseOut,OutUpper,OutLower;
//upper block
isomorphic I1(idat,iso_out);
SquareOrInv Square(iso_out[3:2],squrOut);
PhaseBlock P1(squrOut,PhaseOut);

//lower block
assign ExorDown=iso_out[1:0]^iso_out[3:2];
Multiplier M1(iso_out[1:0],ExorDown,MultiOut);

//merging upper and lower
assign ExorMiddle=PhaseOut^MultiOut;
SquareOrInv Inverse(ExorMiddle,InverseOut);
Multiplier M2(InverseOut,iso_out[3:2],OutUpper);
Multiplier M3(InverseOut,ExorDown,OutLower);
InverseIsomorphic IV1({OutUpper,OutLower},inv_iso_out);
AffineTransform A1(inv_iso_out,odat);
endmodule

