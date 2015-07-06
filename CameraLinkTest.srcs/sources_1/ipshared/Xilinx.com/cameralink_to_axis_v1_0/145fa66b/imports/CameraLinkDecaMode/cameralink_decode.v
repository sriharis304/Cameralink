module cameralink_decode(
	input [83:0] rxdall,
	output [79:0] vid_data,
	output vid_active_video,
	output vid_vblank,
	output vid_hblank
	);

	wire [7:0] pixels[0:9];
	// pixel-1
	assign pixels[0][0] = rxdall[6];
	assign pixels[0][1] = rxdall[5];
	assign pixels[0][2] = rxdall[4];
	assign pixels[0][3] = rxdall[3];
	assign pixels[0][4] = rxdall[2];
	assign pixels[0][5] = rxdall[26];
	assign pixels[0][6] = rxdall[1];
	assign pixels[0][7] = rxdall[0];

	// pixel-2 
	assign pixels[1][0] = rxdall[13];
	assign pixels[1][1] = rxdall[12];
	assign pixels[1][2] = rxdall[25];
	assign pixels[1][3] = rxdall[24];
	assign pixels[1][4] = rxdall[11];
	assign pixels[1][5] = rxdall[10];
	assign pixels[1][6] = rxdall[9];
	assign pixels[1][7] = rxdall[8];	
	
	// pixel-3
	assign pixels[2][0] = rxdall[23];
	assign pixels[2][1] = rxdall[22];
	assign pixels[2][2] = rxdall[7];
	assign pixels[2][3] = rxdall[20];
	assign pixels[2][4] = rxdall[19];
	assign pixels[2][5] = rxdall[18];
	assign pixels[2][6] = rxdall[17];
	assign pixels[2][7] = rxdall[21];
	
	// pixel-4
	assign pixels[3][0] = rxdall[14];
	assign pixels[3][1] = rxdall[27];
	assign pixels[3][2] = rxdall[34];
	assign pixels[3][3] = rxdall[33];
	assign pixels[3][4] = rxdall[32];
	assign pixels[3][5] = rxdall[31];
	assign pixels[3][6] = rxdall[30];
	assign pixels[3][7] = rxdall[54];

	// pixel-5
	assign pixels[4][0] = rxdall[29];
	assign pixels[4][1] = rxdall[28];
	assign pixels[4][2] = rxdall[41];
	assign pixels[4][3] = rxdall[40];
	assign pixels[4][4] = rxdall[53];
	assign pixels[4][5] = rxdall[52];
	assign pixels[4][6] = rxdall[39];
	assign pixels[4][7] = rxdall[38];

	// pixel-6
	assign pixels[5][0] = rxdall[37];
	assign pixels[5][1] = rxdall[36];
	assign pixels[5][2] = rxdall[51];
	assign pixels[5][3] = rxdall[50];
	assign pixels[5][4] = rxdall[35];
	assign pixels[5][5] = rxdall[48];
	assign pixels[5][6] = rxdall[47];
	assign pixels[5][7] = rxdall[46];

	// pixel-7
	assign pixels[6][0] = rxdall[45];
	assign pixels[6][1] = rxdall[49];
	assign pixels[6][2] = rxdall[44];
	assign pixels[6][3] = rxdall[43];
	assign pixels[6][4] = rxdall[42];
	assign pixels[6][5] = rxdall[62];
	assign pixels[6][6] = rxdall[61];
	assign pixels[6][7] = rxdall[60];

	
	// pixel-8
	assign pixels[7][0] = rxdall[59];
	assign pixels[7][1] = rxdall[58];
	assign pixels[7][2] = rxdall[82];
	assign pixels[7][3] = rxdall[57];
	assign pixels[7][4] = rxdall[56];
	assign pixels[7][5] = rxdall[69];
	assign pixels[7][6] = rxdall[68];
	assign pixels[7][7] = rxdall[81];

	// pixel-9
	assign pixels[8][0] = rxdall[80];
	assign pixels[8][1] = rxdall[67];
	assign pixels[8][2] = rxdall[66];
	assign pixels[8][3] = rxdall[65];
	assign pixels[8][4] = rxdall[64];
	assign pixels[8][5] = rxdall[79];
	assign pixels[8][6] = rxdall[78];
	assign pixels[8][7] = rxdall[63];

	// pixel-10
	assign pixels[9][0] = rxdall[76];
	assign pixels[9][1] = rxdall[75];
	assign pixels[9][2] = rxdall[74];
	assign pixels[9][3] = rxdall[73];
	assign pixels[9][4] = rxdall[77];
	assign pixels[9][5] = rxdall[72];
	assign pixels[9][6] = rxdall[71];
	assign pixels[9][7] = rxdall[70];	

	assign vid_vblank = ~rxdall[15]; // fval
	assign vid_hblank = ~(rxdall[16] | rxdall[83] | rxdall[55]); // lval
	assign vid_active_video = rxdall[15] & ~vid_hblank;

	assign vid_data[ 7:0] = pixels[0];
	assign vid_data[15:8] = pixels[1];
	assign vid_data[23:16] = pixels[2];
	assign vid_data[31:24] = pixels[3];
	assign vid_data[39:32] = pixels[4];
	assign vid_data[47:40] = pixels[5];
	assign vid_data[55:48] = pixels[6];
	assign vid_data[63:56] = pixels[7];
	assign vid_data[71:64] = pixels[8];
	assign vid_data[79:72] = pixels[9];

endmodule	
		
