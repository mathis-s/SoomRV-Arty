module RFSlice (
	clk,
	waddr0,
	wdata0,
	wen0,
	raddr,
	rdata
);
	parameter WIDTH = 32;
	parameter PORTS = 8;
	parameter SIZE = 64;
	input wire clk;
	input wire [5:0] waddr0;
	input wire [WIDTH - 1:0] wdata0;
	input wire wen0;
	input wire [(PORTS * 6) - 1:0] raddr;
	output reg [(PORTS * WIDTH) - 1:0] rdata;
	(* ram_style = "block" *) reg [WIDTH - 1:0] mem [SIZE - 1:0];
	always @(posedge clk) begin
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < PORTS; i = i + 1)
				rdata[i * WIDTH+:WIDTH] <= (i == 6 ? {WIDTH * 1 {1'sbx}} : mem[raddr[i * 6+:6]]);
		end
		if (wen0)
			mem[waddr0] <= wdata0;
	end
endmodule
module RF (
	clk,
	waddr0,
	wdata0,
	wen0,
	waddr1,
	wdata1,
	wen1,
	waddr2,
	wdata2,
	wen2,
	waddr3,
	wdata3,
	wen3,
	raddr0,
	rdata0,
	raddr1,
	rdata1,
	raddr2,
	rdata2,
	raddr3,
	rdata3,
	raddr4,
	rdata4,
	raddr5,
	rdata5,
	raddr6,
	rdata6,
	raddr7,
	rdata7
);
	parameter NUM_READ = 6;
	parameter NUM_WRITE = 3;
	parameter SIZE = 64;
	parameter WIDTH = 32;
	input wire clk;
	input wire [5:0] waddr0;
	input wire [WIDTH - 1:0] wdata0;
	input wire wen0;
	input wire [5:0] waddr1;
	input wire [WIDTH - 1:0] wdata1;
	input wire wen1;
	input wire [5:0] waddr2;
	input wire [WIDTH - 1:0] wdata2;
	input wire wen2;
	input wire [5:0] waddr3;
	input wire [WIDTH - 1:0] wdata3;
	input wire wen3;
	input wire [5:0] raddr0;
	output reg [WIDTH - 1:0] rdata0;
	input wire [5:0] raddr1;
	output reg [WIDTH - 1:0] rdata1;
	input wire [5:0] raddr2;
	output reg [WIDTH - 1:0] rdata2;
	input wire [5:0] raddr3;
	output reg [WIDTH - 1:0] rdata3;
	input wire [5:0] raddr4;
	output reg [WIDTH - 1:0] rdata4;
	input wire [5:0] raddr5;
	output reg [WIDTH - 1:0] rdata5;
	input wire [5:0] raddr6;
	output reg [WIDTH - 1:0] rdata6;
	input wire [5:0] raddr7;
	output reg [WIDTH - 1:0] rdata7;
	reg [1:0] sliceSelect [63:0];
	wire [255:0] sliceReads [2:0];
	RFSlice slice0(
		.clk(clk),
		.waddr0(waddr0),
		.wdata0(wdata0),
		.wen0(wen0),
		.raddr({raddr7, raddr6, raddr5, raddr4, raddr3, raddr2, raddr1, raddr0}),
		.rdata(sliceReads[0])
	);
	RFSlice slice1(
		.clk(clk),
		.waddr0(waddr1),
		.wdata0(wdata1),
		.wen0(wen1),
		.raddr({raddr7, raddr6, raddr5, raddr4, raddr3, raddr2, raddr1, raddr0}),
		.rdata(sliceReads[1])
	);
	RFSlice slice2(
		.clk(clk),
		.waddr0(waddr2),
		.wdata0(wdata2),
		.wen0(wen2),
		.raddr({raddr7, raddr6, raddr5, raddr4, raddr3, raddr2, raddr1, raddr0}),
		.rdata(sliceReads[2])
	);
	always @(posedge clk) begin
		if (wen0)
			sliceSelect[waddr0] <= 0;
		if (wen1)
			sliceSelect[waddr1] <= 1;
		if (wen2)
			sliceSelect[waddr2] <= 2;
	end
	reg [1:0] selectReg [7:0];
	always @(posedge clk) begin
		selectReg[0] <= sliceSelect[raddr0];
		selectReg[1] <= sliceSelect[raddr1];
		selectReg[2] <= sliceSelect[raddr2];
		selectReg[3] <= sliceSelect[raddr3];
		selectReg[4] <= sliceSelect[raddr4];
		selectReg[5] <= sliceSelect[raddr5];
		selectReg[6] <= 1'sbx;
		selectReg[7] <= sliceSelect[raddr7];
	end
	always @(*) begin
		rdata0 = sliceReads[selectReg[0]][0+:32];
		rdata1 = sliceReads[selectReg[1]][32+:32];
		rdata2 = sliceReads[selectReg[2]][64+:32];
		rdata3 = sliceReads[selectReg[3]][96+:32];
		rdata4 = sliceReads[selectReg[4]][128+:32];
		rdata5 = sliceReads[selectReg[5]][160+:32];
		rdata6 = 1'sbx;
		rdata7 = sliceReads[selectReg[7]][224+:32];
	end
endmodule
module AGU (
	clk,
	rst,
	en,
	IN_stall,
	OUT_stall,
	IN_branch,
	IN_vmem,
	OUT_pw,
	IN_pw,
	OUT_tlb,
	IN_tlb,
	OUT_tvalProv,
	IN_uop,
	OUT_aguOp,
	OUT_eldOp,
	OUT_uop
);
	parameter LOAD_AGU = 1;
	parameter RQ_ID = 2;
	input wire clk;
	input wire rst;
	input wire en;
	input wire IN_stall;
	output wire OUT_stall;
	input wire [63:0] IN_branch;
	input wire [30:0] IN_vmem;
	output reg [54:0] OUT_pw;
	input wire [52:0] IN_pw;
	output reg [20:0] OUT_tlb;
	input wire [27:0] IN_tlb;
	output reg [39:0] OUT_tvalProv;
	input wire [181:0] IN_uop;
	output reg [109:0] OUT_aguOp;
	output reg [12:0] OUT_eldOp;
	output reg [58:0] OUT_uop;
	localparam STORE_AGU = !LOAD_AGU;
	function IsPermFault;
		input reg [2:0] pte_rwx;
		input reg pte_user;
		reg r;
		begin
			r = (((LOAD_AGU && !(pte_rwx[2] || (pte_rwx[0] && IN_vmem[6]))) || (STORE_AGU && !pte_rwx[1])) || ((IN_vmem[1-:2] == 2'd0) && !pte_user)) || (((IN_vmem[1-:2] == 2'd1) && pte_user) && !IN_vmem[5]);
			IsPermFault = r;
		end
	endfunction
	wire inStallMasked = IN_stall;
	reg pageWalkActive;
	reg pageWalkAccepted;
	reg eldIsPageWalkOp;
	wire TMQ_stall;
	assign OUT_stall = inStallMasked || TMQ_stall;
	wire [31:0] addr = IN_uop[181-:32] + (IN_uop[47-:6] >= 6'd55 ? 0 : {{20 {IN_uop[59]}}, IN_uop[59:48]});
	reg [109:0] aguUOp_c;
	reg [58:0] resUOp_c;
	reg [39:0] tvalProv_c;
	always @(*) begin
		aguUOp_c = 1'sbx;
		aguUOp_c[0] = 0;
		resUOp_c = 1'sbx;
		resUOp_c[0] = 0;
		tvalProv_c = 1'sbx;
		tvalProv_c[0] = 0;
		aguUOp_c[109-:32] = addr;
		aguUOp_c[69-:32] = IN_uop[117-:32];
		aguUOp_c[37-:7] = IN_uop[41-:7];
		aguUOp_c[30-:7] = IN_uop[34-:7];
		aguUOp_c[23-:7] = IN_uop[19-:7];
		aguUOp_c[16-:7] = IN_uop[12-:7];
		aguUOp_c[9-:5] = IN_uop[27-:5];
		aguUOp_c[1] = IN_uop[1];
		aguUOp_c[3-:2] = 2'd0;
		aguUOp_c[0] = IN_uop[0] && en;
		if (LOAD_AGU) begin
			aguUOp_c[70] = 1;
			aguUOp_c[4] = 0;
			case (IN_uop[47-:6])
				6'd0: begin
					aguUOp_c[72-:2] = 0;
					aguUOp_c[73] = 1;
				end
				6'd1: begin
					aguUOp_c[72-:2] = 1;
					aguUOp_c[73] = 1;
				end
				6'd5, 6'd55, 6'd56, 6'd57, 6'd58, 6'd59, 6'd60, 6'd61, 6'd62, 6'd63, 6'd2: begin
					aguUOp_c[72-:2] = 2;
					aguUOp_c[73] = 0;
				end
				6'd3: begin
					aguUOp_c[72-:2] = 0;
					aguUOp_c[73] = 0;
				end
				6'd4: begin
					aguUOp_c[72-:2] = 1;
					aguUOp_c[73] = 0;
				end
				default:
					;
			endcase
		end
		else begin
			aguUOp_c[70] = 0;
			aguUOp_c[4] = 0;
			resUOp_c[26-:7] = IN_uop[19-:7];
			resUOp_c[19-:7] = IN_uop[41-:7];
			resUOp_c[12-:7] = IN_uop[34-:7];
			resUOp_c[58-:32] = addr;
			resUOp_c[1] = 0;
			resUOp_c[0] = IN_uop[0] && en;
			if (IN_uop[47-:6] == 6'd10)
				resUOp_c[19-:7] = 7'h40;
			aguUOp_c[77-:4] = 4'b1111;
			aguUOp_c[72-:2] = 2;
			resUOp_c[5-:4] = 4'd0;
			case (IN_uop[47-:6])
				6'd0, 6'd7: begin
					aguUOp_c[72-:2] = 0;
					case (addr[1:0])
						0: aguUOp_c[77-:4] = 4'b0001;
						1: aguUOp_c[77-:4] = 4'b0010;
						2: aguUOp_c[77-:4] = 4'b0100;
						3: aguUOp_c[77-:4] = 4'b1000;
					endcase
				end
				6'd1, 6'd8: begin
					aguUOp_c[72-:2] = 1;
					case (addr[1])
						0: aguUOp_c[77-:4] = 4'b0011;
						1: aguUOp_c[77-:4] = 4'b1100;
					endcase
				end
				6'd10, 6'd2, 6'd9: aguUOp_c[77-:4] = 4'b1111;
				6'd3: begin
					aguUOp_c[77-:4] = 0;
					if (!IN_vmem[2])
						resUOp_c[5-:4] = 4'd6;
				end
				6'd4: begin
					aguUOp_c[77-:4] = 0;
					if (IN_vmem[4-:2] == 2'b00)
						resUOp_c[5-:4] = 4'd6;
				end
				6'd5: begin
					aguUOp_c[77-:4] = 0;
					if (!IN_vmem[2])
						resUOp_c[5-:4] = 4'd6;
				end
				6'd55, 6'd56, 6'd57, 6'd58, 6'd59, 6'd60, 6'd61, 6'd62, 6'd63: begin
					resUOp_c[1] = 1;
					aguUOp_c[4] = 1;
				end
				default:
					;
			endcase
		end
	end
	reg TMQ_enqueue;
	wire [109:0] TMQ_enqueueUOp;
	reg TMQ_uopReady;
	reg TMQ_dequeue;
	wire [109:0] TMQ_uop;
	reg [109:0] issUOp_c;
	TLBMissQueue #(.SIZE(2)) tmq(
		.clk(clk),
		.rst(rst),
		.IN_branch(IN_branch),
		.IN_vmem(IN_vmem),
		.IN_pw(IN_pw),
		.IN_pwActive(pageWalkActive),
		.OUT_stall(TMQ_stall),
		.IN_enqueue(TMQ_enqueue),
		.IN_uopReady(TMQ_uopReady),
		.IN_uop(issUOp_c),
		.IN_dequeue(TMQ_dequeue),
		.OUT_uop(TMQ_uop)
	);
	reg [58:0] issResUOp_c;
	always @(*) begin
		issUOp_c = 1'sbx;
		issUOp_c[0] = 0;
		issResUOp_c = 1'sbx;
		issResUOp_c[0] = 0;
		TMQ_dequeue = 0;
		if ((aguUOp_c[0] && en) && (!TMQ_stall || (resUOp_c[0] && (resUOp_c[5-:4] == 4'd6)))) begin
			issUOp_c = aguUOp_c;
			issResUOp_c = resUOp_c;
		end
		else if (TMQ_uop[0]) begin
			TMQ_dequeue = !inStallMasked;
			issUOp_c = TMQ_uop;
			issResUOp_c[0] = TMQ_uop[0];
			issResUOp_c[1] = TMQ_uop[4];
			issResUOp_c[5-:4] = 4'd0;
			issResUOp_c[12-:7] = TMQ_uop[30-:7];
			issResUOp_c[19-:7] = TMQ_uop[37-:7];
			issResUOp_c[26-:7] = TMQ_uop[23-:7];
			issResUOp_c[58-:32] = 1'sbx;
		end
	end
	always @(*) begin
		OUT_eldOp = 1'sbx;
		OUT_eldOp[0] = (!rst && issUOp_c[0]) && (!IN_branch[0] || ($signed(issUOp_c[30-:7] - IN_branch[27-:7]) <= 0));
		if (OUT_eldOp[0])
			OUT_eldOp[12-:12] = issUOp_c[89:78];
	end
	always @(*) begin
		OUT_tlb[0] = (IN_vmem[30] && !rst) && (!inStallMasked && issUOp_c[0]);
		OUT_tlb[20-:20] = issUOp_c[109:90];
	end
	wire [31:0] phyAddr = (IN_vmem[30] ? {IN_tlb[27-:20], issUOp_c[89:78]} : issUOp_c[109-:32]);
	reg [3:0] exceptFlags;
	reg [1:0] except;
	always @(AGU.phyAddr[1] or AGU.phyAddr[0] or AGU.phyAddr[0] or AGU.issUOp_c[72-:2] or AGU.phyAddr[1] or AGU.phyAddr[0] or AGU.phyAddr[0] or AGU.issUOp_c[72-:2] or AGU.IN_tlb[0] or AGU.IN_vmem[30] or AGU.IN_tlb[6] or AGU.phyAddr or AGU.phyAddr or AGU.phyAddr or AGU.phyAddr or AGU.phyAddr or AGU.IN_tlb[1] or AGU.IN_tlb[5-:3] or AGU.IN_vmem[5] or AGU.IN_vmem[1-:2] or AGU.IN_vmem[1-:2] or AGU.IN_vmem[6] or AGU.IN_tlb[7] or AGU.IN_tlb[0] or AGU.IN_vmem[30] or AGU.issUOp_c[77-:4]) begin
		except = 2'd0;
		exceptFlags = 4'd0;
		if (STORE_AGU && (issUOp_c[77-:4] == 0))
			exceptFlags = 4'd5;
		if ((IN_vmem[30] && IN_tlb[0]) && (IN_tlb[7] || IsPermFault(IN_tlb[5-:3], IN_tlb[1]))) begin
			except = 2'd3;
			if (STORE_AGU)
				exceptFlags = 4'd13;
		end
		else if ((!(((phyAddr >= 32'h80000000) && (phyAddr < 32'h90000000)) || (((phyAddr < 32'h80000000) && (phyAddr >= 32'h10000000)) && (phyAddr < 32'h12000000))) || IN_tlb[6]) && !(IN_vmem[30] && !IN_tlb[0])) begin
			except = 2'd2;
			if (STORE_AGU)
				exceptFlags = 4'd12;
		end
		if (LOAD_AGU)
			case (issUOp_c[72-:2])
				0:
					;
				1:
					if (phyAddr[0])
						except = 2'd1;
				default:
					if (phyAddr[0] || phyAddr[1])
						except = 2'd1;
			endcase
		else
			case (issUOp_c[72-:2])
				0:
					;
				1:
					if (phyAddr[0]) begin
						except = 2'd1;
						exceptFlags = 4'd11;
					end
				default:
					if (phyAddr[0] || phyAddr[1]) begin
						except = 2'd1;
						exceptFlags = 4'd11;
					end
			endcase
	end
	reg tlbMiss;
	always @(*) begin
		tlbMiss = 0;
		TMQ_enqueue = 0;
		TMQ_uopReady = 1'sbx;
		if ((((!rst && issUOp_c[0]) && !IN_stall) && (!IN_branch[0] || ($signed(issUOp_c[30-:7] - IN_branch[27-:7]) <= 0))) && ((IN_vmem[30] && (except == 2'd0)) && !IN_tlb[0])) begin
			tlbMiss = 1;
			TMQ_enqueue = 1;
			TMQ_uopReady = 0;
		end
	end
	reg [31:0] pageWalkAddr;
	always @(posedge clk) begin
		OUT_pw[0] <= 0;
		OUT_tvalProv <= 1'sbx;
		OUT_tvalProv[0] <= 0;
		OUT_uop <= 1'sbx;
		OUT_uop[0] <= 0;
		OUT_aguOp <= 1'sbx;
		OUT_aguOp[0] <= 0;
		if (rst)
			pageWalkActive <= 0;
		else begin
			if (pageWalkActive)
				if (!pageWalkAccepted) begin
					if (IN_pw[1] && (IN_pw[3-:2] == RQ_ID))
						pageWalkAccepted <= 1;
					else begin
						OUT_pw[0] <= 1;
						OUT_pw[22-:22] <= IN_vmem[28-:22];
						OUT_pw[54-:32] <= pageWalkAddr;
					end
				end
				else if (IN_pw[0]) begin
					pageWalkActive <= 0;
					pageWalkAccepted <= 0;
				end
			if (!inStallMasked)
				if (issUOp_c[0] && (!IN_branch[0] || ($signed(issUOp_c[30-:7] - IN_branch[27-:7]) <= 0))) begin : sv2v_autoblock_1
					reg doIssue;
					doIssue = 1;
					if (issResUOp_c[5-:4] != 4'd6) begin
						if (tlbMiss) begin
							if (!pageWalkActive) begin
								pageWalkActive <= 1;
								pageWalkAccepted <= 0;
								pageWalkAddr <= issUOp_c[109-:32];
							end
							doIssue = 0;
						end
						if (except != 2'd0) begin
							OUT_tvalProv[0] <= 1;
							OUT_tvalProv[7-:7] <= issUOp_c[30-:7];
							OUT_tvalProv[39-:32] <= issUOp_c[109-:32];
						end
					end
					if (doIssue) begin
						OUT_uop <= issResUOp_c;
						if (issResUOp_c[5-:4] != 4'd6) begin
							OUT_aguOp <= issUOp_c;
							OUT_aguOp[3-:2] <= except;
							OUT_uop[5-:4] <= exceptFlags;
							if (IN_vmem[30])
								OUT_aguOp[109-:32] <= phyAddr;
						end
					end
				end
		end
	end
endmodule
module BranchPredictionTable (
	clk,
	rst,
	IN_readValid,
	IN_readAddr,
	OUT_taken,
	IN_writeEn,
	IN_writeAddr,
	IN_writeInit,
	IN_writeTaken
);
	parameter IDX_LEN = 10;
	input wire clk;
	input wire rst;
	input wire IN_readValid;
	input wire [IDX_LEN - 1:0] IN_readAddr;
	output reg OUT_taken;
	input wire IN_writeEn;
	input wire [IDX_LEN - 1:0] IN_writeAddr;
	input wire IN_writeInit;
	input wire IN_writeTaken;
	localparam NUM_COUNTERS = 1 << IDX_LEN;
	reg pred [NUM_COUNTERS - 1:0];
	reg hist [NUM_COUNTERS - 1:0];
	always @(posedge clk)
		if (IN_readValid)
			OUT_taken <= pred[IN_readAddr];
	reg [1:0] writeTempReg;
	reg [IDX_LEN + 2:0] write_c;
	reg [IDX_LEN + 2:0] write_r;
	always @(*) begin
		write_c[0] = IN_writeEn;
		write_c[1] = IN_writeInit;
		write_c[IDX_LEN + 2-:((IDX_LEN + 2) >= 3 ? IDX_LEN + 0 : 4 - (IDX_LEN + 2))] = IN_writeAddr;
		write_c[2] = IN_writeTaken;
	end
	always @(posedge clk)
		if (rst)
			;
		else begin
			write_r <= write_c;
			if (write_c[0])
				writeTempReg <= {pred[write_c[IDX_LEN + 2-:((IDX_LEN + 2) >= 3 ? IDX_LEN + 0 : 4 - (IDX_LEN + 2))]], hist[write_c[IDX_LEN + 2-:((IDX_LEN + 2) >= 3 ? IDX_LEN + 0 : 4 - (IDX_LEN + 2))]]};
			if (write_r[0]) begin
				if ((writeTempReg != 2'b11) && write_r[2])
					{pred[write_r[IDX_LEN + 2-:((IDX_LEN + 2) >= 3 ? IDX_LEN + 0 : 4 - (IDX_LEN + 2))]], hist[write_r[IDX_LEN + 2-:((IDX_LEN + 2) >= 3 ? IDX_LEN + 0 : 4 - (IDX_LEN + 2))]]} <= writeTempReg + 1'b1;
				if ((writeTempReg != 2'b00) && !write_r[2])
					{pred[write_r[IDX_LEN + 2-:((IDX_LEN + 2) >= 3 ? IDX_LEN + 0 : 4 - (IDX_LEN + 2))]], hist[write_r[IDX_LEN + 2-:((IDX_LEN + 2) >= 3 ? IDX_LEN + 0 : 4 - (IDX_LEN + 2))]]} <= writeTempReg - 1'b1;
				if (write_r[1])
					{pred[write_r[IDX_LEN + 2-:((IDX_LEN + 2) >= 3 ? IDX_LEN + 0 : 4 - (IDX_LEN + 2))]], hist[write_r[IDX_LEN + 2-:((IDX_LEN + 2) >= 3 ? IDX_LEN + 0 : 4 - (IDX_LEN + 2))]]} <= {write_r[2], !write_r[2]};
			end
		end
endmodule
module BranchPredictor (
	clk,
	rst,
	en1,
	OUT_stall,
	IN_clearICache,
	IN_mispredFlush,
	IN_mispr,
	IN_misprFetchID,
	IN_misprRetAct,
	IN_misprHistAct,
	IN_misprDst,
	IN_pcValid,
	IN_fetchID,
	IN_comFetchID,
	OUT_pc,
	OUT_lastOffs,
	OUT_curRetAddr,
	OUT_lateRetAddr,
	OUT_rIdx,
	OUT_predBr,
	IN_retDecUpd,
	IN_btUpdates,
	IN_bpUpdate0,
	IN_bpUpdate1
);
	parameter NUM_IN = 2;
	input wire clk;
	input wire rst;
	input wire en1;
	output wire OUT_stall;
	input wire IN_clearICache;
	input wire IN_mispredFlush;
	input wire IN_mispr;
	input wire [4:0] IN_misprFetchID;
	input wire [1:0] IN_misprRetAct;
	input wire [1:0] IN_misprHistAct;
	input wire [30:0] IN_misprDst;
	input wire IN_pcValid;
	input wire [4:0] IN_fetchID;
	input wire [4:0] IN_comFetchID;
	output reg [30:0] OUT_pc;
	output reg [2:0] OUT_lastOffs;
	output wire [30:0] OUT_curRetAddr;
	output wire [30:0] OUT_lateRetAddr;
	output wire [1:0] OUT_rIdx;
	output reg [40:0] OUT_predBr;
	input wire [37:0] IN_retDecUpd;
	input wire [(NUM_IN * 76) - 1:0] IN_btUpdates;
	input wire [9:0] IN_bpUpdate0;
	input wire [31:0] IN_bpUpdate1;
	wire RET_stall;
	assign OUT_stall = RET_stall;
	reg [23:0] bpBackup;
	wire TAGE_altPred;
	wire [2:0] TAGE_tageID;
	reg [11:0] history;
	always @(*) begin
		bpBackup[19-:12] = history;
		bpBackup[7-:2] = OUT_rIdx;
		bpBackup[5] = OUT_predBr[4];
		bpBackup[4] = OUT_predBr[1];
		bpBackup[3-:3] = OUT_predBr[9-:3];
		bpBackup[0] = OUT_predBr[0];
		bpBackup[23-:3] = TAGE_tageID;
		bpBackup[20] = TAGE_altPred;
	end
	wire [23:0] bpBackupRec;
	wire [23:0] bpBackupUpd;
	RegFile #(
		.WIDTH(24),
		.SIZE(32),
		.NUM_READ(2),
		.NUM_WRITE(1)
	) bpFile(
		.clk(clk),
		.IN_re({IN_mispr, IN_bpUpdate0[0]}),
		.IN_raddr({IN_misprFetchID, IN_bpUpdate0[6-:5]}),
		.OUT_rdata({bpBackupRec, bpBackupUpd}),
		.IN_we(en1),
		.IN_waddr(IN_fetchID),
		.IN_wdata(bpBackup)
	);
	reg [75:0] btUpdate;
	always @(*) begin
		btUpdate = 1'sbx;
		btUpdate[0] = 0;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_IN; i = i + 1)
				if (IN_btUpdates[i * 76])
					btUpdate = IN_btUpdates[i * 76+:76];
		end
	end
	wire [30:0] branchAddr = OUT_pc;
	reg [30:0] pcReg;
	reg [30:0] pcRegNoInc;
	reg ignorePred;
	wire [40:0] BTB_br;
	wire [40:0] RET_br;
	wire TAGE_taken;
	always @(*) begin
		OUT_predBr = 1'sb0;
		OUT_predBr[40-:31] = OUT_curRetAddr;
		OUT_predBr[9-:3] = 3'b111;
		OUT_pc = pcReg;
		OUT_lastOffs = 3'b111;
		if (ignorePred)
			;
		else if (BTB_br[0] && (!RET_br[0] || (RET_br[9-:3] > BTB_br[9-:3]))) begin
			OUT_predBr = BTB_br;
			OUT_predBr[1] = BTB_br[4] || TAGE_taken;
			OUT_predBr[2] = !OUT_predBr[1] && (BTB_br[2] || RET_br[0]);
			if (OUT_predBr[1]) begin
				OUT_pc = OUT_predBr[40-:31];
				OUT_lastOffs = OUT_predBr[9-:3];
			end
			if (OUT_predBr[2] && (OUT_predBr[9-:3] != 3'b111)) begin
				OUT_lastOffs = OUT_predBr[9-:3];
				OUT_pc = {pcRegNoInc[30:3], OUT_predBr[9-:3] + 1'b1};
			end
		end
		else if (RET_br[0]) begin
			OUT_predBr = RET_br;
			OUT_pc = OUT_predBr[40-:31];
			OUT_lastOffs = OUT_predBr[9-:3];
		end
	end
	assign BTB_br[1] = 1'sbx;
	assign BTB_br[3] = 0;
	wire BTB_multipleBranches;
	BranchTargetBuffer btb(
		.clk(clk),
		.rst(rst),
		.IN_pcValid(IN_pcValid),
		.IN_pc(OUT_pc),
		.OUT_branchFound(BTB_br[0]),
		.OUT_branchDst(BTB_br[40-:31]),
		.OUT_branchSrcOffs(BTB_br[9-:3]),
		.OUT_branchIsJump(BTB_br[4]),
		.OUT_branchIsCall(BTB_br[5]),
		.OUT_branchCompr(BTB_br[6]),
		.OUT_multipleBranches(BTB_br[2]),
		.IN_btUpdate(btUpdate)
	);
	reg [11:0] lookupHistory;
	reg [11:0] updHistory;
	reg [9:0] update;
	TagePredictor tagePredictor(
		.clk(clk),
		.rst(rst),
		.IN_predValid(IN_pcValid),
		.IN_predAddr(branchAddr),
		.IN_predHistory(lookupHistory),
		.OUT_predTageID(TAGE_tageID),
		.OUT_altPred(TAGE_altPred),
		.OUT_predTaken(TAGE_taken),
		.IN_writeValid(IN_bpUpdate1[0]),
		.IN_writeAddr(IN_bpUpdate1[31:1]),
		.IN_writeHistory(updHistory),
		.IN_writeTageID(bpBackupUpd[23-:3]),
		.IN_writeTaken(update[1]),
		.IN_writeAltPred(bpBackupUpd[20]),
		.IN_writePred(bpBackupUpd[4])
	);
	wire [1:0] RET_idx;
	assign OUT_rIdx = RET_idx;
	reg [1:0] recRIdx;
	ReturnStack retStack(
		.clk(clk),
		.rst(rst),
		.OUT_stall(RET_stall),
		.IN_valid(IN_pcValid),
		.IN_pc(OUT_pc),
		.IN_fetchID(IN_fetchID),
		.IN_comFetchID(IN_comFetchID),
		.IN_lastPC(pcRegNoInc),
		.IN_branch(OUT_predBr),
		.OUT_curRetAddr(OUT_curRetAddr),
		.OUT_lateRetAddr(OUT_lateRetAddr),
		.IN_mispr(IN_mispr),
		.IN_misprAct(IN_misprRetAct),
		.IN_misprIdx(recRIdx),
		.IN_misprFetchID(IN_misprFetchID),
		.OUT_curIdx(RET_idx),
		.OUT_predBr(RET_br),
		.IN_returnUpd(IN_retDecUpd)
	);
	always @(*) updHistory = bpBackupUpd[19-:12];
	reg [12:0] recovery;
	reg [11:0] recHistory;
	always @(*) begin
		recHistory = bpBackupRec[19-:12];
		case (recovery[1-:2])
			2'd2, 2'd3: recHistory = {recHistory[10:0], (recovery[1-:2] == 2'd3 ? 1'b1 : 1'b0)};
			default:
				if (bpBackupRec[0] && (bpBackupRec[3-:3] <= recovery[6-:3]))
					recHistory = {recHistory[10:0], bpBackupRec[4]};
		endcase
		if (recovery[1-:2] == 2'd1)
			recHistory = {recHistory[10:0], 1'b1};
	end
	always @(*) begin
		recRIdx = bpBackupRec[7-:2];
		case (recovery[3-:2])
			2'd2: recRIdx = recRIdx - 1;
			2'd1: recRIdx = recRIdx + 1;
			default:
				;
		endcase
	end
	always @(*) begin
		lookupHistory = history;
		if (recovery[12])
			lookupHistory = recHistory;
		else if ((OUT_predBr[0] && !OUT_predBr[4]) && !ignorePred)
			lookupHistory = {lookupHistory[10:0], OUT_predBr[1]};
	end
	function automatic [30:0] sv2v_cast_31;
		input reg [30:0] inp;
		sv2v_cast_31 = inp;
	endfunction
	always @(posedge clk) begin
		recovery <= 1'sbx;
		recovery[12] <= 0;
		update <= 1'sbx;
		update[0] <= 0;
		if (rst) begin
			pcReg <= sv2v_cast_31(32'h80000000 >> 1);
			ignorePred <= 1;
		end
		else begin
			if (IN_pcValid) begin
				pcReg <= {OUT_pc[30:3] + 1'b1, 3'b000};
				pcRegNoInc <= OUT_pc;
				ignorePred <= 0;
			end
			if (IN_mispr) begin
				recovery[12] <= 1;
				recovery[11-:5] <= IN_misprFetchID;
				recovery[3-:2] <= IN_misprRetAct;
				recovery[1-:2] <= IN_misprHistAct;
				pcReg <= IN_misprDst;
				ignorePred <= 1;
			end
			history <= lookupHistory;
			if (IN_bpUpdate0[0])
				update <= IN_bpUpdate0;
		end
	end
endmodule
module BranchSelector (
	clk,
	rst,
	IN_branches,
	OUT_branch,
	OUT_PERFC_branchMispr,
	IN_ROB_curSqN,
	IN_RN_nextSqN,
	IN_mispredFlush
);
	parameter NUM_BRANCHES = 4;
	input wire clk;
	input wire rst;
	input wire [(NUM_BRANCHES * 64) - 1:0] IN_branches;
	output reg [63:0] OUT_branch;
	output reg OUT_PERFC_branchMispr;
	input wire [6:0] IN_ROB_curSqN;
	input wire [6:0] IN_RN_nextSqN;
	input wire IN_mispredFlush;
	reg [6:0] mispredFlushSqN;
	reg disableMispredFlush;
	always @(*) begin
		OUT_branch = 1'sbx;
		OUT_branch[6] = 0;
		OUT_branch[0] = 0;
		OUT_PERFC_branchMispr = 0;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < 3; i = i + 1)
				if (IN_branches[i * 64] && (!OUT_branch[0] || ($signed(IN_branches[(i * 64) + 27-:7] - OUT_branch[27-:7]) < 0))) begin
					OUT_branch[0] = 1;
					OUT_branch[59-:32] = IN_branches[(i * 64) + 59-:32];
					OUT_branch[27-:7] = IN_branches[(i * 64) + 27-:7];
					OUT_branch[13-:7] = IN_branches[(i * 64) + 13-:7];
					OUT_branch[20-:7] = IN_branches[(i * 64) + 20-:7];
					if (i == 3)
						OUT_branch[6] = IN_branches[(i * 64) + 6];
					OUT_branch[5-:5] = IN_branches[(i * 64) + 5-:5];
					OUT_branch[61-:2] = IN_branches[(i * 64) + 61-:2];
					OUT_branch[63-:2] = IN_branches[(i * 64) + 63-:2];
					if ((i < 2) && !IN_mispredFlush)
						OUT_PERFC_branchMispr = 1;
				end
		end
		if (IN_branches[192] && (!IN_mispredFlush || ($signed(IN_branches[219-:7] - mispredFlushSqN) < 0))) begin
			OUT_branch[0] = 1;
			OUT_branch[59-:32] = IN_branches[251-:32];
			OUT_branch[27-:7] = IN_branches[219-:7];
			OUT_branch[13-:7] = IN_branches[205-:7];
			OUT_branch[20-:7] = IN_branches[212-:7];
			OUT_branch[6] = IN_branches[198];
			OUT_branch[5-:5] = IN_branches[197-:5];
			OUT_branch[61-:2] = IN_branches[253-:2];
			OUT_branch[63-:2] = IN_branches[255-:2];
			OUT_PERFC_branchMispr = 0;
		end
	end
	always @(posedge clk)
		if (rst) begin
			mispredFlushSqN <= 0;
			disableMispredFlush <= 0;
		end
		else if (OUT_branch[0])
			mispredFlushSqN <= OUT_branch[27-:7];
endmodule
module BranchTargetBuffer (
	clk,
	rst,
	IN_pcValid,
	IN_pc,
	OUT_branchFound,
	OUT_branchDst,
	OUT_branchSrcOffs,
	OUT_branchIsJump,
	OUT_branchIsCall,
	OUT_branchCompr,
	OUT_multipleBranches,
	IN_btUpdate
);
	input wire clk;
	input wire rst;
	input wire IN_pcValid;
	input wire [30:0] IN_pc;
	output reg OUT_branchFound;
	output reg [30:0] OUT_branchDst;
	output reg [2:0] OUT_branchSrcOffs;
	output reg OUT_branchIsJump;
	output reg OUT_branchIsCall;
	output reg OUT_branchCompr;
	output reg OUT_multipleBranches;
	input wire [75:0] IN_btUpdate;
	localparam LENGTH = 1024;
	(* ram_style = "block" *) reg [53:0] entries [1023:0];
	(* ram_style = "block" *) reg multiple [1023:0];
	reg [85:0] fetched;
	always @(posedge clk)
		if (IN_pcValid) begin
			fetched[85-:54] <= entries[IN_pc[9:0]];
			fetched[31] <= multiple[IN_pc[9:0]];
			fetched[30-:31] <= IN_pc;
		end
	always @(*) begin
		OUT_branchFound = 0;
		OUT_multipleBranches = 1'sbx;
		OUT_branchDst = 1'sbx;
		OUT_branchIsJump = 0;
		OUT_branchIsCall = 0;
		OUT_branchCompr = 0;
		OUT_branchSrcOffs = 1'sbx;
		if (fetched[82] && (fetched[50-:16] == fetched[10+:16])) begin
			OUT_branchFound = 1;
			OUT_multipleBranches = fetched[31];
			OUT_branchDst = fetched[81-:31];
			OUT_branchIsJump = fetched[85];
			OUT_branchIsCall = fetched[84];
			OUT_branchCompr = fetched[83];
			OUT_branchSrcOffs = fetched[34-:3];
		end
	end
	reg [10:0] setMult;
	function automatic [9:0] sv2v_cast_65A20;
		input reg [9:0] inp;
		sv2v_cast_65A20 = inp;
	endfunction
	function automatic [10:0] sv2v_cast_E1452;
		input reg [10:0] inp;
		sv2v_cast_E1452 = inp;
	endfunction
	always @(posedge clk)
		if (rst)
			setMult <= sv2v_cast_E1452({sv2v_cast_65A20(1'sbx), 1'd0});
		else if (IN_btUpdate[0]) begin : sv2v_autoblock_1
			reg [9:0] idx;
			idx = {IN_btUpdate[54:48], IN_btUpdate[11-:3]};
			if (IN_btUpdate[1]) begin
				entries[idx] <= 1'sbx;
				entries[idx][50] <= 0;
			end
			else begin
				if (IN_btUpdate[3]) begin
					setMult[0] <= 1;
					setMult[10-:10] <= idx;
					idx[2:0] = IN_btUpdate[6-:3];
				end
				entries[idx][50] <= 1;
				entries[idx][51] <= IN_btUpdate[2];
				entries[idx][53] <= IN_btUpdate[8];
				entries[idx][52] <= IN_btUpdate[7];
				entries[idx][49-:31] <= IN_btUpdate[43:13];
				entries[idx][18-:16] <= IN_btUpdate[55+:16];
				entries[idx][2-:3] <= IN_btUpdate[45+:3];
				multiple[idx] <= 0;
			end
		end
		else if (setMult[0]) begin
			multiple[setMult[10-:10]] <= 1;
			setMult <= sv2v_cast_E1452({sv2v_cast_65A20(1'sbx), 1'd0});
		end
	reg [10:0] dbgOcc;
	reg [1023:0] dbgValid;
	reg [1023:0] dbgUsed;
	always @(*) begin
		dbgOcc = 0;
		dbgValid = 0;
		dbgUsed = 0;
		begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < LENGTH; i = i + 1)
				if (entries[i][50]) begin
					dbgOcc = dbgOcc + 1;
					dbgValid[i] = 1;
				end
		end
	end
endmodule
module BypassLSU (
	clk,
	rst,
	IN_branch,
	IN_uopLdEn,
	OUT_ldStall,
	IN_uopLd,
	IN_uopStEn,
	OUT_stStall,
	IN_uopSt,
	IN_ldStall,
	OUT_uopLd,
	OUT_ldData,
	OUT_memc,
	IN_memc
);
	input wire clk;
	input wire rst;
	input wire [63:0] IN_branch;
	input wire IN_uopLdEn;
	output reg OUT_ldStall;
	input wire [61:0] IN_uopLd;
	input wire IN_uopStEn;
	output reg OUT_stStall;
	input wire [71:0] IN_uopSt;
	input wire IN_ldStall;
	output reg [61:0] OUT_uopLd;
	output reg [31:0] OUT_ldData;
	output reg [112:0] OUT_memc;
	input wire [397:0] IN_memc;
	reg [31:0] result;
	reg [61:0] activeLd;
	wire invalidateActiveLd = !((activeLd[4] || !IN_branch[0]) || ($signed(activeLd[12-:7] - IN_branch[27-:7]) <= 0));
	reg [2:0] state;
	always @(*) begin
		OUT_stStall = (IN_uopSt[0] && IN_uopStEn) && (state != 3'd0);
		OUT_ldStall = (IN_uopLd[0] && IN_uopLdEn) && ((state != 3'd0) || (IN_uopSt[0] && !OUT_stStall));
		OUT_uopLd = 1'sbx;
		OUT_uopLd[0] = 0;
		if ((state == 3'd5) && !invalidateActiveLd)
			OUT_uopLd = activeLd;
	end
	function automatic [112:0] sv2v_cast_113;
		input reg [112:0] inp;
		sv2v_cast_113 = inp;
	endfunction
	always @(posedge clk)
		if (rst) begin
			activeLd[0] <= 0;
			OUT_memc <= 1'sb0;
			OUT_memc[112-:4] <= 4'd0;
			state <= 3'd0;
		end
		else begin
			if (invalidateActiveLd) begin
				activeLd <= 1'sbx;
				activeLd[0] <= 0;
			end
			case (state)
				default: begin
					state <= 3'd0;
					if ((IN_uopSt[0] && IN_uopStEn) && !OUT_stStall) begin : sv2v_autoblock_1
						reg [1:0] addrLow;
						begin : sv2v_autoblock_2
							integer i;
							for (i = 3; i >= 0; i = i - 1)
								if (IN_uopSt[4 + i] == 1)
									addrLow = i[1:0];
						end
						case (IN_uopSt[7-:4])
							4'b0001, 4'b0010, 4'b0100, 4'b1000: OUT_memc[112-:4] <= 4'd7;
							4'b0011, 4'b1100: OUT_memc[112-:4] <= 4'd8;
							4'b1111: OUT_memc[112-:4] <= 4'd9;
							default:
								;
						endcase
						OUT_memc[76-:12] <= 1'sbx;
						OUT_memc[32-:32] <= {IN_uopSt[71:42], addrLow};
						OUT_memc[0] <= 1'sbx;
						OUT_memc[108-:32] <= IN_uopSt[39-:32];
						state <= 3'd2;
					end
					else if (((IN_uopLd[0] && IN_uopLdEn) && !OUT_ldStall) && ((IN_uopLd[4] || !IN_branch[0]) || ($signed(IN_uopLd[12-:7] - IN_branch[27-:7]) <= 0))) begin
						case (IN_uopLd[28-:2])
							0: OUT_memc[112-:4] <= 4'd4;
							1: OUT_memc[112-:4] <= 4'd5;
							2: OUT_memc[112-:4] <= 4'd6;
							default:
								;
						endcase
						OUT_memc[76-:12] <= 1'sbx;
						OUT_memc[64-:32] <= IN_uopLd[61:30];
						OUT_memc[0] <= 1'sbx;
						state <= 3'd1;
						activeLd <= IN_uopLd;
					end
				end
				3'd1, 3'd2:
					if (!IN_memc[3]) begin
						OUT_memc <= sv2v_cast_113(113'b0000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
						state <= (state == 3'd1 ? 3'd3 : 3'd4);
					end
				3'd3:
					if (IN_memc[17]) begin
						state <= 3'd5;
						case (activeLd[28-:2])
							0: OUT_ldData <= {4 {IN_memc[37:30]}};
							1: OUT_ldData <= {2 {IN_memc[45:30]}};
							default: OUT_ldData <= IN_memc[61-:32];
						endcase
					end
				3'd4:
					if (IN_memc[4])
						state <= 3'd0;
				3'd5:
					if (!IN_ldStall) begin
						state <= 3'd0;
						activeLd <= 1'sbx;
						activeLd[0] <= 0;
					end
			endcase
		end
endmodule
module CacheInterface (
	clk,
	rst,
	IN_en,
	IN_write,
	IN_cacheID,
	IN_len,
	IN_addr,
	OUT_busy,
	IN_valid,
	IN_data,
	OUT_valid,
	OUT_data,
	OUT_CACHE_id,
	OUT_CACHE_ce,
	OUT_CACHE_we,
	OUT_CACHE_addr,
	OUT_CACHE_data,
	IN_CACHE_data
);
	parameter ADDR_BITS = 10;
	parameter LEN_BITS = 8;
	parameter ID_BITS = 1;
	input wire clk;
	input wire rst;
	input wire IN_en;
	input wire IN_write;
	input wire [ID_BITS - 1:0] IN_cacheID;
	input wire [LEN_BITS - 1:0] IN_len;
	input wire [ADDR_BITS - 1:0] IN_addr;
	output wire OUT_busy;
	input wire IN_valid;
	input wire [31:0] IN_data;
	output reg OUT_valid;
	output reg [31:0] OUT_data;
	output reg [ID_BITS - 1:0] OUT_CACHE_id;
	output reg OUT_CACHE_ce;
	output reg OUT_CACHE_we;
	output reg [ADDR_BITS - 1:0] OUT_CACHE_addr;
	output reg [31:0] OUT_CACHE_data;
	input wire [31:0] IN_CACHE_data;
	reg active;
	assign OUT_busy = active;
	reg isWrite;
	reg [ID_BITS - 1:0] cacheID;
	reg [LEN_BITS - 1:0] lenCnt;
	reg [ADDR_BITS - 1:0] addrCnt;
	reg [1:0] readRequests;
	reg [1:0] readBufferCnt;
	wire [1:0] readBufferRqCnt = (readBufferCnt + {1'b0, readRequests[0]}) + {1'b0, readRequests[1]};
	reg [0:0] readBufferInsertIdx;
	reg [0:0] readBufferOutputIdx;
	reg [31:0] readBuffer [1:0];
	reg progress;
	reg readToBuffer;
	reg readFromBuffer;
	always @(*) begin
		OUT_CACHE_id = cacheID;
		progress = 0;
		readToBuffer = 0;
		readFromBuffer = 0;
		OUT_CACHE_ce = 1;
		OUT_CACHE_we = 1'sbx;
		OUT_CACHE_addr = 1'sbx;
		OUT_CACHE_data = 1'sbx;
		OUT_valid = 0;
		OUT_data = 1'sbx;
		if (active) begin
			if (isWrite && IN_valid) begin
				OUT_CACHE_ce = 0;
				OUT_CACHE_we = 0;
				OUT_CACHE_addr = addrCnt;
				OUT_CACHE_data = IN_data;
				progress = 1;
			end
			if (!isWrite && IN_valid) begin
				readFromBuffer = readBufferCnt != 0;
				OUT_data = (readFromBuffer ? readBuffer[readBufferOutputIdx] : IN_CACHE_data);
				OUT_valid = 1;
			end
			if ((!isWrite && ((readBufferRqCnt != 2) || IN_valid)) && (lenCnt != 0)) begin
				OUT_CACHE_ce = 0;
				OUT_CACHE_we = 1;
				OUT_CACHE_addr = addrCnt;
				readToBuffer = 1;
			end
		end
	end
	always @(posedge clk)
		if (rst)
			active <= 0;
		else begin
			readRequests <= {readRequests[0], 1'b0};
			if (!active && IN_en) begin
				active <= 1;
				isWrite <= IN_write;
				lenCnt <= IN_len;
				addrCnt <= IN_addr;
				cacheID <= IN_cacheID;
				readBufferInsertIdx = 0;
				readBufferOutputIdx = 0;
				readBufferCnt = 0;
				readRequests <= 0;
			end
			else if (active)
				if (isWrite && progress) begin
					if (lenCnt == 1)
						active <= 0;
					addrCnt[3:0] <= addrCnt[3:0] + 1;
					lenCnt <= lenCnt - 1;
					readBufferInsertIdx = 0;
					readBufferOutputIdx = 0;
					readRequests <= 0;
				end
				else if (!isWrite) begin
					if (IN_valid) begin
						if ((lenCnt == 0) && (readBufferRqCnt == 1))
							active <= 0;
						if (readFromBuffer) begin
							readBufferOutputIdx = readBufferOutputIdx + 1;
							readBufferCnt = readBufferCnt - 1;
						end
					end
					if (readRequests[1] && (!IN_valid || readFromBuffer)) begin
						readBuffer[readBufferInsertIdx] <= IN_CACHE_data;
						readBufferCnt = readBufferCnt + 1;
						readBufferInsertIdx = readBufferInsertIdx + 1;
					end
					if (readToBuffer) begin
						readRequests <= {readRequests[0], 1'b1};
						addrCnt[3:0] <= addrCnt[3:0] + 1;
						lenCnt <= lenCnt - 1;
					end
				end
		end
endmodule
module CacheReadInterface (
	clk,
	rst,
	OUT_ready,
	IN_valid,
	IN_id,
	IN_len,
	IN_addr,
	IN_mmio,
	IN_mmioData,
	IN_ready,
	OUT_valid,
	OUT_id,
	OUT_data,
	OUT_last,
	IN_CACHE_ready,
	OUT_CACHE_ce,
	OUT_CACHE_we,
	OUT_CACHE_addr,
	IN_CACHE_data,
	OUT_cacheReadValid,
	OUT_cacheReadId
);
	parameter ADDR_BITS = 10;
	parameter LEN_BITS = 8;
	parameter IWIDTH = 128;
	parameter CWIDTH = 32;
	parameter BUF_LEN = 32;
	parameter ID_LEN = 2;
	input wire clk;
	input wire rst;
	output wire OUT_ready;
	input wire IN_valid;
	input wire [ID_LEN - 1:0] IN_id;
	input wire [LEN_BITS - 1:0] IN_len;
	input wire [ADDR_BITS - 1:0] IN_addr;
	input wire IN_mmio;
	input wire [31:0] IN_mmioData;
	input wire IN_ready;
	output wire OUT_valid;
	output wire [ID_LEN - 1:0] OUT_id;
	output wire [IWIDTH - 1:0] OUT_data;
	output wire OUT_last;
	input reg IN_CACHE_ready;
	output reg OUT_CACHE_ce;
	output reg OUT_CACHE_we;
	output reg [ADDR_BITS - 1:0] OUT_CACHE_addr;
	input wire [CWIDTH - 1:0] IN_CACHE_data;
	output reg OUT_cacheReadValid;
	output reg [ID_LEN - 1:0] OUT_cacheReadId;
	localparam WNUM = IWIDTH / CWIDTH;
	localparam CWIDTH_W_ = CWIDTH / 32;
	function automatic signed [LEN_BITS - 1:0] sv2v_cast_2466C_signed;
		input reg signed [LEN_BITS - 1:0] inp;
		sv2v_cast_2466C_signed = inp;
	endfunction
	localparam CWIDTH_W = sv2v_cast_2466C_signed(CWIDTH_W_);
	wire [$clog2(BUF_LEN):0] FIFO_free;
	reg FIFO_valid;
	reg [IWIDTH - 1:0] FIFO_data;
	reg [ID_LEN - 1:0] FIFO_id;
	reg FIFO_last;
	wire FIFO_ready;
	FIFO #(
		.WIDTH((IWIDTH + ID_LEN) + 1),
		.NUM(BUF_LEN),
		.FORWARD1(1),
		.FORWARD0(0)
	) fifo(
		.clk(clk),
		.rst(rst),
		.free(FIFO_free),
		.IN_valid(FIFO_valid),
		.IN_data({FIFO_last, FIFO_id, FIFO_data}),
		.OUT_ready(FIFO_ready),
		.OUT_valid(OUT_valid),
		.IN_ready(IN_ready),
		.OUT_data({OUT_last, OUT_id, OUT_data})
	);
	reg [((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 0:0] cur;
	reg [((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 0:0] next;
	reg [IWIDTH - 1:0] acc;
	reg [$clog2(WNUM):0] accIdx_r;
	reg [$clog2(WNUM):0] accIdx_c;
	reg doAcc;
	reg [(((32 + ID_LEN) + 2) >= 0 ? (2 * ((32 + ID_LEN) + 3)) - 1 : (2 * (1 - ((32 + ID_LEN) + 2))) + ((32 + ID_LEN) + 1)):(((32 + ID_LEN) + 2) >= 0 ? 0 : (32 + ID_LEN) + 2)] readMetaSR;
	always @(*) begin
		accIdx_c = accIdx_r;
		FIFO_valid = 0;
		FIFO_data = 1'sbx;
		FIFO_id = 1'sbx;
		FIFO_last = 1'sbx;
		doAcc = 0;
		if (readMetaSR[(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) + (((32 + ID_LEN) + 2) >= 0 ? 0 : (32 + ID_LEN) + 2)]) begin
			accIdx_c = accIdx_c + 1;
			if (readMetaSR[(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) + (((32 + ID_LEN) + 2) >= 0 ? 2 : (32 + ID_LEN) + 0)]) begin
				FIFO_valid = 1;
				FIFO_data = 1'sb0;
				FIFO_data[31:0] = readMetaSR[(((32 + ID_LEN) + 2) >= 0 ? (((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) + (((32 + ID_LEN) + 2) >= 0 ? 32 + (ID_LEN + 2) : ((32 + ID_LEN) + 2) - (32 + (ID_LEN + 2))) : (((((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) + (((32 + ID_LEN) + 2) >= 0 ? 32 + (ID_LEN + 2) : ((32 + ID_LEN) + 2) - (32 + (ID_LEN + 2)))) + ((32 + (ID_LEN + 2)) >= (ID_LEN + 3) ? ((32 + (ID_LEN + 2)) - (ID_LEN + 3)) + 1 : ((ID_LEN + 3) - (32 + (ID_LEN + 2))) + 1)) - 1)-:((32 + (ID_LEN + 2)) >= (ID_LEN + 3) ? ((32 + (ID_LEN + 2)) - (ID_LEN + 3)) + 1 : ((ID_LEN + 3) - (32 + (ID_LEN + 2))) + 1)];
				FIFO_id = readMetaSR[(((32 + ID_LEN) + 2) >= 0 ? (((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) + (((32 + ID_LEN) + 2) >= 0 ? ID_LEN + 2 : ((32 + ID_LEN) + 2) - (ID_LEN + 2)) : (((((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) + (((32 + ID_LEN) + 2) >= 0 ? ID_LEN + 2 : ((32 + ID_LEN) + 2) - (ID_LEN + 2))) + ((ID_LEN + 2) >= 3 ? ID_LEN + 0 : 4 - (ID_LEN + 2))) - 1)-:((ID_LEN + 2) >= 3 ? ID_LEN + 0 : 4 - (ID_LEN + 2))];
				FIFO_last = readMetaSR[(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) + (((32 + ID_LEN) + 2) >= 0 ? 1 : (32 + ID_LEN) + 1)];
				accIdx_c = 0;
			end
			else if (accIdx_c[$clog2(WNUM)]) begin
				FIFO_valid = 1;
				FIFO_data = acc;
				FIFO_data[(WNUM - 1) * CWIDTH+:CWIDTH] = IN_CACHE_data;
				FIFO_id = readMetaSR[(((32 + ID_LEN) + 2) >= 0 ? (((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) + (((32 + ID_LEN) + 2) >= 0 ? ID_LEN + 2 : ((32 + ID_LEN) + 2) - (ID_LEN + 2)) : (((((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) + (((32 + ID_LEN) + 2) >= 0 ? ID_LEN + 2 : ((32 + ID_LEN) + 2) - (ID_LEN + 2))) + ((ID_LEN + 2) >= 3 ? ID_LEN + 0 : 4 - (ID_LEN + 2))) - 1)-:((ID_LEN + 2) >= 3 ? ID_LEN + 0 : 4 - (ID_LEN + 2))];
				FIFO_last = readMetaSR[(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) + (((32 + ID_LEN) + 2) >= 0 ? 1 : (32 + ID_LEN) + 1)];
				accIdx_c = 0;
			end
			else
				doAcc = 1;
		end
	end
	always @(posedge clk)
		if (rst)
			accIdx_r <= 0;
		else begin
			accIdx_r <= accIdx_c;
			if (doAcc)
				acc[accIdx_r * CWIDTH+:CWIDTH] <= IN_CACHE_data;
		end
	reg allowNewRead;
	function automatic [$clog2(BUF_LEN) - 1:0] sv2v_cast_3E8F8;
		input reg [$clog2(BUF_LEN) - 1:0] inp;
		sv2v_cast_3E8F8 = inp;
	endfunction
	always @(*) begin : sv2v_autoblock_1
		reg [$clog2(BUF_LEN):0] inFlight;
		inFlight = sv2v_cast_3E8F8(readMetaSR[(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) + (((32 + ID_LEN) + 2) >= 0 ? 0 : (32 + ID_LEN) + 2)]) + sv2v_cast_3E8F8(readMetaSR[0 + (((32 + ID_LEN) + 2) >= 0 ? 0 : (32 + ID_LEN) + 2)]);
		allowNewRead = (FIFO_free * WNUM) > inFlight;
	end
	reg [(32 + ID_LEN) + 2:0] readMeta;
	function automatic [ID_LEN - 1:0] sv2v_cast_52A61;
		input reg [ID_LEN - 1:0] inp;
		sv2v_cast_52A61 = inp;
	endfunction
	function automatic [(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) - 1:0] sv2v_cast_5F2A1;
		input reg [(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) - 1:0] inp;
		sv2v_cast_5F2A1 = inp;
	endfunction
	always @(*) begin
		OUT_CACHE_ce = 1;
		OUT_CACHE_we = 1;
		OUT_CACHE_addr = 1'sbx;
		readMeta = sv2v_cast_5F2A1({32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_52A61(1'sbx), 1'bx, 1'bx, 1'd0});
		if (cur[0] && allowNewRead) begin
			OUT_CACHE_ce = 0;
			OUT_CACHE_we = 1;
			OUT_CACHE_addr = {cur[(ADDR_BITS + (ID_LEN + 0)) - ((ADDR_BITS - 1) - (ADDR_BITS - 1)):(ADDR_BITS + (ID_LEN + 0)) - (ADDR_BITS - 5)], cur[(ADDR_BITS + (ID_LEN + 0)) - (ADDR_BITS - 4):(ADDR_BITS + (ID_LEN + 0)) - (ADDR_BITS - 1)] + cur[(LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))) - (LEN_BITS - 4):(LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))) - (LEN_BITS - 1)]};
			readMeta[0] = 1;
			readMeta[ID_LEN + 2-:((ID_LEN + 2) >= 3 ? ID_LEN + 0 : 4 - (ID_LEN + 2))] = cur[ID_LEN + 0-:((ID_LEN + 0) >= 1 ? ID_LEN + 0 : 2 - (ID_LEN + 0))];
			readMeta[1] = (cur[(LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))) - ((LEN_BITS - 1) - (LEN_BITS - 1)):(LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))) - ((LEN_BITS - 1) - $clog2(CWIDTH_W))] == cur[(LEN_BITS + (ADDR_BITS + (ID_LEN + 0))) - ((LEN_BITS - 1) - (LEN_BITS - 1)):(LEN_BITS + (ADDR_BITS + (ID_LEN + 0))) - ((LEN_BITS - 1) - $clog2(CWIDTH_W))]) || cur[1 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))];
			readMeta[2] = cur[1 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))];
			readMeta[32 + (ID_LEN + 2)-:((32 + (ID_LEN + 2)) >= (ID_LEN + 3) ? ((32 + (ID_LEN + 2)) - (ID_LEN + 3)) + 1 : ((ID_LEN + 3) - (32 + (ID_LEN + 2))) + 1)] = cur[33 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))-:((33 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))) >= (1 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 1))))) ? ((33 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))) - (1 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 1)))))) + 1 : ((1 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 1))))) - (33 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))))) + 1)];
		end
	end
	wire readSucc = readMeta[0] && (IN_CACHE_ready || readMeta[2]);
	assign OUT_ready = !next[0] || (readSucc && readMeta[1]);
	always @(*) begin
		OUT_cacheReadValid = 0;
		OUT_cacheReadId = 1'sbx;
		if (readSucc) begin
			OUT_cacheReadValid = 1;
			OUT_cacheReadId = readMeta[ID_LEN + 2-:((ID_LEN + 2) >= 3 ? ID_LEN + 0 : 4 - (ID_LEN + 2))];
		end
	end
	function automatic [LEN_BITS - 1:0] sv2v_cast_F41B2;
		input reg [LEN_BITS - 1:0] inp;
		sv2v_cast_F41B2 = inp;
	endfunction
	function automatic [ADDR_BITS - 1:0] sv2v_cast_F5DEB;
		input reg [ADDR_BITS - 1:0] inp;
		sv2v_cast_F5DEB = inp;
	endfunction
	function automatic [((((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 0) >= 0 ? ((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 1 : 1 - (((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 0)) - 1:0] sv2v_cast_E24E2;
		input reg [((((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 0) >= 0 ? ((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 1 : 1 - (((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 0)) - 1:0] inp;
		sv2v_cast_E24E2 = inp;
	endfunction
	always @(posedge clk)
		if (rst) begin
			cur <= 1'sbx;
			cur[0] <= 0;
			next <= 1'sbx;
			next[0] <= 0;
			readMetaSR <= 1'sb0;
		end
		else begin : sv2v_autoblock_2
			reg [((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 0:0] incoming;
			incoming = sv2v_cast_E24E2({33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_F41B2(1'sbx), sv2v_cast_F41B2(1'sbx), sv2v_cast_F5DEB(1'sbx), sv2v_cast_52A61(1'sbx), 1'd0});
			if (IN_valid && OUT_ready) begin
				incoming[0] = 1;
				incoming[ID_LEN + 0-:((ID_LEN + 0) >= 1 ? ID_LEN + 0 : 2 - (ID_LEN + 0))] = IN_id;
				incoming[ADDR_BITS + (ID_LEN + 0)-:((ADDR_BITS + (ID_LEN + 0)) >= (ID_LEN + 1) ? ((ADDR_BITS + (ID_LEN + 0)) - (ID_LEN + 1)) + 1 : ((ID_LEN + 1) - (ADDR_BITS + (ID_LEN + 0))) + 1)] = IN_addr;
				incoming[LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))-:((LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))) >= (LEN_BITS + (ADDR_BITS + (ID_LEN + 1))) ? ((LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))) - (LEN_BITS + (ADDR_BITS + (ID_LEN + 1)))) + 1 : ((LEN_BITS + (ADDR_BITS + (ID_LEN + 1))) - (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))) + 1)] = 0;
				incoming[LEN_BITS + (ADDR_BITS + (ID_LEN + 0))-:((LEN_BITS + (ADDR_BITS + (ID_LEN + 0))) >= (ADDR_BITS + (ID_LEN + 1)) ? ((LEN_BITS + (ADDR_BITS + (ID_LEN + 0))) - (ADDR_BITS + (ID_LEN + 1))) + 1 : ((ADDR_BITS + (ID_LEN + 1)) - (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))) + 1)] = IN_len;
				incoming[1 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))] = IN_mmio;
				incoming[33 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))-:((33 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))) >= (1 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 1))))) ? ((33 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))) - (1 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 1)))))) + 1 : ((1 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 1))))) - (33 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))))) + 1)] = IN_mmioData;
			end
			readMetaSR <= {readMetaSR[(((32 + ID_LEN) + 2) >= 0 ? 0 : (32 + ID_LEN) + 2) + 0+:(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2))], (readSucc ? readMeta : {(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) {1'sb0}})};
			if (readSucc)
				if (readMeta[1]) begin
					if (next[0]) begin
						cur <= next;
						next <= sv2v_cast_E24E2({33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_F41B2(1'sbx), sv2v_cast_F41B2(1'sbx), sv2v_cast_F5DEB(1'sbx), sv2v_cast_52A61(1'sbx), 1'd0});
					end
					else begin
						cur <= incoming;
						incoming = sv2v_cast_E24E2({33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_F41B2(1'sbx), sv2v_cast_F41B2(1'sbx), sv2v_cast_F5DEB(1'sbx), sv2v_cast_52A61(1'sbx), 1'd0});
					end
				end
				else
					cur[LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))-:((LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))) >= (LEN_BITS + (ADDR_BITS + (ID_LEN + 1))) ? ((LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))) - (LEN_BITS + (ADDR_BITS + (ID_LEN + 1)))) + 1 : ((LEN_BITS + (ADDR_BITS + (ID_LEN + 1))) - (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))) + 1)] <= cur[LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))-:((LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))) >= (LEN_BITS + (ADDR_BITS + (ID_LEN + 1))) ? ((LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))) - (LEN_BITS + (ADDR_BITS + (ID_LEN + 1)))) + 1 : ((LEN_BITS + (ADDR_BITS + (ID_LEN + 1))) - (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))) + 1)] + CWIDTH_W;
			if (incoming[0])
				if (!cur[0])
					cur <= incoming;
				else
					next <= incoming;
		end
endmodule
module CacheWriteInterface (
	clk,
	rst,
	OUT_ready,
	IN_valid,
	IN_addr,
	IN_data,
	IN_id,
	OUT_ackValid,
	OUT_ackId,
	IN_CACHE_ready,
	OUT_CACHE_ce,
	OUT_CACHE_we,
	OUT_CACHE_addr,
	OUT_CACHE_data
);
	parameter ADDR_BITS = 10;
	parameter LEN_BITS = 8;
	parameter IWIDTH = 128;
	parameter CWIDTH = 128;
	parameter ID_LEN = 2;
	input wire clk;
	input wire rst;
	output reg OUT_ready;
	input wire IN_valid;
	input wire [ADDR_BITS - 1:0] IN_addr;
	input wire [IWIDTH - 1:0] IN_data;
	input wire [ID_LEN - 1:0] IN_id;
	output reg OUT_ackValid;
	output reg [ID_LEN - 1:0] OUT_ackId;
	input wire IN_CACHE_ready;
	output reg OUT_CACHE_ce;
	output reg OUT_CACHE_we;
	output reg [ADDR_BITS - 1:0] OUT_CACHE_addr;
	output reg [CWIDTH - 1:0] OUT_CACHE_data;
	localparam WNUM = IWIDTH / CWIDTH;
	reg [(((IWIDTH + ADDR_BITS) + ($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH))) + ID_LEN) + 0:0] cur_r;
	reg [(((IWIDTH + ADDR_BITS) + ($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH))) + ID_LEN) + 0:0] cur_c;
	wire [1:1] sv2v_tmp_1B17E;
	assign sv2v_tmp_1B17E = !cur_r[0];
	always @(*) OUT_ready = sv2v_tmp_1B17E;
	reg writeLast;
	reg [ID_LEN - 1:0] writeLastId;
	function automatic [(((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))) >= (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1)) ? ((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1))) + 1 : ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1)) - (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)))) + 1) * 1) - 1:0] sv2v_cast_A010A;
		input reg [(((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))) >= (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1)) ? ((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1))) + 1 : ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1)) - (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)))) + 1) * 1) - 1:0] inp;
		sv2v_cast_A010A = inp;
	endfunction
	always @(*) begin
		writeLast = 0;
		writeLastId = 1'sbx;
		cur_c = cur_r;
		if (OUT_ready && IN_valid) begin
			cur_c[0] = 1;
			cur_c[ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))-:((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))) >= (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1)) ? ((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1))) + 1 : ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1)) - (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)))) + 1)] = IN_addr;
			cur_c[IWIDTH + (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)))-:((IWIDTH + (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)))) >= (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1))) ? ((IWIDTH + (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)))) - (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1)))) + 1 : ((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1))) - (IWIDTH + (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))))) + 1)] = IN_data;
			cur_c[ID_LEN + 0-:((ID_LEN + 0) >= 1 ? ID_LEN + 0 : 2 - (ID_LEN + 0))] = IN_id;
			cur_c[($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)-:((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)) >= (ID_LEN + 1) ? ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)) - (ID_LEN + 1)) + 1 : ((ID_LEN + 1) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))) + 1)] = 0;
		end
		OUT_CACHE_ce = 1;
		OUT_CACHE_we = 1'sbx;
		OUT_CACHE_addr = 1'sbx;
		OUT_CACHE_data = 1'sbx;
		if (cur_c[0]) begin
			OUT_CACHE_ce = 0;
			OUT_CACHE_we = 0;
			OUT_CACHE_addr = cur_c[ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))-:((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))) >= (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1)) ? ((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1))) + 1 : ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 1)) - (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)))) + 1)] + sv2v_cast_A010A(cur_c[($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)-:((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)) >= (ID_LEN + 1) ? ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)) - (ID_LEN + 1)) + 1 : ((ID_LEN + 1) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))) + 1)]);
			OUT_CACHE_data = cur_c[(IWIDTH + (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)))) - ((IWIDTH - 1) - (cur_c[($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)-:((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)) >= (ID_LEN + 1) ? ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)) - (ID_LEN + 1)) + 1 : ((ID_LEN + 1) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))) + 1)] * CWIDTH))+:CWIDTH];
			cur_c[($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)-:((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)) >= (ID_LEN + 1) ? ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)) - (ID_LEN + 1)) + 1 : ((ID_LEN + 1) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))) + 1)] = cur_c[($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)-:((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)) >= (ID_LEN + 1) ? ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)) - (ID_LEN + 1)) + 1 : ((ID_LEN + 1) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0))) + 1)] + 1;
			if (cur_c[($clog2(IWIDTH / CWIDTH) >= 0 ? (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + 0)) - ($clog2(IWIDTH / CWIDTH) - $clog2(IWIDTH / CWIDTH)) : (ID_LEN + 1) - $clog2(IWIDTH / CWIDTH))]) begin
				writeLast = 1;
				writeLastId = cur_c[ID_LEN + 0-:((ID_LEN + 0) >= 1 ? ID_LEN + 0 : 2 - (ID_LEN + 0))];
				cur_c = 1'sbx;
				cur_c[0] = 0;
			end
		end
	end
	always @(posedge clk) begin
		OUT_ackValid <= 0;
		OUT_ackId <= 1'sbx;
		if (rst) begin
			cur_r <= 1'sbx;
			cur_r[0] <= 0;
		end
		else begin
			cur_r <= cur_c;
			if (writeLast) begin
				OUT_ackValid <= 1;
				OUT_ackId <= writeLastId;
			end
		end
	end
endmodule
module Divide (
	clk,
	rst,
	en,
	OUT_busy,
	IN_branch,
	IN_uop,
	OUT_uop
);
	input wire clk;
	input wire rst;
	input wire en;
	output wire OUT_busy;
	input wire [63:0] IN_branch;
	input wire [181:0] IN_uop;
	output reg [58:0] OUT_uop;
	reg [181:0] uop;
	reg [5:0] cnt;
	reg [64:0] r;
	reg [31:0] q;
	reg [31:0] d;
	reg invert;
	reg running;
	assign OUT_busy = running && ((cnt != 0) && (cnt != 63));
	always @(posedge clk) begin
		running <= 0;
		OUT_uop <= 1'sbx;
		OUT_uop[0] <= 0;
		if (!rst)
			if ((en && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[34-:7] - IN_branch[27-:7]) <= 0))) begin
				running <= 1;
				uop <= IN_uop;
				cnt <= 31;
				if (IN_uop[47-:6] == 6'd0) begin
					invert <= (IN_uop[181] ^ IN_uop[149]) && (IN_uop[149-:32] != 0);
					r <= {33'b000000000000000000000000000000000, (IN_uop[181] ? -IN_uop[181-:32] : IN_uop[181-:32])};
					d <= (IN_uop[149] ? -IN_uop[149-:32] : IN_uop[149-:32]);
				end
				else if (IN_uop[47-:6] == 6'd2) begin
					invert <= IN_uop[181];
					r <= {33'b000000000000000000000000000000000, (IN_uop[181] ? -IN_uop[181-:32] : IN_uop[181-:32])};
					d <= (IN_uop[149] ? -IN_uop[149-:32] : IN_uop[149-:32]);
				end
				else begin
					invert <= 0;
					r <= {33'b000000000000000000000000000000000, IN_uop[181-:32]};
					d <= IN_uop[149-:32];
				end
				OUT_uop[0] <= 0;
			end
			else if (running)
				if (IN_branch[0] && ($signed(IN_branch[27-:7] - uop[34-:7]) < 0)) begin
					running <= 0;
					uop[0] <= 0;
					OUT_uop[0] <= 0;
				end
				else if (cnt != 63) begin
					running <= 1;
					if (!r[64]) begin
						q[cnt[4:0]] <= 1;
						r <= (2 * r) - {1'b0, d, 32'b00000000000000000000000000000000};
					end
					else begin
						q[cnt[4:0]] <= 0;
						r <= (2 * r) + {1'b0, d, 32'b00000000000000000000000000000000};
					end
					cnt <= cnt - 1;
					OUT_uop[0] <= 0;
				end
				else begin : sv2v_autoblock_1
					reg [31:0] qRestored;
					reg [31:0] remainder;
					qRestored = (q - ~q) - (r[64] ? 1 : 0);
					remainder = (r[64] ? r[63:32] + d : r[63:32]);
					running <= 0;
					OUT_uop[26-:7] <= uop[19-:7];
					OUT_uop[12-:7] <= uop[34-:7];
					OUT_uop[19-:7] <= uop[41-:7];
					OUT_uop[1] <= 0;
					OUT_uop[5-:4] <= 4'd0;
					OUT_uop[0] <= 1;
					if ((uop[47-:6] == 6'd2) || (uop[47-:6] == 6'd3))
						OUT_uop[58-:32] <= (invert ? -remainder : remainder);
					else
						OUT_uop[58-:32] <= (invert ? -qRestored : qRestored);
				end
	end
endmodule
module FDiv (
	clk,
	rst,
	en,
	IN_wbAvail,
	OUT_busy,
	IN_branch,
	IN_uop,
	IN_fRoundMode,
	OUT_uop
);
	input wire clk;
	input wire rst;
	input wire en;
	input wire IN_wbAvail;
	output wire OUT_busy;
	input wire [63:0] IN_branch;
	input wire [181:0] IN_uop;
	input wire [2:0] IN_fRoundMode;
	output reg [58:0] OUT_uop;
	wire [2:0] rm = (IN_uop[47:45] == 3'b111 ? IN_fRoundMode : IN_uop[47:45]);
	wire [32:0] srcArec;
	wire [32:0] srcBrec;
	fNToRecFN #(
		8,
		24
	) recA(
		.in(IN_uop[181-:32]),
		.out(srcArec)
	);
	fNToRecFN #(
		8,
		24
	) recB(
		.in(IN_uop[149-:32]),
		.out(srcBrec)
	);
	wire ready;
	assign OUT_busy = (!ready || (en && IN_uop[0])) || OUT_uop[0];
	wire outValid;
	wire [4:0] flags;
	wire [32:0] result;
	divSqrtRecFN_small #(
		8,
		24,
		0
	) fdiv(
		.nReset(!rst),
		.clock(clk),
		.control(1'b1),
		.inReady(ready),
		.inValid((en && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[34-:7] - IN_branch[27-:7]) <= 0))),
		.sqrtOp(IN_uop[42]),
		.a(srcArec),
		.b(srcBrec),
		.roundingMode(rm),
		.outValid(outValid),
		.sqrtOpOut(),
		.out(result),
		.exceptionFlags(flags)
	);
	wire [31:0] fpResult;
	recFNToFN #(
		8,
		24
	) recode(
		.in(result),
		.out(fpResult)
	);
	reg running;
	always @(posedge clk)
		if (rst) begin
			OUT_uop <= 1'sbx;
			OUT_uop[0] <= 0;
			running <= 0;
		end
		else if (((!running && en) && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[34-:7] - IN_branch[27-:7]) <= 0))) begin
			OUT_uop[26-:7] <= IN_uop[19-:7];
			OUT_uop[19-:7] <= IN_uop[41-:7];
			OUT_uop[12-:7] <= IN_uop[34-:7];
			OUT_uop[1] <= 0;
			if (rm >= 3'b101)
				OUT_uop[5-:4] <= 4'd6;
			running <= 1;
		end
		else if ((running && outValid) && (!IN_branch[0] || ($signed(OUT_uop[12-:7] - IN_branch[27-:7]) <= 0))) begin
			OUT_uop[0] <= 1;
			OUT_uop[58-:32] <= fpResult;
			if (OUT_uop[5-:4] != 4'd6)
				casez (flags)
					5'b00000: OUT_uop[5-:4] <= 4'd0;
					5'bzzz1z: OUT_uop[5-:4] <= 4'd9;
					5'bzz1zz: OUT_uop[5-:4] <= 4'd10;
					5'bz1zzz: OUT_uop[5-:4] <= 4'd11;
					5'b1zzzz: OUT_uop[5-:4] <= 4'd12;
					5'bzzzz1: OUT_uop[5-:4] <= 4'd8;
				endcase
			running <= 0;
		end
		else begin
			if ((IN_branch[0] && ($signed(OUT_uop[12-:7] - IN_branch[27-:7]) > 0)) || IN_wbAvail)
				OUT_uop[0] <= 0;
			if (IN_branch[0] && ($signed(OUT_uop[12-:7] - IN_branch[27-:7]) > 0))
				running <= 0;
		end
endmodule
module FIFO (
	clk,
	rst,
	free,
	IN_valid,
	IN_data,
	OUT_ready,
	OUT_valid,
	IN_ready,
	OUT_data
);
	parameter WIDTH = 32;
	parameter NUM = 4;
	parameter FORWARD1 = 1;
	parameter FORWARD0 = 1;
	input wire clk;
	input wire rst;
	output reg [$clog2(NUM):0] free;
	input wire IN_valid;
	input wire [WIDTH - 1:0] IN_data;
	output wire OUT_ready;
	output reg OUT_valid;
	input wire IN_ready;
	output reg [WIDTH - 1:0] OUT_data;
	reg [WIDTH - 1:0] mem [NUM - 1:0];
	reg [$clog2(NUM) - 1:0] indexIn;
	reg [$clog2(NUM) - 1:0] indexOut;
	reg fullCond;
	wire equal = indexIn == indexOut;
	wire empty = !fullCond && equal;
	wire full = fullCond && equal;
	reg outValidReg;
	wire outputReady = !outValidReg || IN_ready;
	wire doExtract = !empty && outputReady;
	wire doInsert = IN_valid && OUT_ready;
	assign OUT_ready = !full || doExtract;
	always @(*)
		if (empty)
			free = NUM;
		else
			free = (indexOut - indexIn) % NUM;
	reg [WIDTH - 1:0] outDataReg;
	reg combPassthru;
	always @(*) begin
		OUT_valid = outValidReg;
		OUT_data = outDataReg;
		combPassthru = 0;
		if ((!OUT_valid && empty) && FORWARD0) begin
			OUT_valid = IN_valid;
			OUT_data = IN_data;
			combPassthru = 1;
		end
	end
	always @(posedge clk)
		if (rst) begin
			fullCond <= 0;
			indexIn <= 0;
			indexOut <= 0;
			outDataReg <= 1'sb0;
			outValidReg <= 0;
		end
		else begin
			if (outputReady)
				outDataReg <= 1'sbx;
			if (IN_ready)
				outValidReg <= 0;
			if (combPassthru && IN_ready)
				;
			else if (((empty && doInsert) && outputReady) && FORWARD1) begin
				outDataReg <= IN_data;
				outValidReg <= 1;
			end
			else begin
				if (doInsert) begin
					mem[indexIn] <= IN_data;
					indexIn <= (indexIn + 1) % NUM;
				end
				if (doExtract) begin
					indexOut <= (indexOut + 1) % NUM;
					outDataReg <= mem[indexOut];
					outValidReg <= 1;
				end
				if (doInsert != doExtract)
					fullCond <= doInsert;
			end
		end
endmodule
module FMul (
	clk,
	rst,
	en,
	IN_branch,
	IN_uop,
	IN_fRoundMode,
	OUT_uop
);
	input wire clk;
	input wire rst;
	input wire en;
	input wire [63:0] IN_branch;
	input wire [181:0] IN_uop;
	input wire [2:0] IN_fRoundMode;
	output reg [58:0] OUT_uop;
	wire [32:0] srcArec;
	wire [32:0] srcBrec;
	fNToRecFN #(
		8,
		24
	) recA(
		.in(IN_uop[181-:32]),
		.out(srcArec)
	);
	fNToRecFN #(
		8,
		24
	) recB(
		.in(IN_uop[149-:32]),
		.out(srcBrec)
	);
	wire [2:0] rm = (IN_uop[47:45] == 3'b111 ? IN_fRoundMode : IN_uop[47:45]);
	wire [32:0] mul;
	wire [4:0] mulFlags;
	mulRecFN #(
		8,
		24
	) mulRec(
		.control(1'b1),
		.a(srcArec),
		.b(srcBrec),
		.roundingMode(rm),
		.out(mul),
		.exceptionFlags(mulFlags)
	);
	wire [31:0] fpResult;
	recFNToFN #(
		8,
		24
	) recode(
		.in(mul),
		.out(fpResult)
	);
	always @(posedge clk) begin
		OUT_uop <= 1'sbx;
		OUT_uop[0] <= 0;
		if (((!rst && en) && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[34-:7] - IN_branch[27-:7]) <= 0))) begin
			OUT_uop[26-:7] <= IN_uop[19-:7];
			OUT_uop[19-:7] <= IN_uop[41-:7];
			OUT_uop[12-:7] <= IN_uop[34-:7];
			OUT_uop[0] <= 1;
			OUT_uop[58-:32] <= fpResult;
			OUT_uop[1] <= 0;
			casez (mulFlags)
				5'b00000: OUT_uop[5-:4] <= 4'd0;
				5'bzzz1z: OUT_uop[5-:4] <= 4'd9;
				5'bzz1zz: OUT_uop[5-:4] <= 4'd10;
				5'bz1zzz: OUT_uop[5-:4] <= 4'd11;
				5'b1zzzz: OUT_uop[5-:4] <= 4'd12;
				5'bzzzz1: OUT_uop[5-:4] <= 4'd8;
			endcase
			if (rm >= 3'b101)
				OUT_uop[5-:4] <= 4'd6;
		end
	end
endmodule
module FPU (
	clk,
	rst,
	en,
	IN_branch,
	IN_uop,
	IN_fRoundMode,
	OUT_uop
);
	input wire clk;
	input wire rst;
	input wire en;
	input wire [63:0] IN_branch;
	input wire [181:0] IN_uop;
	input wire [2:0] IN_fRoundMode;
	output reg [58:0] OUT_uop;
	wire [32:0] srcArec;
	wire [32:0] srcBrec;
	fNToRecFN #(
		8,
		24
	) recA(
		.in(IN_uop[181-:32]),
		.out(srcArec)
	);
	fNToRecFN #(
		8,
		24
	) recB(
		.in(IN_uop[149-:32]),
		.out(srcBrec)
	);
	wire [2:0] rm = IN_fRoundMode;
	wire lessThan;
	wire equal;
	wire greaterThan;
	wire [4:0] compareFlags;
	compareRecFN #(
		8,
		24
	) compare(
		.a(srcArec),
		.b(srcBrec),
		.signaling((IN_uop[47-:6] == 6'd42) || (IN_uop[47-:6] == 6'd41)),
		.lt(lessThan),
		.eq(equal),
		.gt(greaterThan),
		.unordered(),
		.exceptionFlags(compareFlags)
	);
	wire [31:0] toInt;
	wire [2:0] intFlags;
	recFNToIN #(
		8,
		24,
		32
	) toIntRec(
		.control(1'b1),
		.in(srcArec),
		.roundingMode(rm),
		.signedOut(IN_uop[44:42] == 3'd2),
		.out(toInt),
		.intExceptionFlags(intFlags)
	);
	wire [32:0] fromInt;
	wire [4:0] fromIntFlags;
	iNToRecFN #(
		32,
		8,
		24
	) intToRec(
		.control(1'b1),
		.signedIn(IN_uop[44:42] == 3'd4),
		.in(IN_uop[181-:32]),
		.roundingMode(rm),
		.out(fromInt),
		.exceptionFlags(fromIntFlags)
	);
	wire [32:0] addSub;
	wire [4:0] addSubFlags;
	addRecFN #(
		8,
		24
	) addRec(
		.control(1'b1),
		.subOp(IN_uop[44:42] == 3'd1),
		.a(srcArec),
		.b(srcBrec),
		.roundingMode(rm),
		.out(addSub),
		.exceptionFlags(addSubFlags)
	);
	reg [32:0] recResult;
	always @(*)
		case (IN_uop[44:42])
			3'd5, 3'd4: recResult = fromInt;
			default: recResult = addSub;
		endcase
	wire [31:0] fpResult;
	recFNToFN #(
		8,
		24
	) recode(
		.in(recResult),
		.out(fpResult)
	);
	wire srcAIsNaN = (IN_uop[180:173] == 8'hff) && (IN_uop[172:150] != 0);
	wire srcBIsNaN = (IN_uop[148:141] == 8'hff) && (IN_uop[140:118] != 0);
	wire minChooseA = (srcBIsNaN || lessThan) || ((equal && IN_uop[181]) && !IN_uop[149]);
	wire maxChooseA = (srcBIsNaN || greaterThan) || ((equal && !IN_uop[181]) && IN_uop[149]);
	wire minMaxCanonicalNaN = srcAIsNaN && srcBIsNaN;
	always @(posedge clk) begin
		OUT_uop <= 1'sbx;
		OUT_uop[0] <= 0;
		if (((!rst && en) && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[34-:7] - IN_branch[27-:7]) <= 0))) begin : sv2v_autoblock_1
			reg [4:0] except;
			except = 0;
			OUT_uop[26-:7] <= IN_uop[19-:7];
			OUT_uop[19-:7] <= IN_uop[41-:7];
			OUT_uop[12-:7] <= IN_uop[34-:7];
			OUT_uop[0] <= 1;
			OUT_uop[1] <= 0;
			if (IN_uop[47:45] == 3'b101)
				case (IN_uop[47-:6])
					6'b101000: begin
						OUT_uop[58-:32] <= {31'b0000000000000000000000000000000, equal};
						except = compareFlags;
					end
					6'd41: begin
						OUT_uop[58-:32] <= {31'b0000000000000000000000000000000, equal || lessThan};
						except = compareFlags;
					end
					6'd42: begin
						OUT_uop[58-:32] <= {31'b0000000000000000000000000000000, lessThan};
						except = compareFlags;
					end
					6'd43: begin
						if (minMaxCanonicalNaN)
							OUT_uop[58-:32] <= 32'h7fc00000;
						else if (minChooseA)
							OUT_uop[58-:32] <= IN_uop[181-:32];
						else
							OUT_uop[58-:32] <= IN_uop[149-:32];
						except = compareFlags;
					end
					6'd44: begin
						if (minMaxCanonicalNaN)
							OUT_uop[58-:32] <= 32'h7fc00000;
						else if (maxChooseA)
							OUT_uop[58-:32] <= IN_uop[181-:32];
						else
							OUT_uop[58-:32] <= IN_uop[149-:32];
						except = compareFlags;
					end
					default:
						;
				endcase
			else
				case (IN_uop[44:42])
					3'd0, 3'd1: begin
						except = addSubFlags;
						OUT_uop[58-:32] <= fpResult;
					end
					3'd5, 3'd4: begin
						except = fromIntFlags;
						OUT_uop[58-:32] <= fpResult;
					end
					3'd2, 3'd3: begin
						except = {intFlags[2] | intFlags[1], 3'b000, intFlags[0]};
						OUT_uop[58-:32] <= toInt;
					end
					default:
						;
				endcase
			casez (except)
				5'b00000: OUT_uop[5-:4] <= 4'd0;
				5'bzzz1z: OUT_uop[5-:4] <= 4'd9;
				5'bzz1zz: OUT_uop[5-:4] <= 4'd10;
				5'bz1zzz: OUT_uop[5-:4] <= 4'd11;
				5'b1zzzz: OUT_uop[5-:4] <= 4'd12;
				5'bzzzz1: OUT_uop[5-:4] <= 4'd8;
			endcase
			if ((IN_uop[47:45] == 3'b111) && (IN_fRoundMode >= 3'b101))
				OUT_uop[5-:4] <= 4'd6;
		end
	end
endmodule
module InstrDecoder (
	clk,
	rst,
	en,
	IN_invalidate,
	IN_dec,
	IN_instrs,
	IN_lateRetAddr,
	IN_enCustom,
	OUT_decBranch,
	OUT_retUpd,
	OUT_btUpdate,
	OUT_uop
);
	parameter NUM_UOPS = 4;
	parameter DO_FUSE = 0;
	parameter FUSE_LUI = 0;
	parameter FUSE_STORE_DATA = 0;
	input wire clk;
	input wire rst;
	input wire en;
	input wire IN_invalidate;
	input wire [0:0] IN_dec;
	input wire [(NUM_UOPS * 114) - 1:0] IN_instrs;
	input wire [30:0] IN_lateRetAddr;
	input wire IN_enCustom;
	output reg [41:0] OUT_decBranch;
	output reg [37:0] OUT_retUpd;
	output reg [75:0] OUT_btUpdate;
	output reg [(NUM_UOPS * 80) - 1:0] OUT_uop;
	reg [79:0] uop;
	reg invalidEnc;
	reg [31:0] instr;
	reg [15:0] i16;
	reg [31:0] i32;
	reg [41:0] decBranch_c;
	reg [75:0] btUpdate_c;
	reg [37:0] retUpd_c;
	reg [79:0] uopsComb [NUM_UOPS - 1:0];
	reg [3:0] validMask;
	always @(*) begin
		btUpdate_c = 1'sbx;
		btUpdate_c[0] = 0;
		retUpd_c = 1'sbx;
		retUpd_c[0] = 0;
		decBranch_c = 1'sbx;
		decBranch_c[1] = 0;
		decBranch_c[0] = 0;
		decBranch_c[41-:2] = 2'd0;
		decBranch_c[39-:2] = 2'd0;
		validMask = 4'b1111;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_UOPS; i = i + 1)
				begin
					instr = IN_instrs[(i * 114) + 113-:32];
					i32 = IN_instrs[(i * 114) + 113-:32];
					i16 = IN_instrs[(i * 114) + 97-:16];
					uop = 0;
					invalidEnc = 1;
					uop[0] = (IN_instrs[i * 114] && en) && !decBranch_c[0];
					uop[9-:5] = IN_instrs[(i * 114) + 8-:5];
					uop[4-:3] = IN_instrs[(i * 114) + 53-:3] + (instr[1:0] == 2'b11 ? 1 : 0);
					case (instr[6-:7])
						7'b0110111, 7'b0010111: uop[79-:32] = {instr[31:12], 12'b000000000000};
						7'b1101111: uop[79-:32] = $signed({{12 {instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0});
						7'b1110011, 7'b1100111, 7'b0000011, 7'b0010011: uop[79-:32] = $signed({{20 {instr[31]}}, instr[31:20]});
						7'b1100011: uop[79-:32] = $signed({{20 {instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0});
						7'b0100011: uop[79-:32] = $signed({{20 {instr[31]}}, instr[31:25], instr[11:7]});
						default: uop[79-:32] = 0;
					endcase
					if ((IN_instrs[i * 114] && en) && !decBranch_c[0]) begin : sv2v_autoblock_2
						reg isBranch;
						reg isIndirBranch;
						reg isReturn;
						reg isCall;
						reg isJump;
						reg isWFI;
						reg [30:0] branchTarget;
						reg [30:0] lateReturnAddr;
						isBranch = 0;
						isIndirBranch = 0;
						isReturn = 0;
						isCall = 0;
						isJump = 0;
						isWFI = 0;
						branchTarget = 1'sbx;
						lateReturnAddr = (IN_instrs[(i * 114) + 13] ? IN_instrs[(i * 114) + 44-:31] : IN_lateRetAddr);
						if (IN_instrs[(i * 114) + 9])
							;
						else if (IN_instrs[(i * 114) + 3-:2] != 2'd0) begin
							uop[13-:4] = 4'd11;
							invalidEnc = 0;
							case (IN_instrs[(i * 114) + 3-:2])
								2'd1: uop[19-:6] = 6'd16;
								2'd2: uop[19-:6] = 6'd1;
								2'd3: uop[19-:6] = 6'd12;
								default:
									;
							endcase
							uop[1] = IN_instrs[(i * 114) + 1];
						end
						else if (instr[1:0] == 2'b11)
							case (instr[6-:7])
								7'b1110011:
									case (instr[14-:3])
										0:
											if ((((uop[79-:32] == 0) || (uop[79-:32] == 1)) && (instr[19-:5] == 0)) && (instr[11-:5] == 0)) begin
												case (uop[79-:32])
													0: uop[19-:6] = 6'd11;
													1: uop[19-:6] = 6'd3;
												endcase
												uop[13-:4] = 4'd11;
												uop[35-:5] = 0;
												uop[30-:5] = 0;
												uop[24-:5] = 0;
												uop[25] = 1;
												isWFI = 1;
												invalidEnc = 0;
											end
											else if (((instr[24-:5] == 5'b00010) && (instr[19-:5] == 0)) && (instr[11-:5] == 0)) begin
												if (instr[31-:7] == 7'b0001000) begin
													uop[13-:4] = 4'd10;
													uop[19-:6] = 6'd7;
													invalidEnc = 0;
													isWFI = 1;
												end
												else if (instr[31-:7] == 7'b0011000) begin
													uop[13-:4] = 4'd10;
													uop[19-:6] = 6'd8;
													invalidEnc = 0;
													isWFI = 1;
												end
											end
											else if ((((instr[31-:7] == 7'b0001000) && (instr[24-:5] == 5'b00101)) && (instr[19-:5] == 0)) && (instr[11-:5] == 0)) begin
												if (IN_dec[0]) begin
													uop[13-:4] = 4'd8;
													invalidEnc = 0;
													isWFI = 1;
												end
											end
											else if ((instr[31-:7] == 7'b0001001) && (instr[11-:5] == 0)) begin
												uop[13-:4] = 4'd11;
												uop[19-:6] = 6'd15;
												invalidEnc = 0;
											end
											else if ((instr[31-:7] == 7'b0001011) && (instr[11-:5] == 0)) begin
												uop[35-:5] = instr[19-:5];
												uop[30-:5] = instr[24-:5];
											end
											else if ((((instr[31-:7] == 7'b0001100) && (instr[24-:5] == 0)) && (instr[19-:5] == 0)) && (instr[11-:5] == 0))
												;
											else if ((((instr[31-:7] == 7'b0001100) && (instr[24-:5] == 5'b00001)) && (instr[19-:5] == 0)) && (instr[11-:5] == 0))
												;
										1: begin
											uop[13-:4] = 4'd10;
											uop[35-:5] = instr[19-:5];
											uop[24-:5] = instr[11-:5];
											uop[19-:6] = 6'd1;
											uop[79-:32] = {20'bxxxxxxxxxxxxxxxxxxxx, instr[31:20]};
											invalidEnc = 0;
										end
										2: begin
											uop[13-:4] = 4'd10;
											uop[35-:5] = instr[19-:5];
											uop[24-:5] = instr[11-:5];
											uop[19-:6] = (instr[19-:5] == 0 ? 6'd0 : 6'd2);
											uop[79-:32] = {20'bxxxxxxxxxxxxxxxxxxxx, instr[31:20]};
											invalidEnc = 0;
										end
										3: begin
											uop[13-:4] = 4'd10;
											uop[35-:5] = instr[19-:5];
											uop[24-:5] = instr[11-:5];
											uop[19-:6] = (instr[19-:5] == 0 ? 6'd0 : 6'd3);
											uop[79-:32] = {20'bxxxxxxxxxxxxxxxxxxxx, instr[31:20]};
											invalidEnc = 0;
										end
										5: begin
											uop[13-:4] = 4'd10;
											uop[24-:5] = instr[11-:5];
											uop[19-:6] = 6'd4;
											uop[79-:32] = {15'bxxxxxxxxxxxxxxx, instr[19-:5], instr[31:20]};
											invalidEnc = 0;
										end
										6: begin
											uop[13-:4] = 4'd10;
											uop[24-:5] = instr[11-:5];
											uop[19-:6] = (instr[19-:5] == 0 ? 6'd0 : 6'd5);
											uop[79-:32] = {15'bxxxxxxxxxxxxxxx, instr[19-:5], instr[31:20]};
											invalidEnc = 0;
										end
										7: begin
											uop[13-:4] = 4'd10;
											uop[24-:5] = instr[11-:5];
											uop[19-:6] = (instr[19-:5] == 0 ? 6'd0 : 6'd6);
											uop[79-:32] = {15'bxxxxxxxxxxxxxxx, instr[19-:5], instr[31:20]};
											invalidEnc = 0;
										end
									endcase
								7'b0110111: begin
									uop[13-:4] = 4'd0;
									uop[35-:5] = 0;
									uop[30-:5] = 0;
									uop[25] = 1;
									uop[24-:5] = instr[11-:5];
									uop[19-:6] = 6'd16;
									invalidEnc = 0;
								end
								7'b0010111: begin
									uop[13-:4] = 4'd0;
									uop[35-:5] = 0;
									uop[30-:5] = 0;
									uop[24-:5] = instr[11-:5];
									uop[19-:6] = 6'd17;
									invalidEnc = 0;
								end
								7'b1101111: begin
									uop[13-:4] = 4'd0;
									uop[35-:5] = 0;
									uop[30-:5] = 0;
									uop[25] = 1;
									uop[24-:5] = instr[11-:5];
									uop[19-:6] = 6'd18;
									invalidEnc = 0;
									isBranch = 1;
									isJump = 1;
									branchTarget = IN_instrs[(i * 114) + 81-:31] + uop[79:49];
									isCall = uop[24-:5] == 1;
									if (uop[24-:5] == 0)
										uop[13-:4] = 4'd8;
								end
								7'b1100111: begin : sv2v_autoblock_3
									reg rdIsLink;
									reg rs1IsLink;
									rdIsLink = (instr[11-:5] == 1) || (instr[11-:5] == 5);
									rs1IsLink = (instr[19-:5] == 1) || (instr[19-:5] == 5);
									uop[13-:4] = 4'd0;
									uop[35-:5] = instr[19-:5];
									uop[25] = 1;
									uop[24-:5] = instr[11-:5];
									uop[47-:12] = instr[31:20];
									isIndirBranch = 1;
									isReturn = (uop[35-:5] == 1) && (uop[47-:12] == 0);
									isCall = rdIsLink;
									uop[19-:6] = (isReturn ? 6'd47 : (uop[24-:5] == 1 ? 6'd48 : 6'd49));
									if (IN_instrs[(i * 114) + 10])
										uop[79-:32] = {IN_instrs[(i * 114) + 44-:31], 1'b0};
									else if (isReturn)
										uop[79-:32] = {lateReturnAddr, 1'b0};
									else
										uop[79-:32] = {IN_instrs[(i * 114) + 81-:31] + (uop[1] ? 31'd1 : 31'd2), 1'b0};
									invalidEnc = 0;
								end
								7'b0000011: begin
									uop[35-:5] = instr[19-:5];
									uop[30-:5] = 0;
									uop[25] = 1;
									uop[24-:5] = instr[11-:5];
									uop[13-:4] = 4'd1;
									case (instr[14-:3])
										0: uop[19-:6] = 6'd0;
										1: uop[19-:6] = 6'd1;
										2: uop[19-:6] = 6'd2;
										4: uop[19-:6] = 6'd3;
										5: uop[19-:6] = 6'd4;
									endcase
									invalidEnc = ((((instr[14-:3] != 0) && (instr[14-:3] != 1)) && (instr[14-:3] != 2)) && (instr[14-:3] != 4)) && (instr[14-:3] != 5);
								end
								7'b0100011: begin
									uop[35-:5] = instr[19-:5];
									uop[30-:5] = instr[24-:5];
									uop[25] = 0;
									uop[24-:5] = 0;
									uop[13-:4] = 4'd2;
									if (IN_enCustom && 0) begin
										invalidEnc = 0;
										case (instr[14-:3])
											0: uop[19-:6] = 6'd0;
											1: uop[19-:6] = 6'd1;
											2: uop[19-:6] = 6'd2;
											3: invalidEnc = 1;
											4: uop[19-:6] = 6'd7;
											5: uop[19-:6] = 6'd8;
											6: uop[19-:6] = 6'd9;
											7: invalidEnc = 1;
										endcase
										if (instr[14])
											uop[24-:5] = uop[35-:5];
									end
									else begin
										case (instr[14-:3])
											0: uop[19-:6] = 6'd0;
											1: uop[19-:6] = 6'd1;
											2: uop[19-:6] = 6'd2;
										endcase
										invalidEnc = ((instr[14-:3] != 0) && (instr[14-:3] != 1)) && (instr[14-:3] != 2);
									end
								end
								7'b1100011: begin
									uop[35-:5] = instr[19-:5];
									uop[30-:5] = instr[24-:5];
									uop[25] = 0;
									uop[24-:5] = 0;
									uop[13-:4] = 4'd0;
									invalidEnc = (uop[19-:6] == 2) || (uop[19-:6] == 3);
									isBranch = 1;
									branchTarget = IN_instrs[(i * 114) + 81-:31] + uop[79:49];
									case (instr[14-:3])
										0: uop[19-:6] = 6'd10;
										1: uop[19-:6] = 6'd11;
										4: uop[19-:6] = 6'd12;
										5: uop[19-:6] = 6'd13;
										6: uop[19-:6] = 6'd14;
										7: uop[19-:6] = 6'd15;
									endcase
								end
								7'b0001111:
									if (instr[14-:3] == 0) begin
										uop[13-:4] = 4'd8;
										invalidEnc = 0;
									end
									else if (instr[14-:3] == 1) begin
										uop[13-:4] = 4'd0;
										uop[19-:6] = 6'd19;
										uop[79-:32] = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxx0100;
										invalidEnc = 0;
									end
									else if (((instr[14-:3] == 3'b010) && (instr[11-:5] == 0)) && (instr[31:20] == 0)) begin
										invalidEnc = 0;
										uop[19-:6] = 6'd4;
										uop[13-:4] = 4'd2;
										uop[35-:5] = instr[19-:5];
									end
									else if (((instr[14-:3] == 3'b010) && (instr[11-:5] == 0)) && (instr[31:20] == 1)) begin
										invalidEnc = 0;
										uop[19-:6] = 6'd3;
										uop[13-:4] = 4'd2;
										uop[35-:5] = instr[19-:5];
									end
									else if (((instr[14-:3] == 3'b010) && (instr[11-:5] == 0)) && (instr[31:20] == 2)) begin
										invalidEnc = 0;
										uop[19-:6] = 6'd5;
										uop[13-:4] = 4'd2;
										uop[35-:5] = instr[19-:5];
									end
								7'b0010011: begin
									uop[35-:5] = instr[19-:5];
									uop[30-:5] = 0;
									uop[25] = 1;
									uop[24-:5] = instr[11-:5];
									uop[13-:4] = 4'd0;
									if (!(((instr[14-:3] == 1) && (instr[31-:7] != 0)) || ((instr[14-:3] == 5) && ((instr[31-:7] != 7'h20) && (instr[31-:7] != 0))))) begin
										case (instr[14-:3])
											0: uop[19-:6] = 6'd0;
											1: uop[19-:6] = 6'd4;
											2: uop[19-:6] = 6'd6;
											3: uop[19-:6] = 6'd7;
											4: uop[19-:6] = 6'd1;
											5: uop[19-:6] = (instr[31-:7] == 7'h20 ? 6'd9 : 6'd5);
											6: uop[19-:6] = 6'd2;
											7: uop[19-:6] = 6'd3;
										endcase
										if (((((((FUSE_LUI && (i != 0)) && (uop[19-:6] == 6'd0)) && uopsComb[i - 1][0]) && (uopsComb[i - 1][13-:4] == 4'd0)) && (uopsComb[i - 1][19-:6] == 6'd16)) && (uopsComb[i - 1][24-:5] == uop[24-:5])) && (uop[24-:5] == uop[35-:5])) begin
											uopsComb[i - 1][59:48] = uop[59:48];
											if (uop[59])
												uopsComb[i - 1][79:60] = uopsComb[i - 1][79:60] - 1;
											uop[0] = 0;
										end
										invalidEnc = 0;
									end
									else if (instr[31-:7] == 7'b0110000) begin
										if (instr[14-:3] == 3'b001) begin
											if (instr[24-:5] == 5'b00000) begin
												invalidEnc = 0;
												uop[19-:6] = 6'd26;
											end
											else if (instr[24-:5] == 5'b00001) begin
												invalidEnc = 0;
												uop[19-:6] = 6'd27;
											end
											else if (instr[24-:5] == 5'b00010) begin
												invalidEnc = 0;
												uop[19-:6] = 6'd28;
											end
											else if (instr[24-:5] == 5'b00100) begin
												invalidEnc = 0;
												uop[19-:6] = 6'd33;
											end
											else if (instr[24-:5] == 5'b00101) begin
												invalidEnc = 0;
												uop[19-:6] = 6'd34;
											end
											else if (instr[24-:5] == 5'b00101) begin
												invalidEnc = 0;
												uop[19-:6] = 6'd35;
											end
										end
										else if (instr[14-:3] == 3'b101) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd37;
											uop[79-:32] = {27'b000000000000000000000000000, instr[24-:5]};
										end
									end
									else if ((instr[31:20] == 12'b001010000111) && (instr[14-:3] == 3'b101)) begin
										invalidEnc = 0;
										uop[19-:6] = 6'd38;
									end
									else if ((instr[31:20] == 12'b011010011000) && (instr[14-:3] == 3'b101)) begin
										invalidEnc = 0;
										uop[19-:6] = 6'd39;
									end
									if (instr[31-:7] == 7'b0100100) begin
										if (instr[14-:3] == 3'b001) begin
											uop[19-:6] = 6'd40;
											uop[79-:32] = {27'b000000000000000000000000000, instr[24-:5]};
										end
										else if (instr[14-:3] == 3'b101) begin
											uop[19-:6] = 6'd41;
											uop[79-:32] = {27'b000000000000000000000000000, instr[24-:5]};
										end
									end
									else if (instr[31-:7] == 7'b0110100) begin
										if (instr[14-:3] == 3'b001) begin
											uop[19-:6] = 6'd42;
											uop[79-:32] = {27'b000000000000000000000000000, instr[24-:5]};
										end
									end
									else if (instr[31-:7] == 7'b0010100)
										if (instr[14-:3] == 3'b001) begin
											uop[19-:6] = 6'd43;
											uop[79-:32] = {27'b000000000000000000000000000, instr[24-:5]};
										end
									if (((((((((uop[13-:4] == 4'd0) && (uop[19-:6] == 6'd0)) && (uop[35-:5] == 0)) && (uop[59] == uop[58])) && (uop[59] == uop[57])) && (uop[59] == uop[56])) && (uop[59] == uop[55])) && (uop[59] == uop[54])) && (uop[59] == uop[53]))
										uop[13-:4] = 4'd8;
								end
								7'b0110011: begin
									uop[35-:5] = instr[19-:5];
									uop[30-:5] = instr[24-:5];
									uop[25] = 0;
									uop[24-:5] = instr[11-:5];
									uop[13-:4] = 4'd0;
									if (instr[31-:7] == 0) begin
										invalidEnc = 0;
										case (instr[14-:3])
											0: uop[19-:6] = 6'd0;
											1: uop[19-:6] = 6'd4;
											2: uop[19-:6] = 6'd6;
											3: uop[19-:6] = 6'd7;
											4: uop[19-:6] = 6'd1;
											5: uop[19-:6] = 6'd5;
											6: uop[19-:6] = 6'd2;
											7: uop[19-:6] = 6'd3;
										endcase
									end
									else if (instr[31-:7] == 7'h01) begin
										invalidEnc = 0;
										if (instr[14-:3] < 4)
											uop[13-:4] = 4'd3;
										else
											uop[13-:4] = 4'd4;
										case (instr[14-:3])
											0: uop[19-:6] = 6'd0;
											1: uop[19-:6] = 6'd1;
											2: uop[19-:6] = 6'd2;
											3: uop[19-:6] = 6'd3;
											4: uop[19-:6] = 6'd0;
											5: uop[19-:6] = 6'd1;
											6: uop[19-:6] = 6'd2;
											7: uop[19-:6] = 6'd3;
										endcase
									end
									else if (instr[31-:7] == 7'h20) begin
										invalidEnc = (instr[14-:3] != 0) && (instr[14-:3] != 5);
										uop[13-:4] = 4'd0;
										case (instr[14-:3])
											0: uop[19-:6] = 6'd8;
											5: uop[19-:6] = 6'd9;
										endcase
									end
									if (instr[31-:7] == 7'b0010000) begin
										if (instr[14-:3] == 3'b010) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd20;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b100) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd21;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b110) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd22;
											uop[13-:4] = 4'd0;
										end
									end
									else if (instr[31-:7] == 7'b0100000) begin
										if (instr[14-:3] == 3'b111) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd24;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b110) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd25;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b100) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd23;
											uop[13-:4] = 4'd0;
										end
									end
									else if (instr[31-:7] == 7'b0000101) begin
										if (instr[14-:3] == 3'b110) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd29;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b111) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd30;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b100) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd31;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b101) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd32;
											uop[13-:4] = 4'd0;
										end
									end
									else if (((instr[31-:7] == 7'b0000100) && (instr[24-:5] == 0)) && (instr[14-:3] == 3'b100)) begin
										invalidEnc = 0;
										uop[30-:5] = 0;
										uop[19-:6] = 6'd35;
									end
									else if (instr[31-:7] == 7'b0110000) begin
										if (instr[14-:3] == 3'b001) begin
											uop[19-:6] = 6'd36;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b101) begin
											uop[19-:6] = 6'd37;
											uop[13-:4] = 4'd0;
										end
									end
									else if (instr[31-:7] == 7'b0100100) begin
										if (instr[14-:3] == 3'b001) begin
											uop[19-:6] = 6'd40;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b101) begin
											uop[19-:6] = 6'd41;
											uop[13-:4] = 4'd0;
										end
									end
									else if (instr[31-:7] == 7'b0110100) begin
										if (instr[14-:3] == 3'b001) begin
											uop[19-:6] = 6'd42;
											uop[13-:4] = 4'd0;
										end
									end
									else if (instr[31-:7] == 7'b0010100)
										if (instr[14-:3] == 3'b001) begin
											uop[19-:6] = 6'd43;
											uop[13-:4] = 4'd0;
										end
								end
								7'b0101111:
									if (instr[14-:3] == 3'b010) begin
										uop[24-:5] = instr[11-:5];
										uop[35-:5] = instr[19-:5];
										uop[30-:5] = instr[24-:5];
										uop[13-:4] = 4'd9;
										case (instr[31:27])
											5'b00010:
												if (instr[24-:5] == 5'b00000) begin
													uop[19-:6] = 6'd5;
													uop[13-:4] = 4'd1;
													invalidEnc = 0;
												end
											5'b00011: begin
												uop[19-:6] = 6'd10;
												uop[13-:4] = 4'd2;
												invalidEnc = 0;
											end
											5'b00001: begin
												uop[19-:6] = 6'd55;
												invalidEnc = 0;
											end
											5'b00000: begin
												uop[19-:6] = 6'd56;
												invalidEnc = 0;
											end
											5'b00100: begin
												uop[19-:6] = 6'd57;
												invalidEnc = 0;
											end
											5'b01100: begin
												uop[19-:6] = 6'd58;
												invalidEnc = 0;
											end
											5'b01000: begin
												uop[19-:6] = 6'd59;
												invalidEnc = 0;
											end
											5'b10000: begin
												uop[19-:6] = 6'd60;
												invalidEnc = 0;
											end
											5'b10100: begin
												uop[19-:6] = 6'd61;
												invalidEnc = 0;
											end
											5'b11000: begin
												uop[19-:6] = 6'd62;
												invalidEnc = 0;
											end
											5'b11100: begin
												uop[19-:6] = 6'd63;
												invalidEnc = 0;
											end
											default: invalidEnc = 1;
										endcase
									end
								default: invalidEnc = 1;
							endcase
						else begin
							uop[1] = 1;
							if (i16[1:0] == 2'b00) begin
								if (i16[15-:3] == 3'b010) begin
									uop[19-:6] = 6'd2;
									uop[13-:4] = 4'd1;
									uop[79-:32] = {25'b0000000000000000000000000, i16[5], i16[12-:3], i16[6], 2'b00};
									uop[35-:5] = {2'b01, i16[9-:3]};
									uop[24-:5] = {2'b01, i16[4-:3]};
									invalidEnc = 0;
								end
								else if (i16[15-:3] == 3'b110) begin
									uop[19-:6] = 6'd2;
									uop[13-:4] = 4'd2;
									uop[79-:32] = {25'b0000000000000000000000000, i16[5], i16[12-:3], i16[6], 2'b00};
									uop[35-:5] = {2'b01, i16[9-:3]};
									uop[30-:5] = {2'b01, i16[4-:3]};
									invalidEnc = 0;
								end
								else if ((i16[15-:3] == 3'b000) && (i16[12-:8] != 0)) begin
									uop[19-:6] = 6'd0;
									uop[13-:4] = 4'd0;
									uop[79-:32] = {22'b0000000000000000000000, i16[10:7], i16[12:11], i16[5], i16[6], 2'b00};
									uop[35-:5] = 2;
									uop[25] = 1;
									uop[24-:5] = {2'b01, i16[4-:3]};
									invalidEnc = 0;
								end
							end
							else if (i16[1:0] == 2'b01) begin
								if (i16[15-:3] == 3'b101) begin
									uop[19-:6] = 6'd18;
									uop[13-:4] = 4'd0;
									uop[79-:32] = {{20 {i16[12]}}, i16[12], i16[8], i16[10:9], i16[6], i16[7], i16[2], i16[11], i16[5:3], 1'b0};
									isBranch = 1;
									isJump = 1;
									branchTarget = IN_instrs[(i * 114) + 81-:31] + uop[79:49];
									uop[13-:4] = 4'd8;
									uop[25] = 1;
									invalidEnc = 0;
								end
								else if (i16[15-:3] == 3'b001) begin
									uop[19-:6] = 6'd18;
									uop[13-:4] = 4'd0;
									uop[79-:32] = {{20 {i16[12]}}, i16[12], i16[8], i16[10:9], i16[6], i16[7], i16[2], i16[11], i16[5:3], 1'b0};
									uop[25] = 1;
									uop[24-:5] = 1;
									isBranch = 1;
									isJump = 1;
									isCall = 1;
									branchTarget = IN_instrs[(i * 114) + 81-:31] + uop[79:49];
									invalidEnc = 0;
								end
								else if (i16[15-:3] == 3'b110) begin
									uop[19-:6] = 6'd10;
									uop[13-:4] = 4'd0;
									uop[79-:32] = {{23 {i16[12]}}, i16[12], i16[6:5], i16[2], i16[11:10], i16[4:3], 1'b0};
									uop[35-:5] = {2'b01, i16[9-:3]};
									isBranch = 1;
									branchTarget = IN_instrs[(i * 114) + 81-:31] + uop[79:49];
									invalidEnc = 0;
								end
								else if (i16[15-:3] == 3'b111) begin
									uop[19-:6] = 6'd11;
									uop[13-:4] = 4'd0;
									uop[79-:32] = {{23 {i16[12]}}, i16[12], i16[6:5], i16[2], i16[11:10], i16[4:3], 1'b0};
									uop[35-:5] = {2'b01, i16[9-:3]};
									isBranch = 1;
									branchTarget = IN_instrs[(i * 114) + 81-:31] + uop[79:49];
									invalidEnc = 0;
								end
								else if ((i16[15-:3] == 3'b010) && (i16[11-:5] != 0)) begin
									uop[13-:4] = 4'd8;
									uop[79-:32] = {{26 {i16[12]}}, i16[12], i16[6-:5]};
									uop[25] = 1;
									uop[24-:5] = i16[11-:5];
									invalidEnc = 0;
								end
								else if (((i16[15-:3] == 3'b011) && (i16[11-:5] != 0)) && ({i16[12], i16[6-:5]} != 0)) begin
									uop[13-:4] = 4'd0;
									if (i16[11-:5] == 2) begin
										uop[19-:6] = 6'd0;
										uop[35-:5] = 2;
										uop[79-:32] = {{22 {i16[12]}}, i16[12], i16[4:3], i16[5], i16[2], i16[6], 4'b0000};
									end
									else begin
										uop[19-:6] = 6'd16;
										uop[79-:32] = {{14 {i16[12]}}, i16[12], i16[6-:5], 12'b000000000000};
									end
									uop[25] = 1;
									uop[24-:5] = i16[11-:5];
									invalidEnc = 0;
								end
								else if ((i16[15-:3] == 3'b000) && (i16[11-:5] != 0)) begin
									uop[19-:6] = 6'd0;
									uop[13-:4] = 4'd0;
									uop[79-:32] = {{26 {i16[12]}}, i16[12], i16[6-:5]};
									uop[25] = 1;
									uop[35-:5] = i16[11-:5];
									uop[24-:5] = i16[11-:5];
									if (((((((FUSE_LUI && (i != 0)) && (uop[19-:6] == 6'd0)) && uopsComb[i - 1][0]) && (uopsComb[i - 1][13-:4] == 4'd0)) && (uopsComb[i - 1][19-:6] == 6'd16)) && (uopsComb[i - 1][24-:5] == uop[24-:5])) && (uop[24-:5] == uop[35-:5])) begin
										uopsComb[i - 1][59:48] = uop[59:48];
										if (uop[59])
											uopsComb[i - 1][79:60] = uopsComb[i - 1][79:60] - 1;
										uop[0] = 0;
									end
									invalidEnc = 0;
								end
								else if ((((i16[15-:3] == 3'b100) && (i16[11-:2] == 2'b00)) && !i16[12]) && (i16[6:2] != 0)) begin
									uop[19-:6] = 6'd5;
									uop[13-:4] = 4'd0;
									uop[79-:32] = {27'b000000000000000000000000000, i16[6:2]};
									uop[25] = 1;
									uop[35-:5] = {2'b01, i16[9-:3]};
									uop[24-:5] = {2'b01, i16[9-:3]};
									invalidEnc = 0;
								end
								else if ((((i16[15-:3] == 3'b100) && (i16[11-:2] == 2'b01)) && !i16[12]) && (i16[6:2] != 0)) begin
									uop[19-:6] = 6'd9;
									uop[13-:4] = 4'd0;
									uop[79-:32] = {27'b000000000000000000000000000, i16[6:2]};
									uop[25] = 1;
									uop[35-:5] = {2'b01, i16[9-:3]};
									uop[24-:5] = {2'b01, i16[9-:3]};
									invalidEnc = 0;
								end
								else if ((i16[15-:3] == 3'b100) && (i16[11-:2] == 2'b10)) begin
									uop[19-:6] = 6'd3;
									uop[13-:4] = 4'd0;
									uop[79-:32] = {{26 {i16[12]}}, i16[12], i16[6:2]};
									uop[25] = 1;
									uop[35-:5] = {2'b01, i16[9-:3]};
									uop[24-:5] = {2'b01, i16[9-:3]};
									invalidEnc = 0;
								end
								else if (i16[15-:6] == 6'b100011) begin
									case (i16[6-:2])
										2'b11: uop[19-:6] = 6'd3;
										2'b10: uop[19-:6] = 6'd2;
										2'b01: uop[19-:6] = 6'd1;
										2'b00: uop[19-:6] = 6'd8;
									endcase
									uop[13-:4] = 4'd0;
									uop[35-:5] = {2'b01, i16[9-:3]};
									uop[30-:5] = {2'b01, i16[4-:3]};
									uop[24-:5] = {2'b01, i16[9-:3]};
									invalidEnc = 0;
								end
								else if ((((i16[15-:3] == 3'b000) && (i16[12] == 1'b0)) && (i16[11-:5] == 5'b00000)) && (i16[6-:5] == 5'b00000)) begin
									uop[13-:4] = 4'd8;
									invalidEnc = 0;
								end
							end
							else if (i16[1:0] == 2'b10)
								if ((i16[15-:3] == 3'b010) && (i16[11-:5] != 0)) begin
									uop[19-:6] = 6'd2;
									uop[13-:4] = 4'd1;
									uop[79-:32] = {24'b000000000000000000000000, i16[3:2], i16[12], i16[6:4], 2'b00};
									uop[35-:5] = 2;
									uop[24-:5] = i16[11-:5];
									invalidEnc = 0;
								end
								else if (i16[15-:3] == 3'b110) begin
									uop[19-:6] = 6'd2;
									uop[13-:4] = 4'd2;
									uop[79-:32] = {24'b000000000000000000000000, i16[8:7], i16[12:9], 2'b00};
									uop[35-:5] = 2;
									uop[30-:5] = i16[6-:5];
									invalidEnc = 0;
								end
								else if ((i16[15-:4] == 4'b1000) && !((i16[11-:5] == 0) || (i16[6-:5] != 0))) begin
									uop[13-:4] = 4'd0;
									uop[35-:5] = i16[11-:5];
									isIndirBranch = 1;
									isReturn = i16[11-:5] == 1;
									uop[19-:6] = (i16[11-:5] == 1 ? 6'd47 : 6'd49);
									uop[25] = 1;
									uop[47-:12] = 0;
									if (IN_instrs[(i * 114) + 10])
										uop[79-:32] = {IN_instrs[(i * 114) + 44-:31], 1'b0};
									else if (isReturn)
										uop[79-:32] = {lateReturnAddr, 1'b0};
									else
										uop[79-:32] = {IN_instrs[(i * 114) + 81-:31] + (uop[1] ? 31'd1 : 31'd2), 1'b0};
									invalidEnc = 0;
								end
								else if ((i16[15-:4] == 4'b1001) && !((i16[11-:5] == 0) || (i16[6-:5] != 0))) begin
									uop[13-:4] = 4'd0;
									uop[35-:5] = i16[11-:5];
									uop[24-:5] = 1;
									isIndirBranch = 1;
									isCall = 1;
									uop[19-:6] = 6'd48;
									uop[25] = 1;
									uop[47-:12] = 0;
									if (IN_instrs[(i * 114) + 10])
										uop[79-:32] = {IN_instrs[(i * 114) + 44-:31], 1'b0};
									else
										uop[79-:32] = {IN_instrs[(i * 114) + 81-:31] + (uop[1] ? 31'd1 : 31'd2), 1'b0};
									invalidEnc = 0;
								end
								else if ((((i16[15-:3] == 3'b000) && (i16[11-:5] != 0)) && !i16[12]) && (i16[6:2] != 0)) begin
									uop[19-:6] = 6'd4;
									uop[13-:4] = 4'd0;
									uop[79-:32] = {27'b000000000000000000000000000, i16[6:2]};
									uop[25] = 1;
									uop[35-:5] = i16[11-:5];
									uop[24-:5] = i16[11-:5];
									invalidEnc = 0;
								end
								else if (((i16[15-:4] == 4'b1000) && (i16[11-:5] != 0)) && (i16[6-:5] != 0)) begin
									uop[19-:6] = 6'd0;
									uop[13-:4] = 4'd0;
									uop[30-:5] = i16[6-:5];
									uop[24-:5] = i16[11-:5];
									invalidEnc = 0;
								end
								else if (((i16[15-:4] == 4'b1001) && (i16[11-:5] != 0)) && (i16[6-:5] != 0)) begin
									uop[19-:6] = 6'd0;
									uop[13-:4] = 4'd0;
									uop[35-:5] = i16[11-:5];
									uop[30-:5] = i16[6-:5];
									uop[24-:5] = i16[11-:5];
									invalidEnc = 0;
								end
								else if (((i16[15-:4] == 4'b1001) && (i16[11-:5] == 0)) && (i16[6-:5] == 0)) begin
									uop[19-:6] = 6'd3;
									uop[13-:4] = 4'd11;
									invalidEnc = 0;
								end
						end
						if (IN_instrs[(i * 114) + 10]) begin
							if ((!(isBranch || isIndirBranch) || ((IN_instrs[(i * 114) + 44-:31] != branchTarget) && !isIndirBranch)) || IN_instrs[(i * 114) + 9]) begin
								decBranch_c[0] = 1;
								decBranch_c[6-:5] = IN_instrs[(i * 114) + 8-:5];
								if (isCall && !isReturn)
									decBranch_c[41-:2] = 2'd1;
								else if (!isCall && isReturn)
									decBranch_c[41-:2] = 2'd2;
								else
									decBranch_c[41-:2] = 2'd0;
								retUpd_c[0] = 1;
								retUpd_c[1] = 1;
								retUpd_c[2] = uop[1];
								retUpd_c[3] = 0;
								retUpd_c[4] = 0;
								retUpd_c[6-:2] = IN_instrs[(i * 114) + 12-:2];
								if (!IN_instrs[(i * 114) + 9])
									retUpd_c[37-:31] = (uop[1] ? IN_instrs[(i * 114) + 81-:31] : IN_instrs[(i * 114) + 81-:31] + 1);
								else
									retUpd_c[37-:31] = IN_instrs[(i * 114) + 81-:31];
								if (IN_instrs[(i * 114) + 9]) begin
									decBranch_c[37-:31] = IN_instrs[(i * 114) + 81-:31];
									invalidEnc = 1;
									uop[0] = 0;
									btUpdate_c[0] = 1;
									btUpdate_c[1] = 1;
									btUpdate_c[3] = 0;
									btUpdate_c[6-:3] = 1'sbx;
									btUpdate_c[11-:3] = IN_instrs[(i * 114) + 50-:3];
									btUpdate_c[75-:32] = {IN_instrs[(i * 114) + 81-:31], 1'b0};
								end
								else if (isBranch) begin
									decBranch_c[37-:31] = branchTarget;
									btUpdate_c[0] = 1;
									btUpdate_c[1] = 0;
									btUpdate_c[3] = 0;
									btUpdate_c[6-:3] = 1'sbx;
									btUpdate_c[7] = isCall;
									btUpdate_c[75-:32] = (uop[1] ? {IN_instrs[(i * 114) + 81-:31], 1'b0} : {IN_instrs[(i * 114) + 81-:31], 1'b0} + 2);
									btUpdate_c[11-:3] = IN_instrs[(i * 114) + 50-:3];
									btUpdate_c[43-:32] = {branchTarget, 1'b0};
									btUpdate_c[2] = uop[1];
									btUpdate_c[8] = isJump;
								end
								else begin
									decBranch_c[37-:31] = IN_instrs[(i * 114) + 81-:31] + (uop[1] ? 1 : 2);
									btUpdate_c[0] = 1;
									btUpdate_c[1] = 1;
									btUpdate_c[3] = 0;
									btUpdate_c[6-:3] = 1'sbx;
									btUpdate_c[11-:3] = IN_instrs[(i * 114) + 50-:3];
									btUpdate_c[75-:32] = (uop[1] ? {IN_instrs[(i * 114) + 81-:31], 1'b0} : {IN_instrs[(i * 114) + 81-:31], 1'b0} + 2);
								end
							end
						end
						else begin
							if (isJump) begin
								decBranch_c[0] = 1;
								decBranch_c[6-:5] = IN_instrs[(i * 114) + 8-:5];
								decBranch_c[37-:31] = branchTarget;
								btUpdate_c[0] = 1;
								btUpdate_c[1] = 0;
								btUpdate_c[7] = isCall;
								btUpdate_c[75-:32] = (uop[1] ? {IN_instrs[(i * 114) + 81-:31], 1'b0} : {IN_instrs[(i * 114) + 81-:31], 1'b0} + 2);
								btUpdate_c[11-:3] = IN_instrs[(i * 114) + 50-:3];
								btUpdate_c[43-:32] = {branchTarget, 1'b0};
								btUpdate_c[2] = uop[1];
								btUpdate_c[8] = isJump;
								btUpdate_c[3] = uop[4-:3] > IN_instrs[(i * 114) + 47-:3];
								btUpdate_c[6-:3] = IN_instrs[(i * 114) + 47-:3] + 1;
							end
							if (isCall) begin
								retUpd_c[0] = 1;
								retUpd_c[1] = 0;
								retUpd_c[2] = uop[1];
								retUpd_c[3] = 0;
								retUpd_c[4] = 1;
								retUpd_c[6-:2] = IN_instrs[(i * 114) + 12-:2];
								retUpd_c[37-:31] = (uop[1] ? {IN_instrs[(i * 114) + 81-:31]} : {IN_instrs[(i * 114) + 81-:31]} + 1);
								decBranch_c[41-:2] = 2'd1;
								if (isIndirBranch) begin
									decBranch_c[0] = 1;
									decBranch_c[6-:5] = IN_instrs[(i * 114) + 8-:5];
									decBranch_c[37-:31] = retUpd_c[37-:31] + 1;
								end
							end
							else if (isReturn) begin
								retUpd_c[0] = 1;
								retUpd_c[1] = 0;
								retUpd_c[2] = uop[1];
								retUpd_c[3] = 1;
								retUpd_c[4] = 0;
								retUpd_c[6-:2] = IN_instrs[(i * 114) + 12-:2] - 1;
								retUpd_c[37-:31] = (uop[1] ? IN_instrs[(i * 114) + 81-:31] : IN_instrs[(i * 114) + 81-:31] + 1);
								decBranch_c[0] = 1;
								decBranch_c[6-:5] = IN_instrs[(i * 114) + 8-:5];
								decBranch_c[41-:2] = 2'd2;
								decBranch_c[37-:31] = lateReturnAddr;
							end
						end
						if (isWFI) begin
							decBranch_c[0] = 1;
							decBranch_c[1] = 1;
							decBranch_c[6-:5] = IN_instrs[(i * 114) + 8-:5];
							decBranch_c[37-:31] = IN_instrs[(i * 114) + 81-:31] + (uop[1] ? 1 : 2);
						end
					end
					if (invalidEnc) begin
						uop[19-:6] = 6'd2;
						uop[13-:4] = 4'd11;
					end
					uopsComb[i] = uop;
				end
		end
	end
	always @(posedge clk) begin
		OUT_btUpdate <= 1'sbx;
		OUT_btUpdate[0] <= 0;
		OUT_decBranch <= 1'sbx;
		OUT_decBranch[0] <= 0;
		OUT_retUpd <= 1'sbx;
		OUT_retUpd[0] <= 0;
		if (rst || IN_invalidate) begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < NUM_UOPS; i = i + 1)
				begin
					OUT_uop[i * 80+:80] <= 1'sbx;
					OUT_uop[i * 80] <= 0;
				end
		end
		else if (en)
			if (OUT_decBranch[0]) begin : sv2v_autoblock_5
				integer i;
				for (i = 0; i < NUM_UOPS; i = i + 1)
					begin
						OUT_uop[i * 80+:80] <= 1'sbx;
						OUT_uop[i * 80] <= 0;
					end
			end
			else begin
				begin : sv2v_autoblock_6
					integer i;
					for (i = 0; i < NUM_UOPS; i = i + 1)
						begin
							OUT_uop[i * 80+:80] <= uopsComb[i];
							if (!validMask[i])
								OUT_uop[i * 80] <= 0;
						end
				end
				OUT_btUpdate <= btUpdate_c;
				OUT_decBranch <= decBranch_c;
				OUT_retUpd <= retUpd_c;
			end
	end
endmodule
module IntALU (
	clk,
	en,
	rst,
	IN_wbStall,
	IN_uop,
	IN_invalidate,
	IN_invalidateSqN,
	OUT_wbReq,
	OUT_branch,
	OUT_btUpdate,
	OUT_zcFwd,
	OUT_uop
);
	input wire clk;
	input wire en;
	input wire rst;
	input wire IN_wbStall;
	input wire [181:0] IN_uop;
	input IN_invalidate;
	input wire [6:0] IN_invalidateSqN;
	output wire OUT_wbReq;
	output reg [63:0] OUT_branch;
	output reg [75:0] OUT_btUpdate;
	output wire [39:0] OUT_zcFwd;
	output reg [58:0] OUT_uop;
	wire [31:0] srcA = IN_uop[181-:32];
	wire [31:0] srcB = IN_uop[149-:32];
	wire [31:0] imm = IN_uop[79-:32];
	assign OUT_wbReq = IN_uop[0] && en;
	reg [31:0] resC;
	reg [3:0] flags;
	assign OUT_zcFwd[39-:32] = resC;
	assign OUT_zcFwd[7-:7] = IN_uop[41-:7];
	assign OUT_zcFwd[0] = (IN_uop[0] && en) && !IN_uop[41];
	wire [5:0] resLzTz;
	reg [31:0] srcAbitRev;
	always @(*) begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < 32; i = i + 1)
			srcAbitRev[i] = srcA[31 - i];
	end
	LZCnt lzc(
		.in((IN_uop[47-:6] == 6'd26 ? srcA : srcAbitRev)),
		.out(resLzTz)
	);
	wire [5:0] resPopCnt;
	PopCnt popc(
		.a(IN_uop[181-:32]),
		.res(resPopCnt)
	);
	wire lessThan = $signed(srcA) < $signed(srcB);
	wire lessThanU = srcA < srcB;
	wire [31:0] pcPlus2 = IN_uop[117-:32] + 2;
	wire [31:0] pcPlus4 = IN_uop[117-:32] + 4;
	always @(*) begin
		case (IN_uop[47-:6])
			6'd17: resC = IN_uop[117-:32] + imm;
			6'd56, 6'd0: resC = srcA + srcB;
			6'd57, 6'd1: resC = srcA ^ srcB;
			6'd59, 6'd2: resC = srcA | srcB;
			6'd58, 6'd3: resC = srcA & srcB;
			6'd61, 6'd29: resC = (lessThan ? srcB : srcA);
			6'd63, 6'd30: resC = (lessThanU ? srcB : srcA);
			6'd60, 6'd31: resC = (lessThan ? srcA : srcB);
			6'd62, 6'd32: resC = (lessThanU ? srcA : srcB);
			6'd4: resC = srcA << srcB[4:0];
			6'd5: resC = srcA >> srcB[4:0];
			6'd6: resC = {31'b0000000000000000000000000000000, lessThan};
			6'd7: resC = {31'b0000000000000000000000000000000, lessThanU};
			6'd8: resC = srcA - srcB;
			6'd9: resC = $signed(srcA) >>> srcB[4:0];
			6'd16: resC = srcB;
			6'd49, 6'd47, 6'd48, 6'd18: resC = (IN_uop[1] ? pcPlus2 : pcPlus4);
			6'd19: resC = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
			6'd20: resC = srcB + (srcA << 1);
			6'd21: resC = srcB + (srcA << 2);
			6'd22: resC = srcB + (srcA << 3);
			6'd24: resC = srcA & ~srcB;
			6'd25: resC = srcA | ~srcB;
			6'd23: resC = srcA ^ ~srcB;
			6'd33: resC = {{24 {srcA[7]}}, srcA[7:0]};
			6'd34: resC = {{16 {srcA[15]}}, srcA[15:0]};
			6'd35: resC = {16'b0000000000000000, srcA[15:0]};
			6'd26, 6'd27: resC = {26'b00000000000000000000000000, resLzTz};
			6'd28: resC = {26'b00000000000000000000000000, resPopCnt};
			6'd38: resC = {{4'd8 {|srcA[31:24]}}, {4'd8 {|srcA[23:16]}}, {4'd8 {|srcA[15:8]}}, {4'd8 {|srcA[7:0]}}};
			6'd39: resC = {srcA[7:0], srcA[15:8], srcA[23:16], srcA[31:24]};
			6'd44: resC = {srcB[31], srcA[30:0]};
			6'd45: resC = {~srcB[31], srcA[30:0]};
			6'd46: resC = {srcA[31] ^ srcB[31], srcA[30:0]};
			default: resC = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
		endcase
		case (IN_uop[47-:6])
			6'd19: flags = imm[3:0];
			default: flags = 4'd0;
		endcase
	end
	reg isBranch;
	reg branchTaken;
	always @(*) begin
		case (IN_uop[47-:6])
			6'd18: branchTaken = 1;
			6'd10: branchTaken = srcA == srcB;
			6'd11: branchTaken = srcA != srcB;
			6'd12: branchTaken = lessThan;
			6'd13: branchTaken = !lessThan;
			6'd14: branchTaken = lessThanU;
			6'd15: branchTaken = !lessThanU;
			default: branchTaken = 0;
		endcase
		isBranch = (((((IN_uop[47-:6] == 6'd10) || (IN_uop[47-:6] == 6'd11)) || (IN_uop[47-:6] == 6'd12)) || (IN_uop[47-:6] == 6'd13)) || (IN_uop[47-:6] == 6'd14)) || (IN_uop[47-:6] == 6'd15);
	end
	reg indBranchCorrect;
	reg [31:0] indBranchDst;
	always @(*) begin
		indBranchCorrect = 1'sbx;
		indBranchDst = 1'sbx;
		case (IN_uop[47-:6])
			6'd47: begin
				indBranchDst = srcA;
				indBranchDst[0] = 0;
				indBranchCorrect = indBranchDst[31:1] == srcB[31:1];
			end
			6'd48, 6'd49: begin
				indBranchDst = srcA + {{20 {imm[11]}}, imm[11:0]};
				indBranchDst[0] = 0;
				indBranchCorrect = indBranchDst[31:1] == srcB[31:1];
			end
			default:
				;
		endcase
	end
	wire [31:0] finalHalfwPC = (IN_uop[1] ? IN_uop[117-:32] : pcPlus2);
	always @(posedge clk) begin
		OUT_uop <= 1'sbx;
		OUT_branch <= 1'sbx;
		OUT_btUpdate <= 1'sbx;
		OUT_uop[0] <= 0;
		OUT_branch[0] <= 0;
		OUT_btUpdate[0] <= 0;
		if (!rst)
			if (((IN_uop[0] && en) && !IN_wbStall) && (!IN_invalidate || ($signed(IN_uop[34-:7] - IN_invalidateSqN) <= 0))) begin
				OUT_branch[27-:7] <= IN_uop[34-:7];
				OUT_branch[13-:7] <= IN_uop[12-:7];
				OUT_branch[20-:7] <= IN_uop[19-:7];
				OUT_btUpdate[0] <= 0;
				OUT_branch[0] <= 0;
				OUT_branch[6] <= 0;
				OUT_branch[5-:5] <= IN_uop[27-:5];
				OUT_branch[61-:2] <= 2'd0;
				OUT_branch[63-:2] <= 2'd0;
				if (isBranch) begin
					if (branchTaken && !IN_uop[22]) begin
						OUT_btUpdate[75-:32] <= finalHalfwPC;
						OUT_btUpdate[11-:3] <= IN_uop[85-:3];
						OUT_btUpdate[3] <= finalHalfwPC[1+:3] > IN_uop[82-:3];
						OUT_btUpdate[6-:3] <= IN_uop[82-:3] + 1;
						OUT_btUpdate[8] <= 0;
						OUT_btUpdate[7] <= 0;
						OUT_btUpdate[2] <= IN_uop[1];
						OUT_btUpdate[1] <= 0;
						OUT_btUpdate[0] <= 1;
					end
					if ((branchTaken != IN_uop[21]) && (IN_uop[47-:6] != 6'd18)) begin
						if (branchTaken) begin
							OUT_branch[59-:32] <= IN_uop[117-:32] + {{19 {imm[12]}}, imm[12:0]};
							OUT_btUpdate[43-:32] <= IN_uop[117-:32] + {{19 {imm[12]}}, imm[12:0]};
						end
						else if (IN_uop[1]) begin
							OUT_branch[59-:32] <= pcPlus2;
							OUT_btUpdate[43-:32] <= pcPlus2;
						end
						else begin
							OUT_branch[59-:32] <= pcPlus4;
							OUT_btUpdate[43-:32] <= pcPlus4;
						end
						OUT_branch[0] <= 1;
						if (IN_uop[22])
							OUT_branch[61-:2] <= (branchTaken ? 2'd3 : 2'd2);
						else
							OUT_branch[61-:2] <= 2'd1;
					end
				end
				else if (((IN_uop[47-:6] == 6'd47) || (IN_uop[47-:6] == 6'd48)) || (IN_uop[47-:6] == 6'd49))
					if (!indBranchCorrect) begin
						OUT_branch[59-:32] <= indBranchDst;
						OUT_branch[0] <= 1;
						if (IN_uop[47-:6] == 6'd47)
							OUT_branch[63-:2] <= 2'd2;
						if (IN_uop[47-:6] == 6'd48)
							OUT_branch[63-:2] <= 2'd1;
						if ((IN_uop[47-:6] == 6'd48) || (IN_uop[47-:6] == 6'd49)) begin
							OUT_btUpdate[75-:32] <= finalHalfwPC;
							OUT_btUpdate[11-:3] <= IN_uop[85-:3];
							OUT_btUpdate[3] <= finalHalfwPC[1+:3] > IN_uop[82-:3];
							OUT_btUpdate[6-:3] <= IN_uop[82-:3] + 1;
							OUT_btUpdate[43-:32] <= indBranchDst;
							OUT_btUpdate[8] <= 1;
							OUT_btUpdate[7] <= IN_uop[47-:6] == 6'd48;
							OUT_btUpdate[2] <= IN_uop[1];
							OUT_btUpdate[1] <= 0;
							OUT_btUpdate[0] <= 1;
						end
					end
				OUT_uop[58-:32] <= resC;
				OUT_uop[26-:7] <= IN_uop[19-:7];
				OUT_uop[19-:7] <= IN_uop[41-:7];
				OUT_uop[12-:7] <= IN_uop[34-:7];
				OUT_uop[1] <= IN_uop[47-:6] >= 6'd56;
				if (isBranch && IN_uop[22])
					OUT_uop[5-:4] <= (branchTaken ? 4'd2 : 4'd3);
				else if (isBranch)
					OUT_uop[5-:4] <= 4'd1;
				else
					OUT_uop[5-:4] <= flags;
				OUT_uop[0] <= 1;
			end
	end
endmodule
module IssueQueue (
	clk,
	rst,
	OUT_stall,
	IN_stall,
	IN_doNotIssueFU1,
	IN_doNotIssueFU2,
	IN_uop,
	IN_uopOrdering,
	IN_resultValid,
	IN_resultUOp,
	IN_loadForwardValid,
	IN_loadForwardTag,
	IN_branch,
	IN_issueUOps,
	IN_maxStoreSqN,
	IN_maxLoadSqN,
	IN_commitSqN,
	OUT_uop
);
	parameter SIZE = 8;
	parameter NUM_ENQUEUE = 4;
	parameter PORT_IDX = 0;
	parameter NUM_OPERANDS = 2;
	parameter NUM_UOPS = 4;
	parameter RESULT_BUS_COUNT = 4;
	parameter IMM_BITS = 32;
	parameter FU0 = 4'd2;
	parameter FU1 = 4'd2;
	parameter FU2 = 4'd2;
	parameter FU3 = 4'd2;
	parameter FU0_SPLIT = 0;
	parameter FU0_ORDER = 0;
	parameter FU1_DLY = 0;
	input wire clk;
	input wire rst;
	output reg [NUM_UOPS - 1:0] OUT_stall;
	input wire IN_stall;
	input wire IN_doNotIssueFU1;
	input wire IN_doNotIssueFU2;
	input wire [(NUM_UOPS * 126) - 1:0] IN_uop;
	input wire [NUM_UOPS - 1:0] IN_uopOrdering;
	input wire [RESULT_BUS_COUNT - 1:0] IN_resultValid;
	input wire [(RESULT_BUS_COUNT * 59) - 1:0] IN_resultUOp;
	input wire IN_loadForwardValid;
	input wire [6:0] IN_loadForwardTag;
	input wire [63:0] IN_branch;
	input wire [(RESULT_BUS_COUNT * 109) - 1:0] IN_issueUOps;
	input wire [6:0] IN_maxStoreSqN;
	input wire [6:0] IN_maxLoadSqN;
	input wire [6:0] IN_commitSqN;
	output reg [108:0] OUT_uop;
	localparam ID_LEN = $clog2(SIZE);
	localparam IMM_EXT = ((32 - IMM_BITS) > 0 ? 32 - IMM_BITS : 0);
	localparam REGULAR_IMM_BITS = (IMM_BITS < 32 ? IMM_BITS : 32);
	reg [((IMM_BITS + NUM_OPERANDS) + (NUM_OPERANDS * 7)) + 47:0] queue [SIZE - 1:0];
	reg [$clog2(SIZE):0] insertIndex;
	reg [32:0] reservedWBs;
	reg [NUM_OPERANDS - 1:0] newAvail [SIZE - 1:0];
	reg [NUM_OPERANDS - 1:0] newAvail_dl [SIZE - 1:0];
	always @(*) begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < SIZE; i = i + 1)
			begin
				begin : sv2v_autoblock_2
					integer k;
					for (k = 0; k < NUM_OPERANDS; k = k + 1)
						begin
							newAvail[i][k] = 0;
							newAvail_dl[i][k] = 0;
						end
				end
				begin : sv2v_autoblock_3
					integer j;
					for (j = 0; j < RESULT_BUS_COUNT; j = j + 1)
						begin : sv2v_autoblock_4
							integer k;
							for (k = 0; k < NUM_OPERANDS; k = k + 1)
								if (IN_resultValid[j] && (queue[i][((NUM_OPERANDS * 7) + 47) - (((NUM_OPERANDS * 7) - 1) - (k * 7))+:7] == IN_resultUOp[(j * 59) + 19-:7]))
									newAvail[i][k] = 1;
						end
				end
				begin : sv2v_autoblock_5
					integer j;
					for (j = 0; j < 2; j = j + 1)
						if (IN_issueUOps[j * 109] && !IN_issueUOps[(j * 109) + 40])
							if (IN_issueUOps[(j * 109) + 5-:4] == 4'd0) begin : sv2v_autoblock_6
								integer k;
								for (k = 0; k < NUM_OPERANDS; k = k + 1)
									if (queue[i][((NUM_OPERANDS * 7) + 47) - (((NUM_OPERANDS * 7) - 1) - (k * 7))+:7] == IN_issueUOps[(j * 109) + 40-:7])
										newAvail[i][k] = 1;
							end
							else if ((IN_issueUOps[(j * 109) + 5-:4] == 4'd5) || (IN_issueUOps[(j * 109) + 5-:4] == 4'd7)) begin : sv2v_autoblock_7
								integer k;
								for (k = 0; k < NUM_OPERANDS; k = k + 1)
									if (queue[i][((NUM_OPERANDS * 7) + 47) - (((NUM_OPERANDS * 7) - 1) - (k * 7))+:7] == IN_issueUOps[(j * 109) + 40-:7])
										newAvail_dl[i][k] = 1;
							end
				end
				begin : sv2v_autoblock_8
					integer k;
					for (k = 0; k < NUM_OPERANDS; k = k + 1)
						if (IN_loadForwardValid && (queue[i][((NUM_OPERANDS * 7) + 47) - (((NUM_OPERANDS * 7) - 1) - (k * 7))+:7] == IN_loadForwardTag))
							newAvail[i][k] = 1;
				end
			end
	end
	reg [125:0] enqCandidates [NUM_ENQUEUE - 1:0];
	function automatic [125:0] sv2v_cast_126;
		input reg [125:0] inp;
		sv2v_cast_126 = inp;
	endfunction
	always @(*) begin : sv2v_autoblock_9
		reg [$clog2(NUM_ENQUEUE) - 1:0] idx;
		reg [$clog2(SIZE):0] qIdx;
		reg limit;
		idx = 0;
		qIdx = insertIndex;
		limit = 0;
		begin : sv2v_autoblock_10
			integer i;
			for (i = 0; i < NUM_ENQUEUE; i = i + 1)
				enqCandidates[i] = sv2v_cast_126(126'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx00000);
		end
		begin : sv2v_autoblock_11
			integer i;
			for (i = 0; i < NUM_UOPS; i = i + 1)
				begin
					OUT_stall[i] = 0;
					if ((IN_uop[(i * 126) + (1 + PORT_IDX)] && ((((((IN_uop[(i * 126) + 9-:4] == FU0) && (!FU0_SPLIT || (IN_uopOrdering[i] == FU0_ORDER))) || (IN_uop[(i * 126) + 9-:4] == FU1)) || (IN_uop[(i * 126) + 9-:4] == FU2)) || (IN_uop[(i * 126) + 9-:4] == FU3)) || ((PORT_IDX == 0) && (IN_uop[(i * 126) + 9-:4] == 4'd9)))) && (((PORT_IDX != 0) || (IN_uop[(i * 126) + 9-:4] != 4'd9)) || (IN_uop[(i * 126) + 37-:6] != 6'd55)))
						if ((!limit && (qIdx != SIZE)) && !IN_branch[0]) begin
							if (NUM_ENQUEUE == NUM_UOPS)
								enqCandidates[i] = IN_uop[i * 126+:126];
							else begin
								enqCandidates[idx] = IN_uop[i * 126+:126];
								{limit, idx} = idx + 1;
							end
							OUT_stall[i] = 0;
							qIdx = qIdx + 1;
						end
						else
							OUT_stall[i] = 1;
				end
		end
	end
	always @(posedge clk) begin : sv2v_autoblock_12
		reg [ID_LEN:0] newInsertIndex;
		newInsertIndex = 1'sbx;
		begin : sv2v_autoblock_13
			integer i;
			for (i = 0; i < SIZE; i = i + 1)
				queue[i][NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)-:((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) >= ((NUM_OPERANDS * 7) + 48) ? ((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - ((NUM_OPERANDS * 7) + 48)) + 1 : (((NUM_OPERANDS * 7) + 48) - (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) + 1)] <= (queue[i][NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)-:((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) >= ((NUM_OPERANDS * 7) + 48) ? ((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - ((NUM_OPERANDS * 7) + 48)) + 1 : (((NUM_OPERANDS * 7) + 48) - (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) + 1)] | newAvail[i]) | newAvail_dl[i];
		end
		reservedWBs <= {1'b0, reservedWBs[32:1]};
		if (rst) begin
			insertIndex <= 0;
			reservedWBs <= 0;
			OUT_uop <= 1'sbx;
			OUT_uop[0] <= 0;
		end
		else if (IN_branch[0]) begin
			newInsertIndex = 0;
			begin : sv2v_autoblock_14
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					if ((i < insertIndex) && ($signed(queue[i][46-:7] - IN_branch[27-:7]) <= 0))
						newInsertIndex = i[$clog2(SIZE):0] + 1;
			end
			insertIndex <= newInsertIndex;
			if (!IN_stall || ($signed(OUT_uop[47-:7] - IN_branch[27-:7]) > 0)) begin
				OUT_uop <= 1'sbx;
				OUT_uop[0] <= 0;
			end
		end
		else begin : sv2v_autoblock_15
			reg issued;
			issued = 0;
			newInsertIndex = insertIndex;
			if (!IN_stall) begin
				OUT_uop <= 1'sbx;
				OUT_uop[0] <= 0;
				begin : sv2v_autoblock_16
					integer i;
					for (i = 0; i < SIZE; i = i + 1)
						if ((i < newInsertIndex) && !issued)
							if (((((&(queue[i][NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)-:((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) >= ((NUM_OPERANDS * 7) + 48) ? ((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - ((NUM_OPERANDS * 7) + 48)) + 1 : (((NUM_OPERANDS * 7) + 48) - (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) + 1)] | newAvail[i]) && ((queue[i][4-:4] != FU1) || !IN_doNotIssueFU1)) && ((queue[i][4-:4] != FU2) || !IN_doNotIssueFU2)) && !((((queue[i][4-:4] == 4'd0) || (queue[i][4-:4] == 4'd5)) || (queue[i][4-:4] == 4'd7)) && reservedWBs[0])) && ((((((FU0 != 4'd10) && (FU1 != 4'd10)) && (FU2 != 4'd10)) && (FU3 != 4'd10)) || (queue[i][4-:4] != 4'd10)) || ((i == 0) && (queue[i][46-:7] == IN_commitSqN)))) && ((((((FU0 != 4'd1) && (FU1 != 4'd1)) && (FU2 != 4'd1)) && (FU3 != 4'd1)) || (queue[i][4-:4] != 4'd1)) || ($signed(queue[i][11-:7] - IN_maxLoadSqN) <= 0))) begin
								issued = 1;
								OUT_uop[0] <= 1;
								OUT_uop[108-:32] <= {{IMM_EXT {1'b0}}, queue[i][(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - ((IMM_BITS - 1) - (REGULAR_IMM_BITS - 1)):(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - (IMM_BITS - 1)]};
								OUT_uop[63-:7] <= queue[i][((NUM_OPERANDS * 7) + 47) - ((NUM_OPERANDS * 7) - 1)+:7];
								if (NUM_OPERANDS >= 2)
									OUT_uop[55-:7] <= queue[i][((NUM_OPERANDS * 7) + 47) - ((NUM_OPERANDS * 7) - 8)+:7];
								else
									OUT_uop[55-:7] <= 7'h40;
								OUT_uop[48] <= queue[i][47];
								OUT_uop[47-:7] <= queue[i][46-:7];
								OUT_uop[40-:7] <= queue[i][39-:7];
								OUT_uop[33-:6] <= queue[i][32-:6];
								OUT_uop[27-:5] <= queue[i][26-:5];
								OUT_uop[22-:3] <= queue[i][21-:3];
								OUT_uop[19-:7] <= queue[i][18-:7];
								OUT_uop[12-:7] <= queue[i][11-:7];
								OUT_uop[5-:4] <= queue[i][4-:4];
								OUT_uop[1] <= queue[i][0];
								if ((IMM_BITS == 36) && (FU0 == 4'd0))
									OUT_uop[76-:12] <= {queue[i][(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - (IMM_BITS - 36):(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - (IMM_BITS - 33)], queue[i][(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - (IMM_BITS - 1)], queue[i][((NUM_OPERANDS * 7) + 47) - ((NUM_OPERANDS * 7) - 8)+:7]};
								else
									OUT_uop[76-:12] <= 1'sbx;
								begin : sv2v_autoblock_17
									integer j;
									for (j = i; j < (SIZE - 1); j = j + 1)
										begin
											queue[j] <= queue[j + 1];
											queue[j][NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)-:((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) >= ((NUM_OPERANDS * 7) + 48) ? ((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - ((NUM_OPERANDS * 7) + 48)) + 1 : (((NUM_OPERANDS * 7) + 48) - (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) + 1)] <= (queue[j + 1][NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)-:((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) >= ((NUM_OPERANDS * 7) + 48) ? ((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - ((NUM_OPERANDS * 7) + 48)) + 1 : (((NUM_OPERANDS * 7) + 48) - (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) + 1)] | newAvail[j + 1]) | newAvail_dl[j + 1];
										end
								end
								newInsertIndex = newInsertIndex - 1;
								if ((queue[i][4-:4] == FU1) && (FU1_DLY > 0))
									reservedWBs <= {1'b0, reservedWBs[32:1]} | (1 << (FU1_DLY - 1));
							end
				end
			end
			begin : sv2v_autoblock_18
				integer i;
				for (i = 0; i < NUM_ENQUEUE; i = i + 1)
					if (enqCandidates[i][1 + PORT_IDX]) begin : sv2v_autoblock_19
						reg [((IMM_BITS + NUM_OPERANDS) + (NUM_OPERANDS * 7)) + 47:0] temp;
						temp[IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))-:((IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) >= (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 48)) ? ((IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 48))) + 1 : ((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 48)) - (IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)))) + 1)] = 0;
						temp[(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - ((IMM_BITS - 1) - (REGULAR_IMM_BITS - 1)):(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - (IMM_BITS - 1)] = enqCandidates[i][REGULAR_IMM_BITS + 93:94];
						temp[(NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - (NUM_OPERANDS - 1)] = enqCandidates[i][81];
						temp[((NUM_OPERANDS * 7) + 47) - ((NUM_OPERANDS * 7) - 1)+:7] = enqCandidates[i][80-:7];
						if (NUM_OPERANDS >= 2) begin
							temp[(NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - (NUM_OPERANDS - 2)] = enqCandidates[i][73];
							temp[((NUM_OPERANDS * 7) + 47) - ((NUM_OPERANDS * 7) - 8)+:7] = enqCandidates[i][72-:7];
						end
						temp[39-:7] = enqCandidates[i][49-:7];
						temp[4-:4] = enqCandidates[i][9-:4];
						temp[47] = enqCandidates[i][65];
						temp[46-:7] = enqCandidates[i][56-:7];
						temp[32-:6] = enqCandidates[i][37-:6];
						temp[26-:5] = enqCandidates[i][31-:5];
						temp[21-:3] = enqCandidates[i][26-:3];
						temp[18-:7] = enqCandidates[i][23-:7];
						temp[11-:7] = enqCandidates[i][16-:7];
						temp[0] = enqCandidates[i][5];
						if (((PORT_IDX == 0) || (PORT_IDX == 2)) || (PORT_IDX == 3))
							if (temp[4-:4] == 4'd9) begin
								temp[4-:4] = FU0;
								if (PORT_IDX == 0) begin
									temp[(NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - (NUM_OPERANDS - 1)] = enqCandidates[i][64];
									temp[((NUM_OPERANDS * 7) + 47) - ((NUM_OPERANDS * 7) - 1)+:7] = enqCandidates[i][63-:7];
									temp[39-:7] = 7'h40;
								end
								if (PORT_IDX == 3)
									temp[39-:7] = 7'h40;
							end
						begin : sv2v_autoblock_20
							integer j;
							for (j = 0; j < RESULT_BUS_COUNT; j = j + 1)
								if (IN_resultValid[j]) begin : sv2v_autoblock_21
									integer k;
									for (k = 0; k < NUM_OPERANDS; k = k + 1)
										if (temp[((NUM_OPERANDS * 7) + 47) - (((NUM_OPERANDS * 7) - 1) - (k * 7))+:7] == IN_resultUOp[(j * 59) + 19-:7])
											temp[(NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - ((NUM_OPERANDS - 1) - k)] = 1;
								end
						end
						if ((enqCandidates[i][9-:4] == 4'd0) && ((enqCandidates[i][37-:6] == 6'd48) || (enqCandidates[i][37-:6] == 6'd49))) begin
							temp[((NUM_OPERANDS * 7) + 47) - ((NUM_OPERANDS * 7) - 8)+:7] = enqCandidates[i][88:82];
							temp[(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - (IMM_BITS - 1)] = enqCandidates[i][89];
							temp[(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - (IMM_BITS - 36):(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - (IMM_BITS - 33)] = enqCandidates[i][93:90];
							temp[(NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - (NUM_OPERANDS - 2)] = 1;
						end
						queue[newInsertIndex[ID_LEN - 1:0]] <= temp;
						newInsertIndex = newInsertIndex + 1;
					end
			end
			insertIndex <= newInsertIndex;
		end
	end
endmodule
module LoadBuffer (
	clk,
	rst,
	IN_comLoadSqN,
	IN_comSqN,
	IN_stall,
	IN_uopLd,
	IN_uopSt,
	IN_ldAck,
	IN_SQ_done,
	OUT_uopAGULd,
	OUT_uopLd,
	IN_branch,
	OUT_branch,
	OUT_maxLoadSqN
);
	parameter NUM_PORTS = 2;
	parameter NUM_ENTRIES = 16;
	input wire clk;
	input wire rst;
	input wire [6:0] IN_comLoadSqN;
	input wire [6:0] IN_comSqN;
	input wire IN_stall;
	input wire [109:0] IN_uopLd;
	input wire [109:0] IN_uopSt;
	input wire [9:0] IN_ldAck;
	input wire IN_SQ_done;
	output reg [61:0] OUT_uopAGULd;
	output reg [61:0] OUT_uopLd;
	input wire [63:0] IN_branch;
	output reg [63:0] OUT_branch;
	output reg [6:0] OUT_maxLoadSqN;
	localparam TAG_SIZE = 7 - $clog2(NUM_ENTRIES);
	reg [(14 + TAG_SIZE) + 38:0] entries [NUM_ENTRIES - 1:0];
	reg [6:0] baseIndex = IN_comLoadSqN;
	reg [6:0] lastBaseIndex;
	wire [$clog2(NUM_ENTRIES) - 1:0] deqIndex = baseIndex[$clog2(NUM_ENTRIES) - 1:0];
	reg [61:0] lateLoadUOp;
	reg issueLateLoad;
	reg delayLoad;
	reg nonSpeculative;
	always @(*) begin
		OUT_uopAGULd = 1'sbx;
		OUT_uopAGULd[0] = 0;
		OUT_uopLd = 1'sbx;
		OUT_uopLd[0] = 0;
		issueLateLoad = 0;
		nonSpeculative = (IN_uopLd[0] && (IN_uopLd[109-:32] < 32'h80000000)) && (IN_uopLd[3-:2] == 2'd0);
		delayLoad = nonSpeculative;
		if ((((((IN_uopLd[0] && ($signed(IN_uopSt[16-:7] - IN_uopLd[16-:7]) <= 0)) && IN_uopSt[0]) && (!IN_uopSt[4] || (IN_uopSt[16-:7] != IN_uopLd[16-:7]))) && (IN_uopLd[3-:2] == 2'd0)) && (IN_uopLd[109:80] == IN_uopSt[109:80])) && (((IN_uopSt[72-:2] == 2) || ((IN_uopSt[72-:2] == 1) && ((IN_uopLd[72-:2] > 1) || (IN_uopLd[79] == IN_uopSt[79])))) || ((IN_uopSt[72-:2] == 0) && ((IN_uopLd[72-:2] > 0) || (IN_uopLd[79:78] == IN_uopSt[79:78])))))
			delayLoad = 1;
		if (!delayLoad) begin
			OUT_uopAGULd[61-:32] = IN_uopLd[109-:32];
			OUT_uopAGULd[29] = IN_uopLd[73];
			OUT_uopAGULd[28-:2] = IN_uopLd[72-:2];
			OUT_uopAGULd[26-:7] = IN_uopLd[16-:7];
			OUT_uopAGULd[19-:7] = IN_uopLd[37-:7];
			OUT_uopAGULd[12-:7] = IN_uopLd[30-:7];
			OUT_uopAGULd[5] = IN_uopLd[4];
			OUT_uopAGULd[4] = 0;
			OUT_uopAGULd[3-:2] = IN_uopLd[3-:2];
			OUT_uopAGULd[1] = IN_uopLd[109-:32] < 32'h80000000;
			OUT_uopAGULd[0] = IN_uopLd[0];
		end
		OUT_uopLd = lateLoadUOp;
	end
	reg storeIsConflict;
	always @(*) begin
		storeIsConflict = 0;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_ENTRIES; i = i + 1)
				if (((((entries[i][0] && entries[i][1]) && ($signed(IN_uopSt[16-:7] - {entries[i][TAG_SIZE + 38-:((TAG_SIZE + 38) >= 39 ? TAG_SIZE + 0 : 40 - (TAG_SIZE + 38))], i[$clog2(NUM_ENTRIES) - 1:0]}) <= 0)) && (!IN_uopSt[4] || (IN_uopSt[16-:7] != {entries[i][TAG_SIZE + 38-:((TAG_SIZE + 38) >= 39 ? TAG_SIZE + 0 : 40 - (TAG_SIZE + 38))], i[$clog2(NUM_ENTRIES) - 1:0]}))) && (entries[i][36:7] == IN_uopSt[109:80])) && (((IN_uopSt[72-:2] == 2) || ((IN_uopSt[72-:2] == 1) && ((entries[i][38-:2] > 1) || (entries[i][6] == IN_uopSt[79])))) || ((IN_uopSt[72-:2] == 0) && ((entries[i][38-:2] > 0) || (entries[i][6:5] == IN_uopSt[79:78])))))
					storeIsConflict = 1;
		end
	end
	reg [$clog2(NUM_ENTRIES) - 1:0] issueIdx;
	reg issueIdxValid;
	always @(*) begin : sv2v_autoblock_2
		reg [NUM_ENTRIES - 1:0] issueCandidates;
		issueCandidates = 0;
		issueIdx = 1'sbx;
		issueIdxValid = 0;
		begin : sv2v_autoblock_3
			integer i;
			for (i = 0; i < NUM_ENTRIES; i = i + 1)
				issueCandidates[i] = (entries[i][0] && !entries[i][1]) && !entries[i][2];
		end
		begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < NUM_ENTRIES; i = i + 1)
				begin : sv2v_autoblock_5
					reg [$clog2(NUM_ENTRIES) - 1:0] idx;
					idx = i[$clog2(NUM_ENTRIES) - 1:0] + deqIndex;
					if (issueCandidates[idx] && !issueIdxValid) begin
						issueIdxValid = 1;
						issueIdx = idx[$clog2(NUM_ENTRIES) - 1:0];
					end
				end
		end
		if ((entries[deqIndex][0] && !entries[deqIndex][1]) && (!entries[deqIndex][2] || ((IN_comSqN == entries[deqIndex][14 + (TAG_SIZE + 38)-:((14 + (TAG_SIZE + 38)) >= (7 + (TAG_SIZE + 39)) ? ((14 + (TAG_SIZE + 38)) - (7 + (TAG_SIZE + 39))) + 1 : ((7 + (TAG_SIZE + 39)) - (14 + (TAG_SIZE + 38))) + 1)]) && IN_SQ_done))) begin
			issueIdxValid = 1;
			issueIdx = deqIndex;
		end
	end
	wire [6:0] invalSqN = (IN_branch[0] ? IN_branch[13-:7] : lastBaseIndex);
	wire [NUM_ENTRIES - 1:0] beginOneHot = 1 << invalSqN[$clog2(NUM_ENTRIES) - 1:0];
	wire [NUM_ENTRIES - 1:0] endOneHot = 1 << baseIndex[$clog2(NUM_ENTRIES) - 1:0];
	reg [NUM_ENTRIES - 1:0] invalMask;
	always @(*) begin : sv2v_autoblock_6
		reg active;
		if (IN_branch[0])
			active = baseIndex[$clog2(NUM_ENTRIES) - 1:0] <= invalSqN[$clog2(NUM_ENTRIES) - 1:0];
		else
			active = baseIndex[$clog2(NUM_ENTRIES) - 1:0] < invalSqN[$clog2(NUM_ENTRIES) - 1:0];
		begin : sv2v_autoblock_7
			integer i;
			for (i = 0; i < NUM_ENTRIES; i = i + 1)
				begin
					if (IN_branch[0]) begin
						if (beginOneHot[i])
							active = 1;
						else if (endOneHot[i])
							active = 0;
					end
					else if (endOneHot[i])
						active = 0;
					else if (beginOneHot[i])
						active = 1;
					invalMask[i] = active;
				end
		end
	end
	always @(posedge clk) begin
		OUT_branch <= 1'sbx;
		OUT_branch[0] <= 0;
		lastBaseIndex <= baseIndex;
		if (rst) begin
			begin : sv2v_autoblock_8
				integer i;
				for (i = 0; i < NUM_ENTRIES; i = i + 1)
					entries[i][0] <= 0;
			end
			OUT_maxLoadSqN <= (baseIndex + NUM_ENTRIES[6:0]) - 1;
			lateLoadUOp <= 1'sbx;
			lateLoadUOp[0] <= 0;
			lastBaseIndex <= 0;
		end
		else begin
			if (!IN_stall) begin
				lateLoadUOp <= 1'sbx;
				lateLoadUOp[0] <= 0;
			end
			if ((IN_ldAck[0] && IN_ldAck[2]) && !IN_ldAck[1]) begin : sv2v_autoblock_9
				reg [$clog2(NUM_ENTRIES) - 1:0] index;
				index = IN_ldAck[2 + $clog2(NUM_ENTRIES):3];
				entries[index][1] <= 0;
			end
			if (IN_branch[0]) begin
				begin : sv2v_autoblock_10
					integer i;
					for (i = 0; i < NUM_ENTRIES; i = i + 1)
						if ((invalMask[i] && !($signed(IN_branch[13-:7] - baseIndex) >= NUM_ENTRIES)) || IN_branch[6]) begin
							entries[i] <= 1'sbx;
							entries[i][0] <= 0;
						end
				end
				if (($signed(lateLoadUOp[12-:7] - IN_branch[27-:7]) > 0) || IN_branch[6]) begin
					lateLoadUOp <= 1'sbx;
					lateLoadUOp[0] <= 0;
				end
			end
			else begin
				if (!lateLoadUOp[0] && issueIdxValid) begin
					entries[issueIdx][1] <= 1;
					lateLoadUOp[61-:32] <= entries[issueIdx][36-:32];
					lateLoadUOp[29] <= entries[issueIdx][4];
					lateLoadUOp[28-:2] <= entries[issueIdx][38-:2];
					lateLoadUOp[26-:7] <= {entries[issueIdx][TAG_SIZE + 38-:((TAG_SIZE + 38) >= 39 ? TAG_SIZE + 0 : 40 - (TAG_SIZE + 38))], issueIdx};
					lateLoadUOp[19-:7] <= entries[issueIdx][7 + (TAG_SIZE + 38)-:((7 + (TAG_SIZE + 38)) >= (TAG_SIZE + 39) ? ((7 + (TAG_SIZE + 38)) - (TAG_SIZE + 39)) + 1 : ((TAG_SIZE + 39) - (7 + (TAG_SIZE + 38))) + 1)];
					lateLoadUOp[12-:7] <= entries[issueIdx][14 + (TAG_SIZE + 38)-:((14 + (TAG_SIZE + 38)) >= (7 + (TAG_SIZE + 39)) ? ((14 + (TAG_SIZE + 38)) - (7 + (TAG_SIZE + 39))) + 1 : ((7 + (TAG_SIZE + 39)) - (14 + (TAG_SIZE + 38))) + 1)];
					lateLoadUOp[5] <= entries[issueIdx][3];
					lateLoadUOp[4] <= 0;
					lateLoadUOp[3-:2] <= 2'd0;
					lateLoadUOp[1] <= entries[issueIdx][36-:32] < 32'h80000000;
					lateLoadUOp[0] <= 1;
				end
				begin : sv2v_autoblock_11
					integer i;
					for (i = 0; i < NUM_ENTRIES; i = i + 1)
						if (invalMask[i]) begin
							entries[i] <= 1'sbx;
							entries[i][0] <= 0;
						end
				end
			end
			if (IN_uopLd[0] && (!IN_branch[0] || ($signed(IN_uopLd[30-:7] - IN_branch[27-:7]) <= 0))) begin : sv2v_autoblock_12
				reg [$clog2(NUM_ENTRIES) - 1:0] index;
				index = IN_uopLd[9 + $clog2(NUM_ENTRIES):10];
				entries[index][14 + (TAG_SIZE + 38)-:((14 + (TAG_SIZE + 38)) >= (7 + (TAG_SIZE + 39)) ? ((14 + (TAG_SIZE + 38)) - (7 + (TAG_SIZE + 39))) + 1 : ((7 + (TAG_SIZE + 39)) - (14 + (TAG_SIZE + 38))) + 1)] <= IN_uopLd[30-:7];
				entries[index][7 + (TAG_SIZE + 38)-:((7 + (TAG_SIZE + 38)) >= (TAG_SIZE + 39) ? ((7 + (TAG_SIZE + 38)) - (TAG_SIZE + 39)) + 1 : ((TAG_SIZE + 39) - (7 + (TAG_SIZE + 38))) + 1)] <= IN_uopLd[37-:7];
				entries[index][4] <= IN_uopLd[73];
				entries[index][36-:32] <= IN_uopLd[109-:32];
				entries[index][38-:2] <= IN_uopLd[72-:2];
				entries[index][3] <= IN_uopLd[4];
				entries[index][TAG_SIZE + 38-:((TAG_SIZE + 38) >= 39 ? TAG_SIZE + 0 : 40 - (TAG_SIZE + 38))] <= IN_uopLd[16:10 + $clog2(NUM_ENTRIES)];
				entries[index][1] <= !delayLoad;
				entries[index][2] <= nonSpeculative;
				entries[index][0] <= 1;
			end
			if (IN_uopSt[0] && (!IN_branch[0] || ($signed(IN_uopSt[30-:7] - IN_branch[27-:7]) <= 0)))
				if (storeIsConflict) begin
					OUT_branch[0] <= 1;
					OUT_branch[59-:32] <= IN_uopSt[69-:32] + (IN_uopSt[1] ? 2 : 4);
					OUT_branch[27-:7] <= IN_uopSt[30-:7];
					OUT_branch[13-:7] <= IN_uopSt[16-:7] + (IN_uopSt[4] ? 1 : 0);
					OUT_branch[20-:7] <= IN_uopSt[23-:7];
					OUT_branch[5-:5] <= IN_uopSt[9-:5];
					OUT_branch[6] <= 0;
					OUT_branch[61-:2] <= 2'd0;
					OUT_branch[63-:2] <= 2'd0;
				end
			OUT_maxLoadSqN <= (baseIndex + NUM_ENTRIES[6:0]) - 1;
		end
	end
endmodule
module LoadMissQueue (
	clk,
	rst,
	IN_branch,
	IN_ready,
	OUT_full,
	IN_memc,
	IN_ld,
	IN_enqueue,
	OUT_ld,
	IN_dequeue
);
	parameter SIZE = 4;
	input wire clk;
	input wire rst;
	input wire [63:0] IN_branch;
	input wire IN_ready;
	output reg OUT_full;
	input wire [397:0] IN_memc;
	input wire [61:0] IN_ld;
	input wire IN_enqueue;
	output reg [61:0] OUT_ld;
	input wire IN_dequeue;
	reg [62:0] queue [SIZE - 1:0];
	always @(*) begin : sv2v_autoblock_1
		reg [$clog2(SIZE):0] free;
		free = SIZE;
		begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < SIZE; i = i + 1)
				if (queue[i][0])
					free = free - 1;
		end
		OUT_full = free == 0;
	end
	always @(posedge clk)
		if (rst) begin
			begin : sv2v_autoblock_3
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					queue[i][0] <= 0;
			end
			OUT_ld[0] <= 0;
		end
		else begin
			begin : sv2v_autoblock_4
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					if (!((queue[i][4] || !IN_branch[0]) || ($signed(queue[i][12-:7] - IN_branch[27-:7]) <= 0)))
						queue[i][0] <= 0;
			end
			begin : sv2v_autoblock_5
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					if (queue[i][0]) begin
						if (IN_ready)
							queue[i][62] <= 1;
						begin : sv2v_autoblock_6
							integer j;
							for (j = 0; j < 4; j = j + 1)
								if (IN_memc[62 + (j * 84)] && (IN_memc[62 + ((j * 84) + 51)-:26] == queue[i][61:36]))
									queue[i][62] <= IN_memc[62 + ((j * 84) + 1)] && (IN_memc[62 + ((j * 84) + 7)-:5] >= ({1'b0, queue[i][35:32]} - {1'b0, IN_memc[62 + ((j * 84) + 25)-:4]}));
						end
					end
			end
			if (((IN_ld[0] && IN_enqueue) && !OUT_full) && ((IN_ld[4] || !IN_branch[0]) || ($signed(IN_ld[12-:7] - IN_branch[27-:7]) <= 0))) begin : sv2v_autoblock_7
				reg enq;
				enq = 0;
				begin : sv2v_autoblock_8
					integer i;
					for (i = 0; i < SIZE; i = i + 1)
						if (!enq && !queue[i][0]) begin
							enq = 1;
							queue[i][61-:62] <= IN_ld;
							queue[i][3-:2] <= 2'd0;
							queue[i][62] <= 0;
						end
				end
			end
			if (IN_dequeue || !((OUT_ld[4] || !IN_branch[0]) || ($signed(OUT_ld[12-:7] - IN_branch[27-:7]) <= 0))) begin
				OUT_ld <= 1'sbx;
				OUT_ld[0] <= 0;
			end
			if (!OUT_ld[0] || IN_dequeue) begin : sv2v_autoblock_9
				reg deq;
				deq = 0;
				begin : sv2v_autoblock_10
					integer i;
					for (i = 0; i < SIZE; i = i + 1)
						if (((!deq && queue[i][0]) && queue[i][62]) && ((queue[i][4] || !IN_branch[0]) || ($signed(queue[i][12-:7] - IN_branch[27-:7]) <= 0))) begin
							deq = 1;
							OUT_ld <= queue[i][61-:62];
							OUT_ld[3-:2] <= 2'd0;
							queue[i][0] <= 0;
						end
				end
			end
		end
endmodule
module LoadSelector (
	IN_aguLd,
	OUT_aguLdStall,
	IN_pwLd,
	OUT_pwLdStall,
	IN_ldUOpStall,
	OUT_ldUOp
);
	input wire [61:0] IN_aguLd;
	output reg OUT_aguLdStall;
	input wire [32:0] IN_pwLd;
	output reg OUT_pwLdStall;
	input wire IN_ldUOpStall;
	output reg [61:0] OUT_ldUOp;
	always @(*) begin
		OUT_ldUOp = 1'sbx;
		OUT_ldUOp[0] = 0;
		OUT_pwLdStall = 0;
		OUT_aguLdStall = 0;
		if (IN_pwLd[0]) begin
			OUT_ldUOp[61-:32] = IN_pwLd[32-:32];
			OUT_ldUOp[29] = 0;
			OUT_ldUOp[28-:2] = 2;
			OUT_ldUOp[12-:7] = 0;
			OUT_ldUOp[19-:7] = 7'h40;
			OUT_ldUOp[12-:7] = 0;
			OUT_ldUOp[5] = 1;
			OUT_ldUOp[4] = 1;
			OUT_ldUOp[3-:2] = 2'd0;
			OUT_ldUOp[1] = 0;
			OUT_ldUOp[0] = IN_pwLd[0];
			OUT_pwLdStall = IN_aguLd[0] || IN_ldUOpStall;
		end
		if (IN_aguLd[0]) begin
			OUT_ldUOp[61-:32] = IN_aguLd[61-:32];
			OUT_ldUOp[29] = IN_aguLd[29];
			OUT_ldUOp[28-:2] = IN_aguLd[28-:2];
			OUT_ldUOp[26-:7] = IN_aguLd[26-:7];
			OUT_ldUOp[19-:7] = IN_aguLd[19-:7];
			OUT_ldUOp[12-:7] = IN_aguLd[12-:7];
			OUT_ldUOp[5] = IN_aguLd[5];
			OUT_ldUOp[4] = 0;
			OUT_ldUOp[3-:2] = IN_aguLd[3-:2];
			OUT_ldUOp[1] = IN_aguLd[1];
			OUT_ldUOp[0] = IN_aguLd[0];
			OUT_aguLdStall = IN_ldUOpStall;
		end
	end
endmodule
module Load (
	clk,
	rst,
	IN_uop,
	IN_wbHasResult,
	IN_wbUOp,
	IN_invalidate,
	IN_invalidateSqN,
	IN_stall,
	IN_zcFwd,
	OUT_pcReadAddr,
	IN_pcReadData,
	OUT_rfReadAddr,
	IN_rfReadData,
	OUT_uop
);
	parameter NUM_UOPS = 4;
	parameter NUM_WBS = 4;
	parameter NUM_XUS = 8;
	parameter NUM_ZC_FWDS = 2;
	input wire clk;
	input wire rst;
	input wire [(NUM_UOPS * 109) - 1:0] IN_uop;
	input wire [NUM_WBS - 1:0] IN_wbHasResult;
	input wire [(NUM_WBS * 59) - 1:0] IN_wbUOp;
	input wire IN_invalidate;
	input wire [6:0] IN_invalidateSqN;
	input wire [NUM_UOPS - 1:0] IN_stall;
	input wire [(NUM_ZC_FWDS * 40) - 1:0] IN_zcFwd;
	output reg [(NUM_UOPS * 5) - 1:0] OUT_pcReadAddr;
	input wire [(NUM_UOPS * 37) - 1:0] IN_pcReadData;
	output reg [((2 * NUM_UOPS) * 6) - 1:0] OUT_rfReadAddr;
	input wire [((2 * NUM_UOPS) * 32) - 1:0] IN_rfReadData;
	output reg [(NUM_UOPS * 182) - 1:0] OUT_uop;
	always @(*) begin
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_UOPS; i = i + 1)
				begin
					OUT_rfReadAddr[i * 6+:6] = IN_uop[(i * 109) + 62-:6];
					OUT_rfReadAddr[(i + NUM_UOPS) * 6+:6] = IN_uop[(i * 109) + 54-:6];
					OUT_pcReadAddr[i * 5+:5] = IN_uop[(i * 109) + 27-:5];
				end
		end
		OUT_rfReadAddr[(2 + NUM_UOPS) * 6+:6] = 1'sbx;
		OUT_rfReadAddr[(3 + NUM_UOPS) * 6+:6] = 1'sbx;
	end
	wire [3:0] outFU [NUM_UOPS - 1:0];
	reg [181:0] outUOpReg [NUM_UOPS - 1:0];
	reg [1:0] operandIsReg [NUM_UOPS - 1:0];
	function automatic [181:0] sv2v_cast_182;
		input reg [181:0] inp;
		sv2v_cast_182 = inp;
	endfunction
	always @(*) begin : sv2v_autoblock_2
		integer i;
		for (i = 0; i < NUM_UOPS; i = i + 1)
			begin
				OUT_uop[i * 182+:182] = sv2v_cast_182(182'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				if (outUOpReg[i][0]) begin
					OUT_uop[i * 182+:182] = outUOpReg[i];
					if (operandIsReg[i][0])
						OUT_uop[(i * 182) + 181-:32] = IN_rfReadData[i * 32+:32];
					if (operandIsReg[i][1])
						OUT_uop[(i * 182) + 149-:32] = IN_rfReadData[(i + NUM_UOPS) * 32+:32];
				end
			end
	end
	always @(posedge clk)
		if (rst) begin : sv2v_autoblock_3
			integer i;
			for (i = 0; i < NUM_UOPS; i = i + 1)
				begin
					outUOpReg[i] <= 1'sbx;
					outUOpReg[i][0] <= 0;
				end
		end
		else begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < NUM_UOPS; i = i + 1)
				if ((!IN_stall[i] && IN_uop[i * 109]) && (!IN_invalidate || ($signed(IN_uop[(i * 109) + 47-:7] - IN_invalidateSqN) <= 0))) begin
					outUOpReg[i][79-:32] <= IN_uop[(i * 109) + 108-:32];
					if ((((i == 0) || (i == 1)) && (IN_uop[(i * 109) + 5-:4] == 4'd0)) && ((IN_uop[(i * 109) + 33-:6] == 6'd48) || (IN_uop[(i * 109) + 33-:6] == 6'd49))) begin
						outUOpReg[i][79-:32] <= 1'sbx;
						outUOpReg[i][59:48] <= IN_uop[(i * 109) + 76-:12];
					end
					outUOpReg[i][34-:7] <= IN_uop[(i * 109) + 47-:7];
					outUOpReg[i][41-:7] <= IN_uop[(i * 109) + 40-:7];
					outUOpReg[i][27-:5] <= IN_uop[(i * 109) + 27-:5];
					outUOpReg[i][12-:7] <= IN_uop[(i * 109) + 12-:7];
					outUOpReg[i][19-:7] <= IN_uop[(i * 109) + 19-:7];
					outUOpReg[i][1] <= IN_uop[(i * 109) + 1];
					outUOpReg[i][47-:6] <= IN_uop[(i * 109) + 33-:6];
					outUOpReg[i][5-:4] <= IN_uop[(i * 109) + 5-:4];
					outUOpReg[i][0] <= 1;
					outUOpReg[i][117-:32] <= {IN_pcReadData[(i * 37) + 36-:28], IN_uop[(i * 109) + 22-:3], 1'b0} - (IN_uop[(i * 109) + 1] ? 0 : 2);
					outUOpReg[i][85-:3] <= IN_pcReadData[(i * 37) + 8-:3];
					outUOpReg[i][82-:3] <= IN_pcReadData[(i * 37) + 5-:3];
					outUOpReg[i][22-:3] <= IN_pcReadData[(i * 37) + 2-:3];
					if (IN_uop[(i * 109) + 22-:3] != IN_pcReadData[(i * 37) + 5-:3]) begin
						outUOpReg[i][22] <= 0;
						outUOpReg[i][21] <= 0;
						outUOpReg[i][20] <= 0;
					end
					operandIsReg[i] <= 2'b00;
					outUOpReg[i][181-:32] <= 1'sbx;
					if (IN_uop[(i * 109) + 63])
						outUOpReg[i][181-:32] <= {{26 {IN_uop[(i * 109) + 62]}}, IN_uop[(i * 109) + 62-:6]};
					else begin : sv2v_autoblock_5
						reg found;
						found = 0;
						begin : sv2v_autoblock_6
							integer j;
							for (j = 0; j < NUM_WBS; j = j + 1)
								if (IN_wbHasResult[j] && (IN_uop[(i * 109) + 63-:7] == IN_wbUOp[(j * 59) + 19-:7])) begin
									outUOpReg[i][181-:32] <= IN_wbUOp[(j * 59) + 58-:32];
									found = 1;
								end
						end
						begin : sv2v_autoblock_7
							integer j;
							for (j = 0; j < NUM_ZC_FWDS; j = j + 1)
								if (IN_zcFwd[j * 40] && (IN_zcFwd[(j * 40) + 7-:7] == IN_uop[(i * 109) + 63-:7])) begin
									outUOpReg[i][181-:32] <= IN_zcFwd[(j * 40) + 39-:32];
									found = 1;
								end
						end
						if (!found)
							operandIsReg[i][0] <= 1;
					end
					outUOpReg[i][149-:32] <= 1'sbx;
					if ((IN_uop[(i * 109) + 48] || (i == 2)) || (i == 3))
						outUOpReg[i][149-:32] <= IN_uop[(i * 109) + 108-:32];
					else if (IN_uop[(i * 109) + 55])
						outUOpReg[i][149-:32] <= {{26 {IN_uop[(i * 109) + 54]}}, IN_uop[(i * 109) + 54-:6]};
					else begin : sv2v_autoblock_8
						reg found;
						found = 0;
						begin : sv2v_autoblock_9
							integer j;
							for (j = 0; j < NUM_WBS; j = j + 1)
								if (IN_wbHasResult[j] && (IN_uop[(i * 109) + 55-:7] == IN_wbUOp[(j * 59) + 19-:7])) begin
									outUOpReg[i][149-:32] <= IN_wbUOp[(j * 59) + 58-:32];
									found = 1;
								end
						end
						begin : sv2v_autoblock_10
							integer j;
							for (j = 0; j < NUM_ZC_FWDS; j = j + 1)
								if (IN_zcFwd[j * 40] && (IN_zcFwd[(j * 40) + 7-:7] == IN_uop[(i * 109) + 55-:7])) begin
									outUOpReg[i][149-:32] <= IN_zcFwd[(j * 40) + 39-:32];
									found = 1;
								end
						end
						if (!found)
							operandIsReg[i][1] <= 1;
					end
				end
				else if (!IN_stall[i] || ((outUOpReg[i][0] && IN_invalidate) && ($signed(outUOpReg[i][34-:7] - IN_invalidateSqN) > 0))) begin
					outUOpReg[i] <= 1'sbx;
					outUOpReg[i][0] <= 0;
				end
				else if (IN_stall[i]) begin
					if (operandIsReg[i][0])
						outUOpReg[i][181-:32] <= IN_rfReadData[i * 32+:32];
					if (operandIsReg[i][1])
						outUOpReg[i][149-:32] <= IN_rfReadData[(i + NUM_UOPS) * 32+:32];
					operandIsReg[i] <= 2'b00;
				end
		end
endmodule
module LZCnt (
	in,
	out
);
	input wire [31:0] in;
	output reg [5:0] out;
	reg [1:0] s0 [15:0];
	reg [2:0] s1 [7:0];
	reg [3:0] s2 [3:0];
	reg [4:0] s3 [1:0];
	always @(*) begin
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < 16; i = i + 1)
				case (in[2 * i+:2])
					2'b00: s0[15 - i] = 2'b10;
					2'b01: s0[15 - i] = 2'b01;
					2'b10: s0[15 - i] = 2'b00;
					2'b11: s0[15 - i] = 2'b00;
				endcase
		end
		begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < 8; i = i + 1)
				if (s0[(2 * i) + 0][1] && s0[(2 * i) + 1][1])
					s1[i] = 3'b100;
				else if (s0[2 * i][1] == 1'b0)
					s1[i] = {1'b0, s0[2 * i]};
				else
					s1[i] = {2'b01, s0[(2 * i) + 1][0]};
		end
		begin : sv2v_autoblock_3
			integer i;
			for (i = 0; i < 4; i = i + 1)
				if (s1[(2 * i) + 0][2] && s1[(2 * i) + 1][2])
					s2[i] = 4'b1000;
				else if (s1[2 * i][2] == 1'b0)
					s2[i] = {1'b0, s1[2 * i]};
				else
					s2[i] = {2'b01, s1[(2 * i) + 1][1:0]};
		end
		begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < 2; i = i + 1)
				if (s2[(2 * i) + 0][3] && s2[(2 * i) + 1][3])
					s3[i] = 5'b10000;
				else if (s2[2 * i][3] == 1'b0)
					s3[i] = {1'b0, s2[2 * i]};
				else
					s3[i] = {2'b01, s2[(2 * i) + 1][2:0]};
		end
		if (s3[0][4] && s3[1][4])
			out = 6'b100000;
		else if (s3[0][4] == 1'b0)
			out = {1'b0, s3[0]};
		else
			out = {2'b01, s3[1][3:0]};
	end
endmodule
module MemoryController (
	clk,
	rst,
	IN_ctrl,
	OUT_stat,
	OUT_icacheW,
	OUT_dcacheW,
	OUT_dcacheR,
	IN_dcacheR,
	s_axi_awid,
	s_axi_awaddr,
	s_axi_awlen,
	s_axi_awsize,
	s_axi_awburst,
	s_axi_awlock,
	s_axi_awcache,
	s_axi_awvalid,
	s_axi_awready,
	s_axi_wdata,
	s_axi_wstrb,
	s_axi_wlast,
	s_axi_wvalid,
	s_axi_wready,
	s_axi_bready,
	s_axi_bid,
	s_axi_bvalid,
	s_axi_arid,
	s_axi_araddr,
	s_axi_arlen,
	s_axi_arsize,
	s_axi_arburst,
	s_axi_arlock,
	s_axi_arcache,
	s_axi_arvalid,
	s_axi_arready,
	s_axi_rready,
	s_axi_rid,
	s_axi_rdata,
	s_axi_rlast,
	s_axi_rvalid,
	OUT_dbg
);
	parameter NUM_CACHES = 2;
	parameter NUM_TFS_IN = 3;
	parameter ADDR_LEN = 32;
	parameter WIDTH = 128;
	input wire clk;
	input wire rst;
	input wire [(NUM_TFS_IN * 113) - 1:0] IN_ctrl;
	output reg [397:0] OUT_stat;
	output wire [141:0] OUT_icacheW;
	output wire [157:0] OUT_dcacheW;
	output wire [157:0] OUT_dcacheR;
	input wire [127:0] IN_dcacheR;
	output wire [1:0] s_axi_awid;
	output wire [ADDR_LEN - 1:0] s_axi_awaddr;
	output wire [7:0] s_axi_awlen;
	output wire [2:0] s_axi_awsize;
	output wire [1:0] s_axi_awburst;
	output wire [0:0] s_axi_awlock;
	output wire [3:0] s_axi_awcache;
	output wire s_axi_awvalid;
	input wire s_axi_awready;
	output reg [WIDTH - 1:0] s_axi_wdata;
	output reg [(WIDTH / 8) - 1:0] s_axi_wstrb;
	output reg s_axi_wlast;
	output reg s_axi_wvalid;
	input wire s_axi_wready;
	output wire s_axi_bready;
	input wire [1:0] s_axi_bid;
	input wire s_axi_bvalid;
	output wire [1:0] s_axi_arid;
	output wire [ADDR_LEN - 1:0] s_axi_araddr;
	output wire [7:0] s_axi_arlen;
	output wire [2:0] s_axi_arsize;
	output wire [1:0] s_axi_arburst;
	output wire [0:0] s_axi_arlock;
	output wire [3:0] s_axi_arcache;
	output wire s_axi_arvalid;
	input wire s_axi_arready;
	output wire s_axi_rready;
	input wire [1:0] s_axi_rid;
	input wire [WIDTH - 1:0] s_axi_rdata;
	input wire s_axi_rlast;
	input wire s_axi_rvalid;
	output reg [15:0] OUT_dbg;
	localparam WIDTH_W_ = WIDTH / 32;
	localparam WIDTH_W = WIDTH_W_[4:0];
	reg [101:0] transfers [3:0];
	reg [3:0] isMMIO;
	always @(*) begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < 4; i = i + 1)
			case (transfers[i][4-:4])
				4'd4, 4'd5, 4'd6, 4'd7, 4'd8, 4'd9: isMMIO[i] = transfers[i][0];
				default: isMMIO[i] = 0;
			endcase
	end
	reg [44:0] sglLdRes;
	reg [12:0] sglStRes;
	reg [1:0] enqIdx;
	reg enqIdxValid;
	always @(*) begin
		enqIdx = 1'sbx;
		enqIdxValid = 0;
		begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < 4; i = i + 1)
				if (!enqIdxValid && !transfers[i][0]) begin
					enqIdx = i[1:0];
					enqIdxValid = 1;
				end
		end
	end
	function IsCacheOp;
		input reg [3:0] cmd;
		IsCacheOp = ((cmd == 4'd1) || (cmd == 4'd2)) || (cmd == 4'd3);
	endfunction
	reg [112:0] selReq;
	always @(*) begin : sv2v_autoblock_3
		reg cacheAddrColl;
		cacheAddrColl = 1'sbx;
		OUT_stat[3-:3] = {NUM_TFS_IN {1'b1}};
		selReq = 1'sbx;
		selReq[112-:4] = 4'd0;
		if (enqIdxValid) begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < NUM_TFS_IN; i = i + 1)
				if ((selReq[112-:4] == 4'd0) && (IN_ctrl[(i * 113) + 112-:4] != 4'd0)) begin
					cacheAddrColl = 0;
					begin : sv2v_autoblock_5
						integer j;
						for (j = 0; j < 4; j = j + 1)
							cacheAddrColl = cacheAddrColl | ((((transfers[j][0] && IsCacheOp(IN_ctrl[(i * 113) + 112-:4])) && IsCacheOp(transfers[j][4-:4])) && (IN_ctrl[i * 113] == transfers[j][5])) && (IN_ctrl[(i * 113) + 76-:8] == transfers[j][86:79]));
					end
					if (!cacheAddrColl) begin
						selReq = IN_ctrl[i * 113+:113];
						OUT_stat[3-:3] = ~(1 << i);
					end
				end
		end
	end
	reg [(2 + ADDR_LEN) + 18:0] axiAR;
	wire arFIFO_outValid;
	wire arFIFO_ready;
	FIFO #(
		.WIDTH((((2 + ADDR_LEN) + 18) >= 0 ? (2 + ADDR_LEN) + 19 : 1 - ((2 + ADDR_LEN) + 18))),
		.NUM(4),
		.FORWARD1(1),
		.FORWARD0(1)
	) arFIFO(
		.clk(clk),
		.rst(rst),
		.IN_valid(axiAR[0]),
		.IN_data(axiAR),
		.OUT_ready(arFIFO_ready),
		.OUT_valid(arFIFO_outValid),
		.IN_ready(s_axi_arready),
		.OUT_data({s_axi_arid, s_axi_araddr, s_axi_arlen, s_axi_arsize, s_axi_arburst, s_axi_arlock, s_axi_arcache, s_axi_arvalid})
	);
	reg [1:0] arIdx;
	reg arIdxValid;
	wire readReqSuccess = axiAR[0] && arFIFO_ready;
	function automatic signed [2:0] sv2v_cast_3_signed;
		input reg signed [2:0] inp;
		sv2v_cast_3_signed = inp;
	endfunction
	always @(*) begin
		axiAR = 1'sbx;
		axiAR[0] = 0;
		arIdx = 1'sbx;
		arIdxValid = 0;
		begin : sv2v_autoblock_6
			integer i;
			for (i = 0; i < 4; i = i + 1)
				if ((!arIdxValid && transfers[i][0]) && transfers[i][10]) begin
					arIdx = i[1:0];
					arIdxValid = 1;
				end
		end
		if (arIdxValid) begin
			axiAR[0] = 1;
			axiAR[7-:2] = (isMMIO[arIdx] ? 2'd0 : 2'd2);
			axiAR[18-:8] = (isMMIO[arIdx] ? 0 : 3);
			axiAR[ADDR_LEN + 18-:((ADDR_LEN + 18) >= 19 ? ADDR_LEN + 0 : 20 - (ADDR_LEN + 18))] = transfers[arIdx][74-:32];
			axiAR[2 + (ADDR_LEN + 18)-:((2 + (ADDR_LEN + 18)) >= (ADDR_LEN + 19) ? ((2 + (ADDR_LEN + 18)) - (ADDR_LEN + 19)) + 1 : ((ADDR_LEN + 19) - (2 + (ADDR_LEN + 18))) + 1)] = arIdx;
			case (transfers[arIdx][4-:4])
				4'd4: axiAR[10-:3] = 0;
				4'd5: axiAR[10-:3] = 1;
				4'd6: axiAR[10-:3] = 2;
				default: axiAR[10-:3] = sv2v_cast_3_signed($clog2(WIDTH / 8));
			endcase
		end
	end
	always @(*) begin
		OUT_stat[0] = 1;
		begin : sv2v_autoblock_7
			integer i;
			for (i = 0; i < 4; i = i + 1)
				begin
					OUT_stat[62 + (i * 84)+:84] = 1'sbx;
					OUT_stat[62 + (i * 84)] = 0;
					if (transfers[i][0] && !isMMIO[i]) begin
						OUT_stat[62 + (i * 84)] = 1;
						OUT_stat[62 + ((i * 84) + 2)] = transfers[i][5];
						OUT_stat[62 + ((i * 84) + 7)-:5] = transfers[i][96:92];
						OUT_stat[62 + ((i * 84) + 19)-:12] = transfers[i][86-:12];
						OUT_stat[62 + ((i * 84) + 83)-:32] = transfers[i][42-:32];
						OUT_stat[62 + ((i * 84) + 51)-:32] = transfers[i][74-:32];
						OUT_stat[62 + ((i * 84) + 1)] = ((transfers[i][10] == 0) && (transfers[i][9-:2] == 0)) && (transfers[i][101-:5] != 0);
					end
				end
		end
		OUT_stat[61-:45] = sglLdRes;
		OUT_stat[16-:13] = sglStRes;
	end
	always @(*) begin : sv2v_autoblock_8
		integer i;
		for (i = 0; i < 4; i = i + 1)
			begin
				OUT_dbg[12 + i] = transfers[i][0];
				OUT_dbg[8 + i] = transfers[i][96];
				OUT_dbg[4 + i] = transfers[i][101];
				OUT_dbg[0 + i] = isMMIO[i];
			end
	end
	wire ICW_ready;
	reg ICW_valid;
	reg [11:0] ICW_addr;
	reg [127:0] ICW_data;
	reg [1:0] ICW_id;
	wire ICW_ackValid;
	wire [1:0] ICW_ackId;
	CacheWriteInterface #(
		.ADDR_BITS(12),
		.LEN_BITS(8),
		.IWIDTH(WIDTH),
		.CWIDTH(128),
		.ID_LEN(2)
	) icacheWriteIF(
		.clk(clk),
		.rst(rst),
		.OUT_ready(ICW_ready),
		.IN_valid(ICW_valid),
		.IN_addr(ICW_addr),
		.IN_data(ICW_data),
		.IN_id(ICW_id),
		.OUT_ackValid(ICW_ackValid),
		.OUT_ackId(ICW_ackId),
		.IN_CACHE_ready(1'b1),
		.OUT_CACHE_ce(OUT_icacheW[141]),
		.OUT_CACHE_we(OUT_icacheW[140]),
		.OUT_CACHE_addr(OUT_icacheW[139-:12]),
		.OUT_CACHE_data(OUT_icacheW[127-:128])
	);
	wire DCW_ready;
	reg DCW_valid;
	reg [11:0] DCW_addr;
	reg [127:0] DCW_data;
	reg [1:0] DCW_id;
	wire DCW_ackValid;
	wire [1:0] DCW_ackId;
	wire DCW_CACHE_ready;
	wire DCW_CACHE_ce;
	wire DCW_CACHE_we;
	wire [11:0] DCW_CACHE_addr;
	CacheWriteInterface #(
		.ADDR_BITS(12),
		.LEN_BITS(8),
		.IWIDTH(WIDTH),
		.CWIDTH(128),
		.ID_LEN(2)
	) dcacheWriteIF(
		.clk(clk),
		.rst(rst),
		.OUT_ready(DCW_ready),
		.IN_valid(DCW_valid),
		.IN_addr(DCW_addr),
		.IN_data(DCW_data),
		.IN_id(DCW_id),
		.OUT_ackValid(DCW_ackValid),
		.OUT_ackId(DCW_ackId),
		.IN_CACHE_ready(1'b1),
		.OUT_CACHE_ce(OUT_dcacheW[157]),
		.OUT_CACHE_we(OUT_dcacheW[156]),
		.OUT_CACHE_addr(OUT_dcacheW[139-:12]),
		.OUT_CACHE_data(OUT_dcacheW[127-:128])
	);
	assign OUT_dcacheW[155-:16] = 1'sb1;
	assign OUT_dcacheR[155-:16] = 1'sb0;
	assign OUT_dcacheR[127-:128] = 1'sbx;
	function [11:0] GetCacheRdAddr;
		input reg [101:0] t;
		case (t[4-:4])
			4'd1, 4'd3: GetCacheRdAddr = {t[86:79], t[78:75] + t[90:87]};
			default: GetCacheRdAddr = t[86-:12];
		endcase
	endfunction
	localparam R_LEN = (2 + WIDTH) + 1;
	wire [1:0] buf_rid;
	wire [WIDTH - 1:0] buf_rdata;
	wire buf_rlast;
	wire buf_rvalid;
	reg buf_rready;
	FIFO #(
		.WIDTH(R_LEN),
		.NUM(32),
		.FORWARD1(1),
		.FORWARD0(1)
	) rFIFO(
		.clk(clk),
		.rst(rst),
		.IN_valid(s_axi_rvalid),
		.IN_data({s_axi_rid, s_axi_rdata, s_axi_rlast}),
		.OUT_ready(s_axi_rready),
		.OUT_valid(buf_rvalid),
		.IN_ready(buf_rready),
		.OUT_data({buf_rid, buf_rdata, buf_rlast})
	);
	always @(*) begin
		buf_rready = 0;
		ICW_valid = 0;
		ICW_addr = 1'sbx;
		ICW_data = 1'sbx;
		ICW_id = 1'sbx;
		DCW_valid = 0;
		DCW_addr = 1'sbx;
		DCW_data = 1'sbx;
		DCW_id = 1'sbx;
		if (buf_rvalid)
			if (isMMIO[buf_rid])
				buf_rready = 1;
			else begin : sv2v_autoblock_9
				reg [0:0] cID;
				cID = transfers[buf_rid][5];
				case (cID)
					0:
						if (DCW_ready && (transfers[buf_rid][101-:5] > transfers[buf_rid][91-:5])) begin
							buf_rready = 1;
							DCW_valid = 1;
							DCW_addr = GetCacheRdAddr(transfers[buf_rid]);
							DCW_data = buf_rdata;
							DCW_id = buf_rid;
						end
					1:
						if (ICW_ready) begin
							buf_rready = 1;
							ICW_valid = 1;
							ICW_addr = GetCacheRdAddr(transfers[buf_rid]);
							ICW_data = buf_rdata;
							ICW_id = buf_rid;
						end
				endcase
			end
	end
	wire DCR_reqReady;
	reg DCR_reqValid;
	reg [1:0] DCR_reqTId;
	reg [7:0] DCR_reqLen;
	reg [11:0] DCR_reqAddr;
	reg DCR_reqMMIO;
	reg [31:0] DCR_reqMMIOData;
	wire DCR_dataReady;
	wire DCR_dataValid;
	wire [WIDTH - 1:0] DCR_data;
	wire DCR_dataLast;
	wire [1:0] DCR_dataTId;
	wire DCR_CACHE_ready;
	wire DCR_CACHE_ce;
	wire DCR_CACHE_we;
	wire [11:0] DCR_CACHE_addr;
	wire DCR_cacheReadValid;
	wire [1:0] DCR_cacheReadId;
	CacheReadInterface #(
		.ADDR_BITS(12),
		.LEN_BITS(8),
		.IWIDTH(128),
		.CWIDTH(128),
		.BUF_LEN(32),
		.ID_LEN(2)
	) dcacheReadIF(
		.clk(clk),
		.rst(rst),
		.OUT_ready(DCR_reqReady),
		.IN_valid(DCR_reqValid),
		.IN_id(DCR_reqTId),
		.IN_len(DCR_reqLen),
		.IN_addr(DCR_reqAddr),
		.IN_mmio(DCR_reqMMIO),
		.IN_mmioData(DCR_reqMMIOData),
		.IN_ready(DCR_dataReady),
		.OUT_valid(DCR_dataValid),
		.OUT_id(DCR_dataTId),
		.OUT_data(DCR_data),
		.OUT_last(DCR_dataLast),
		.IN_CACHE_ready(1'b1),
		.OUT_CACHE_ce(OUT_dcacheR[157]),
		.OUT_CACHE_we(OUT_dcacheR[156]),
		.OUT_CACHE_addr(OUT_dcacheR[139-:12]),
		.IN_CACHE_data(IN_dcacheR),
		.OUT_cacheReadValid(DCR_cacheReadValid),
		.OUT_cacheReadId(DCR_cacheReadId)
	);
	reg [(2 + ADDR_LEN) + 18:0] axiAW;
	wire awFIFO_outValid;
	wire awFIFO_ready;
	FIFO #(
		.WIDTH((((2 + ADDR_LEN) + 18) >= 0 ? (2 + ADDR_LEN) + 19 : 1 - ((2 + ADDR_LEN) + 18))),
		.NUM(4),
		.FORWARD1(1),
		.FORWARD0(1)
	) awFIFO(
		.clk(clk),
		.rst(rst),
		.IN_valid(axiAW[0]),
		.IN_data(axiAW),
		.OUT_ready(awFIFO_ready),
		.OUT_valid(awFIFO_outValid),
		.IN_ready(s_axi_awready),
		.OUT_data({s_axi_awid, s_axi_awaddr, s_axi_awlen, s_axi_awsize, s_axi_awburst, s_axi_awlock, s_axi_awcache, s_axi_awvalid})
	);
	reg [1:0] awIdx;
	reg awIdxValid;
	always @(*) begin : sv2v_autoblock_10
		reg isExclusive;
		isExclusive = 0;
		axiAW = 1'sbx;
		axiAW[0] = 0;
		DCR_reqAddr = 1'sbx;
		DCR_reqLen = 1'sbx;
		DCR_reqTId = 1'sbx;
		DCR_reqMMIOData = 1'sbx;
		DCR_reqMMIO = 0;
		DCR_reqValid = 0;
		awIdx = 1'sbx;
		awIdxValid = 0;
		begin : sv2v_autoblock_11
			integer i;
			for (i = 0; i < 4; i = i + 1)
				if (transfers[i][0] && (transfers[i][9-:2] != 0))
					if (!isExclusive) begin
						isExclusive = transfers[i][9-:2] != 2'b11;
						awIdx = i[1:0];
						awIdxValid = 1;
					end
		end
		if (awIdxValid && transfers[awIdx][9]) begin
			axiAW[0] = 1;
			axiAW[7-:2] = (isMMIO[awIdx] ? 2'd0 : 2'd2);
			axiAW[18-:8] = (isMMIO[awIdx] ? 0 : (1 << (6 - $clog2(WIDTH / 8))) - 1);
			axiAW[ADDR_LEN + 18-:((ADDR_LEN + 18) >= 19 ? ADDR_LEN + 0 : 20 - (ADDR_LEN + 18))] = transfers[awIdx][42-:32];
			axiAW[2 + (ADDR_LEN + 18)-:((2 + (ADDR_LEN + 18)) >= (ADDR_LEN + 19) ? ((2 + (ADDR_LEN + 18)) - (ADDR_LEN + 19)) + 1 : ((ADDR_LEN + 19) - (2 + (ADDR_LEN + 18))) + 1)] = awIdx;
			case (transfers[awIdx][4-:4])
				4'd7: axiAW[10-:3] = 0;
				4'd8: axiAW[10-:3] = 1;
				4'd9: axiAW[10-:3] = 2;
				default: axiAW[10-:3] = sv2v_cast_3_signed($clog2(WIDTH / 8));
			endcase
		end
		if (awIdxValid && transfers[awIdx][8]) begin
			DCR_reqValid = 1;
			DCR_reqTId = awIdx;
			DCR_reqLen = (isMMIO[awIdx] ? 0 : 15);
			DCR_reqAddr = (isMMIO[awIdx] ? {12 {1'sbx}} : transfers[awIdx][86-:12]);
			DCR_reqMMIO = isMMIO[awIdx];
			DCR_reqMMIOData = (isMMIO[awIdx] ? transfers[awIdx][74-:32] : {32 {1'sbx}});
		end
	end
	always @(*) begin
		s_axi_wdata = 1'sbx;
		s_axi_wstrb = 1'sbx;
		s_axi_wlast = 1'sbx;
		s_axi_wvalid = 0;
		if (DCR_dataValid) begin
			s_axi_wvalid = 1;
			s_axi_wlast = DCR_dataLast;
			s_axi_wstrb = 1'sb1;
			s_axi_wdata = DCR_data;
		end
	end
	assign DCR_dataReady = s_axi_wready;
	assign s_axi_bready = 1;
	function automatic [12:0] sv2v_cast_13;
		input reg [12:0] inp;
		sv2v_cast_13 = inp;
	endfunction
	function automatic [44:0] sv2v_cast_45;
		input reg [44:0] inp;
		sv2v_cast_45 = inp;
	endfunction
	always @(posedge clk) begin
		sglStRes <= sv2v_cast_13(13'bxxxxxxxxxxxx0);
		sglLdRes <= sv2v_cast_45(45'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		if (rst) begin : sv2v_autoblock_12
			integer i;
			for (i = 0; i < 4; i = i + 1)
				begin
					transfers[i] <= 1'sbx;
					transfers[i][0] <= 0;
				end
		end
		else begin
			begin : sv2v_autoblock_13
				integer i;
				for (i = 0; i < 4; i = i + 1)
					if ((transfers[i][0] && transfers[i][7]) && transfers[i][6]) begin
						transfers[i] <= 1'sbx;
						transfers[i][0] <= 0;
					end
			end
			if (selReq[112-:4] != 4'd0) begin
				transfers[enqIdx][0] <= 1;
				transfers[enqIdx][4-:4] <= selReq[112-:4];
				transfers[enqIdx][10] <= 1'sb0;
				transfers[enqIdx][9-:2] <= 1'sb0;
				transfers[enqIdx][96-:5] <= 0;
				transfers[enqIdx][91-:5] <= 0;
				transfers[enqIdx][101-:5] <= 16;
				transfers[enqIdx][5] <= selReq[0];
				transfers[enqIdx][7] <= 1;
				transfers[enqIdx][6] <= 1;
				if (((selReq[112-:4] == 4'd1) || (selReq[112-:4] == 4'd2)) || (selReq[112-:4] == 4'd3)) begin
					transfers[enqIdx][42-:32] <= selReq[32-:32] & ~((WIDTH / 8) - 1);
					transfers[enqIdx][74-:32] <= selReq[64-:32] & ~((WIDTH / 8) - 1);
					transfers[enqIdx][86-:12] <= selReq[76-:12] & ~(((WIDTH / 8) - 1) >> 2);
				end
				else begin
					transfers[enqIdx][42-:32] <= selReq[32-:32];
					transfers[enqIdx][74-:32] <= selReq[64-:32];
					transfers[enqIdx][86-:12] <= selReq[76-:12];
				end
				case (selReq[112-:4])
					4'd1: begin
						transfers[enqIdx][10] <= 1'sb1;
						transfers[enqIdx][9-:2] <= 2'b11;
						transfers[enqIdx][101-:5] <= 0;
						transfers[enqIdx][7] <= 0;
						transfers[enqIdx][6] <= 0;
					end
					4'd3: begin
						transfers[enqIdx][10] <= 1'sb1;
						transfers[enqIdx][7] <= 0;
					end
					4'd2: begin
						transfers[enqIdx][9-:2] <= 2'b11;
						transfers[enqIdx][6] <= 0;
						transfers[enqIdx][101-:5] <= 0;
					end
					4'd4, 4'd5, 4'd6: begin
						transfers[enqIdx][10] <= 1'sb1;
						transfers[enqIdx][7] <= 0;
					end
					4'd7, 4'd8, 4'd9: begin
						transfers[enqIdx][9-:2] <= 2'b11;
						transfers[enqIdx][6] <= 0;
						transfers[enqIdx][74-:32] <= selReq[108-:32];
					end
					default:
						;
				endcase
			end
			if (readReqSuccess)
				transfers[arIdx][10] <= 0;
			if (buf_rvalid && buf_rready) begin
				transfers[buf_rid][91-:5] <= transfers[buf_rid][91-:5] + WIDTH_W;
				if (isMMIO[buf_rid]) begin
					transfers[buf_rid] <= 1'sbx;
					transfers[buf_rid][0] <= 0;
					sglLdRes[0] <= 1;
					sglLdRes[12-:12] <= transfers[buf_rid][86-:12];
					sglLdRes[44-:32] <= buf_rdata[31:0];
				end
			end
			if (DCW_ackValid) begin
				transfers[DCW_ackId][96-:5] <= transfers[DCW_ackId][96-:5] + WIDTH_W;
				if ((transfers[DCW_ackId][96-:5] >> 2) == 3) begin
					transfers[DCW_ackId][7] <= 1;
					if (transfers[DCW_ackId][6]) begin
						transfers[DCW_ackId] <= 1'sbx;
						transfers[DCW_ackId][0] <= 0;
					end
				end
			end
			if (ICW_ackValid) begin
				transfers[ICW_ackId][96-:5] <= transfers[ICW_ackId][96-:5] + WIDTH_W;
				if ((transfers[ICW_ackId][96-:5] >> 2) == 3) begin
					transfers[ICW_ackId][7] <= 1;
					if (transfers[ICW_ackId][6]) begin
						transfers[ICW_ackId] <= 1'sbx;
						transfers[ICW_ackId][0] <= 0;
					end
				end
			end
			if (awIdxValid) begin
				if (DCR_reqValid && DCR_reqReady)
					transfers[awIdx][8] <= 0;
				if (axiAW[0] && awFIFO_ready)
					transfers[awIdx][9] <= 0;
			end
			if (DCR_cacheReadValid)
				transfers[DCR_cacheReadId][101-:5] <= transfers[DCR_cacheReadId][101-:5] + WIDTH_W;
			if (s_axi_bvalid) begin
				if (isMMIO[s_axi_bid]) begin
					sglStRes[0] <= 1;
					sglStRes[12-:12] <= transfers[s_axi_bid][86-:12];
				end
				transfers[s_axi_bid][6] <= 1;
				if (transfers[s_axi_bid][7]) begin
					transfers[s_axi_bid] <= 1'sbx;
					transfers[s_axi_bid][0] <= 0;
				end
			end
		end
	end
endmodule
module MemoryInterface (
	clk,
	rst,
	IN_en,
	IN_write,
	IN_len,
	IN_addr,
	OUT_busy,
	OUT_advance,
	IN_data,
	OUT_data,
	OUT_EXT_oen,
	OUT_EXT_en,
	OUT_EXT_bus,
	IN_EXT_stall,
	IN_EXT_bus
);
	parameter LEN_BITS = 8;
	input wire clk;
	input wire rst;
	input wire IN_en;
	input wire IN_write;
	input wire [LEN_BITS - 1:0] IN_len;
	input wire [29:0] IN_addr;
	output wire OUT_busy;
	output reg OUT_advance;
	input wire [31:0] IN_data;
	output reg [31:0] OUT_data;
	output reg OUT_EXT_oen;
	output reg OUT_EXT_en;
	output reg [31:0] OUT_EXT_bus;
	input wire IN_EXT_stall;
	input wire [31:0] IN_EXT_bus;
	reg active;
	reg isWrite;
	reg [LEN_BITS - 1:0] lenCnt;
	reg [2:0] waitCycles;
	reg [29:0] addr;
	assign OUT_busy = active;
	always @(posedge clk) begin
		OUT_EXT_en <= 0;
		OUT_advance <= 0;
		OUT_data <= 1'sbx;
		if (rst) begin
			OUT_EXT_oen <= 1;
			active <= 0;
		end
		else if (!active && IN_en) begin
			if (!IN_write) begin
				OUT_EXT_en <= 1;
				OUT_EXT_oen <= 1;
				OUT_EXT_bus <= {IN_write, IN_len == 128, IN_addr};
			end
			lenCnt <= IN_len;
			isWrite <= IN_write;
			addr <= IN_addr;
			active <= 1;
			if (IN_write)
				waitCycles <= 2;
			else
				waitCycles <= 1;
		end
		else if (active) begin
			if (isWrite) begin
				if (waitCycles <= 1)
					OUT_EXT_en <= 1;
				if (waitCycles == 1) begin
					OUT_EXT_oen <= 1;
					OUT_EXT_bus <= {isWrite, IN_len == 128, addr};
					OUT_advance <= 1;
				end
			end
			if (!isWrite)
				OUT_EXT_en <= 1;
			if (waitCycles != 0) begin
				waitCycles <= waitCycles - 1;
				if (waitCycles == 1) begin
					OUT_EXT_oen <= isWrite;
					if ((lenCnt <= 2) && !isWrite)
						OUT_EXT_en <= 0;
				end
			end
			else if (isWrite) begin
				OUT_advance <= !IN_EXT_stall;
				if (OUT_advance) begin
					OUT_EXT_bus <= IN_data;
					if (lenCnt == 1)
						active <= 0;
					else
						lenCnt <= lenCnt - 1;
				end
			end
			else if (!IN_EXT_stall) begin
				OUT_advance <= 1;
				OUT_data <= IN_EXT_bus;
				if (lenCnt <= 2)
					OUT_EXT_en <= 0;
				if (lenCnt == 1) begin
					active <= 0;
					OUT_EXT_oen <= 1;
				end
				else
					lenCnt <= lenCnt - 1;
			end
		end
	end
endmodule
module MemRTL (
	clk,
	IN_nce,
	IN_nwe,
	IN_addr,
	IN_data,
	IN_wm,
	OUT_data,
	IN_nce1,
	IN_addr1,
	OUT_data1
);
	parameter WORD_SIZE = 256;
	parameter NUM_WORDS = 128;
	parameter WRITE_SIZE = 8;
	input wire clk;
	input wire IN_nce;
	input wire IN_nwe;
	input wire [$clog2(NUM_WORDS) - 1:0] IN_addr;
	input wire [WORD_SIZE - 1:0] IN_data;
	input wire [(WORD_SIZE / WRITE_SIZE) - 1:0] IN_wm;
	output reg [WORD_SIZE - 1:0] OUT_data;
	input wire IN_nce1;
	input wire [$clog2(NUM_WORDS) - 1:0] IN_addr1;
	output reg [WORD_SIZE - 1:0] OUT_data1;
	(* ram_style = "block" *) reg [WORD_SIZE - 1:0] mem [NUM_WORDS - 1:0];
	reg ce_reg = 1;
	reg ce1_reg = 1;
	reg we_reg;
	reg [$clog2(NUM_WORDS) - 1:0] addr_reg;
	reg [$clog2(NUM_WORDS) - 1:0] addr1_reg;
	reg [WORD_SIZE - 1:0] data_reg;
	reg [(WORD_SIZE / WRITE_SIZE) - 1:0] wm_reg;
	reg dbgMultiple;
	initial begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < NUM_WORDS; i = i + 1)
			mem[i] = 0;
	end
	always @(posedge clk) begin
		dbgMultiple <= 0;
		ce_reg <= IN_nce;
		ce1_reg <= IN_nce1;
		we_reg <= IN_nwe;
		addr_reg <= IN_addr;
		addr1_reg <= IN_addr1;
		data_reg <= IN_data;
		wm_reg <= IN_wm;
		if (!ce_reg)
			if (!we_reg) begin : sv2v_autoblock_2
				integer i;
				for (i = 0; i < (WORD_SIZE / WRITE_SIZE); i = i + 1)
					if (wm_reg[i])
						mem[addr_reg][WRITE_SIZE * i+:WRITE_SIZE] <= data_reg[WRITE_SIZE * i+:WRITE_SIZE];
			end
			else
				OUT_data <= mem[addr_reg];
		if (!ce1_reg)
			OUT_data1 <= mem[addr1_reg];
		if (((!ce1_reg && !ce_reg) && (addr1_reg == addr_reg)) && !we_reg) begin : sv2v_autoblock_3
			integer i;
			for (i = 0; i < (WORD_SIZE / WRITE_SIZE); i = i + 1)
				if (wm_reg[i])
					OUT_data1[WRITE_SIZE * i+:WRITE_SIZE] <= data_reg[WRITE_SIZE * i+:WRITE_SIZE];
		end
	end
endmodule
module Multiply (
	clk,
	rst,
	en,
	OUT_busy,
	IN_branch,
	IN_uop,
	OUT_uop
);
	parameter NUM_STAGES = 2;
	parameter BITS = 32 / NUM_STAGES;
	input wire clk;
	input wire rst;
	input wire en;
	output wire OUT_busy;
	input wire [63:0] IN_branch;
	input wire [181:0] IN_uop;
	output reg [58:0] OUT_uop;
	reg [149:0] pl [NUM_STAGES:0];
	assign OUT_busy = 0;
	always @(posedge clk) begin
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < (NUM_STAGES + 1); i = i + 1)
				begin
					pl[i] <= 1'sbx;
					pl[i][0] <= 0;
				end
		end
		OUT_uop <= 1'sbx;
		OUT_uop[0] <= 0;
		if (!rst) begin
			if ((en && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[34-:7] - IN_branch[27-:7]) <= 0))) begin
				pl[0][0] <= 1;
				pl[0][19-:7] <= IN_uop[41-:7];
				pl[0][7-:7] <= IN_uop[34-:7];
				pl[0][85-:64] <= 0;
				case (IN_uop[47-:6])
					6'd1: begin
						pl[0][21] <= IN_uop[181] ^ IN_uop[149];
						pl[0][149-:32] <= (IN_uop[181] ? -IN_uop[181-:32] : IN_uop[181-:32]);
						pl[0][117-:32] <= (IN_uop[149] ? -IN_uop[149-:32] : IN_uop[149-:32]);
					end
					6'd2: begin
						pl[0][21] <= IN_uop[181];
						pl[0][149-:32] <= (IN_uop[181] ? -IN_uop[181-:32] : IN_uop[181-:32]);
						pl[0][117-:32] <= IN_uop[149-:32];
					end
					6'd0, 6'd3: begin
						pl[0][21] <= 0;
						pl[0][149-:32] <= IN_uop[181-:32];
						pl[0][117-:32] <= IN_uop[149-:32];
					end
					default:
						;
				endcase
				pl[0][20] <= IN_uop[47-:6] != 6'd0;
			end
			else
				pl[0][0] <= 0;
			begin : sv2v_autoblock_2
				integer i;
				for (i = 0; i < NUM_STAGES; i = i + 1)
					if (pl[i][0] && (!IN_branch[0] || ($signed(pl[i][7-:7] - IN_branch[27-:7]) <= 0))) begin
						pl[i + 1] <= pl[i];
						pl[i + 1][85-:64] <= pl[i][85-:64] + ((pl[i][149-:32] * pl[i][86 + (BITS * i)+:BITS]) << (BITS * i));
					end
					else
						pl[i + 1][0] <= 0;
			end
			if (pl[NUM_STAGES][0] && (!IN_branch[0] || ($signed(pl[NUM_STAGES][7-:7] - IN_branch[27-:7]) <= 0))) begin
				OUT_uop[0] <= 1;
				OUT_uop[26-:7] <= 1'sbx;
				OUT_uop[19-:7] <= pl[NUM_STAGES][19-:7];
				OUT_uop[12-:7] <= pl[NUM_STAGES][7-:7];
				OUT_uop[5-:4] <= 4'd0;
				OUT_uop[1] <= 0;
				if (pl[NUM_STAGES][20])
					OUT_uop[58-:32] <= (pl[NUM_STAGES][21] ? ~pl[NUM_STAGES][85:54] + (pl[NUM_STAGES][53:22] == 0 ? 1 : 0) : pl[NUM_STAGES][85:54]);
				else
					OUT_uop[58-:32] <= pl[NUM_STAGES][53:22];
			end
		end
	end
endmodule
module PageWalker (
	clk,
	rst,
	IN_rqs,
	OUT_res,
	IN_ldStall,
	OUT_ldUOp,
	IN_ldAck,
	IN_ldResUOp
);
	parameter NUM_RQS = 3;
	input wire clk;
	input wire rst;
	input wire [(NUM_RQS * 55) - 1:0] IN_rqs;
	output reg [52:0] OUT_res;
	input wire IN_ldStall;
	output reg [32:0] OUT_ldUOp;
	input wire [9:0] IN_ldAck;
	input wire [58:0] IN_ldResUOp;
	reg [0:0] pageWalkIter;
	reg [31:0] pageWalkAddr;
	reg [1:0] rqID;
	reg [1:0] state;
	wire [31:0] nextLookup = {IN_ldResUOp[56:37], pageWalkAddr[21:12], 2'b00};
	wire ldResValid = ((IN_ldResUOp[0] && IN_ldResUOp[1]) && (IN_ldResUOp[12-:7] == 0)) && (IN_ldResUOp[19-:7] == 7'h40);
	reg pageFault_c;
	reg isSuperPage_c;
	reg [21:0] ppn_c;
	reg [2:0] rwx_c;
	reg [3:0] dagu_c;
	always @(*) begin : sv2v_autoblock_1
		reg [31:0] pte;
		pte = IN_ldResUOp[58-:32];
		isSuperPage_c = pageWalkIter;
		pageFault_c = 0;
		ppn_c = pte[31:10];
		rwx_c = 1'sbx;
		dagu_c = 1'sbx;
		if (!pte[0] || !pte[6])
			pageFault_c = 1;
		if (isSuperPage_c && (pte[19:10] != 0))
			pageFault_c = 1;
		case (pte[3:1])
			default:
				;
			3'b000, 3'b010, 3'b110: pageFault_c = 1;
		endcase
		if (!pageFault_c) begin
			rwx_c = {pte[1], pte[2] && pte[7], pte[3]};
			dagu_c = pte[7:4];
		end
	end
	always @(posedge clk) begin
		OUT_res[0] <= 0;
		if (rst) begin
			OUT_ldUOp[0] <= 0;
			state <= 2'd0;
			OUT_res[1] <= 0;
		end
		else
			case (state)
				default: begin
					OUT_res[1] <= 0;
					begin : sv2v_autoblock_2
						integer i;
						for (i = 0; i < NUM_RQS; i = i + 1)
							if (IN_rqs[i * 55]) begin
								state <= 2'd1;
								pageWalkIter <= 1;
								pageWalkAddr <= IN_rqs[(i * 55) + 54-:32];
								rqID <= i[1:0];
								OUT_ldUOp[0] <= 1;
								OUT_ldUOp[32-:32] <= {IN_rqs[(i * 55) + 20-:20], IN_rqs[(i * 55) + 54-:10], 2'b00};
								OUT_res <= 1'sbx;
								OUT_res[3-:2] <= i[1:0];
								OUT_res[1] <= 1;
								OUT_res[0] <= 0;
							end
					end
				end
				2'd1:
					if (OUT_ldUOp[0]) begin
						if (!IN_ldStall)
							OUT_ldUOp[0] <= 0;
					end
					else if (ldResValid) begin
						if ((((IN_ldResUOp[30:27] == 4'b0001) && (IN_ldResUOp[58:57] == 0)) && (pageWalkIter == 1)) && (((nextLookup >= 32'h80000000) && (nextLookup < 32'h90000000)) || (((nextLookup < 32'h80000000) && (nextLookup >= 32'h10000000)) && (nextLookup < 32'h12000000)))) begin
							OUT_ldUOp[0] <= 1;
							OUT_ldUOp[32-:32] <= nextLookup;
							pageWalkIter <= 0;
							state <= 2'd1;
						end
						else begin
							OUT_res[1] <= 0;
							OUT_res[0] <= 1;
							OUT_res[9] <= isSuperPage_c;
							OUT_res[10] <= pageFault_c;
							OUT_res[32-:22] <= ppn_c;
							OUT_res[52-:20] <= pageWalkAddr[31:12];
							OUT_res[6-:3] <= rwx_c;
							OUT_res[8] <= dagu_c[1];
							OUT_res[7] <= dagu_c[0];
							state <= 2'd0;
						end
					end
					else if ((IN_ldAck[0] && IN_ldAck[1]) && IN_ldAck[2])
						OUT_ldUOp[0] <= 1;
			endcase
	end
endmodule
module PCFile (
	clk,
	wen0,
	waddr0,
	wdata0,
	raddr0,
	rdata0,
	raddr1,
	rdata1,
	raddr2,
	rdata2,
	raddr3,
	rdata3,
	raddr4,
	rdata4
);
	parameter WORD_SIZE = 31;
	parameter ADDR_SIZE = 5;
	input wire clk;
	input wire wen0;
	input wire [ADDR_SIZE - 1:0] waddr0;
	input wire [WORD_SIZE - 1:0] wdata0;
	input wire [ADDR_SIZE - 1:0] raddr0;
	output reg [WORD_SIZE - 1:0] rdata0;
	input wire [ADDR_SIZE - 1:0] raddr1;
	output reg [WORD_SIZE - 1:0] rdata1;
	input wire [ADDR_SIZE - 1:0] raddr2;
	output reg [WORD_SIZE - 1:0] rdata2;
	input wire [ADDR_SIZE - 1:0] raddr3;
	output reg [WORD_SIZE - 1:0] rdata3;
	input wire [ADDR_SIZE - 1:0] raddr4;
	output reg [WORD_SIZE - 1:0] rdata4;
	reg [WORD_SIZE - 1:0] mem [(1 << ADDR_SIZE) - 1:0];
	always @(*) begin
		rdata0 = mem[raddr0];
		rdata1 = mem[raddr1];
		rdata2 = mem[raddr2];
		rdata3 = mem[raddr3];
		rdata4 = mem[raddr4];
	end
	always @(posedge clk)
		if (wen0)
			mem[waddr0] <= wdata0;
endmodule
module ACLINT (
	clk,
	rst,
	IN_re,
	IN_raddr,
	OUT_rdata,
	OUT_rbusy,
	OUT_rvalid,
	IN_we,
	IN_wmask,
	IN_waddr,
	IN_wdata,
	OUT_mtime,
	OUT_mtimecmp
);
	input wire clk;
	input wire rst;
	input wire IN_re;
	input wire [29:0] IN_raddr;
	output reg [31:0] OUT_rdata;
	output wire OUT_rbusy;
	output reg OUT_rvalid;
	input wire IN_we;
	input wire [3:0] IN_wmask;
	input wire [29:0] IN_waddr;
	input wire [31:0] IN_wdata;
	output wire [63:0] OUT_mtime;
	output wire [63:0] OUT_mtimecmp;
	assign OUT_rbusy = 0;
	reg [63:0] mtime;
	reg [63:0] mtimecmp;
	reg [19:0] divCnt;
	assign OUT_mtime = mtime;
	assign OUT_mtimecmp = mtimecmp;
	always @(posedge clk) begin
		OUT_rvalid <= 0;
		if (rst) begin
			mtime <= 0;
			mtimecmp <= 0;
		end
		else begin
			mtime <= mtime + 1;
			if (IN_re)
				case ({IN_raddr, 2'b00})
					285261816: begin
						OUT_rdata <= mtime[31:0];
						OUT_rvalid <= 1;
					end
					285261820: begin
						OUT_rdata <= mtime[63:32];
						OUT_rvalid <= 1;
					end
					285229056: begin
						OUT_rdata <= mtimecmp[31:0];
						OUT_rvalid <= 1;
					end
					285229060: begin
						OUT_rdata <= mtimecmp[63:32];
						OUT_rvalid <= 1;
					end
				endcase
			if (IN_we)
				case ({IN_waddr, 2'b00})
					285261816: begin
						if (IN_wmask[0])
							mtime[7:0] <= IN_wdata[7:0];
						if (IN_wmask[1])
							mtime[15:8] <= IN_wdata[15:8];
						if (IN_wmask[2])
							mtime[23:16] <= IN_wdata[23:16];
						if (IN_wmask[3])
							mtime[31:24] <= IN_wdata[31:24];
					end
					285261820: begin
						if (IN_wmask[0])
							mtime[39:32] <= IN_wdata[7:0];
						if (IN_wmask[1])
							mtime[47:40] <= IN_wdata[15:8];
						if (IN_wmask[2])
							mtime[55:48] <= IN_wdata[23:16];
						if (IN_wmask[3])
							mtime[63:56] <= IN_wdata[31:24];
					end
					285229056: begin
						if (IN_wmask[0])
							mtimecmp[7:0] <= IN_wdata[7:0];
						if (IN_wmask[1])
							mtimecmp[15:8] <= IN_wdata[15:8];
						if (IN_wmask[2])
							mtimecmp[23:16] <= IN_wdata[23:16];
						if (IN_wmask[3])
							mtimecmp[31:24] <= IN_wdata[31:24];
					end
					285229060: begin
						if (IN_wmask[0])
							mtimecmp[39:32] <= IN_wdata[7:0];
						if (IN_wmask[1])
							mtimecmp[47:40] <= IN_wdata[15:8];
						if (IN_wmask[2])
							mtimecmp[55:48] <= IN_wdata[23:16];
						if (IN_wmask[3])
							mtimecmp[63:56] <= IN_wdata[31:24];
					end
				endcase
		end
	end
endmodule
module SysCon (
	clk,
	rst,
	IN_re,
	IN_raddr,
	OUT_rdata,
	OUT_rbusy,
	OUT_rvalid,
	IN_we,
	IN_wmask,
	IN_waddr,
	IN_wdata,
	OUT_powerOff,
	OUT_reboot
);
	parameter ADDR = 32'hff000004;
	input wire clk;
	input wire rst;
	input wire IN_re;
	input wire [29:0] IN_raddr;
	output reg [31:0] OUT_rdata;
	output wire OUT_rbusy;
	output reg OUT_rvalid;
	input wire IN_we;
	input wire [3:0] IN_wmask;
	input wire [29:0] IN_waddr;
	input wire [31:0] IN_wdata;
	output reg OUT_powerOff;
	output reg OUT_reboot;
	assign OUT_rbusy = 0;
	wire [32:1] sv2v_tmp_E30CD;
	assign sv2v_tmp_E30CD = 0;
	always @(*) OUT_rdata = sv2v_tmp_E30CD;
	wire [1:1] sv2v_tmp_25BE2;
	assign sv2v_tmp_25BE2 = 0;
	always @(*) OUT_rvalid = sv2v_tmp_25BE2;
	always @(posedge clk) begin
		OUT_powerOff <= 0;
		OUT_reboot <= 0;
		if (rst)
			;
		else if (IN_we)
			if ({IN_waddr, 2'b00} == ADDR)
				if (IN_wmask[0]) begin
					if (IN_wdata[7:0] == 8'h77)
						OUT_reboot <= 1;
					if (IN_wdata[7:0] == 8'h55)
						OUT_powerOff <= 1;
				end
	end
endmodule
module PopCnt (
	a,
	res
);
	input wire [31:0] a;
	output reg [5:0] res;
	reg [5:0] resPopCnt;
	reg [1:0] resStage0 [15:0];
	reg [2:0] resStage1 [7:0];
	reg [3:0] resStage2 [3:0];
	reg [4:0] resStage3 [1:0];
	always @(*) begin
		resPopCnt = 0;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < 16; i = i + 1)
				resStage0[i] = {1'b0, a[2 * i]} + {1'b0, a[(2 * i) + 1]};
		end
		begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < 8; i = i + 1)
				resStage1[i] = {1'b0, resStage0[2 * i]} + {1'b0, resStage0[(2 * i) + 1]};
		end
		begin : sv2v_autoblock_3
			integer i;
			for (i = 0; i < 4; i = i + 1)
				resStage2[i] = {1'b0, resStage1[2 * i]} + {1'b0, resStage1[(2 * i) + 1]};
		end
		begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < 2; i = i + 1)
				resStage3[i] = {1'b0, resStage2[2 * i]} + {1'b0, resStage2[(2 * i) + 1]};
		end
		res = {1'b0, resStage3[0]} + {1'b0, resStage3[1]};
	end
endmodule
module PreDecode (
	clk,
	rst,
	outEn,
	mispred,
	OUT_full,
	IN_instrs,
	OUT_instrs
);
	parameter NUM_INSTRS_IN = 8;
	parameter NUM_INSTRS_OUT = 4;
	parameter BUF_SIZE = 2;
	input wire clk;
	input wire rst;
	input wire outEn;
	input wire mispred;
	output reg OUT_full;
	input wire [206:0] IN_instrs;
	output reg [(NUM_INSTRS_OUT * 114) - 1:0] OUT_instrs;
	reg [(78 + (NUM_INSTRS_IN * 16)) - 1:0] buffer [BUF_SIZE - 1:0];
	reg [$clog2(BUF_SIZE) - 1:0] bufIndexIn;
	reg [$clog2(BUF_SIZE) - 1:0] bufIndexOut;
	reg [$clog2(NUM_INSTRS_IN) - 1:0] subIndexOut;
	reg [$clog2(BUF_SIZE):0] freeEntries;
	always @(posedge clk) begin
		if (rst) begin
			bufIndexIn = 0;
			bufIndexOut = 0;
			begin : sv2v_autoblock_1
				integer i;
				for (i = 0; i < NUM_INSTRS_OUT; i = i + 1)
					OUT_instrs[i * 114] <= 0;
			end
			freeEntries = BUF_SIZE;
		end
		else if (!mispred) begin
			if (outEn) begin : sv2v_autoblock_2
				integer i;
				for (i = 0; i < NUM_INSTRS_OUT; i = i + 1)
					if ((bufIndexOut != bufIndexIn) || (freeEntries == 0)) begin : sv2v_autoblock_3
						reg [(78 + (NUM_INSTRS_IN * 16)) - 1:0] cur;
						reg [15:0] instr;
						reg invalidBranch;
						cur = buffer[bufIndexOut];
						instr = cur[((NUM_INSTRS_IN * 16) - 1) - (((NUM_INSTRS_IN * 16) - 1) - (subIndexOut * 16))+:16];
						invalidBranch = ((instr[1:0] == 2'b11) && buffer[bufIndexOut][32 + ((NUM_INSTRS_IN * 16) + 1)]) && (buffer[bufIndexOut][4 + ((NUM_INSTRS_IN * 16) + 32)-:((4 + ((NUM_INSTRS_IN * 16) + 32)) >= (34 + ((NUM_INSTRS_IN * 16) + 0)) ? ((4 + ((NUM_INSTRS_IN * 16) + 32)) - (34 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((34 + ((NUM_INSTRS_IN * 16) + 0)) - (4 + ((NUM_INSTRS_IN * 16) + 32))) + 1)] == subIndexOut);
						if ((((instr[1:0] == 2'b11) && (((bufIndexOut + 1'b1) != bufIndexIn) || (subIndexOut != cur[38 + ((NUM_INSTRS_IN * 16) + 1)-:((38 + ((NUM_INSTRS_IN * 16) + 1)) >= (37 + ((NUM_INSTRS_IN * 16) + 0)) ? ((38 + ((NUM_INSTRS_IN * 16) + 1)) - (37 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((37 + ((NUM_INSTRS_IN * 16) + 0)) - (38 + ((NUM_INSTRS_IN * 16) + 1))) + 1)]))) && !invalidBranch) && (cur[43 + ((NUM_INSTRS_IN * 16) + 1)-:((43 + ((NUM_INSTRS_IN * 16) + 1)) >= (43 + ((NUM_INSTRS_IN * 16) + 0)) ? ((43 + ((NUM_INSTRS_IN * 16) + 1)) - (43 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((43 + ((NUM_INSTRS_IN * 16) + 0)) - (43 + ((NUM_INSTRS_IN * 16) + 1))) + 1)] == 2'd0)) begin
							OUT_instrs[i * 114] <= 1;
							OUT_instrs[(i * 114) + 81-:31] <= {buffer[bufIndexOut][76 + ((NUM_INSTRS_IN * 16) + 1)-:((76 + ((NUM_INSTRS_IN * 16) + 1)) >= (50 + ((NUM_INSTRS_IN * 16) + 0)) ? ((76 + ((NUM_INSTRS_IN * 16) + 1)) - (50 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((50 + ((NUM_INSTRS_IN * 16) + 0)) - (76 + ((NUM_INSTRS_IN * 16) + 1))) + 1)], subIndexOut};
							OUT_instrs[(i * 114) + 9] <= 0;
							if (subIndexOut == cur[38 + ((NUM_INSTRS_IN * 16) + 1)-:((38 + ((NUM_INSTRS_IN * 16) + 1)) >= (37 + ((NUM_INSTRS_IN * 16) + 0)) ? ((38 + ((NUM_INSTRS_IN * 16) + 1)) - (37 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((37 + ((NUM_INSTRS_IN * 16) + 0)) - (38 + ((NUM_INSTRS_IN * 16) + 1))) + 1)]) begin
								bufIndexOut = bufIndexOut + 1;
								freeEntries = freeEntries + 1;
								subIndexOut = buffer[bufIndexOut][10 + ((NUM_INSTRS_IN * 16) + 32)-:((10 + ((NUM_INSTRS_IN * 16) + 32)) >= (40 + ((NUM_INSTRS_IN * 16) + 0)) ? ((10 + ((NUM_INSTRS_IN * 16) + 32)) - (40 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((40 + ((NUM_INSTRS_IN * 16) + 0)) - (10 + ((NUM_INSTRS_IN * 16) + 32))) + 1)];
							end
							else
								subIndexOut = subIndexOut + 1;
							OUT_instrs[(i * 114) + 113-:32] <= {buffer[bufIndexOut][((NUM_INSTRS_IN * 16) - 1) - (((NUM_INSTRS_IN * 16) - 1) - (subIndexOut * 16))+:16], instr};
							OUT_instrs[(i * 114) + 8-:5] <= buffer[bufIndexOut][17 + ((NUM_INSTRS_IN * 16) + 32)-:((17 + ((NUM_INSTRS_IN * 16) + 32)) >= (45 + ((NUM_INSTRS_IN * 16) + 0)) ? ((17 + ((NUM_INSTRS_IN * 16) + 32)) - (45 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((45 + ((NUM_INSTRS_IN * 16) + 0)) - (17 + ((NUM_INSTRS_IN * 16) + 32))) + 1)];
							OUT_instrs[(i * 114) + 10] <= buffer[bufIndexOut][32 + ((NUM_INSTRS_IN * 16) + 1)] && (buffer[bufIndexOut][4 + ((NUM_INSTRS_IN * 16) + 32)-:((4 + ((NUM_INSTRS_IN * 16) + 32)) >= (34 + ((NUM_INSTRS_IN * 16) + 0)) ? ((4 + ((NUM_INSTRS_IN * 16) + 32)) - (34 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((34 + ((NUM_INSTRS_IN * 16) + 0)) - (4 + ((NUM_INSTRS_IN * 16) + 32))) + 1)] == subIndexOut);
							OUT_instrs[(i * 114) + 44-:31] <= buffer[bufIndexOut][(NUM_INSTRS_IN * 16) + 32-:(((NUM_INSTRS_IN * 16) + 32) >= (2 + ((NUM_INSTRS_IN * 16) + 0)) ? (((NUM_INSTRS_IN * 16) + 32) - (2 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((2 + ((NUM_INSTRS_IN * 16) + 0)) - ((NUM_INSTRS_IN * 16) + 32)) + 1)];
							OUT_instrs[(i * 114) + 13] <= !buffer[bufIndexOut][32 + ((NUM_INSTRS_IN * 16) + 1)];
							OUT_instrs[(i * 114) + 3-:2] <= buffer[bufIndexOut][43 + ((NUM_INSTRS_IN * 16) + 1)-:((43 + ((NUM_INSTRS_IN * 16) + 1)) >= (43 + ((NUM_INSTRS_IN * 16) + 0)) ? ((43 + ((NUM_INSTRS_IN * 16) + 1)) - (43 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((43 + ((NUM_INSTRS_IN * 16) + 0)) - (43 + ((NUM_INSTRS_IN * 16) + 1))) + 1)];
							OUT_instrs[(i * 114) + 12-:2] <= buffer[bufIndexOut][(NUM_INSTRS_IN * 16) + 1-:(((NUM_INSTRS_IN * 16) + 1) >= ((NUM_INSTRS_IN * 16) + 0) ? (((NUM_INSTRS_IN * 16) + 1) - ((NUM_INSTRS_IN * 16) + 0)) + 1 : (((NUM_INSTRS_IN * 16) + 0) - ((NUM_INSTRS_IN * 16) + 1)) + 1)];
							OUT_instrs[(i * 114) + 1] <= 0;
							OUT_instrs[(i * 114) + 50-:3] <= buffer[bufIndexOut][10 + ((NUM_INSTRS_IN * 16) + 32)-:((10 + ((NUM_INSTRS_IN * 16) + 32)) >= (40 + ((NUM_INSTRS_IN * 16) + 0)) ? ((10 + ((NUM_INSTRS_IN * 16) + 32)) - (40 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((40 + ((NUM_INSTRS_IN * 16) + 0)) - (10 + ((NUM_INSTRS_IN * 16) + 32))) + 1)];
							OUT_instrs[(i * 114) + 47-:3] <= buffer[bufIndexOut][4 + ((NUM_INSTRS_IN * 16) + 32)-:((4 + ((NUM_INSTRS_IN * 16) + 32)) >= (34 + ((NUM_INSTRS_IN * 16) + 0)) ? ((4 + ((NUM_INSTRS_IN * 16) + 32)) - (34 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((34 + ((NUM_INSTRS_IN * 16) + 0)) - (4 + ((NUM_INSTRS_IN * 16) + 32))) + 1)];
							if (subIndexOut == buffer[bufIndexOut][38 + ((NUM_INSTRS_IN * 16) + 1)-:((38 + ((NUM_INSTRS_IN * 16) + 1)) >= (37 + ((NUM_INSTRS_IN * 16) + 0)) ? ((38 + ((NUM_INSTRS_IN * 16) + 1)) - (37 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((37 + ((NUM_INSTRS_IN * 16) + 0)) - (38 + ((NUM_INSTRS_IN * 16) + 1))) + 1)]) begin
								bufIndexOut = bufIndexOut + 1;
								freeEntries = freeEntries + 1;
								subIndexOut = buffer[bufIndexOut][10 + ((NUM_INSTRS_IN * 16) + 32)-:((10 + ((NUM_INSTRS_IN * 16) + 32)) >= (40 + ((NUM_INSTRS_IN * 16) + 0)) ? ((10 + ((NUM_INSTRS_IN * 16) + 32)) - (40 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((40 + ((NUM_INSTRS_IN * 16) + 0)) - (10 + ((NUM_INSTRS_IN * 16) + 32))) + 1)];
							end
							else
								subIndexOut = subIndexOut + 1;
						end
						else if (((instr[1:0] != 2'b11) || invalidBranch) || (cur[43 + ((NUM_INSTRS_IN * 16) + 1)-:((43 + ((NUM_INSTRS_IN * 16) + 1)) >= (43 + ((NUM_INSTRS_IN * 16) + 0)) ? ((43 + ((NUM_INSTRS_IN * 16) + 1)) - (43 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((43 + ((NUM_INSTRS_IN * 16) + 0)) - (43 + ((NUM_INSTRS_IN * 16) + 1))) + 1)] != 2'd0)) begin
							OUT_instrs[(i * 114) + 81-:31] <= {buffer[bufIndexOut][76 + ((NUM_INSTRS_IN * 16) + 1)-:((76 + ((NUM_INSTRS_IN * 16) + 1)) >= (50 + ((NUM_INSTRS_IN * 16) + 0)) ? ((76 + ((NUM_INSTRS_IN * 16) + 1)) - (50 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((50 + ((NUM_INSTRS_IN * 16) + 0)) - (76 + ((NUM_INSTRS_IN * 16) + 1))) + 1)], subIndexOut};
							OUT_instrs[(i * 114) + 50-:3] <= buffer[bufIndexOut][10 + ((NUM_INSTRS_IN * 16) + 32)-:((10 + ((NUM_INSTRS_IN * 16) + 32)) >= (40 + ((NUM_INSTRS_IN * 16) + 0)) ? ((10 + ((NUM_INSTRS_IN * 16) + 32)) - (40 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((40 + ((NUM_INSTRS_IN * 16) + 0)) - (10 + ((NUM_INSTRS_IN * 16) + 32))) + 1)];
							OUT_instrs[(i * 114) + 47-:3] <= buffer[bufIndexOut][4 + ((NUM_INSTRS_IN * 16) + 32)-:((4 + ((NUM_INSTRS_IN * 16) + 32)) >= (34 + ((NUM_INSTRS_IN * 16) + 0)) ? ((4 + ((NUM_INSTRS_IN * 16) + 32)) - (34 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((34 + ((NUM_INSTRS_IN * 16) + 0)) - (4 + ((NUM_INSTRS_IN * 16) + 32))) + 1)];
							OUT_instrs[(i * 114) + 113-:32] <= (invalidBranch ? 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx : {16'bxxxxxxxxxxxxxxxx, instr});
							OUT_instrs[(i * 114) + 8-:5] <= buffer[bufIndexOut][17 + ((NUM_INSTRS_IN * 16) + 32)-:((17 + ((NUM_INSTRS_IN * 16) + 32)) >= (45 + ((NUM_INSTRS_IN * 16) + 0)) ? ((17 + ((NUM_INSTRS_IN * 16) + 32)) - (45 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((45 + ((NUM_INSTRS_IN * 16) + 0)) - (17 + ((NUM_INSTRS_IN * 16) + 32))) + 1)];
							OUT_instrs[(i * 114) + 10] <= buffer[bufIndexOut][32 + ((NUM_INSTRS_IN * 16) + 1)] && (buffer[bufIndexOut][4 + ((NUM_INSTRS_IN * 16) + 32)-:((4 + ((NUM_INSTRS_IN * 16) + 32)) >= (34 + ((NUM_INSTRS_IN * 16) + 0)) ? ((4 + ((NUM_INSTRS_IN * 16) + 32)) - (34 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((34 + ((NUM_INSTRS_IN * 16) + 0)) - (4 + ((NUM_INSTRS_IN * 16) + 32))) + 1)] == subIndexOut);
							OUT_instrs[(i * 114) + 44-:31] <= buffer[bufIndexOut][(NUM_INSTRS_IN * 16) + 32-:(((NUM_INSTRS_IN * 16) + 32) >= (2 + ((NUM_INSTRS_IN * 16) + 0)) ? (((NUM_INSTRS_IN * 16) + 32) - (2 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((2 + ((NUM_INSTRS_IN * 16) + 0)) - ((NUM_INSTRS_IN * 16) + 32)) + 1)];
							OUT_instrs[(i * 114) + 13] <= !buffer[bufIndexOut][32 + ((NUM_INSTRS_IN * 16) + 1)];
							OUT_instrs[i * 114] <= 1;
							OUT_instrs[(i * 114) + 9] <= invalidBranch;
							OUT_instrs[(i * 114) + 3-:2] <= buffer[bufIndexOut][43 + ((NUM_INSTRS_IN * 16) + 1)-:((43 + ((NUM_INSTRS_IN * 16) + 1)) >= (43 + ((NUM_INSTRS_IN * 16) + 0)) ? ((43 + ((NUM_INSTRS_IN * 16) + 1)) - (43 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((43 + ((NUM_INSTRS_IN * 16) + 0)) - (43 + ((NUM_INSTRS_IN * 16) + 1))) + 1)];
							OUT_instrs[(i * 114) + 12-:2] <= buffer[bufIndexOut][(NUM_INSTRS_IN * 16) + 1-:(((NUM_INSTRS_IN * 16) + 1) >= ((NUM_INSTRS_IN * 16) + 0) ? (((NUM_INSTRS_IN * 16) + 1) - ((NUM_INSTRS_IN * 16) + 0)) + 1 : (((NUM_INSTRS_IN * 16) + 0) - ((NUM_INSTRS_IN * 16) + 1)) + 1)];
							OUT_instrs[(i * 114) + 1] <= 1;
							if (subIndexOut == cur[38 + ((NUM_INSTRS_IN * 16) + 1)-:((38 + ((NUM_INSTRS_IN * 16) + 1)) >= (37 + ((NUM_INSTRS_IN * 16) + 0)) ? ((38 + ((NUM_INSTRS_IN * 16) + 1)) - (37 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((37 + ((NUM_INSTRS_IN * 16) + 0)) - (38 + ((NUM_INSTRS_IN * 16) + 1))) + 1)]) begin
								bufIndexOut = bufIndexOut + 1;
								freeEntries = freeEntries + 1;
								subIndexOut = buffer[bufIndexOut][10 + ((NUM_INSTRS_IN * 16) + 32)-:((10 + ((NUM_INSTRS_IN * 16) + 32)) >= (40 + ((NUM_INSTRS_IN * 16) + 0)) ? ((10 + ((NUM_INSTRS_IN * 16) + 32)) - (40 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((40 + ((NUM_INSTRS_IN * 16) + 0)) - (10 + ((NUM_INSTRS_IN * 16) + 32))) + 1)];
							end
							else
								subIndexOut = subIndexOut + 1;
						end
						else
							OUT_instrs[i * 114] <= 0;
					end
					else
						OUT_instrs[i * 114] <= 0;
			end
			if (!OUT_full && IN_instrs[0]) begin
				buffer[bufIndexIn][76 + ((NUM_INSTRS_IN * 16) + 1)-:((76 + ((NUM_INSTRS_IN * 16) + 1)) >= (50 + ((NUM_INSTRS_IN * 16) + 0)) ? ((76 + ((NUM_INSTRS_IN * 16) + 1)) - (50 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((50 + ((NUM_INSTRS_IN * 16) + 0)) - (76 + ((NUM_INSTRS_IN * 16) + 1))) + 1)] <= IN_instrs[206-:28];
				buffer[bufIndexIn][17 + ((NUM_INSTRS_IN * 16) + 32)-:((17 + ((NUM_INSTRS_IN * 16) + 32)) >= (45 + ((NUM_INSTRS_IN * 16) + 0)) ? ((17 + ((NUM_INSTRS_IN * 16) + 32)) - (45 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((45 + ((NUM_INSTRS_IN * 16) + 0)) - (17 + ((NUM_INSTRS_IN * 16) + 32))) + 1)] <= IN_instrs[178-:5];
				buffer[bufIndexIn][43 + ((NUM_INSTRS_IN * 16) + 1)-:((43 + ((NUM_INSTRS_IN * 16) + 1)) >= (43 + ((NUM_INSTRS_IN * 16) + 0)) ? ((43 + ((NUM_INSTRS_IN * 16) + 1)) - (43 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((43 + ((NUM_INSTRS_IN * 16) + 0)) - (43 + ((NUM_INSTRS_IN * 16) + 1))) + 1)] <= IN_instrs[173-:2];
				buffer[bufIndexIn][10 + ((NUM_INSTRS_IN * 16) + 32)-:((10 + ((NUM_INSTRS_IN * 16) + 32)) >= (40 + ((NUM_INSTRS_IN * 16) + 0)) ? ((10 + ((NUM_INSTRS_IN * 16) + 32)) - (40 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((40 + ((NUM_INSTRS_IN * 16) + 0)) - (10 + ((NUM_INSTRS_IN * 16) + 32))) + 1)] <= IN_instrs[171-:3];
				buffer[bufIndexIn][38 + ((NUM_INSTRS_IN * 16) + 1)-:((38 + ((NUM_INSTRS_IN * 16) + 1)) >= (37 + ((NUM_INSTRS_IN * 16) + 0)) ? ((38 + ((NUM_INSTRS_IN * 16) + 1)) - (37 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((37 + ((NUM_INSTRS_IN * 16) + 0)) - (38 + ((NUM_INSTRS_IN * 16) + 1))) + 1)] <= IN_instrs[168-:3];
				buffer[bufIndexIn][4 + ((NUM_INSTRS_IN * 16) + 32)-:((4 + ((NUM_INSTRS_IN * 16) + 32)) >= (34 + ((NUM_INSTRS_IN * 16) + 0)) ? ((4 + ((NUM_INSTRS_IN * 16) + 32)) - (34 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((34 + ((NUM_INSTRS_IN * 16) + 0)) - (4 + ((NUM_INSTRS_IN * 16) + 32))) + 1)] <= IN_instrs[165-:3];
				buffer[bufIndexIn][32 + ((NUM_INSTRS_IN * 16) + 1)] <= IN_instrs[162];
				buffer[bufIndexIn][(NUM_INSTRS_IN * 16) - 1-:NUM_INSTRS_IN * 16] <= IN_instrs[128-:128];
				buffer[bufIndexIn][(NUM_INSTRS_IN * 16) + 32-:(((NUM_INSTRS_IN * 16) + 32) >= (2 + ((NUM_INSTRS_IN * 16) + 0)) ? (((NUM_INSTRS_IN * 16) + 32) - (2 + ((NUM_INSTRS_IN * 16) + 0))) + 1 : ((2 + ((NUM_INSTRS_IN * 16) + 0)) - ((NUM_INSTRS_IN * 16) + 32)) + 1)] <= IN_instrs[161-:31];
				buffer[bufIndexIn][(NUM_INSTRS_IN * 16) + 1-:(((NUM_INSTRS_IN * 16) + 1) >= ((NUM_INSTRS_IN * 16) + 0) ? (((NUM_INSTRS_IN * 16) + 1) - ((NUM_INSTRS_IN * 16) + 0)) + 1 : (((NUM_INSTRS_IN * 16) + 0) - ((NUM_INSTRS_IN * 16) + 1)) + 1)] <= IN_instrs[130-:2];
				if (bufIndexIn == bufIndexOut)
					subIndexOut = IN_instrs[171-:3];
				bufIndexIn = bufIndexIn + 1;
				freeEntries = freeEntries - 1;
			end
		end
		else begin
			bufIndexIn = 0;
			bufIndexOut = 0;
			begin : sv2v_autoblock_4
				integer i;
				for (i = 0; i < NUM_INSTRS_OUT; i = i + 1)
					OUT_instrs[i * 114] <= 0;
			end
			freeEntries = BUF_SIZE;
		end
		OUT_full <= freeEntries == 0;
	end
endmodule
module RegFile (
	clk,
	IN_re,
	IN_raddr,
	OUT_rdata,
	IN_we,
	IN_waddr,
	IN_wdata
);
	parameter WIDTH = 32;
	parameter SIZE = 64;
	parameter NUM_READ = 8;
	parameter NUM_WRITE = 4;
	input wire clk;
	input wire [NUM_READ - 1:0] IN_re;
	input wire [(NUM_READ * $clog2(SIZE)) - 1:0] IN_raddr;
	output reg [(NUM_READ * WIDTH) - 1:0] OUT_rdata;
	input wire [NUM_WRITE - 1:0] IN_we;
	input wire [(NUM_WRITE * $clog2(SIZE)) - 1:0] IN_waddr;
	input wire [(NUM_WRITE * WIDTH) - 1:0] IN_wdata;
	reg [WIDTH - 1:0] mem [SIZE - 1:0];
	always @(posedge clk) begin
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_READ; i = i + 1)
				if (IN_re[i])
					OUT_rdata[i * WIDTH+:WIDTH] <= mem[IN_raddr[i * $clog2(SIZE)+:$clog2(SIZE)]];
				else
					OUT_rdata[i * WIDTH+:WIDTH] <= 1'sbx;
		end
		begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < NUM_WRITE; i = i + 1)
				if (IN_we[i])
					mem[IN_waddr[i * $clog2(SIZE)+:$clog2(SIZE)]] <= IN_wdata[i * WIDTH+:WIDTH];
		end
	end
endmodule
module Rename (
	clk,
	frontEn,
	rst,
	IN_stalls,
	OUT_stall,
	IN_uop,
	IN_comUOp,
	IN_wbHasResult,
	IN_wbUOp,
	IN_branchTaken,
	IN_branchFlush,
	IN_branchSqN,
	IN_branchLoadSqN,
	IN_branchStoreSqN,
	IN_mispredFlush,
	OUT_uop,
	OUT_uopOrdering,
	OUT_nextSqN,
	OUT_nextLoadSqN,
	OUT_nextStoreSqN
);
	parameter WIDTH_ISSUE = 4;
	parameter WIDTH_COMMIT = 4;
	parameter WIDTH_WR = 4;
	input wire clk;
	input wire frontEn;
	input wire rst;
	input wire [(4 * WIDTH_ISSUE) - 1:0] IN_stalls;
	output reg OUT_stall;
	input wire [(WIDTH_ISSUE * 80) - 1:0] IN_uop;
	input wire [(WIDTH_COMMIT * 23) - 1:0] IN_comUOp;
	input wire [WIDTH_WR - 1:0] IN_wbHasResult;
	input wire [(WIDTH_WR * 59) - 1:0] IN_wbUOp;
	input wire IN_branchTaken;
	input wire IN_branchFlush;
	input wire [6:0] IN_branchSqN;
	input wire [6:0] IN_branchLoadSqN;
	input wire [6:0] IN_branchStoreSqN;
	input wire IN_mispredFlush;
	output reg [(WIDTH_ISSUE * 126) - 1:0] OUT_uop;
	output reg [WIDTH_ISSUE - 1:0] OUT_uopOrdering;
	output wire [6:0] OUT_nextSqN;
	output reg [6:0] OUT_nextLoadSqN;
	output reg [6:0] OUT_nextStoreSqN;
	reg [3:0] portStall;
	always @(*) begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < WIDTH_ISSUE; i = i + 1)
			begin
				portStall[i] = 0;
				begin : sv2v_autoblock_2
					integer j;
					for (j = 0; j < 4; j = j + 1)
						portStall[i] = portStall[i] | IN_stalls[(j * WIDTH_ISSUE) + i];
				end
			end
	end
	wire [(2 * WIDTH_ISSUE) - 1:0] RAT_lookupAvail;
	wire [((2 * WIDTH_ISSUE) * 7) - 1:0] RAT_lookupSpecTag;
	reg [((2 * WIDTH_ISSUE) * 5) - 1:0] RAT_lookupIDs;
	reg [(WIDTH_ISSUE * 5) - 1:0] RAT_issueIDs;
	reg [WIDTH_ISSUE - 1:0] RAT_issueValid;
	reg [WIDTH_ISSUE - 1:0] RAT_issueAvail;
	reg [6:0] RAT_issueSqNs [WIDTH_ISSUE - 1:0];
	reg [WIDTH_ISSUE - 1:0] TB_issueValid;
	reg TB_tagNeeded [WIDTH_ISSUE - 1:0];
	reg [WIDTH_COMMIT - 1:0] RAT_commitValid;
	reg [WIDTH_COMMIT - 1:0] TB_commitValid;
	reg [(WIDTH_COMMIT * 5) - 1:0] RAT_commitIDs;
	reg [(WIDTH_COMMIT * 7) - 1:0] RAT_commitTags;
	wire [(WIDTH_COMMIT * 7) - 1:0] RAT_commitPrevTags;
	reg [WIDTH_COMMIT - 1:0] RAT_commitAvail;
	reg [(WIDTH_WR * 7) - 1:0] RAT_wbTags;
	reg [6:0] nextCounterSqN;
	reg isSc [3:0];
	reg scSuccessful [3:0];
	reg [7:0] lrScRsv;
	reg [7:0] nextLrScRsv;
	reg [WIDTH_ISSUE - 1:0] TB_tagsValid;
	reg [6:0] counterSqN;
	always @(*) begin
		OUT_stall = |portStall;
		nextCounterSqN = counterSqN;
		nextLrScRsv = lrScRsv;
		if ($signed(lrScRsv[7-:7] - counterSqN) >= 0)
			nextLrScRsv[0] = 0;
		begin : sv2v_autoblock_3
			integer i;
			for (i = 0; i < WIDTH_ISSUE; i = i + 1)
				begin
					if (IN_mispredFlush && IN_uop[i * 80])
						OUT_stall = 1;
					isSc[i] = (IN_uop[(i * 80) + 13-:4] == 4'd2) && (IN_uop[(i * 80) + 19-:6] == 6'd10);
					TB_tagNeeded[i] = ((((IN_uop[(i * 80) + 24-:5] != 0) || (IN_uop[(i * 80) + 13-:4] == 4'd9)) && (IN_uop[(i * 80) + 13-:4] != 4'd8)) && (IN_uop[(i * 80) + 13-:4] != 4'd11)) && !isSc[i];
					if (((!TB_tagsValid[i] && IN_uop[i * 80]) && frontEn) && TB_tagNeeded[i])
						OUT_stall = 1;
				end
		end
		begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < WIDTH_ISSUE; i = i + 1)
				begin
					RAT_lookupIDs[((2 * i) + 0) * 5+:5] = IN_uop[(i * 80) + 35-:5];
					RAT_lookupIDs[((2 * i) + 1) * 5+:5] = IN_uop[(i * 80) + 30-:5];
					RAT_issueIDs[i * 5+:5] = IN_uop[(i * 80) + 24-:5];
					RAT_issueSqNs[i] = nextCounterSqN;
					RAT_issueValid[i] = (((!rst && !IN_branchTaken) && frontEn) && !OUT_stall) && IN_uop[i * 80];
					RAT_issueAvail[i] = (IN_uop[(i * 80) + 13-:4] == 4'd8) || isSc[i];
					scSuccessful[i] = 0;
					if (RAT_issueValid[i])
						if ((IN_uop[(i * 80) + 13-:4] == 4'd1) && (IN_uop[(i * 80) + 19-:6] == 6'd5)) begin
							nextLrScRsv[7-:7] = RAT_issueSqNs[i];
							nextLrScRsv[0] = 1;
						end
						else if (isSc[i]) begin
							scSuccessful[i] = nextLrScRsv[0];
							nextLrScRsv[0] = 0;
						end
						else if ((IN_uop[(i * 80) + 13-:4] == 4'd2) || (IN_uop[(i * 80) + 13-:4] == 4'd9))
							nextLrScRsv[0] = 0;
					TB_issueValid[i] = RAT_issueValid[i] && TB_tagNeeded[i];
					if (RAT_issueValid[i])
						nextCounterSqN = nextCounterSqN + 1;
				end
		end
		begin : sv2v_autoblock_5
			integer i;
			for (i = 0; i < WIDTH_WR; i = i + 1)
				RAT_wbTags[i * 7+:7] = IN_wbUOp[(i * 59) + 19-:7];
		end
		begin : sv2v_autoblock_6
			integer i;
			for (i = 0; i < WIDTH_COMMIT; i = i + 1)
				begin
					RAT_commitValid[i] = IN_comUOp[i * 23] && (IN_comUOp[(i * 23) + 22-:5] != 0);
					TB_commitValid[i] = IN_comUOp[i * 23];
					RAT_commitIDs[i * 5+:5] = IN_comUOp[(i * 23) + 22-:5];
					RAT_commitTags[i * 7+:7] = IN_comUOp[(i * 23) + 17-:7];
					RAT_commitAvail[i] = IN_comUOp[(i * 23) + 1];
				end
		end
	end
	reg [(WIDTH_ISSUE * 7) - 1:0] newTags;
	RenameTable #(
		.NUM_LOOKUP(WIDTH_ISSUE * 2),
		.NUM_ISSUE(WIDTH_ISSUE),
		.NUM_COMMIT(WIDTH_COMMIT),
		.NUM_WB(WIDTH_WR)
	) rt(
		.clk(clk),
		.rst(rst),
		.IN_mispred(IN_branchTaken),
		.IN_mispredFlush(IN_mispredFlush),
		.IN_lookupIDs(RAT_lookupIDs),
		.OUT_lookupAvail(RAT_lookupAvail),
		.OUT_lookupSpecTag(RAT_lookupSpecTag),
		.IN_issueValid(RAT_issueValid),
		.IN_issueIDs(RAT_issueIDs),
		.IN_issueTags(newTags),
		.IN_issueAvail(RAT_issueAvail),
		.IN_commitValid(RAT_commitValid),
		.IN_commitIDs(RAT_commitIDs),
		.IN_commitTags(RAT_commitTags),
		.IN_commitAvail(RAT_commitAvail),
		.OUT_commitPrevTags(RAT_commitPrevTags),
		.IN_wbValid(IN_wbHasResult),
		.IN_wbTag(RAT_wbTags)
	);
	reg [(WIDTH_ISSUE * 6) - 1:0] TB_tags;
	always @(*) begin : sv2v_autoblock_7
		integer i;
		for (i = 0; i < WIDTH_ISSUE; i = i + 1)
			if (TB_issueValid[i])
				newTags[i * 7+:7] = {1'b0, TB_tags[i * 6+:6]};
			else if (IN_uop[(i * 80) + 13-:4] == 4'd8)
				newTags[i * 7+:7] = {1'b1, IN_uop[(i * 80) + 53-:6]};
			else if (isSc[i])
				newTags[i * 7+:7] = {6'b100000, !scSuccessful[i]};
			else
				newTags[i * 7+:7] = 7'h40;
	end
	reg [WIDTH_COMMIT - 1:0] isNewestCommit;
	wire [WIDTH_ISSUE * 6:1] sv2v_tmp_tb_OUT_issueTags;
	always @(*) TB_tags = sv2v_tmp_tb_OUT_issueTags;
	wire [WIDTH_ISSUE:1] sv2v_tmp_tb_OUT_issueTagsValid;
	always @(*) TB_tagsValid = sv2v_tmp_tb_OUT_issueTagsValid;
	TagBuffer #(
		.NUM_ISSUE(WIDTH_ISSUE),
		.NUM_COMMIT(WIDTH_COMMIT)
	) tb(
		.clk(clk),
		.rst(rst),
		.IN_mispr(IN_branchTaken),
		.IN_mispredFlush(IN_mispredFlush),
		.IN_issueValid(TB_issueValid),
		.OUT_issueTags(sv2v_tmp_tb_OUT_issueTags),
		.OUT_issueTagsValid(sv2v_tmp_tb_OUT_issueTagsValid),
		.IN_commitValid(TB_commitValid),
		.IN_commitNewest(isNewestCommit),
		.IN_RAT_commitPrevTags(RAT_commitPrevTags),
		.IN_commitTagDst(RAT_commitTags)
	);
	reg intOrder;
	reg [6:0] counterStoreSqN;
	reg [6:0] counterLoadSqN;
	assign OUT_nextSqN = counterSqN;
	always @(*) begin : sv2v_autoblock_8
		integer i;
		for (i = 0; i < WIDTH_COMMIT; i = i + 1)
			begin
				isNewestCommit[i] = IN_comUOp[i * 23] && (IN_comUOp[(i * 23) + 22-:5] != 0);
				if (IN_comUOp[i * 23]) begin : sv2v_autoblock_9
					integer j;
					for (j = i + 1; j < WIDTH_COMMIT; j = j + 1)
						if (IN_comUOp[j * 23] && (IN_comUOp[(j * 23) + 22-:5] == IN_comUOp[(i * 23) + 22-:5]))
							isNewestCommit[i] = 0;
				end
			end
	end
	function automatic [125:0] sv2v_cast_126;
		input reg [125:0] inp;
		sv2v_cast_126 = inp;
	endfunction
	always @(posedge clk) begin
		if (rst) begin
			counterSqN <= 0;
			counterStoreSqN = -1;
			counterLoadSqN = 0;
			OUT_nextLoadSqN <= counterLoadSqN;
			OUT_nextStoreSqN <= counterStoreSqN + 1;
			intOrder = 0;
			lrScRsv[0] <= 0;
			begin : sv2v_autoblock_10
				integer i;
				for (i = 0; i < WIDTH_ISSUE; i = i + 1)
					begin
						OUT_uop[i * 126+:126] <= 1'sbx;
						OUT_uop[i * 126] <= 0;
						OUT_uop[(i * 126) + 4-:4] <= 0;
					end
			end
		end
		else if (IN_branchTaken) begin
			counterSqN <= IN_branchSqN + 1;
			counterLoadSqN = IN_branchLoadSqN;
			counterStoreSqN = IN_branchStoreSqN;
			begin : sv2v_autoblock_11
				integer i;
				for (i = 0; i < WIDTH_ISSUE; i = i + 1)
					if ($signed(OUT_uop[(i * 126) + 56-:7] - IN_branchSqN) > 0) begin
						OUT_uop[i * 126+:126] <= 1'sbx;
						OUT_uop[i * 126] <= 0;
						OUT_uop[(i * 126) + 4-:4] <= 0;
					end
			end
		end
		if (!rst && |portStall) begin : sv2v_autoblock_12
			integer i;
			for (i = 0; i < WIDTH_WR; i = i + 1)
				if (IN_wbHasResult[i]) begin : sv2v_autoblock_13
					integer j;
					for (j = 0; j < WIDTH_ISSUE; j = j + 1)
						if (|OUT_uop[(j * 126) + 4-:4]) begin
							if (OUT_uop[(j * 126) + 80-:7] == IN_wbUOp[(i * 59) + 19-:7])
								OUT_uop[(j * 126) + 81] <= 1;
							if (OUT_uop[(j * 126) + 72-:7] == IN_wbUOp[(i * 59) + 19-:7])
								OUT_uop[(j * 126) + 73] <= 1;
							if (OUT_uop[(j * 126) + 63-:7] == IN_wbUOp[(i * 59) + 19-:7])
								OUT_uop[(j * 126) + 64] <= 1;
						end
				end
		end
		if (rst)
			;
		else if ((!IN_branchTaken && frontEn) && !OUT_stall) begin
			begin : sv2v_autoblock_14
				integer i;
				for (i = 0; i < WIDTH_ISSUE; i = i + 1)
					begin
						OUT_uop[(i * 126) + 125-:32] <= IN_uop[(i * 80) + 79-:32];
						OUT_uop[(i * 126) + 93-:12] <= IN_uop[(i * 80) + 47-:12];
						OUT_uop[(i * 126) + 37-:6] <= IN_uop[(i * 80) + 19-:6];
						OUT_uop[(i * 126) + 9-:4] <= IN_uop[(i * 80) + 13-:4];
						if (IN_uop[(i * 80) + 13-:4] == 4'd11)
							OUT_uop[(i * 126) + 42-:5] <= IN_uop[(i * 80) + 18-:5];
						else
							OUT_uop[(i * 126) + 42-:5] <= IN_uop[(i * 80) + 24-:5];
						if (isSc[i] && !scSuccessful[i])
							OUT_uop[(i * 126) + 9-:4] <= 4'd8;
						OUT_uop[(i * 126) + 31-:5] <= IN_uop[(i * 80) + 9-:5];
						OUT_uop[(i * 126) + 26-:3] <= IN_uop[(i * 80) + 4-:3];
						OUT_uop[(i * 126) + 65] <= IN_uop[(i * 80) + 25];
						OUT_uop[(i * 126) + 5] <= IN_uop[(i * 80) + 1];
					end
			end
			begin : sv2v_autoblock_15
				integer i;
				for (i = 0; i < WIDTH_ISSUE; i = i + 1)
					if (IN_uop[i * 80]) begin
						OUT_uop[i * 126] <= 1;
						OUT_uop[(i * 126) + 4-:4] <= 4'b1111;
						OUT_uop[(i * 126) + 16-:7] <= counterLoadSqN;
						OUT_uopOrdering[i] <= intOrder;
						if (!(isSc[i] && !scSuccessful[i]))
							case (IN_uop[(i * 80) + 13-:4])
								4'd0: intOrder = !intOrder;
								4'd4, 4'd5: intOrder = 1;
								4'd6, 4'd7, 4'd3: intOrder = 0;
								4'd2: counterStoreSqN = counterStoreSqN + 1;
								4'd1: counterLoadSqN = counterLoadSqN + 1;
								4'd9: begin
									counterStoreSqN = counterStoreSqN + 1;
									counterLoadSqN = counterLoadSqN + 1;
									intOrder = 1;
								end
								default:
									;
							endcase
						OUT_uop[(i * 126) + 56-:7] <= RAT_issueSqNs[i];
						OUT_uop[(i * 126) + 23-:7] <= counterStoreSqN;
						OUT_uop[(i * 126) + 80-:7] <= RAT_lookupSpecTag[((2 * i) + 0) * 7+:7];
						OUT_uop[(i * 126) + 72-:7] <= RAT_lookupSpecTag[((2 * i) + 1) * 7+:7];
						OUT_uop[(i * 126) + 81] <= RAT_lookupAvail[(2 * i) + 0];
						OUT_uop[(i * 126) + 73] <= RAT_lookupAvail[(2 * i) + 1];
						OUT_uop[(i * 126) + 49-:7] <= newTags[i * 7+:7];
						if (IN_uop[(i * 80) + 13-:4] == 4'd9) begin
							OUT_uop[(i * 126) + 63-:7] <= newTags[i * 7+:7];
							OUT_uop[(i * 126) + 64] <= 0;
						end
						else begin
							OUT_uop[(i * 126) + 63-:7] <= 7'h40;
							OUT_uop[(i * 126) + 64] <= 1;
						end
					end
					else
						OUT_uop[i * 126+:126] <= sv2v_cast_126(126'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx00000);
			end
			counterSqN <= nextCounterSqN;
			lrScRsv <= nextLrScRsv;
		end
		else begin : sv2v_autoblock_16
			integer i;
			for (i = 0; i < WIDTH_ISSUE; i = i + 1)
				begin
					OUT_uop[i * 126] <= 0;
					begin : sv2v_autoblock_17
						integer j;
						for (j = 0; j < 4; j = j + 1)
							if (!IN_stalls[(j * WIDTH_ISSUE) + i])
								OUT_uop[(i * 126) + (1 + j)] <= 0;
					end
				end
		end
		OUT_nextLoadSqN <= counterLoadSqN;
		OUT_nextStoreSqN <= counterStoreSqN + 1;
	end
endmodule
module RenameTable (
	clk,
	rst,
	IN_mispred,
	IN_mispredFlush,
	IN_lookupIDs,
	OUT_lookupAvail,
	OUT_lookupSpecTag,
	IN_issueValid,
	IN_issueIDs,
	IN_issueTags,
	IN_issueAvail,
	IN_commitValid,
	IN_commitIDs,
	IN_commitTags,
	IN_commitAvail,
	OUT_commitPrevTags,
	IN_wbValid,
	IN_wbTag
);
	parameter NUM_LOOKUP = 8;
	parameter NUM_ISSUE = 4;
	parameter NUM_COMMIT = 4;
	parameter NUM_WB = 4;
	parameter NUM_REGS = 32;
	parameter ID_SIZE = $clog2(NUM_REGS);
	parameter TAG_SIZE = 7;
	input wire clk;
	input wire rst;
	input wire IN_mispred;
	input wire IN_mispredFlush;
	input wire [(NUM_LOOKUP * ID_SIZE) - 1:0] IN_lookupIDs;
	output reg [NUM_LOOKUP - 1:0] OUT_lookupAvail;
	output reg [(NUM_LOOKUP * TAG_SIZE) - 1:0] OUT_lookupSpecTag;
	input wire [NUM_ISSUE - 1:0] IN_issueValid;
	input wire [(NUM_ISSUE * ID_SIZE) - 1:0] IN_issueIDs;
	input wire [(NUM_ISSUE * TAG_SIZE) - 1:0] IN_issueTags;
	input wire [NUM_ISSUE - 1:0] IN_issueAvail;
	input wire [NUM_COMMIT - 1:0] IN_commitValid;
	input wire [(NUM_COMMIT * ID_SIZE) - 1:0] IN_commitIDs;
	input wire [(NUM_COMMIT * TAG_SIZE) - 1:0] IN_commitTags;
	input wire [NUM_COMMIT - 1:0] IN_commitAvail;
	output reg [(NUM_COMMIT * TAG_SIZE) - 1:0] OUT_commitPrevTags;
	input wire [NUM_WB - 1:0] IN_wbValid;
	input wire [(NUM_WB * TAG_SIZE) - 1:0] IN_wbTag;
	localparam NUM_TAGS = 1 << (TAG_SIZE - 1);
	reg [TAG_SIZE - 1:0] comTag [NUM_REGS - 1:0];
	reg [TAG_SIZE - 1:0] specTag [NUM_REGS - 1:0];
	reg [NUM_TAGS - 1:0] tagAvail;
	always @(*) begin
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_LOOKUP; i = i + 1)
				begin
					OUT_lookupSpecTag[i * TAG_SIZE+:TAG_SIZE] = specTag[IN_lookupIDs[i * ID_SIZE+:ID_SIZE]];
					OUT_lookupAvail[i] = tagAvail[OUT_lookupSpecTag[(i * TAG_SIZE) + ((TAG_SIZE - 2) >= 0 ? TAG_SIZE - 2 : ((TAG_SIZE - 2) + ((TAG_SIZE - 2) >= 0 ? TAG_SIZE - 1 : 3 - TAG_SIZE)) - 1)-:((TAG_SIZE - 2) >= 0 ? TAG_SIZE - 1 : 3 - TAG_SIZE)]] | OUT_lookupSpecTag[(i * TAG_SIZE) + (TAG_SIZE - 1)];
					begin : sv2v_autoblock_2
						integer j;
						for (j = 0; j < NUM_WB; j = j + 1)
							if (IN_wbValid[j] && (IN_wbTag[j * TAG_SIZE+:TAG_SIZE] == OUT_lookupSpecTag[i * TAG_SIZE+:TAG_SIZE]))
								OUT_lookupAvail[i] = 1;
					end
					begin : sv2v_autoblock_3
						integer j;
						for (j = 0; j < (i / 2); j = j + 1)
							if ((IN_issueValid[j] && (IN_issueIDs[j * ID_SIZE+:ID_SIZE] == IN_lookupIDs[i * ID_SIZE+:ID_SIZE])) && (IN_issueIDs[j * ID_SIZE+:ID_SIZE] != 0)) begin
								OUT_lookupAvail[i] = IN_issueAvail[j];
								OUT_lookupSpecTag[i * TAG_SIZE+:TAG_SIZE] = IN_issueTags[j * TAG_SIZE+:TAG_SIZE];
							end
					end
				end
		end
		begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < NUM_COMMIT; i = i + 1)
				OUT_commitPrevTags[i * TAG_SIZE+:TAG_SIZE] = comTag[IN_commitIDs[i * ID_SIZE+:ID_SIZE]];
		end
	end
	always @(posedge clk)
		if (rst) begin
			begin : sv2v_autoblock_5
				integer i;
				for (i = 0; i < NUM_REGS; i = i + 1)
					begin
						comTag[i] <= 7'h40;
						specTag[i] <= 7'h40;
					end
			end
			tagAvail <= {NUM_TAGS {1'b1}};
		end
		else begin
			begin : sv2v_autoblock_6
				integer i;
				for (i = 0; i < NUM_WB; i = i + 1)
					if (IN_wbValid[i] && !IN_wbTag[(i * TAG_SIZE) + (TAG_SIZE - 1)])
						tagAvail[IN_wbTag[(i * TAG_SIZE) + ((TAG_SIZE - 2) >= 0 ? TAG_SIZE - 2 : ((TAG_SIZE - 2) + ((TAG_SIZE - 2) >= 0 ? TAG_SIZE - 1 : 3 - TAG_SIZE)) - 1)-:((TAG_SIZE - 2) >= 0 ? TAG_SIZE - 1 : 3 - TAG_SIZE)]] <= 1;
			end
			if (IN_mispred) begin : sv2v_autoblock_7
				integer i;
				for (i = 1; i < NUM_REGS; i = i + 1)
					specTag[i] <= comTag[i];
			end
			else begin : sv2v_autoblock_8
				integer i;
				for (i = 0; i < NUM_ISSUE; i = i + 1)
					if (IN_issueValid[i] && (IN_issueIDs[i * ID_SIZE+:ID_SIZE] != 0)) begin
						specTag[IN_issueIDs[i * ID_SIZE+:ID_SIZE]] <= IN_issueTags[i * TAG_SIZE+:TAG_SIZE];
						if (!IN_issueTags[(i * TAG_SIZE) + (TAG_SIZE - 1)])
							tagAvail[IN_issueTags[(i * TAG_SIZE) + ((TAG_SIZE - 2) >= 0 ? TAG_SIZE - 2 : ((TAG_SIZE - 2) + ((TAG_SIZE - 2) >= 0 ? TAG_SIZE - 1 : 3 - TAG_SIZE)) - 1)-:((TAG_SIZE - 2) >= 0 ? TAG_SIZE - 1 : 3 - TAG_SIZE)]] <= 0;
					end
			end
			begin : sv2v_autoblock_9
				integer i;
				for (i = 0; i < NUM_COMMIT; i = i + 1)
					if (IN_commitValid[i] && (IN_commitIDs[i * ID_SIZE+:ID_SIZE] != 0))
						if (IN_mispredFlush) begin
							if (!IN_mispred)
								specTag[IN_commitIDs[i * ID_SIZE+:ID_SIZE]] <= IN_commitTags[i * TAG_SIZE+:TAG_SIZE];
						end
						else begin
							comTag[IN_commitIDs[i * ID_SIZE+:ID_SIZE]] <= IN_commitTags[i * TAG_SIZE+:TAG_SIZE];
							if (IN_mispred)
								specTag[IN_commitIDs[i * ID_SIZE+:ID_SIZE]] <= IN_commitTags[i * TAG_SIZE+:TAG_SIZE];
						end
			end
		end
endmodule
module ReturnStack (
	clk,
	rst,
	OUT_stall,
	IN_valid,
	IN_pc,
	IN_fetchID,
	IN_comFetchID,
	IN_lastPC,
	IN_branch,
	OUT_curRetAddr,
	OUT_lateRetAddr,
	IN_mispr,
	IN_misprAct,
	IN_misprIdx,
	IN_misprFetchID,
	OUT_curIdx,
	OUT_predBr,
	IN_returnUpd
);
	parameter SIZE = 4;
	parameter RQSIZE = 4;
	parameter RET_PRED_SIZE = 64;
	parameter RET_PRED_ASSOC = 2;
	parameter RET_PRED_TAG_LEN = 10;
	input wire clk;
	input wire rst;
	output reg OUT_stall;
	input wire IN_valid;
	input wire [30:0] IN_pc;
	input wire [4:0] IN_fetchID;
	input wire [4:0] IN_comFetchID;
	input wire [30:0] IN_lastPC;
	input wire [40:0] IN_branch;
	output reg [30:0] OUT_curRetAddr;
	output wire [30:0] OUT_lateRetAddr;
	input wire IN_mispr;
	input wire [1:0] IN_misprAct;
	input wire [1:0] IN_misprIdx;
	input wire [4:0] IN_misprFetchID;
	output reg [1:0] OUT_curIdx;
	output reg [40:0] OUT_predBr;
	input wire [37:0] IN_returnUpd;
	localparam RET_PRED_LEN = RET_PRED_SIZE / RET_PRED_ASSOC;
	reg [RET_PRED_TAG_LEN + 5:0] rtable [RET_PRED_LEN - 1:0][RET_PRED_ASSOC - 1:0];
	reg [$clog2(RET_PRED_LEN) - 1:0] lookupIdx;
	reg [RET_PRED_TAG_LEN - 1:0] lookupTag;
	reg [2:0] lookupOffs;
	reg [$clog2(RET_PRED_LEN) - 1:0] decodeIdx;
	reg [RET_PRED_TAG_LEN - 1:0] decodeTag;
	reg [2:0] decodeOffs;
	reg [$clog2(RET_PRED_ASSOC) - 1:0] insertAssocIdx;
	reg insertAssocIdxValid;
	localparam PC_SHIFT = 3;
	always @(*) begin
		lookupIdx = IN_pc[PC_SHIFT+:$clog2(RET_PRED_LEN)] ^ IN_pc[6+:$clog2(RET_PRED_LEN)];
		lookupTag = IN_pc[PC_SHIFT+:RET_PRED_TAG_LEN] ^ IN_pc[RET_PRED_TAG_LEN + PC_SHIFT+:RET_PRED_TAG_LEN];
		lookupOffs = IN_pc[2:0];
		decodeIdx = IN_returnUpd[10+:$clog2(RET_PRED_LEN)] ^ IN_returnUpd[13+:$clog2(RET_PRED_LEN)];
		decodeTag = IN_returnUpd[10+:RET_PRED_TAG_LEN] ^ IN_returnUpd[7 + (RET_PRED_TAG_LEN + PC_SHIFT)+:RET_PRED_TAG_LEN];
		decodeOffs = IN_returnUpd[9:7];
		insertAssocIdxValid = 0;
		insertAssocIdx = 1'sbx;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < RET_PRED_ASSOC; i = i + 1)
				if (!rtable[decodeIdx][i][1] || !rtable[decodeIdx][i][0]) begin
					insertAssocIdx = i[$clog2(RET_PRED_ASSOC) - 1:0];
					insertAssocIdxValid = 1;
				end
		end
	end
	reg [30:0] rstack [SIZE - 1:0];
	reg [$clog2(RQSIZE) - 1:0] qindex;
	reg [$clog2(RQSIZE) - 1:0] qindexEnd;
	reg [37:0] rrqueue [RQSIZE - 1:0];
	reg forwardRindex;
	reg [1:0] recAct;
	wire [30:0] addrToPush = {IN_lastPC[30:3], IN_branch[9-:3]} + 1;
	reg [1:0] rindexReg;
	reg [1:0] rindex;
	reg lastValid;
	always @(*) begin
		rindex = rindexReg;
		if (forwardRindex)
			rindex = IN_misprIdx;
		else if ((IN_branch[0] && IN_branch[5]) && lastValid)
			rindex = rindex + 1;
		else if ((IN_branch[0] && IN_branch[3]) && lastValid)
			rindex = rindex - 1;
	end
	reg [$clog2(RET_PRED_ASSOC) - 1:0] lookupAssocIdx;
	always @(posedge clk)
		if (IN_valid) begin
			OUT_curIdx <= rindex;
			if (IN_branch[0] && IN_branch[5]) begin
				OUT_curRetAddr <= addrToPush;
				OUT_predBr[40-:31] <= addrToPush;
			end
			else begin
				OUT_curRetAddr <= rstack[rindex];
				OUT_predBr[40-:31] <= rstack[rindex];
			end
			OUT_predBr[1] <= 1;
			OUT_predBr[4] <= 1;
			OUT_predBr[5] <= 0;
			OUT_predBr[3] <= 1;
			OUT_predBr[0] <= 0;
			OUT_predBr[9-:3] <= 1'sbx;
			OUT_predBr[6] <= 1'sbx;
			OUT_predBr[2] <= 1'sbx;
			lookupAssocIdx <= 1'sbx;
			begin : sv2v_autoblock_2
				integer i;
				for (i = 0; i < RET_PRED_ASSOC; i = i + 1)
					if (((rtable[lookupIdx][i][0] && (rtable[lookupIdx][i][RET_PRED_TAG_LEN + 5-:((RET_PRED_TAG_LEN + 5) >= 6 ? RET_PRED_TAG_LEN + 0 : 7 - (RET_PRED_TAG_LEN + 5))] == lookupTag)) && (rtable[lookupIdx][i][5-:3] >= lookupOffs)) && (!OUT_predBr[0] || (OUT_predBr[9-:3] > rtable[lookupIdx][i][5-:3]))) begin
						OUT_predBr[0] <= 1;
						OUT_predBr[9-:3] <= rtable[lookupIdx][i][5-:3];
						OUT_predBr[6] <= rtable[lookupIdx][i][2];
						lookupAssocIdx <= i[$clog2(RET_PRED_ASSOC) - 1:0];
					end
			end
		end
	assign OUT_lateRetAddr = OUT_curRetAddr;
	reg recoveryInProgress;
	reg [4:0] recoveryID;
	reg [4:0] recoveryBase;
	reg [4:0] lastInvalComFetchID;
	always @(posedge clk) begin
		forwardRindex <= 0;
		if (rst) begin
			begin : sv2v_autoblock_3
				integer i;
				for (i = 0; i < RET_PRED_LEN; i = i + 1)
					begin : sv2v_autoblock_4
						integer j;
						for (j = 0; j < RET_PRED_ASSOC; j = j + 1)
							rtable[i][j][0] <= 0;
					end
			end
			qindex <= 0;
			qindexEnd <= 0;
			recoveryInProgress = 0;
			OUT_stall <= 0;
			lastInvalComFetchID <= 0;
			lastValid <= 0;
		end
		else begin
			lastValid <= IN_valid;
			if (IN_mispr) begin
				forwardRindex <= 1;
				recAct <= IN_misprAct;
				recoveryInProgress = 1;
				recoveryID = IN_misprFetchID;
				recoveryBase = lastInvalComFetchID;
				OUT_stall <= 1;
				lastValid <= 0;
			end
			else
				rindexReg <= rindex;
			if (recoveryInProgress)
				if (qindex == qindexEnd) begin
					recoveryInProgress = 0;
					OUT_stall <= 0;
				end
				else if ((rrqueue[qindex - 1][4-:5] - recoveryBase) >= (recoveryID - recoveryBase)) begin
					rstack[rrqueue[qindex - 1][6-:2]] <= rrqueue[qindex - 1][37-:31];
					rrqueue[qindex - 1] <= 1'sbx;
					qindex <= qindex - 1;
				end
				else begin
					recoveryInProgress = 0;
					OUT_stall <= 0;
				end
			if (!recoveryInProgress && (lastInvalComFetchID != IN_comFetchID))
				if ((rrqueue[qindexEnd][4-:5] - lastInvalComFetchID) < (IN_comFetchID - lastInvalComFetchID)) begin
					lastInvalComFetchID <= rrqueue[qindexEnd][4-:5];
					rrqueue[qindexEnd] <= 1'sbx;
					if (qindex != qindexEnd)
						qindexEnd <= qindexEnd + 1;
				end
				else
					lastInvalComFetchID <= IN_comFetchID;
			if (IN_returnUpd[0]) begin
				if (IN_returnUpd[1]) begin : sv2v_autoblock_5
					integer i;
					for (i = 0; i < RET_PRED_ASSOC; i = i + 1)
						if (rtable[decodeIdx][i][RET_PRED_TAG_LEN + 5-:((RET_PRED_TAG_LEN + 5) >= 6 ? RET_PRED_TAG_LEN + 0 : 7 - (RET_PRED_TAG_LEN + 5))] == decodeTag)
							rtable[decodeIdx][i][0] <= 0;
				end
				else if (IN_returnUpd[4])
					rstack[IN_returnUpd[6-:2] + 1] <= IN_returnUpd[37-:31] + 1;
				else if (IN_returnUpd[3])
					if (insertAssocIdxValid) begin
						rtable[decodeIdx][insertAssocIdx][0] <= 1;
						rtable[decodeIdx][insertAssocIdx][RET_PRED_TAG_LEN + 5-:((RET_PRED_TAG_LEN + 5) >= 6 ? RET_PRED_TAG_LEN + 0 : 7 - (RET_PRED_TAG_LEN + 5))] <= decodeTag;
						rtable[decodeIdx][insertAssocIdx][2] <= IN_returnUpd[2];
						rtable[decodeIdx][insertAssocIdx][5-:3] <= decodeOffs;
						rtable[decodeIdx][insertAssocIdx][1] <= 1;
					end
					else begin : sv2v_autoblock_6
						integer i;
						for (i = 0; i < RET_PRED_ASSOC; i = i + 1)
							rtable[decodeIdx][i][1] <= 0;
					end
			end
			else if (!IN_mispr && lastValid)
				if (IN_branch[0] && IN_branch[3]) begin
					rtable[lookupIdx][lookupAssocIdx][1] <= 1;
					rrqueue[qindex][4-:5] <= IN_fetchID;
					rrqueue[qindex][6-:2] <= rindexReg;
					rrqueue[qindex][37-:31] <= IN_branch[40-:31];
					qindex <= qindex + 1;
					if (qindexEnd == (qindex + 1'b1))
						qindexEnd <= qindexEnd + 1;
				end
				else if (IN_branch[0] && IN_branch[5])
					rstack[rindex] <= addrToPush;
		end
	end
endmodule
module ROB (
	clk,
	rst,
	IN_uop,
	IN_wbUOps,
	IN_interruptPending,
	OUT_PERFC_validRetire,
	OUT_PERFC_retireBranch,
	IN_branch,
	IN_sqInfo,
	OUT_maxSqN,
	OUT_curSqN,
	OUT_lastLoadSqN,
	OUT_lastStoreSqN,
	OUT_comUOp,
	OUT_fpNewFlags,
	OUT_curFetchID,
	OUT_trapUOp,
	OUT_bpUpdate0,
	OUT_mispredFlush
);
	parameter ID_LEN = 6;
	parameter WIDTH_RN = 4;
	parameter WIDTH = 4;
	parameter WIDTH_WB = 4;
	input wire clk;
	input wire rst;
	input wire [(WIDTH_RN * 126) - 1:0] IN_uop;
	input wire [(WIDTH_WB * 59) - 1:0] IN_wbUOps;
	input wire IN_interruptPending;
	output reg [WIDTH - 1:0] OUT_PERFC_validRetire;
	output reg [WIDTH - 1:0] OUT_PERFC_retireBranch;
	input wire [63:0] IN_branch;
	input wire [7:0] IN_sqInfo;
	output wire [6:0] OUT_maxSqN;
	output wire [6:0] OUT_curSqN;
	output reg [6:0] OUT_lastLoadSqN;
	output reg [6:0] OUT_lastStoreSqN;
	output reg [(WIDTH * 23) - 1:0] OUT_comUOp;
	output reg [4:0] OUT_fpNewFlags;
	output reg [4:0] OUT_curFetchID;
	output reg [46:0] OUT_trapUOp;
	output reg [9:0] OUT_bpUpdate0;
	output reg OUT_mispredFlush;
	localparam LENGTH = 1 << ID_LEN;
	reg [125:0] rnUOpSorted [WIDTH_RN - 1:0];
	always @(*) begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < WIDTH_RN; i = i + 1)
			begin
				rnUOpSorted[i] = 1'sbx;
				rnUOpSorted[i][0] = 0;
				begin : sv2v_autoblock_2
					integer j;
					for (j = 0; j < WIDTH_RN; j = j + 1)
						if (IN_uop[j * 126] && (IN_uop[(j * 126) + ((49 + $clog2(WIDTH_RN)) >= 50 ? 49 + $clog2(WIDTH_RN) : ((49 + $clog2(WIDTH_RN)) + ((49 + $clog2(WIDTH_RN)) >= 50 ? (49 + $clog2(WIDTH_RN)) - 49 : 51 - (49 + $clog2(WIDTH_RN)))) - 1)-:((49 + $clog2(WIDTH_RN)) >= 50 ? (49 + $clog2(WIDTH_RN)) - 49 : 51 - (49 + $clog2(WIDTH_RN)))] == i[$clog2(WIDTH_RN) - 1:0]))
							rnUOpSorted[i] = IN_uop[j * 126+:126];
				end
			end
	end
	genvar i;
	generate
		for (i = 0; i < 4; i = i + 1) begin : gen
			(* ram_style = "distributed" *) reg [38:0] entries [(LENGTH / 4) - 1:0];
		end
	endgenerate
	reg [3:0] flags [LENGTH - 1:0];
	reg [6:0] baseIndex;
	reg [6:0] lastIndex;
	assign OUT_maxSqN = (baseIndex + LENGTH) - 1;
	assign OUT_curSqN = baseIndex;
	reg [38:0] deqEntries [WIDTH - 1:0];
	reg [3:0] deqFlags [WIDTH - 1:0];
	reg [ID_LEN - 1:0] deqAddrs [WIDTH - 1:0];
	reg [(ID_LEN - 1) - $clog2(WIDTH):0] deqAddrsSorted [WIDTH - 1:0];
	reg [38:0] deqPorts [WIDTH - 1:0];
	reg [3:0] deqFlagPorts [WIDTH - 1:0];
	reg misprReplay;
	reg [6:0] misprReplayIter;
	always @(*) begin : sv2v_autoblock_3
		reg [ID_LEN - 1:0] deqBase;
		deqBase = (misprReplay && !IN_branch[0] ? misprReplayIter[ID_LEN - 1:0] : baseIndex[ID_LEN - 1:0]);
		begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < WIDTH; i = i + 1)
				deqAddrs[i] = deqBase + i[ID_LEN - 1:0];
		end
		begin : sv2v_autoblock_5
			integer i;
			for (i = 0; i < WIDTH; i = i + 1)
				deqAddrsSorted[i] = 1'sbx;
		end
		begin : sv2v_autoblock_6
			integer i;
			for (i = 0; i < WIDTH; i = i + 1)
				deqAddrsSorted[deqAddrs[i][1:0]] = deqAddrs[i][ID_LEN - 1:$clog2(WIDTH)];
		end
	end
	always @(*) begin : sv2v_autoblock_7
		integer i;
		for (i = 0; i < WIDTH; i = i + 1)
			deqFlagPorts[i] = flags[{deqAddrsSorted[i], i[1:0]}];
	end
	generate
		for (i = 0; i < WIDTH; i = i + 1) begin : genblk2
			always @(*) deqPorts[i] = gen[i].entries[{deqAddrsSorted[i]}];
		end
	endgenerate
	always @(*) begin : sv2v_autoblock_8
		integer i;
		for (i = 0; i < WIDTH; i = i + 1)
			begin
				deqEntries[i] = deqPorts[deqAddrs[i][1:0]];
				deqFlags[i] = deqFlagPorts[deqAddrs[i][1:0]];
			end
	end
	always @(*) begin : sv2v_autoblock_9
		integer i;
		for (i = 0; i < WIDTH; i = i + 1)
			OUT_PERFC_retireBranch[i] = OUT_PERFC_validRetire[i] && OUT_comUOp[(i * 23) + 3];
	end
	reg stop;
	reg misprReplayEnd;
	reg [6:0] misprReplayEndSqN;
	always @(posedge clk) begin
		OUT_fpNewFlags <= 0;
		OUT_PERFC_validRetire <= 0;
		OUT_trapUOp <= 1'sbx;
		OUT_trapUOp[0] <= 0;
		OUT_bpUpdate0 <= 1'sbx;
		OUT_bpUpdate0[0] <= 0;
		begin : sv2v_autoblock_10
			integer i;
			for (i = 0; i < WIDTH; i = i + 1)
				begin
					OUT_comUOp[i * 23+:23] <= 1'sbx;
					OUT_comUOp[i * 23] <= 0;
				end
		end
		if (rst) begin
			baseIndex <= 0;
			misprReplay <= 0;
			OUT_mispredFlush <= 0;
			OUT_curFetchID <= -1;
			stop <= 0;
			lastIndex <= 0;
			OUT_lastLoadSqN <= 0;
			OUT_lastStoreSqN <= 0;
		end
		else if (IN_branch[0]) begin
			if (IN_branch[6])
				OUT_curFetchID <= IN_branch[5-:5];
			misprReplay <= 1;
			misprReplayEndSqN <= IN_branch[27-:7];
			misprReplayIter <= baseIndex;
			misprReplayEnd <= 0;
			lastIndex <= IN_branch[27-:7] + 1;
			OUT_mispredFlush <= 0;
		end
		if (!rst) begin
			stop <= 0;
			if (misprReplay && !IN_branch[0]) begin
				if (misprReplayEnd) begin
					misprReplay <= 0;
					OUT_mispredFlush <= 0;
				end
				else begin
					OUT_mispredFlush <= 1;
					begin : sv2v_autoblock_11
						integer i;
						for (i = 0; i < WIDTH; i = i + 1)
							if ($signed((misprReplayIter + i[6:0]) - misprReplayEndSqN) <= 0) begin : sv2v_autoblock_12
								reg [$clog2(LENGTH) - 1:0] id;
								id = misprReplayIter[ID_LEN - 1:0] + i[ID_LEN - 1:0];
								OUT_comUOp[i * 23] <= 1;
								OUT_comUOp[(i * 23) + 10-:7] <= 1'sbx;
								OUT_comUOp[(i * 23) + 22-:5] <= (deqFlags[i] == 4'd7 ? 5'b00000 : deqEntries[i][30-:5]);
								OUT_comUOp[(i * 23) + 17-:7] <= deqEntries[i][38-:7];
								OUT_comUOp[(i * 23) + 1] <= deqFlags[i] != 4'b1111;
								begin : sv2v_autoblock_13
									integer j;
									for (j = 0; j < WIDTH_WB; j = j + 1)
										if ((IN_wbUOps[j * 59] && (IN_wbUOps[(j * 59) + 19-:7] == deqEntries[i][38-:7])) && !IN_wbUOps[(j * 59) + 19])
											OUT_comUOp[(i * 23) + 1] <= 1;
								end
							end
							else
								misprReplayEnd <= 1;
					end
					misprReplayIter <= misprReplayIter + WIDTH;
				end
			end
			else if (!stop && !IN_branch[0]) begin : sv2v_autoblock_14
				reg temp;
				reg pred;
				reg [ID_LEN - 1:0] cnt;
				temp = 0;
				pred = 0;
				cnt = 0;
				begin : sv2v_autoblock_15
					integer i;
					for (i = 0; i < WIDTH; i = i + 1)
						begin : sv2v_autoblock_16
							reg [ID_LEN - 1:0] id;
							id = baseIndex[ID_LEN - 1:0] + i[ID_LEN - 1:0];
							if ((((!temp && (i[$clog2(LENGTH):0] < $signed(lastIndex - baseIndex))) && (deqFlags[i] != 4'b1111)) && (!pred || (deqFlags[i] == 4'd0))) && (!IN_sqInfo[0] || ($signed({deqEntries[i][31], id} - IN_sqInfo[7-:7]) <= 0))) begin
								OUT_comUOp[(i * 23) + 22-:5] <= deqEntries[i][30-:5];
								OUT_comUOp[(i * 23) + 17-:7] <= deqEntries[i][38-:7];
								OUT_comUOp[(i * 23) + 10-:7] <= {deqEntries[i][31], id};
								OUT_comUOp[(i * 23) + 3] <= ((deqFlags[i] == 4'd1) || (deqFlags[i] == 4'd2)) || (deqFlags[i] == 4'd3);
								OUT_comUOp[(i * 23) + 1] <= deqEntries[i][16];
								OUT_comUOp[i * 23] <= 1;
								OUT_PERFC_validRetire[i] <= (((deqFlags[i] <= 4'd5) || (deqFlags[i] == 4'd14)) || (deqEntries[i][17] && (deqFlags[i] != 4'd6))) || ((deqFlags[i] == 4'd7) && (deqEntries[i][30-:5] == 5'd15));
								OUT_curFetchID <= deqEntries[i][22-:5];
								if (!((deqFlags[i] >= 4'd4) && (!deqEntries[i][17] || (deqFlags[i] == 4'd6)))) begin
									if (deqEntries[i][1])
										OUT_lastLoadSqN <= deqEntries[i][8-:7] + 1;
									if (deqEntries[i][0])
										OUT_lastStoreSqN <= deqEntries[i][15-:7] + 1;
								end
								if ((deqFlags[i] == 4'd2) || (deqFlags[i] == 4'd3)) begin
									OUT_bpUpdate0[0] <= 1;
									OUT_bpUpdate0[1] <= deqFlags[i] == 4'd2;
									OUT_bpUpdate0[6-:5] <= deqEntries[i][22-:5];
									OUT_bpUpdate0[9-:3] <= deqEntries[i][25-:3];
								end
								if ((deqFlags[i] >= 4'd2) && (!deqEntries[i][17] || (deqFlags[i] == 4'd6))) begin
									OUT_trapUOp[46-:4] <= deqFlags[i];
									OUT_trapUOp[42-:7] <= deqEntries[i][38-:7];
									OUT_trapUOp[35-:7] <= {deqEntries[i][31], id};
									OUT_trapUOp[28-:7] <= deqEntries[i][8-:7];
									OUT_trapUOp[21-:7] <= deqEntries[i][15-:7];
									OUT_trapUOp[14-:5] <= deqEntries[i][30-:5];
									OUT_trapUOp[9-:3] <= deqEntries[i][25-:3];
									OUT_trapUOp[6-:5] <= deqEntries[i][22-:5];
									OUT_trapUOp[1] <= deqEntries[i][16];
									OUT_trapUOp[0] <= 1;
									if (deqFlags[i] >= 4'd2)
										pred = 1;
									if (deqFlags[i] >= 4'd4) begin
										if ((deqFlags[i] >= 4'd6) && (deqFlags[i] <= 4'd13)) begin
											OUT_comUOp[(i * 23) + 22-:5] <= 0;
											OUT_comUOp[(i * 23) + 17-:7] <= 7'h40;
										end
										stop <= 1;
										temp = 1;
									end
								end
								else if ((deqEntries[i][17] && (deqFlags[i] >= 4'd8)) && (deqFlags[i] <= 4'd12)) begin
									OUT_fpNewFlags[deqFlags[i][2:0] - 3'd0] <= 1;
									if ((deqFlags[i] == 4'd9) || (deqFlags[i] == 4'd10))
										OUT_fpNewFlags[3'd0] <= 1;
								end
								cnt = cnt + 1;
							end
							else begin
								temp = 1;
								if ((i == 0) && (i[$clog2(LENGTH):0] < $signed(lastIndex - baseIndex))) begin
									OUT_trapUOp[0] <= 1;
									OUT_trapUOp[9-:3] <= deqEntries[i][25-:3];
									OUT_trapUOp[6-:5] <= deqEntries[i][22-:5];
									OUT_trapUOp[1] <= deqEntries[i][16];
									OUT_trapUOp[46-:4] <= 4'b1111;
								end
							end
						end
				end
				baseIndex <= baseIndex + cnt;
			end
			begin : sv2v_autoblock_17
				integer i;
				for (i = 0; i < WIDTH_RN; i = i + 1)
					if (rnUOpSorted[i][0] && !IN_branch[0]) begin : sv2v_autoblock_18
						reg [ID_LEN - 1:0] id;
						reg [$clog2(LENGTH / WIDTH_RN) - 1:0] id1;
						reg [$clog2(WIDTH_RN) - 1:0] id0;
						reg [38:0] entry;
						id = {rnUOpSorted[i][49 + ID_LEN:52], i[1:0]};
						id1 = {rnUOpSorted[i][49 + ID_LEN:52]};
						id0 = {i[1:0]};
						entry = 1'sbx;
						entry[38-:7] = rnUOpSorted[i][49-:7];
						entry[30-:5] = rnUOpSorted[i][42-:5];
						entry[31] = rnUOpSorted[i][50 + ID_LEN];
						entry[16] = rnUOpSorted[i][5];
						entry[22-:5] = rnUOpSorted[i][31-:5];
						entry[17] = ((rnUOpSorted[i][9-:4] == 4'd5) || (rnUOpSorted[i][9-:4] == 4'd6)) || (rnUOpSorted[i][9-:4] == 4'd7);
						entry[25-:3] = rnUOpSorted[i][26-:3];
						entry[15-:7] = rnUOpSorted[i][23-:7];
						entry[8-:7] = rnUOpSorted[i][16-:7];
						entry[1] = (rnUOpSorted[i][9-:4] == 4'd1) || (rnUOpSorted[i][9-:4] == 4'd9);
						entry[0] = (rnUOpSorted[i][9-:4] == 4'd2) || (rnUOpSorted[i][9-:4] == 4'd9);
						case (id0)
							0: gen[0].entries[id1] <= entry;
							1: gen[1].entries[id1] <= entry;
							2: gen[2].entries[id1] <= entry;
							3: gen[3].entries[id1] <= entry;
						endcase
						if (rnUOpSorted[i][9-:4] == 4'd8)
							flags[id] <= 4'd0;
						else if (rnUOpSorted[i][9-:4] == 4'd11)
							flags[id] <= 4'd7;
						else
							flags[id] <= 4'b1111;
					end
			end
			begin : sv2v_autoblock_19
				integer i;
				for (i = 0; i < WIDTH_RN; i = i + 1)
					if (IN_uop[i * 126] && !IN_branch[0])
						lastIndex <= IN_uop[(i * 126) + 56-:7] + 1;
			end
			begin : sv2v_autoblock_20
				integer i;
				for (i = 0; i < WIDTH_WB; i = i + 1)
					if ((IN_wbUOps[i * 59] && (!IN_branch[0] || ($signed(IN_wbUOps[(i * 59) + 12-:7] - IN_branch[27-:7]) <= 0))) && !IN_wbUOps[(i * 59) + 1]) begin : sv2v_autoblock_21
						reg [$clog2(LENGTH) - 1:0] id;
						id = IN_wbUOps[(i * 59) + ((5 + ID_LEN) >= 6 ? 5 + ID_LEN : ((5 + ID_LEN) + ((5 + ID_LEN) >= 6 ? (5 + ID_LEN) - 5 : 7 - (5 + ID_LEN))) - 1)-:((5 + ID_LEN) >= 6 ? (5 + ID_LEN) - 5 : 7 - (5 + ID_LEN))];
						flags[id] <= IN_wbUOps[(i * 59) + 5-:4];
					end
			end
		end
	end
endmodule
module SoC (
	clk,
	rst,
	en,
	OUT_powerOff,
	OUT_reboot,
	s_axi_awid,
	s_axi_awaddr,
	s_axi_awlen,
	s_axi_awsize,
	s_axi_awburst,
	s_axi_awlock,
	s_axi_awcache,
	s_axi_awvalid,
	s_axi_awready,
	s_axi_wdata,
	s_axi_wstrb,
	s_axi_wlast,
	s_axi_wvalid,
	s_axi_wready,
	s_axi_bready,
	s_axi_bid,
	s_axi_bvalid,
	s_axi_arid,
	s_axi_araddr,
	s_axi_arlen,
	s_axi_arsize,
	s_axi_arburst,
	s_axi_arlock,
	s_axi_arcache,
	s_axi_arvalid,
	s_axi_arready,
	s_axi_rready,
	s_axi_rid,
	s_axi_rdata,
	s_axi_rlast,
	s_axi_rvalid,
	OUT_dbg,
	OUT_dbgMemC
);
	parameter WIDTH = 128;
	parameter ADDR_LEN = 32;
	input wire clk;
	input wire rst;
	input wire en;
	output wire OUT_powerOff;
	output wire OUT_reboot;
	output wire [1:0] s_axi_awid;
	output wire [ADDR_LEN - 1:0] s_axi_awaddr;
	output wire [7:0] s_axi_awlen;
	output wire [2:0] s_axi_awsize;
	output wire [1:0] s_axi_awburst;
	output wire [0:0] s_axi_awlock;
	output wire [3:0] s_axi_awcache;
	output wire s_axi_awvalid;
	input s_axi_awready;
	output wire [WIDTH - 1:0] s_axi_wdata;
	output wire [(WIDTH / 8) - 1:0] s_axi_wstrb;
	output wire s_axi_wlast;
	output wire s_axi_wvalid;
	input s_axi_wready;
	output wire s_axi_bready;
	input [1:0] s_axi_bid;
	input s_axi_bvalid;
	output wire [1:0] s_axi_arid;
	output wire [ADDR_LEN - 1:0] s_axi_araddr;
	output wire [7:0] s_axi_arlen;
	output wire [2:0] s_axi_arsize;
	output wire [1:0] s_axi_arburst;
	output wire [0:0] s_axi_arlock;
	output wire [3:0] s_axi_arcache;
	output wire s_axi_arvalid;
	input s_axi_arready;
	output wire s_axi_rready;
	input [1:0] s_axi_rid;
	input [WIDTH - 1:0] s_axi_rdata;
	input s_axi_rlast;
	input s_axi_rvalid;
	output wire [39:0] OUT_dbg;
	output wire [15:0] OUT_dbgMemC;
	wire [141:0] MC_IC_wr;
	wire [157:0] MC_DC_rd;
	wire [157:0] MC_DC_wr;
	wire [338:0] MemC_ctrl;
	wire [397:0] MemC_stat;
	reg [127:0] DC_dataOut;
	MemoryController memc(
		.clk(clk),
		.rst(rst),
		.IN_ctrl(MemC_ctrl),
		.OUT_stat(MemC_stat),
		.OUT_icacheW(MC_IC_wr),
		.OUT_dcacheW(MC_DC_wr),
		.OUT_dcacheR(MC_DC_rd),
		.IN_dcacheR(DC_dataOut),
		.s_axi_awid(s_axi_awid),
		.s_axi_awaddr(s_axi_awaddr),
		.s_axi_awlen(s_axi_awlen),
		.s_axi_awsize(s_axi_awsize),
		.s_axi_awburst(s_axi_awburst),
		.s_axi_awlock(s_axi_awlock),
		.s_axi_awcache(s_axi_awcache),
		.s_axi_awvalid(s_axi_awvalid),
		.s_axi_awready(s_axi_awready),
		.s_axi_wdata(s_axi_wdata),
		.s_axi_wstrb(s_axi_wstrb),
		.s_axi_wlast(s_axi_wlast),
		.s_axi_wvalid(s_axi_wvalid),
		.s_axi_wready(s_axi_wready),
		.s_axi_bready(s_axi_bready),
		.s_axi_bid(s_axi_bid),
		.s_axi_bvalid(s_axi_bvalid),
		.s_axi_arid(s_axi_arid),
		.s_axi_araddr(s_axi_araddr),
		.s_axi_arlen(s_axi_arlen),
		.s_axi_arsize(s_axi_arsize),
		.s_axi_arburst(s_axi_arburst),
		.s_axi_arlock(s_axi_arlock),
		.s_axi_arcache(s_axi_arcache),
		.s_axi_arvalid(s_axi_arvalid),
		.s_axi_arready(s_axi_arready),
		.s_axi_rready(s_axi_rready),
		.s_axi_rid(s_axi_rid),
		.s_axi_rdata(s_axi_rdata),
		.s_axi_rlast(s_axi_rlast),
		.s_axi_rvalid(s_axi_rvalid),
		.OUT_dbg(OUT_dbgMemC)
	);
	generate
		if (1) begin : IF_cache
			reg we;
			reg [11:0] waddr;
			reg [1:0] wassoc;
			reg [31:0] wdata;
			reg [3:0] wmask;
			reg re;
			reg [11:0] raddr;
			wire [127:0] rdata;
			reg rbusy;
			reg [0:0] rbusyBank;
			reg wbusy;
		end
		if (1) begin : IF_ct
			reg we;
			reg [11:0] waddr;
			reg [1:0] wassoc;
			reg [20:0] wdata;
			reg re [1:0];
			reg [11:0] raddr [1:0];
			wire [167:0] rdata;
		end
		if (1) begin : IF_mmio
			localparam ADDR_LEN = 32;
			reg we;
			reg [31:0] waddr;
			reg [31:0] wdata;
			reg [3:0] wmask;
			reg re;
			reg [31:0] raddr;
			reg [1:0] rsize;
			reg [31:0] rdata;
			wire rbusy;
			wire wbusy;
		end
		if (1) begin : IF_csr_mmio
			wire [63:0] mtime;
			wire [63:0] mtimecmp;
		end
		if (1) begin : IF_icache
			reg re;
			reg [11:0] raddr;
			wire [511:0] rdata;
		end
		if (1) begin : IF_ict
			reg we;
			reg [11:0] waddr;
			reg [1:0] wassoc;
			reg [20:0] wdata;
			reg re;
			reg [11:0] raddr;
			wire [83:0] rdata;
		end
	endgenerate
	function automatic [1:0] sv2v_cast_2;
		input reg [1:0] inp;
		sv2v_cast_2 = inp;
	endfunction
	function automatic [4:0] sv2v_cast_5;
		input reg [4:0] inp;
		sv2v_cast_5 = inp;
	endfunction
	function automatic [54:0] sv2v_cast_55;
		input reg [54:0] inp;
		sv2v_cast_55 = inp;
	endfunction
	function automatic [112:0] sv2v_cast_113;
		input reg [112:0] inp;
		sv2v_cast_113 = inp;
	endfunction
	function automatic [206:0] sv2v_cast_207;
		input reg [206:0] inp;
		sv2v_cast_207 = inp;
	endfunction
	function automatic [81:0] sv2v_cast_82;
		input reg [81:0] inp;
		sv2v_cast_82 = inp;
	endfunction
	generate
		if (1) begin : core
			wire clk;
			wire rst;
			wire en;
			wire [338:0] OUT_memc;
			wire [397:0] IN_memc;
			wire [39:0] OUT_dbg;
			wire [112:0] PC_MC_if;
			assign OUT_memc[0+:113] = PC_MC_if;
			wire [112:0] LSU_MC_if;
			assign OUT_memc[113+:113] = LSU_MC_if;
			wire [112:0] BLSU_MC_if;
			assign OUT_memc[226+:113] = BLSU_MC_if;
			wire [31:0] TH_stallPC;
			assign OUT_dbg[39-:32] = TH_stallPC;
			wire [6:0] RN_nextSqN;
			wire [6:0] ROB_maxSqN;
			wire sqNStall = $signed(RN_nextSqN - ROB_maxSqN) > -4;
			assign OUT_dbg[7] = sqNStall;
			wire [6:0] RN_nextStoreSqN;
			wire [6:0] SQ_maxStoreSqN;
			wire stSqNStall = $signed(RN_nextStoreSqN - SQ_maxStoreSqN) > -3;
			assign OUT_dbg[6] = stSqNStall;
			wire RN_stall;
			assign OUT_dbg[5] = RN_stall;
			wire [109:0] AGU_LD_uop;
			wire LSU_busy;
			wire SQ_empty;
			wire [71:0] SQ_uop;
			wire MEMSUB_busy = ((!SQ_empty || SQ_uop[0]) || AGU_LD_uop[0]) || LSU_busy;
			assign OUT_dbg[4] = MEMSUB_busy;
			assign OUT_dbg[3] = !SQ_empty || SQ_uop[0];
			assign OUT_dbg[2] = AGU_LD_uop[0] || LSU_busy;
			wire [9:0] LSU_ldAck;
			assign OUT_dbg[1] = LSU_ldAck[0] && LSU_ldAck[2];
			wire [71:0] LSU_stAck;
			assign OUT_dbg[0] = LSU_stAck[0] && LSU_stAck[1];
			localparam NUM_WBS = 4;
			wire [235:0] wbUOp;
			reg [3:0] wbHasResult;
			always @(*) begin : sv2v_autoblock_1
				integer i;
				for (i = 0; i < 4; i = i + 1)
					wbHasResult[i] = wbUOp[i * 59] && !wbUOp[(i * 59) + 19];
			end
			wire [91:0] comUOps;
			wire TH_disableIFetch;
			wire ifetchEn = !TH_disableIFetch;
			wire [30:0] BP_lateRetAddr;
			wire [255:0] branchProvs;
			wire [63:0] branch;
			wire mispredFlush;
			wire BS_PERFC_branchMispr;
			wire [206:0] IF_instrs;
			wire [227:0] BP_btUpdates;
			wire [24:0] PC_readAddress;
			wire [184:0] PC_readData;
			wire PC_stall;
			wire [54:0] PC_PW_rq;
			wire [132:0] CSR_trapControl;
			wire [30:0] CSR_vmem;
			wire [41:0] DEC_decBranch;
			wire [37:0] DEC_retUpd;
			wire PD_full;
			wire [52:0] PW_res;
			wire [9:0] ROB_bpUpdate0;
			wire [4:0] ROB_curFetchID;
			wire [6:0] ROB_curSqN;
			wire [31:0] TH_bpUpdate1;
			wire TH_clearICache;
			wire TH_flushTLB;
			if (1) begin : ifetch
				localparam NUM_UOPS = 3;
				localparam NUM_BLOCKS = 8;
				localparam NUM_BP_UPD = 3;
				localparam NUM_BRANCH_PROVS = 4;
				wire clk;
				wire rst;
				wire IN_en;
				wire IN_interruptPending;
				wire IN_MEM_busy;
				wire [255:0] IN_branches;
				wire IN_mispredFlush;
				wire [4:0] IN_ROB_curFetchID;
				wire [6:0] IN_ROB_curSqN;
				wire [6:0] IN_RN_nextSqN;
				wire OUT_PERFC_branchMispr;
				wire [63:0] OUT_branch;
				wire [37:0] IN_retDecUpd;
				wire [41:0] IN_decBranch;
				wire IN_clearICache;
				wire IN_flushTLB;
				wire [227:0] IN_btUpdates;
				wire [9:0] IN_bpUpdate0;
				wire [31:0] IN_bpUpdate1;
				wire [24:0] IN_pcReadAddr;
				wire [184:0] OUT_pcReadData;
				wire IN_ready;
				wire [206:0] OUT_instrs;
				wire [30:0] OUT_lateRetAddr;
				wire [30:0] IN_vmem;
				wire [54:0] OUT_pw;
				wire [52:0] IN_pw;
				wire [112:0] OUT_memc;
				wire [397:0] IN_memc;
				reg [30:0] pc;
				wire [31:0] pcFull = {pc, 1'b0};
				BranchSelector #(.NUM_BRANCHES(NUM_BRANCH_PROVS)) bsel(
					.clk(clk),
					.rst(rst),
					.IN_branches(IN_branches),
					.OUT_branch(OUT_branch),
					.OUT_PERFC_branchMispr(OUT_PERFC_branchMispr),
					.IN_ROB_curSqN(IN_ROB_curSqN),
					.IN_RN_nextSqN(IN_RN_nextSqN),
					.IN_mispredFlush(IN_mispredFlush)
				);
				wire [2:0] BP_lastOffs;
				wire [40:0] predBr;
				wire BP_stall;
				wire [30:0] BP_curRetAddr;
				wire [1:0] BP_rIdx;
				wire [4:0] fetchID;
				wire icacheMiss;
				wire [4:0] icacheMissFetchID;
				wire [31:0] icacheMissPC;
				reg issuedInterrupt;
				reg waitForInterrupt;
				wire baseEn = ((IN_en && !waitForInterrupt) && !issuedInterrupt) && !BP_stall;
				wire icacheStall;
				wire ifetchEn = baseEn && !icacheStall;
				wire pcFileWriteEn;
				wire [31:1] sv2v_tmp_bp_OUT_pc;
				always @(*) pc = sv2v_tmp_bp_OUT_pc;
				BranchPredictor #(.NUM_IN(NUM_BP_UPD)) bp(
					.clk(clk),
					.rst(rst),
					.en1(pcFileWriteEn),
					.OUT_stall(BP_stall),
					.IN_clearICache(IN_clearICache),
					.IN_mispredFlush(IN_mispredFlush),
					.IN_mispr((OUT_branch[0] || IN_decBranch[0]) || icacheMiss),
					.IN_misprFetchID((OUT_branch[0] ? OUT_branch[5-:5] : (IN_decBranch[0] ? IN_decBranch[6-:5] : icacheMissFetchID))),
					.IN_misprRetAct((OUT_branch[0] ? OUT_branch[63-:2] : (IN_decBranch[0] ? IN_decBranch[41-:2] : 2'd0))),
					.IN_misprHistAct((OUT_branch[0] ? OUT_branch[61-:2] : (IN_decBranch[0] ? IN_decBranch[39-:2] : 2'd0))),
					.IN_misprDst((OUT_branch[0] ? OUT_branch[59:29] : (IN_decBranch[0] ? IN_decBranch[37-:31] : icacheMissPC[31:1]))),
					.IN_pcValid(ifetchEn),
					.IN_fetchID(fetchID),
					.IN_comFetchID(IN_ROB_curFetchID),
					.OUT_pc(sv2v_tmp_bp_OUT_pc),
					.OUT_lastOffs(BP_lastOffs),
					.OUT_curRetAddr(BP_curRetAddr),
					.OUT_lateRetAddr(OUT_lateRetAddr),
					.OUT_rIdx(BP_rIdx),
					.OUT_predBr(predBr),
					.IN_retDecUpd(IN_retDecUpd),
					.IN_btUpdates(IN_btUpdates),
					.IN_bpUpdate0(IN_bpUpdate0),
					.IN_bpUpdate1(IN_bpUpdate1)
				);
				wire [36:0] PCF_writeData;
				reg [81:0] ifetchOp;
				if (1) begin : ict
					localparam ASSOC = 4;
					localparam NUM_ICACHE_LINES = 256;
					localparam RQ_ID = 0;
					localparam FIFO_SIZE = 4;
					wire clk;
					wire rst;
					wire IN_MEM_busy;
					wire IN_mispr;
					wire [4:0] IN_misprFetchID;
					wire [4:0] IN_ROB_curFetchID;
					wire [81:0] IN_ifetchOp;
					reg OUT_stall;
					wire [40:0] IN_predBranch;
					wire [1:0] IN_rIdx;
					wire [2:0] IN_lastValid;
					wire [4:0] OUT_fetchID;
					reg OUT_pcFileWE;
					reg [36:0] OUT_pcFileEntry;
					reg OUT_icacheMiss;
					reg [4:0] OUT_icacheMissFetchID;
					reg [31:0] OUT_icacheMissPC;
					wire IN_ready;
					reg [206:0] OUT_instrs;
					wire IN_clearICache;
					wire IN_flushTLB;
					wire [30:0] IN_vmem;
					reg [54:0] OUT_pw;
					wire [52:0] IN_pw;
					reg [112:0] OUT_memc;
					wire [397:0] IN_memc;
					reg [81:0] fetch0;
					always @(*) begin
						OUT_pcFileWE = 0;
						OUT_pcFileEntry = 1'sbx;
						if (fetch0[0]) begin
							OUT_pcFileWE = 1;
							OUT_pcFileEntry[36-:31] = fetch0[81:51];
							OUT_pcFileEntry[5-:3] = IN_predBranch[9-:3];
							OUT_pcFileEntry[2] = IN_predBranch[0];
							OUT_pcFileEntry[1] = IN_predBranch[1];
							OUT_pcFileEntry[0] = IN_predBranch[4];
						end
					end
					wire [2:0] FIFO_free;
					reg [81:0] fetch1;
					reg [1:0] flushState;
					always @(*) begin
						OUT_stall = 0;
						if (IN_pw[1] && (IN_pw[3-:2] == RQ_ID))
							OUT_stall = 1;
						if ($signed(((FIFO_free - sv2v_cast_2(fetch0[0])) - sv2v_cast_2(fetch1[0])) - 1) <= -1)
							OUT_stall = 1;
						if (IN_ROB_curFetchID == (OUT_fetchID + sv2v_cast_5(fetch0[0])))
							OUT_stall = 1;
						if (flushState != 2'd0)
							OUT_stall = 1;
					end
					always @(*) begin
						SoC.IF_icache.re = 0;
						SoC.IF_icache.raddr = 1'sbx;
						SoC.IF_ict.re = 0;
						SoC.IF_ict.raddr = 1'sbx;
						if (IN_ifetchOp[0] && !OUT_stall) begin
							SoC.IF_icache.re = 1;
							SoC.IF_icache.raddr = IN_ifetchOp[61:50];
							SoC.IF_ict.re = 1;
							SoC.IF_ict.raddr = IN_ifetchOp[61:50];
						end
					end
					reg [20:0] TLB_req;
					reg cacheMiss;
					always @(*) begin
						TLB_req[20-:20] = fetch0[81:62];
						TLB_req[0] = (fetch0[0] && !IN_mispr) && !cacheMiss;
					end
					wire [27:0] TLB_res_c;
					reg [27:0] TLB_res;
					TLB #(
						.NUM_RQ(1),
						.SIZE(4),
						.ASSOC(2),
						.IS_IFETCH(1)
					) itlb(
						.clk(clk),
						.rst(rst),
						.clear(IN_clearICache || IN_flushTLB),
						.IN_pw(IN_pw),
						.IN_rqs({TLB_req}),
						.OUT_res({TLB_res_c})
					);
					always @(posedge clk) TLB_res <= TLB_res_c;
					reg [1:0] assocCnt;
					reg tlbMiss;
					reg cacheHit;
					reg doCacheLoad;
					reg [1:0] assocHit;
					reg [31:0] phyPC;
					reg [206:0] packet;
					function automatic [1:0] CheckTransfers;
						input reg [112:0] memcReq;
						input reg [397:0] memcRes;
						input reg [0:0] cacheID;
						input reg [31:0] addr;
						reg [1:0] rv;
						begin
							rv = 0;
							begin : sv2v_autoblock_2
								integer i;
								for (i = 0; i < 4; i = i + 1)
									if ((memcRes[62 + (i * 84)] && (memcRes[62 + ((i * 84) + 2)] == cacheID)) && (memcRes[62 + ((i * 84) + 51)-:26] == addr[31:6])) begin
										rv[0] = 1;
										rv[1] = memcRes[62 + ((i * 84) + 7)-:5] > ({1'b0, addr[5:2]} - {1'b0, memcRes[62 + ((i * 84) + 25)-:4]});
									end
							end
							if ((((memcReq[112-:4] == 4'd1) || (memcReq[112-:4] == 4'd3)) && (memcReq[64:39] == addr[31:6])) && (memcReq[0] == cacheID))
								rv = 2'b01;
							CheckTransfers = rv;
						end
					endfunction
					always @(*) begin : sv2v_autoblock_3
						reg transferExists;
						reg allowPassThru;
						transferExists = 1'sbx;
						allowPassThru = 1'sbx;
						phyPC = 1'sbx;
						packet = sv2v_cast_207(207'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
						packet[173-:2] = fetch1[44-:2];
						tlbMiss = 0;
						cacheHit = 0;
						cacheMiss = 0;
						assocHit = 1'sbx;
						doCacheLoad = 1;
						if (fetch1[0]) begin
							if (IN_vmem[29] && (packet[173-:2] == 2'd0)) begin
								if (TLB_res[0]) begin
									if (((TLB_res[7] || !TLB_res[3]) || ((IN_vmem[1-:2] == 2'd0) && !TLB_res[1])) || (((IN_vmem[1-:2] == 2'd1) && TLB_res[1]) && !IN_vmem[5]))
										packet[173-:2] = 2'd3;
									else
										phyPC = {(TLB_res[2] ? {TLB_res[27:18], fetch1[71:62]} : TLB_res[27-:20]), fetch1[61:50]};
								end
								else
									tlbMiss = 1;
							end
							else
								phyPC = fetch1[81-:32];
							if (!tlbMiss && (packet[173-:2] == 2'd0))
								if (!(((phyPC >= 32'h80000000) && (phyPC < 32'h90000000)) || (((phyPC < 32'h80000000) && (phyPC >= 32'h10000000)) && (phyPC < 32'h12000000))) || (phyPC < 32'h80000000))
									packet[173-:2] = 2'd2;
							if (!tlbMiss && (packet[173-:2] == 2'd0)) begin
								begin : sv2v_autoblock_4
									integer i;
									for (i = 0; i < 4; i = i + 1)
										if (SoC.IF_ict.rdata[i * 21] && (SoC.IF_ict.rdata[(i * 21) + 20-:20] == phyPC[31:12])) begin
											cacheHit = 1;
											doCacheLoad = 0;
											assocHit = i[1:0];
											packet[128-:128] = SoC.IF_icache.rdata[i * 128+:128];
										end
								end
								{allowPassThru, transferExists} = CheckTransfers(OUT_memc, IN_memc, 1, phyPC);
								if (transferExists) begin
									doCacheLoad = 0;
									cacheHit = cacheHit & allowPassThru;
								end
								cacheMiss = !cacheHit;
							end
							if (packet[173-:2] != 2'd0) begin
								packet[206-:28] = fetch1[81:54];
								packet[171-:3] = fetch1[53:51];
								packet[168-:3] = fetch1[53:51];
								packet[165-:3] = 3'b111;
								packet[162] = 0;
								packet[161-:31] = 1'sbx;
								packet[130-:2] = fetch1[2-:2];
								packet[178-:5] = fetch1[49-:5];
								packet[128-:128] = 1'sb0;
								packet[0] = 1;
							end
							else if (!tlbMiss && cacheHit) begin
								packet[206-:28] = fetch1[81:54];
								packet[171-:3] = fetch1[53:51];
								packet[168-:3] = fetch1[42-:3];
								packet[165-:3] = fetch1[39-:3];
								packet[162] = fetch1[35];
								packet[161-:31] = fetch1[33-:31];
								packet[130-:2] = fetch1[2-:2];
								packet[178-:5] = fetch1[49-:5];
								packet[0] = 1;
							end
						end
					end
					reg [54:0] OUT_pw_c;
					always @(*) begin
						OUT_pw_c = sv2v_cast_55(55'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
						if (rst)
							;
						else if (OUT_pw[0] && IN_pw[1])
							OUT_pw_c = OUT_pw;
						else if (tlbMiss) begin
							OUT_pw_c[54-:32] = fetch1[81-:32];
							OUT_pw_c[22-:22] = IN_vmem[28-:22];
							OUT_pw_c[0] = 1;
						end
					end
					always @(posedge clk) OUT_pw <= OUT_pw_c;
					reg [112:0] OUT_memc_c;
					reg handlingMiss;
					always @(*) begin
						OUT_memc_c = 1'sbx;
						OUT_memc_c[112-:4] = 4'd0;
						handlingMiss = 0;
						if (rst)
							;
						else if ((OUT_memc[112-:4] != 4'd0) && IN_memc[1])
							OUT_memc_c = OUT_memc;
						else if ((cacheMiss && doCacheLoad) && !IN_mispr) begin
							OUT_memc_c[112-:4] = 4'd3;
							OUT_memc_c[76-:12] = {assocCnt, phyPC[11:4], 2'b00};
							OUT_memc_c[64-:32] = {phyPC[31:4], 4'b0000};
							OUT_memc_c[0] = 1;
							handlingMiss = 1;
						end
					end
					reg [5:0] flushAddrIter;
					reg [1:0] flushAssocIter;
					always @(*) begin
						SoC.IF_ict.wdata = 1'sbx;
						SoC.IF_ict.wassoc = 1'sbx;
						SoC.IF_ict.waddr = 1'sbx;
						SoC.IF_ict.we = 0;
						if (flushState == 2'd2) begin
							SoC.IF_ict.wdata[0] = 0;
							SoC.IF_ict.wdata[20-:20] = 1'sb0;
							SoC.IF_ict.wassoc = flushAssocIter;
							SoC.IF_ict.waddr = {flushAddrIter, {6 {1'b0}}};
							SoC.IF_ict.we = 1;
						end
						else if (handlingMiss) begin
							SoC.IF_ict.wdata[0] = 1;
							SoC.IF_ict.wdata[20-:20] = phyPC[31:12];
							SoC.IF_ict.wassoc = assocCnt;
							SoC.IF_ict.waddr = phyPC[11:0];
							SoC.IF_ict.we = 1;
						end
					end
					always @(posedge clk) OUT_memc <= (rst ? sv2v_cast_113(113'b0000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx) : OUT_memc_c);
					always @(*) begin
						OUT_icacheMissFetchID = 1'sbx;
						OUT_icacheMissPC = 1'sbx;
						OUT_icacheMiss = cacheMiss || tlbMiss;
						if (OUT_icacheMiss) begin
							OUT_icacheMissPC = fetch1[81-:32];
							OUT_icacheMissFetchID = fetch1[49-:5];
						end
					end
					wire FIFO_outValid;
					wire [206:0] FIFO_out;
					wire FIFO_ready;
					FIFO #(
						.WIDTH(207),
						.NUM(FIFO_SIZE),
						.FORWARD1(1),
						.FORWARD0(1)
					) outFIFO(
						.clk(clk),
						.rst(rst || IN_mispr),
						.free(FIFO_free),
						.IN_valid(packet[0]),
						.IN_data(packet),
						.OUT_ready(FIFO_ready),
						.OUT_valid(FIFO_outValid),
						.IN_ready(IN_ready),
						.OUT_data(FIFO_out)
					);
					always @(*) begin
						OUT_instrs = 1'sbx;
						OUT_instrs[0] = 0;
						if (FIFO_outValid)
							OUT_instrs = FIFO_out;
					end
					always @(posedge clk)
						if (!(rst || IN_mispr) && packet[0])
							;
					reg [4:0] fetchID;
					assign OUT_fetchID = fetchID;
					wire [4:0] fetchID_c;
					always @(posedge clk) begin
						fetch0 <= sv2v_cast_82(82'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
						fetch1 <= sv2v_cast_82(82'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
						if (rst) begin
							fetchID <= 0;
							flushState <= 2'd1;
						end
						else if (IN_mispr)
							fetchID <= IN_misprFetchID + 1;
						else begin
							if (cacheMiss || tlbMiss)
								fetchID <= fetch1[49-:5];
							else begin
								if (IN_ifetchOp[0] && !OUT_stall)
									fetch0 <= IN_ifetchOp;
								if (fetch0[0]) begin
									fetch1 <= fetch0;
									fetch1[49-:5] <= fetchID;
									fetch1[42-:3] <= IN_lastValid;
									fetch1[39-:3] <= (IN_predBranch[0] ? IN_predBranch[9-:3] : 3'b111);
									fetch1[36] <= IN_predBranch[0];
									fetch1[35] <= IN_predBranch[1];
									fetch1[34] <= IN_predBranch[4];
									fetch1[33-:31] <= IN_predBranch[40-:31];
									fetch1[2-:2] <= IN_rIdx;
									fetchID <= fetchID + 1;
								end
							end
							if (handlingMiss)
								assocCnt <= assocCnt + 1;
						end
						if (!rst)
							case (flushState)
								default: begin
									flushState <= 2'd0;
									if (IN_clearICache)
										flushState <= 2'd1;
									flushAssocIter <= 0;
									flushAddrIter <= 0;
								end
								2'd1: begin
									flushState <= 2'd2;
									if (fetch0[0] || fetch1[0])
										flushState <= 2'd1;
									flushAssocIter <= 0;
									flushAddrIter <= 0;
								end
								2'd2: begin : sv2v_autoblock_5
									reg flushDone;
									reg [1:0] nextFlushAssoc;
									reg [5:0] nextFlushAddr;
									{flushDone, nextFlushAssoc, nextFlushAddr} = {flushAssocIter, flushAddrIter} + 1;
									flushAssocIter <= nextFlushAssoc;
									flushAddrIter <= nextFlushAddr;
									if (flushDone)
										flushState <= (IN_MEM_busy ? 2'd3 : 2'd0);
								end
								2'd3:
									if (!IN_MEM_busy)
										flushState <= 2'd0;
							endcase
					end
				end
				assign ict.clk = clk;
				assign ict.rst = rst;
				assign ict.IN_MEM_busy = IN_MEM_busy;
				assign ict.IN_mispr = OUT_branch[0] || IN_decBranch[0];
				assign ict.IN_misprFetchID = (OUT_branch[0] ? OUT_branch[5-:5] : IN_decBranch[6-:5]);
				assign ict.IN_ROB_curFetchID = IN_ROB_curFetchID;
				assign ict.IN_ifetchOp = ifetchOp;
				assign icacheStall = ict.OUT_stall;
				assign ict.IN_predBranch = predBr;
				assign ict.IN_rIdx = BP_rIdx;
				assign ict.IN_lastValid = BP_lastOffs;
				assign fetchID = ict.OUT_fetchID;
				assign pcFileWriteEn = ict.OUT_pcFileWE;
				assign PCF_writeData = ict.OUT_pcFileEntry;
				assign icacheMiss = ict.OUT_icacheMiss;
				assign icacheMissFetchID = ict.OUT_icacheMissFetchID;
				assign icacheMissPC = ict.OUT_icacheMissPC;
				assign ict.IN_ready = IN_ready;
				assign OUT_instrs = ict.OUT_instrs;
				assign ict.IN_clearICache = IN_clearICache;
				assign ict.IN_flushTLB = IN_flushTLB;
				assign ict.IN_vmem = IN_vmem;
				assign OUT_pw = ict.OUT_pw;
				assign ict.IN_pw = IN_pw;
				assign OUT_memc = ict.OUT_memc;
				assign ict.IN_memc = IN_memc;
				PCFile #(.WORD_SIZE(37)) pcFile(
					.clk(clk),
					.wen0(pcFileWriteEn),
					.waddr0(fetchID),
					.wdata0(PCF_writeData),
					.raddr0(IN_pcReadAddr[0+:5]),
					.rdata0(OUT_pcReadData[0+:37]),
					.raddr1(IN_pcReadAddr[5+:5]),
					.rdata1(OUT_pcReadData[37+:37]),
					.raddr2(IN_pcReadAddr[10+:5]),
					.rdata2(OUT_pcReadData[74+:37]),
					.raddr3(IN_pcReadAddr[15+:5]),
					.rdata3(OUT_pcReadData[111+:37]),
					.raddr4(IN_pcReadAddr[20+:5]),
					.rdata4(OUT_pcReadData[148+:37])
				);
				always @(*) begin
					ifetchOp = sv2v_cast_82(82'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
					if ((OUT_branch[0] || IN_decBranch[0]) || icacheMiss)
						;
					else if (ifetchEn) begin
						ifetchOp[0] = 1;
						ifetchOp[81-:32] = {pc, 1'b0};
						ifetchOp[44-:2] = (IN_interruptPending ? 2'd1 : 2'd0);
					end
				end
				reg [9:0] wfiCount;
				always @(posedge clk)
					if (rst) begin
						waitForInterrupt <= 0;
						issuedInterrupt <= 0;
					end
					else begin
						if (waitForInterrupt) begin : sv2v_autoblock_6
							reg [9:0] wfiCount_next;
							reg wfiDone;
							{wfiDone, wfiCount_next} = wfiCount - 1;
							wfiCount <= wfiCount_next;
							if (IN_interruptPending || wfiDone)
								waitForInterrupt <= 0;
						end
						if ((OUT_branch[0] || IN_decBranch[0]) || icacheMiss) begin
							if (OUT_branch[0])
								waitForInterrupt <= 0;
							else if (IN_decBranch[0]) begin
								waitForInterrupt <= IN_decBranch[1];
								if (IN_decBranch[1])
									wfiCount <= 10'sd1023;
							end
							else if (icacheMiss)
								;
							issuedInterrupt <= 0;
						end
						else if (ifetchEn)
							if (IN_interruptPending)
								issuedInterrupt <= 1;
					end
			end
			assign ifetch.clk = clk;
			assign ifetch.rst = rst;
			assign ifetch.IN_en = ifetchEn;
			assign ifetch.IN_interruptPending = CSR_trapControl[5];
			assign ifetch.IN_MEM_busy = MEMSUB_busy;
			assign ifetch.IN_branches = branchProvs;
			assign ifetch.IN_mispredFlush = mispredFlush;
			assign ifetch.IN_ROB_curFetchID = ROB_curFetchID;
			assign ifetch.IN_ROB_curSqN = ROB_curSqN;
			assign ifetch.IN_RN_nextSqN = RN_nextSqN;
			assign BS_PERFC_branchMispr = ifetch.OUT_PERFC_branchMispr;
			assign branch = ifetch.OUT_branch;
			assign ifetch.IN_retDecUpd = DEC_retUpd;
			assign ifetch.IN_decBranch = DEC_decBranch;
			assign ifetch.IN_clearICache = TH_clearICache;
			assign ifetch.IN_flushTLB = TH_flushTLB;
			assign ifetch.IN_btUpdates = BP_btUpdates;
			assign ifetch.IN_bpUpdate0 = ROB_bpUpdate0;
			assign ifetch.IN_bpUpdate1 = TH_bpUpdate1;
			assign ifetch.IN_pcReadAddr = PC_readAddress;
			assign PC_readData = ifetch.OUT_pcReadData;
			assign ifetch.IN_ready = !PD_full;
			assign IF_instrs = ifetch.OUT_instrs;
			assign BP_lateRetAddr = ifetch.OUT_lateRetAddr;
			assign ifetch.IN_vmem = CSR_vmem;
			assign PC_PW_rq = ifetch.OUT_pw;
			assign ifetch.IN_pw = PW_res;
			assign PC_MC_if = ifetch.OUT_memc;
			assign ifetch.IN_memc = IN_memc;
			wire [455:0] PD_instrs;
			wire SQ_flush;
			wire frontendEn = (((!sqNStall && !stSqNStall) && !branch[0]) && en) && !SQ_flush;
			PreDecode preDec(
				.clk(clk),
				.rst(rst),
				.outEn(!RN_stall && frontendEn),
				.OUT_full(PD_full),
				.mispred(branch[0] || DEC_decBranch[0]),
				.IN_instrs(IF_instrs),
				.OUT_instrs(PD_instrs)
			);
			wire [319:0] DE_uop;
			wire [0:0] CSR_dec;
			InstrDecoder idec(
				.clk(clk),
				.rst(rst),
				.en(!RN_stall && frontendEn),
				.IN_invalidate(branch[0]),
				.IN_dec(CSR_dec),
				.IN_instrs(PD_instrs),
				.IN_lateRetAddr(BP_lateRetAddr),
				.IN_enCustom(1'b1),
				.OUT_decBranch(DEC_decBranch),
				.OUT_retUpd(DEC_retUpd),
				.OUT_btUpdate(BP_btUpdates[152+:76]),
				.OUT_uop(DE_uop)
			);
			wire [503:0] RN_uop;
			wire [3:0] RN_uopOrdering;
			wire [6:0] RN_nextLoadSqN;
			wire [15:0] IQ_stalls;
			Rename rn(
				.clk(clk),
				.frontEn(frontendEn),
				.rst(rst),
				.IN_stalls(IQ_stalls),
				.OUT_stall(RN_stall),
				.IN_uop(DE_uop),
				.IN_comUOp(comUOps),
				.IN_wbHasResult(wbHasResult),
				.IN_wbUOp(wbUOp),
				.IN_branchTaken(branch[0]),
				.IN_branchFlush(branch[6]),
				.IN_branchSqN(branch[27-:7]),
				.IN_branchLoadSqN(branch[13-:7]),
				.IN_branchStoreSqN(branch[20-:7]),
				.IN_mispredFlush(mispredFlush),
				.OUT_uop(RN_uop),
				.OUT_uopOrdering(RN_uopOrdering),
				.OUT_nextSqN(RN_nextSqN),
				.OUT_nextLoadSqN(RN_nextLoadSqN),
				.OUT_nextStoreSqN(RN_nextStoreSqN)
			);
			wire [435:0] IS_uop;
			wire [3:0] stall;
			assign stall[0] = 0;
			assign stall[1] = 0;
			wire DIV_busy;
			wire [727:0] LD_uop;
			wire DIV_doNotIssue = (DIV_busy || (LD_uop[0] && (LD_uop[5-:4] == 4'd4))) || (IS_uop[0] && (IS_uop[5-:4] == 4'd4));
			wire [6:0] LB_maxLoadSqN;
			reg [6:0] LSU_loadFwdTag = 1'sbx;
			wire LSU_loadFwdValid = 0;
			IssueQueue #(
				.SIZE(4),
				.NUM_ENQUEUE(2),
				.PORT_IDX(0),
				.NUM_OPERANDS(2),
				.NUM_UOPS(4),
				.RESULT_BUS_COUNT(4),
				.IMM_BITS(36),
				.FU0(4'd0),
				.FU1(4'd4),
				.FU2(4'd5),
				.FU3(4'd10),
				.FU0_SPLIT(1),
				.FU0_ORDER(0),
				.FU1_DLY(33)
			) iq0(
				.clk(clk),
				.rst(rst),
				.OUT_stall(IQ_stalls[0+:4]),
				.IN_stall(stall[0]),
				.IN_doNotIssueFU1(DIV_doNotIssue),
				.IN_doNotIssueFU2(1'b0),
				.IN_uop(RN_uop),
				.IN_uopOrdering(RN_uopOrdering),
				.IN_resultValid(wbHasResult),
				.IN_resultUOp(wbUOp),
				.IN_loadForwardValid(LSU_loadFwdValid),
				.IN_loadForwardTag(LSU_loadFwdTag),
				.IN_branch(branch),
				.IN_issueUOps(IS_uop),
				.IN_maxStoreSqN(SQ_maxStoreSqN),
				.IN_maxLoadSqN(LB_maxLoadSqN),
				.IN_commitSqN(ROB_curSqN),
				.OUT_uop(IS_uop[0+:109])
			);
			wire FDIV_doNotIssue = 1;
			wire MUL_doNotIssue = 0;
			IssueQueue #(
				.SIZE(4),
				.NUM_ENQUEUE(2),
				.PORT_IDX(1),
				.NUM_OPERANDS(2),
				.NUM_UOPS(4),
				.RESULT_BUS_COUNT(4),
				.IMM_BITS(36),
				.FU0(4'd0),
				.FU1(4'd3),
				.FU2(4'd6),
				.FU3(4'd7),
				.FU0_SPLIT(1),
				.FU0_ORDER(1),
				.FU1_DLY(3)
			) iq1(
				.clk(clk),
				.rst(rst),
				.OUT_stall(IQ_stalls[4+:4]),
				.IN_stall(stall[1]),
				.IN_doNotIssueFU1(MUL_doNotIssue),
				.IN_doNotIssueFU2(FDIV_doNotIssue),
				.IN_uop(RN_uop),
				.IN_uopOrdering(RN_uopOrdering),
				.IN_resultValid(wbHasResult),
				.IN_resultUOp(wbUOp),
				.IN_loadForwardValid(LSU_loadFwdValid),
				.IN_loadForwardTag(LSU_loadFwdTag),
				.IN_branch(branch),
				.IN_issueUOps(IS_uop),
				.IN_maxStoreSqN(SQ_maxStoreSqN),
				.IN_maxLoadSqN(LB_maxLoadSqN),
				.IN_commitSqN(ROB_curSqN),
				.OUT_uop(IS_uop[109+:109])
			);
			IssueQueue #(
				.SIZE(4),
				.NUM_ENQUEUE(4),
				.PORT_IDX(2),
				.NUM_OPERANDS(1),
				.NUM_UOPS(4),
				.RESULT_BUS_COUNT(4),
				.IMM_BITS(12),
				.FU0(4'd1),
				.FU1(4'd1),
				.FU2(4'd1),
				.FU3(4'd9),
				.FU0_SPLIT(0),
				.FU0_ORDER(0),
				.FU1_DLY(0)
			) iq2(
				.clk(clk),
				.rst(rst),
				.OUT_stall(IQ_stalls[8+:4]),
				.IN_stall(stall[2]),
				.IN_doNotIssueFU1(1'b0),
				.IN_doNotIssueFU2(1'b0),
				.IN_uop(RN_uop),
				.IN_uopOrdering(RN_uopOrdering),
				.IN_resultValid(wbHasResult),
				.IN_resultUOp(wbUOp),
				.IN_loadForwardValid(LSU_loadFwdValid),
				.IN_loadForwardTag(LSU_loadFwdTag),
				.IN_branch(branch),
				.IN_issueUOps(IS_uop),
				.IN_maxStoreSqN(SQ_maxStoreSqN),
				.IN_maxLoadSqN(LB_maxLoadSqN),
				.IN_commitSqN(ROB_curSqN),
				.OUT_uop(IS_uop[218+:109])
			);
			IssueQueue #(
				.SIZE(4),
				.NUM_ENQUEUE(4),
				.PORT_IDX(3),
				.NUM_OPERANDS(1),
				.NUM_UOPS(4),
				.RESULT_BUS_COUNT(4),
				.IMM_BITS(12),
				.FU0(4'd2),
				.FU1(4'd2),
				.FU2(4'd2),
				.FU3(4'd9),
				.FU0_SPLIT(0),
				.FU0_ORDER(0),
				.FU1_DLY(0)
			) iq3(
				.clk(clk),
				.rst(rst),
				.OUT_stall(IQ_stalls[12+:4]),
				.IN_stall(stall[3]),
				.IN_doNotIssueFU1(1'b0),
				.IN_doNotIssueFU2(1'b0),
				.IN_uop(RN_uop),
				.IN_uopOrdering(RN_uopOrdering),
				.IN_resultValid(wbHasResult),
				.IN_resultUOp(wbUOp),
				.IN_loadForwardValid(LSU_loadFwdValid),
				.IN_loadForwardTag(LSU_loadFwdTag),
				.IN_branch(branch),
				.IN_issueUOps(IS_uop),
				.IN_maxStoreSqN(SQ_maxStoreSqN),
				.IN_maxLoadSqN(LB_maxLoadSqN),
				.IN_commitSqN(ROB_curSqN),
				.OUT_uop(IS_uop[327+:109])
			);
			wire [47:0] RF_readAddress;
			wire [255:0] RF_readData;
			wire [31:0] RF_SQ_rdata;
			wire [5:0] SQ_RF_raddr;
			RF rf(
				.clk(clk),
				.waddr0(wbUOp[18-:6]),
				.wdata0(wbUOp[58-:32]),
				.wen0(wbHasResult[0]),
				.waddr1(wbUOp[77-:6]),
				.wdata1(wbUOp[117-:32]),
				.wen1(wbHasResult[1]),
				.waddr2(wbUOp[136-:6]),
				.wdata2(wbUOp[176-:32]),
				.wen2(wbHasResult[2]),
				.waddr3(wbUOp[195-:6]),
				.wdata3(wbUOp[235-:32]),
				.wen3(wbHasResult[3]),
				.raddr0(RF_readAddress[0+:6]),
				.rdata0(RF_readData[0+:32]),
				.raddr1(RF_readAddress[6+:6]),
				.rdata1(RF_readData[32+:32]),
				.raddr2(RF_readAddress[12+:6]),
				.rdata2(RF_readData[64+:32]),
				.raddr3(RF_readAddress[18+:6]),
				.rdata3(RF_readData[96+:32]),
				.raddr4(RF_readAddress[24+:6]),
				.rdata4(RF_readData[128+:32]),
				.raddr5(RF_readAddress[30+:6]),
				.rdata5(RF_readData[160+:32]),
				.raddr6(RF_readAddress[36+:6]),
				.rdata6(RF_readData[192+:32]),
				.raddr7(SQ_RF_raddr),
				.rdata7(RF_SQ_rdata)
			);
			wire [79:0] LD_zcFwd;
			Load ld(
				.clk(clk),
				.rst(rst),
				.IN_uop(IS_uop),
				.IN_wbHasResult(wbHasResult),
				.IN_wbUOp(wbUOp),
				.IN_invalidate(branch[0]),
				.IN_invalidateSqN(branch[27-:7]),
				.IN_stall(stall),
				.IN_zcFwd(LD_zcFwd),
				.OUT_pcReadAddr(PC_readAddress[0+:20]),
				.IN_pcReadData(PC_readData[0+:148]),
				.OUT_rfReadAddr(RF_readAddress),
				.IN_rfReadData(RF_readData),
				.OUT_uop(LD_uop)
			);
			wire INTALU_wbReq;
			wire [58:0] INT0_uop;
			IntALU ialu(
				.clk(clk),
				.en(LD_uop[5-:4] == 4'd0),
				.rst(rst),
				.IN_wbStall(1'b0),
				.IN_uop(LD_uop[0+:182]),
				.IN_invalidate(branch[0]),
				.IN_invalidateSqN(branch[27-:7]),
				.OUT_wbReq(INTALU_wbReq),
				.OUT_branch(branchProvs[0+:64]),
				.OUT_btUpdate(BP_btUpdates[0+:76]),
				.OUT_zcFwd(LD_zcFwd[0+:40]),
				.OUT_uop(INT0_uop)
			);
			wire [58:0] DIV_uop;
			Divide div(
				.clk(clk),
				.rst(rst),
				.en(LD_uop[5-:4] == 4'd4),
				.OUT_busy(DIV_busy),
				.IN_branch(branch),
				.IN_uop(LD_uop[0+:182]),
				.OUT_uop(DIV_uop)
			);
			wire [79:0] TVS_tvalProvs;
			wire [31:0] TVS_tvalState;
			TValSelect tvalSelect(
				.clk(clk),
				.rst(rst),
				.IN_branch(branch),
				.IN_commitSqN(ROB_curSqN),
				.IN_tvalProvs(TVS_tvalProvs),
				.OUT_tvalState(TVS_tvalState)
			);
			wire [58:0] CSR_uop;
			wire [2:0] CSR_fRoundMode;
			wire [4:0] ROB_fpNewFlags;
			wire [3:0] ROB_retireBranch;
			wire [3:0] ROB_validRetire;
			wire [38:0] TH_trapInfo;
			if (1) begin : csr
				localparam NUM_FLOAT_FLAG_UPD = 2;
				wire clk;
				wire rst;
				wire en;
				wire [181:0] IN_uop;
				wire [63:0] IN_branch;
				wire [4:0] IN_fpNewFlags;
				wire [3:0] IN_commitValid;
				wire [3:0] IN_commitBranch;
				wire IN_branchMispr;
				wire IN_mispredFlush;
				wire [31:0] IN_tvalState;
				wire [38:0] IN_trapInfo;
				wire [132:0] OUT_trapControl;
				wire [2:0] OUT_fRoundMode;
				wire [0:0] OUT_dec;
				reg [30:0] OUT_vmem;
				reg [58:0] OUT_uop;
				reg [1:0] priv;
				reg [4:0] fflags;
				reg [2:0] frm;
				reg [63:0] mcycle;
				reg [63:0] minstret;
				reg [63:0] mhpmcounter3;
				reg [63:0] mhpmcounter4;
				reg [63:0] mhpmcounter5;
				reg [31:0] mstatus;
				reg [31:0] mtvec;
				reg [31:0] stvec;
				reg [31:0] mscratch;
				reg [31:0] mepc;
				reg [31:0] mcause;
				reg [31:0] mtval;
				reg [15:0] medeleg;
				reg [15:0] mideleg;
				reg [15:0] mip;
				reg [15:0] mie;
				reg [5:0] mcounteren;
				reg [5:0] mcountinhibit;
				reg [31:0] menvcfg;
				reg [31:0] senvcfg;
				reg [5:0] scounteren;
				reg [31:0] sepc;
				reg [31:0] sscratch;
				reg [31:0] scause;
				reg [31:0] stval;
				reg [31:0] satp;
				reg [30:0] retvec;
				reg interrupt;
				reg [3:0] interruptCause;
				reg interruptDelegate;
				always @(*) begin : sv2v_autoblock_7
					reg [23:0] mPrio;
					reg [11:0] sPrio;
					mPrio = 24'h51973b;
					sPrio = 12'h519;
					interruptCause = 0;
					interrupt = 0;
					interruptDelegate = 0;
					if ((priv < 2'd1) || (mstatus[1] && (priv == 2'd1))) begin : sv2v_autoblock_8
						integer i;
						for (i = 0; i < 3; i = i + 1)
							if (mip[sPrio[i * 4+:4]] && mie[sPrio[i * 4+:4]]) begin
								interrupt = 1;
								interruptCause = sPrio[i * 4+:4];
								interruptDelegate = 1;
							end
					end
					if ((priv < 2'd3) || mstatus[3]) begin : sv2v_autoblock_9
						integer i;
						for (i = 0; i < 6; i = i + 1)
							if ((mip[mPrio[i * 4+:4]] && mie[mPrio[i * 4+:4]]) && !mideleg[mPrio[i * 4+:4]]) begin
								interrupt = 1;
								interruptCause = mPrio[i * 4+:4];
								interruptDelegate = 0;
							end
					end
				end
				assign OUT_trapControl[71] = mtvec[0];
				assign OUT_trapControl[101-:30] = mtvec[31-:30];
				assign OUT_trapControl[40] = stvec[0];
				assign OUT_trapControl[70-:30] = stvec[31-:30];
				assign OUT_trapControl[132-:31] = retvec;
				assign OUT_trapControl[23-:16] = mideleg;
				assign OUT_trapControl[39-:16] = medeleg;
				assign OUT_trapControl[7-:2] = priv;
				assign OUT_trapControl[5] = interrupt;
				assign OUT_trapControl[4-:4] = interruptCause;
				assign OUT_trapControl[0] = interruptDelegate;
				assign OUT_fRoundMode = frm;
				assign OUT_dec[0] = (priv == 2'd3) || ((priv == 2'd1) && !mstatus[21]);
				always @(*) begin : sv2v_autoblock_10
					reg [1:0] epm;
					epm = (mstatus[17] ? mstatus[12-:2] : priv);
					OUT_vmem[28-:22] = satp[21-:22];
					OUT_vmem[29] = satp[31] && (priv != 2'd3);
					OUT_vmem[30] = satp[31];
					OUT_vmem[1-:2] = epm;
					OUT_vmem[6] = mstatus[19];
					OUT_vmem[5] = 0;
					if (epm == 2'd3) begin
						OUT_vmem[29] = 0;
						OUT_vmem[30] = 0;
					end
					else if (epm == 2'd1)
						OUT_vmem[5] = mstatus[18];
					OUT_vmem[2] = !(((priv != 2'd3) && !menvcfg[6]) || ((priv == 2'd0) && !senvcfg[6]));
					if (((priv != 2'd3) && (menvcfg[5-:2] == 0)) || ((priv == 2'd0) && (senvcfg[5-:2] == 0)))
						OUT_vmem[4-:2] = 0;
					else if (((priv != 2'd3) && (menvcfg[5-:2] == 1)) || ((priv == 2'd0) && (senvcfg[5-:2] == 1)))
						OUT_vmem[4-:2] = 1;
					else
						OUT_vmem[4-:2] = 3;
				end
				reg [31:0] rdata;
				reg invalidCSR;
				always @(*) begin : sv2v_autoblock_11
					reg [31:0] temp;
					temp = 0;
					invalidCSR = 0;
					rdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
					case (IN_uop[59:48])
						12'hc01, 12'hc81: begin
							invalidCSR = !(((priv == 2'd3) || ((priv == 2'd1) && mcounteren[1])) || (((priv == 2'd0) && mcounteren[1]) && scounteren[1]));
							rdata = (IN_uop[59:48] == 12'hc01 ? SoC.IF_csr_mmio.mtime[31:0] : SoC.IF_csr_mmio.mtime[63:32]);
						end
						12'hc00: begin
							invalidCSR = !(((priv == 2'd3) || ((priv == 2'd1) && mcounteren[0])) || (((priv == 2'd0) && mcounteren[0]) && scounteren[0]));
							rdata = mcycle[31:0];
						end
						12'hc80: begin
							invalidCSR = !(((priv == 2'd3) || ((priv == 2'd1) && mcounteren[0])) || (((priv == 2'd0) && mcounteren[0]) && scounteren[0]));
							rdata = mcycle[63:32];
						end
						12'hc02: begin
							invalidCSR = !(((priv == 2'd3) || ((priv == 2'd1) && mcounteren[2])) || (((priv == 2'd0) && mcounteren[2]) && scounteren[2]));
							rdata = minstret[31:0];
						end
						12'hc82: begin
							invalidCSR = !(((priv == 2'd3) || ((priv == 2'd1) && mcounteren[2])) || (((priv == 2'd0) && mcounteren[2]) && scounteren[2]));
							rdata = minstret[63:32];
						end
						12'hc03, 12'hc83: begin
							invalidCSR = !(((priv == 2'd3) || ((priv == 2'd1) && mcounteren[3])) || (((priv == 2'd0) && mcounteren[3]) && scounteren[3]));
							rdata = (IN_uop[59:48] == 12'hc03 ? mhpmcounter3[31:0] : mhpmcounter3[63:32]);
						end
						12'hc04, 12'hc84: begin
							invalidCSR = !(((priv == 2'd3) || ((priv == 2'd1) && mcounteren[4])) || (((priv == 2'd0) && mcounteren[4]) && scounteren[4]));
							rdata = (IN_uop[59:48] == 12'hc04 ? mhpmcounter4[31:0] : mhpmcounter4[63:32]);
						end
						12'hc05, 12'hc85: begin
							invalidCSR = !(((priv == 2'd3) || ((priv == 2'd1) && mcounteren[5])) || (((priv == 2'd0) && mcounteren[5]) && scounteren[5]));
							rdata = (IN_uop[59:48] == 12'hc05 ? mhpmcounter5[31:0] : mhpmcounter5[63:32]);
						end
						12'h301: rdata = 32'b01000000100101000001000100000111;
						12'hf12: rdata = 32'h50087501;
						12'hf13: rdata = 32'h50087532;
						12'h300: rdata = mstatus;
						12'hb00: rdata = mcycle[31:0];
						12'hb80: rdata = mcycle[63:32];
						12'hb02: rdata = minstret[31:0];
						12'hb82: rdata = minstret[63:32];
						12'hb03: rdata = mhpmcounter3[31:0];
						12'hb04: rdata = mhpmcounter4[31:0];
						12'd2821: rdata = mhpmcounter5[31:0];
						12'hb83: rdata = mhpmcounter3[63:32];
						12'hb84: rdata = mhpmcounter4[63:32];
						12'd2949: rdata = mhpmcounter5[63:32];
						12'h306: rdata = {26'b00000000000000000000000000, mcounteren};
						12'h320: rdata = {26'b00000000000000000000000000, mcountinhibit};
						12'h305: rdata = mtvec;
						12'h302: rdata = {16'b0000000000000000, medeleg};
						12'h303: rdata = {16'b0000000000000000, mideleg};
						12'h344: rdata = {16'b0000000000000000, mip};
						12'h304: rdata = {16'b0000000000000000, mie};
						12'h340: rdata = mscratch;
						12'h341: rdata = mepc;
						12'h342: rdata = mcause;
						12'h343: rdata = mtval;
						12'h30a: rdata = menvcfg;
						12'h100: begin
							temp[1] = mstatus[1];
							temp[5] = mstatus[5];
							temp[6] = mstatus[6];
							temp[8] = mstatus[8];
							temp[10-:2] = mstatus[10-:2];
							temp[14-:2] = mstatus[14-:2];
							temp[16-:2] = mstatus[16-:2];
							temp[18] = mstatus[18];
							temp[19] = mstatus[19];
							temp[31] = mstatus[31];
							rdata = temp;
						end
						12'h106: rdata = {26'b00000000000000000000000000, scounteren};
						12'h141: rdata = sepc;
						12'h140: rdata = sscratch;
						12'h142: rdata = scause;
						12'h143: rdata = stval;
						12'h105: rdata = stvec;
						12'h144: begin
							rdata = 0;
							if (mideleg[1])
								rdata[1] = mip[1];
							if (mideleg[5])
								rdata[5] = mip[5];
							if (mideleg[9])
								rdata[9] = mip[9];
						end
						12'h104: begin
							rdata = 0;
							if (mideleg[1])
								rdata[1] = mie[1];
							if (mideleg[3])
								rdata[3] = mie[3];
							if (mideleg[5])
								rdata[5] = mie[5];
							if (mideleg[7])
								rdata[7] = mie[7];
							if (mideleg[9])
								rdata[9] = mie[9];
							if (mideleg[11])
								rdata[11] = mie[11];
						end
						12'h180: rdata = satp;
						12'h10a: rdata = senvcfg;
						12'h323: rdata = 3;
						12'h324: rdata = 4;
						12'h325: rdata = 5;
						12'h31a, 12'hf11, 12'hf15, 12'h310, 12'hf14: rdata = 0;
						12'hc06, 12'hc07, 12'd3080, 12'd3081, 12'd3082, 12'd3083, 12'd3084, 12'd3085, 12'd3086, 12'd3087, 12'd3088, 12'd3089, 12'd3090, 12'd3091, 12'd3092, 12'd3093, 12'd3094, 12'd3095, 12'd3096, 12'd3097, 12'd3098, 12'd3099, 12'd3100, 12'd3101, 12'd3102, 12'hc1f, 12'hc86, 12'hc87, 12'd3208, 12'd3209, 12'd3210, 12'd3211, 12'd3212, 12'd3213, 12'd3214, 12'd3215, 12'd3216, 12'd3217, 12'd3218, 12'd3219, 12'd3220, 12'd3221, 12'd3222, 12'd3223, 12'd3224, 12'd3225, 12'd3226, 12'd3227, 12'd3228, 12'd3229, 12'd3230, 12'hc9f, 12'd2822, 12'd2823, 12'd2824, 12'd2825, 12'd2826, 12'd2827, 12'd2828, 12'd2829, 12'd2830, 12'd2831, 12'd2832, 12'd2833, 12'd2834, 12'd2835, 12'd2836, 12'd2837, 12'd2838, 12'd2839, 12'd2840, 12'd2841, 12'd2842, 12'd2843, 12'd2844, 12'd2845, 12'd2846, 12'hb1f, 12'd2950, 12'd2951, 12'd2952, 12'd2953, 12'd2954, 12'd2955, 12'd2956, 12'd2957, 12'd2958, 12'd2959, 12'd2960, 12'd2961, 12'd2962, 12'd2963, 12'd2964, 12'd2965, 12'd2966, 12'd2967, 12'd2968, 12'd2969, 12'd2970, 12'd2971, 12'd2972, 12'd2973, 12'd2974, 12'hb9f, 12'h326, 12'h327, 12'h328, 12'h329, 12'h32a, 12'h32b, 12'h32c, 12'h32d, 12'h32e, 12'h32f, 12'h330, 12'h331, 12'h332, 12'h333, 12'h334, 12'h335, 12'h336, 12'h337, 12'h338, 12'h339, 12'h33a, 12'h33b, 12'h33c, 12'h33d, 12'h33e, 12'h33f: rdata = 0;
						default: invalidCSR = 1;
					endcase
				end
				always @(posedge clk) begin
					if (!rst) begin
						if (IN_trapInfo[0]) begin : sv2v_autoblock_12
							reg [31:0] tval;
							tval = 0;
							if (!IN_trapInfo[6])
								case (IN_trapInfo[5-:4])
									4'd12, 4'd1, 4'd3: tval = IN_trapInfo[38-:32];
									4'd4, 4'd5, 4'd13, 4'd6, 4'd7, 4'd15: tval = IN_tvalState[31-:32];
									default:
										;
								endcase
							if (IN_trapInfo[1]) begin
								mstatus[5] <= mstatus[1];
								mstatus[1] <= 0;
								mstatus[8] <= priv[0];
								sepc <= IN_trapInfo[38-:32];
								scause[3:0] <= IN_trapInfo[5-:4];
								scause[31] <= IN_trapInfo[6];
								stval <= tval;
								priv <= 2'd1;
							end
							else begin
								mstatus[7] <= mstatus[3];
								mstatus[3] <= 0;
								mstatus[12-:2] <= priv;
								mepc <= IN_trapInfo[38-:32];
								mcause[3:0] <= IN_trapInfo[5-:4];
								mcause[4] <= 0;
								mcause[31] <= IN_trapInfo[6];
								mtval <= tval;
								priv <= 2'd3;
							end
						end
						fflags <= fflags | IN_fpNewFlags;
						if (!mcountinhibit[0])
							mcycle <= mcycle + 1;
						if (!mcountinhibit[2]) begin : sv2v_autoblock_13
							reg [2:0] temp;
							temp = 0;
							begin : sv2v_autoblock_14
								integer i;
								for (i = 0; i < 4; i = i + 1)
									if (IN_commitValid[i])
										temp = temp + 1;
							end
							minstret <= minstret + {61'b0000000000000000000000000000000000000000000000000000000000000, temp};
						end
						if (!mcountinhibit[3]) begin : sv2v_autoblock_15
							reg [2:0] temp;
							temp = 0;
							begin : sv2v_autoblock_16
								integer i;
								for (i = 0; i < 4; i = i + 1)
									if (IN_commitBranch[i])
										temp = temp + 1;
							end
							mhpmcounter3 <= mhpmcounter3 + {61'b0000000000000000000000000000000000000000000000000000000000000, temp};
						end
						if (!mcountinhibit[4] && IN_branchMispr)
							mhpmcounter4 <= mhpmcounter4 + 1;
						if (!mcountinhibit[5] && IN_branch[0])
							mhpmcounter5 <= mhpmcounter5 + 1;
						mip[7] <= SoC.IF_csr_mmio.mtime >= SoC.IF_csr_mmio.mtimecmp;
					end
					if (rst) begin
						priv <= 2'd3;
						fflags <= 0;
						frm <= 0;
						mstatus <= 0;
						mcycle <= 0;
						minstret <= 0;
						mcounteren <= 0;
						mcountinhibit <= 0;
						mtvec <= 0;
						mepc <= 0;
						mcause <= 0;
						mtval <= 0;
						mideleg <= 0;
						medeleg <= 0;
						mip <= 0;
						mie <= 0;
						menvcfg <= 0;
						scounteren <= 0;
						sepc <= 0;
						scause <= 0;
						stval <= 0;
						stvec <= 0;
						satp <= 0;
						senvcfg <= 0;
						mhpmcounter3 <= 0;
						mhpmcounter4 <= 0;
						mhpmcounter5 <= 0;
						OUT_uop[0] <= 0;
					end
					else if ((en && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[34-:7] - IN_branch[27-:7]) <= 0))) begin
						OUT_uop[0] <= 1;
						OUT_uop[1] <= 0;
						OUT_uop[5-:4] <= 4'd0;
						OUT_uop[26-:7] <= IN_uop[19-:7];
						OUT_uop[12-:7] <= IN_uop[34-:7];
						OUT_uop[19-:7] <= IN_uop[41-:7];
						if ((IN_uop[47-:6] == 6'd8) || (IN_uop[47-:6] == 6'd7)) begin
							OUT_uop[5-:4] <= 4'd14;
							if ((IN_uop[47-:6] == 6'd7) && (mstatus[22] == 1))
								OUT_uop[5-:4] <= 4'd6;
							if (IN_uop[47-:6] == 6'd8) begin
								if (priv < 2'd3)
									OUT_uop[5-:4] <= 4'd6;
								mstatus[3] <= mstatus[7];
								priv <= mstatus[12-:2];
								mstatus[12-:2] <= 2'd0;
								if (mstatus[12-:2] != 2'd3)
									mstatus[17] <= 0;
								retvec <= mepc[31:1];
							end
							else begin
								if (priv < 2'd1)
									OUT_uop[5-:4] <= 4'd6;
								mstatus[1] <= mstatus[5];
								priv <= sv2v_cast_2({1'b0, mstatus[8]});
								mstatus[8] <= 1'b0;
								mstatus[17] <= 0;
								retvec <= sepc[31:1];
							end
						end
						else if (($unsigned(priv) < IN_uop[57:56]) || invalidCSR)
							OUT_uop[5-:4] <= 4'd6;
						else begin
							if (IN_uop[47-:6] != 6'd0) begin : sv2v_autoblock_17
								reg [31:0] wdata;
								OUT_uop[5-:4] <= 4'd5;
								if (IN_uop[59:58] == 2'b11)
									OUT_uop[5-:4] <= 4'd6;
								else begin
									case (IN_uop[47-:6])
										6'd1: wdata = IN_uop[181-:32];
										6'd4: wdata = {27'b000000000000000000000000000, IN_uop[64:60]};
										6'd2: wdata = rdata | IN_uop[181-:32];
										6'd5: wdata = rdata | {27'b000000000000000000000000000, IN_uop[64:60]};
										6'd3: wdata = rdata & ~IN_uop[181-:32];
										6'd6: wdata = rdata & ~{27'b000000000000000000000000000, IN_uop[64:60]};
										default:
											;
									endcase
									case (IN_uop[59:48])
										12'h300: begin : sv2v_autoblock_18
											reg [31:0] temp;
											temp = wdata;
											mstatus[22] <= temp[22];
											mstatus[21] <= temp[21];
											mstatus[20] <= temp[20];
											mstatus[19] <= temp[19];
											mstatus[18] <= temp[18];
											mstatus[17] <= temp[17];
											mstatus[1] <= temp[1];
											mstatus[3] <= temp[3];
											mstatus[5] <= temp[5];
											mstatus[7] <= temp[7];
											mstatus[8] <= temp[8];
											mstatus[12-:2] <= temp[12-:2];
										end
										12'hb00: mcycle[31:0] <= wdata;
										12'hb80: mcycle[63:32] <= wdata;
										12'hb02: minstret[31:0] <= wdata;
										12'hb82: minstret[63:32] <= wdata;
										12'hb03: mhpmcounter3[31:0] <= wdata;
										12'hb04: mhpmcounter4[31:0] <= wdata;
										12'd2821: mhpmcounter5[31:0] <= wdata;
										12'hb83: mhpmcounter3[63:32] <= wdata;
										12'hb84: mhpmcounter4[63:32] <= wdata;
										12'd2949: mhpmcounter5[63:32] <= wdata;
										12'h306: mcounteren[5:0] <= wdata[5:0];
										12'h320: begin
											mcountinhibit[0] <= wdata[0];
											mcountinhibit[5:2] <= wdata[5:2];
										end
										12'h305: mtvec[31-:30] <= wdata[31:2];
										12'h30a: begin : sv2v_autoblock_19
											reg [31:0] temp;
											temp = wdata;
											menvcfg[0] <= temp[0];
											menvcfg[5-:2] <= (temp[5-:2] == 2'b10 ? 0 : temp[5-:2]);
											menvcfg[6] <= temp[6];
											menvcfg[7] <= 0;
										end
										12'h302: medeleg <= wdata[15:0];
										12'h303: mideleg <= wdata[15:0];
										12'h344: begin
											mip[1] <= wdata[1];
											mip[5] <= wdata[5];
											mip[9] <= wdata[9];
										end
										12'h304: begin
											mie[1] <= wdata[1];
											mie[3] <= wdata[3];
											mie[5] <= wdata[5];
											mie[7] <= wdata[7];
											mie[9] <= wdata[9];
											mie[11] <= wdata[11];
										end
										12'h340: mscratch <= wdata;
										12'h341: mepc[31:1] <= wdata[31:1];
										12'h342: begin
											mcause[4:0] <= wdata[4:0];
											mcause[31] <= wdata[31];
										end
										12'h343: mtval <= wdata;
										12'h100: begin : sv2v_autoblock_20
											reg [31:0] temp;
											temp = wdata;
											mstatus[19] <= temp[19];
											mstatus[18] <= temp[18];
											mstatus[1] <= temp[1];
											mstatus[5] <= temp[5];
											mstatus[8] <= temp[8];
										end
										12'h106: scounteren[5:0] <= wdata[5:0];
										12'h141: sepc[31:1] <= wdata[31:1];
										12'h140: sscratch <= wdata;
										12'h142: begin
											scause[4:0] <= wdata[4:0];
											scause[31] <= wdata[31];
										end
										12'h143: stval <= wdata;
										12'h105: stvec[31-:30] <= wdata[31:2];
										12'h144: begin
											if (mideleg[1])
												mip[1] <= wdata[1];
											if (mideleg[5])
												mip[5] <= wdata[5];
											if (mideleg[9])
												mip[9] <= wdata[9];
										end
										12'h104: begin
											if (mideleg[1])
												mie[1] <= wdata[1];
											if (mideleg[3])
												mie[3] <= wdata[3];
											if (mideleg[5])
												mie[5] <= wdata[5];
											if (mideleg[7])
												mie[7] <= wdata[7];
											if (mideleg[9])
												mie[9] <= wdata[9];
											if (mideleg[11])
												mie[11] <= wdata[11];
										end
										12'h180: begin
											satp <= wdata;
											satp[21:20] <= 2'b00;
											satp[30-:9] <= 0;
										end
										12'h10a: begin : sv2v_autoblock_21
											reg [31:0] temp;
											temp = wdata;
											senvcfg[0] <= temp[0];
											senvcfg[5-:2] <= (temp[5-:2] == 2'b10 ? 0 : temp[5-:2]);
											senvcfg[6] <= temp[6];
											senvcfg[7] <= 0;
										end
										default:
											;
									endcase
								end
							end
							if (!IN_uop[41])
								OUT_uop[58-:32] <= rdata;
						end
					end
					else
						OUT_uop[0] <= 0;
				end
			end
			assign csr.clk = clk;
			assign csr.rst = rst;
			assign csr.en = LD_uop[5-:4] == 4'd10;
			assign csr.IN_uop = LD_uop[0+:182];
			assign csr.IN_branch = branch;
			assign csr.IN_fpNewFlags = ROB_fpNewFlags;
			assign csr.IN_commitValid = ROB_validRetire;
			assign csr.IN_commitBranch = ROB_retireBranch;
			assign csr.IN_branchMispr = BS_PERFC_branchMispr;
			assign csr.IN_mispredFlush = mispredFlush;
			assign csr.IN_tvalState = TVS_tvalState;
			assign csr.IN_trapInfo = TH_trapInfo;
			assign CSR_trapControl = csr.OUT_trapControl;
			assign CSR_fRoundMode = csr.OUT_fRoundMode;
			assign CSR_dec = csr.OUT_dec;
			assign CSR_vmem = csr.OUT_vmem;
			assign CSR_uop = csr.OUT_uop;
			assign wbUOp[0+:59] = (INT0_uop[0] ? INT0_uop : (CSR_uop[0] ? CSR_uop : DIV_uop));
			wire CC_PW_LD_stall;
			wire [32:0] PW_LD_uop;
			wire [54:0] LDAGU_PW_rq;
			wire [54:0] STAGU_PW_rq;
			PageWalker pageWalker(
				.clk(clk),
				.rst(rst),
				.IN_rqs({LDAGU_PW_rq, STAGU_PW_rq, PC_PW_rq}),
				.OUT_res(PW_res),
				.IN_ldStall(CC_PW_LD_stall),
				.OUT_ldUOp(PW_LD_uop),
				.IN_ldAck(LSU_ldAck),
				.IN_ldResUOp(wbUOp[118+:59])
			);
			wire LS_AGULD_uopStall;
			wire [61:0] LS_uopLd;
			wire CC_loadStall;
			wire [61:0] LB_uopLd;
			LoadSelector loadSelector(
				.IN_aguLd(LB_uopLd),
				.OUT_aguLdStall(LS_AGULD_uopStall),
				.IN_pwLd(PW_LD_uop),
				.OUT_pwLdStall(CC_PW_LD_stall),
				.IN_ldUOpStall(CC_loadStall),
				.OUT_ldUOp(LS_uopLd)
			);
			wire [41:0] TLB_rqs;
			wire [55:0] TLB_res;
			TLB #(
				.NUM_RQ(2),
				.SIZE(4),
				.ASSOC(2)
			) dtlb(
				.clk(clk),
				.rst(rst),
				.clear(TH_flushTLB),
				.IN_pw(PW_res),
				.IN_rqs(TLB_rqs),
				.OUT_res(TLB_res)
			);
			wire [12:0] AGU_eLdUOp;
			wire LSU_ldAGUStall;
			AGU #(
				.LOAD_AGU(1),
				.RQ_ID(2)
			) aguLD(
				.clk(clk),
				.rst(rst),
				.en((LD_uop[369-:4] == 4'd1) || (LD_uop[369-:4] == 4'd9)),
				.IN_stall(LSU_ldAGUStall),
				.OUT_stall(stall[2]),
				.IN_branch(branch),
				.IN_vmem(CSR_vmem),
				.OUT_pw(LDAGU_PW_rq),
				.IN_pw(PW_res),
				.OUT_tvalProv(TVS_tvalProvs[0+:40]),
				.OUT_tlb(TLB_rqs[21+:21]),
				.IN_tlb(TLB_res[28+:28]),
				.IN_uop(LD_uop[364+:182]),
				.OUT_aguOp(AGU_LD_uop),
				.OUT_eldOp(AGU_eLdUOp)
			);
			wire [109:0] AGU_ST_uop;
			AGU #(
				.LOAD_AGU(0),
				.RQ_ID(1)
			) aguST(
				.clk(clk),
				.rst(rst),
				.en((LD_uop[551-:4] == 4'd2) || (LD_uop[551-:4] == 4'd9)),
				.IN_stall(1'b0),
				.OUT_stall(stall[3]),
				.IN_branch(branch),
				.IN_vmem(CSR_vmem),
				.OUT_pw(STAGU_PW_rq),
				.IN_pw(PW_res),
				.OUT_tvalProv(TVS_tvalProvs[40+:40]),
				.OUT_tlb(TLB_rqs[0+:21]),
				.IN_tlb(TLB_res[0+:28]),
				.IN_uop(LD_uop[546+:182]),
				.OUT_aguOp(AGU_ST_uop),
				.OUT_uop(wbUOp[177+:59])
			);
			wire [61:0] LB_aguUOpLd;
			wire [6:0] ROB_comLoadSqN;
			wire SQ_done;
			LoadBuffer lb(
				.clk(clk),
				.rst(rst),
				.IN_comLoadSqN(ROB_comLoadSqN),
				.IN_comSqN(ROB_curSqN),
				.IN_stall(LS_AGULD_uopStall),
				.IN_uopLd(AGU_LD_uop),
				.IN_uopSt(AGU_ST_uop),
				.IN_ldAck(LSU_ldAck),
				.IN_SQ_done(SQ_done),
				.OUT_uopAGULd(LB_aguUOpLd),
				.OUT_uopLd(LB_uopLd),
				.IN_branch(branch),
				.OUT_branch(branchProvs[128+:64]),
				.OUT_maxLoadSqN(LB_maxLoadSqN)
			);
			wire CSR_we;
			wire [31:0] CSR_dataOut;
			wire [37:0] SQ_fwd;
			wire [7:0] SQ_info;
			wire [61:0] CC_SQ_uopLd;
			wire CC_storeStall;
			wire [6:0] ROB_comStoreSqN;
			StoreQueue sq(
				.clk(clk),
				.rst(rst),
				.IN_stallSt(CC_storeStall),
				.IN_stallLd(CC_loadStall),
				.OUT_empty(SQ_empty),
				.OUT_done(SQ_done),
				.IN_uopSt(AGU_ST_uop),
				.IN_uopLd(CC_SQ_uopLd),
				.IN_rnUOp(RN_uop),
				.IN_resultUOp(wbUOp[0+:177]),
				.OUT_RF_raddr(SQ_RF_raddr),
				.IN_RF_rdata(RF_SQ_rdata),
				.IN_vmem(CSR_vmem),
				.IN_curSqN(ROB_curSqN),
				.IN_comStSqN(ROB_comStoreSqN),
				.IN_branch(branch),
				.OUT_uopSt(SQ_uop),
				.OUT_fwd(SQ_fwd),
				.IN_stAck(LSU_stAck),
				.OUT_flush(SQ_flush),
				.OUT_maxStoreSqN(SQ_maxStoreSqN),
				.OUT_sqInfo(SQ_info)
			);
			wire TH_startFence;
			if (1) begin : lsu
				localparam SIZE = 256;
				localparam TOTAL_UOPS = 2;
				wire clk;
				wire rst;
				wire IN_flush;
				wire IN_SQ_empty;
				wire OUT_busy;
				wire [63:0] IN_branch;
				reg OUT_ldAGUStall;
				reg OUT_ldStall;
				wire OUT_stStall;
				wire [12:0] IN_uopELd;
				wire [61:0] IN_aguLd;
				wire [61:0] IN_uopLd;
				wire [61:0] OUT_uopLdSq;
				reg [9:0] OUT_ldAck;
				wire [71:0] IN_uopSt;
				wire [37:0] IN_stFwd;
				wire [71:0] OUT_stAck;
				wire [112:0] OUT_memc;
				wire [112:0] OUT_BLSU_memc;
				wire [397:0] IN_memc;
				reg [58:0] OUT_uopLd;
				wire [112:0] BLSU_memc;
				reg [112:0] LSU_memc;
				assign OUT_memc = LSU_memc;
				assign OUT_BLSU_memc = BLSU_memc;
				reg [61:0] uopLd_0;
				wire isCacheBypassLdUOp = ((((1 && uopLd_0[0]) && uopLd_0[1]) && (uopLd_0[3-:2] == 2'd0)) && (uopLd_0[61-:32] >= 32'h10000000)) && (uopLd_0[61-:32] < 32'h11000000);
				wire isCacheBypassStUOp = (((1 && IN_uopSt[0]) && IN_uopSt[3]) && (IN_uopSt[71-:32] >= 32'h10000000)) && (IN_uopSt[71-:32] < 32'h11000000);
				wire ignoreSt = isCacheBypassStUOp;
				wire BLSU_stStall;
				wire BLSU_ldStall;
				wire [61:0] BLSU_uopLd;
				wire [31:0] BLSU_ldResult;
				reg [61:0] ldOps [1:0];
				BypassLSU bypassLSU(
					.clk(clk),
					.rst(rst),
					.IN_branch(IN_branch),
					.IN_uopLdEn(isCacheBypassLdUOp),
					.OUT_ldStall(BLSU_ldStall),
					.IN_uopLd(uopLd_0),
					.IN_uopStEn(isCacheBypassStUOp),
					.OUT_stStall(BLSU_stStall),
					.IN_uopSt(IN_uopSt),
					.IN_ldStall(ldOps[1][0]),
					.OUT_uopLd(BLSU_uopLd),
					.OUT_ldData(BLSU_ldResult),
					.OUT_memc(BLSU_memc),
					.IN_memc(IN_memc)
				);
				wire [1:0] stall;
				reg [3:0] state;
				wire flushActive = (((state == 4'd1) || (state == 4'd4)) || (state == 4'd2)) || (state == 4'd3);
				assign stall[0] = flushActive;
				reg cacheTableWrite;
				assign stall[1] = (OUT_stStall || cacheTableWrite) || flushActive;
				assign OUT_stStall = (isCacheBypassStUOp ? BLSU_stStall : cacheTableWrite || flushActive) && IN_uopSt[0];
				wire [61:0] LMQ_ld;
				reg [61:0] uopLd;
				assign OUT_uopLdSq = uopLd_0;
				wire [71:0] uopSt;
				assign uopSt = IN_uopSt;
				reg [5:0] flushIdx;
				always @(*) begin
					SoC.IF_ct.re[0] = (uopLd[0] && !uopLd[1]) && (uopLd[3-:2] == 2'd0);
					SoC.IF_ct.raddr[0] = uopLd[41:30];
					SoC.IF_ct.re[1] = ((uopSt[0] && !uopSt[3]) && !stall[1]) && !ignoreSt;
					SoC.IF_ct.raddr[1] = uopSt[51:40];
					if (state == 4'd2) begin
						SoC.IF_ct.re[0] = 1;
						SoC.IF_ct.raddr[0] = {flushIdx, {6 {1'b0}}};
					end
				end
				always @(*) begin
					SoC.IF_cache.re = !((uopLd[0] && !uopLd[1]) && (uopLd[3-:2] == 2'd0));
					SoC.IF_cache.raddr = uopLd[41:30];
				end
				reg LMQ_dequeue;
				always @(*) begin
					uopLd = 1'sbx;
					uopLd[0] = 0;
					OUT_ldStall = IN_uopLd[0];
					OUT_ldAGUStall = IN_uopELd[0];
					LMQ_dequeue = 0;
					if (stall[0])
						;
					else if ((LMQ_ld[0] && ((!IN_branch[0] || LMQ_ld[4]) || ($signed(LMQ_ld[12-:7] - IN_branch[27-:7]) <= 0))) && (!SoC.IF_cache.rbusy || (SoC.IF_cache.rbusyBank != LMQ_ld[34+:1]))) begin
						uopLd = LMQ_ld;
						LMQ_dequeue = 1;
					end
					else if ((IN_uopLd[0] && ((!IN_branch[0] || IN_uopLd[4]) || ($signed(IN_uopLd[12-:7] - IN_branch[27-:7]) <= 0))) && (!SoC.IF_cache.rbusy || (SoC.IF_cache.rbusyBank != IN_uopLd[34+:1]))) begin
						uopLd = IN_uopLd;
						OUT_ldStall = 0;
					end
					else if (IN_uopELd[0] && (!SoC.IF_cache.rbusy || (SoC.IF_cache.rbusyBank != IN_uopELd[5+:1]))) begin
						uopLd[0] = 1;
						uopLd[4] = 0;
						uopLd[41:30] = IN_uopELd[12-:12];
						uopLd[1] = 0;
						uopLd[3-:2] = 2'd0;
						OUT_ldAGUStall = 0;
					end
				end
				reg regularLd;
				always @(posedge clk)
					if (rst)
						regularLd <= 0;
					else
						regularLd <= IN_uopELd[0] && !OUT_ldAGUStall;
				always @(*) begin
					uopLd_0 = ldOps[0];
					if (regularLd) begin
						uopLd_0 = 1'sbx;
						uopLd_0[0] = 0;
						if (IN_aguLd[0])
							uopLd_0 = IN_aguLd;
					end
				end
				always @(*) begin
					SoC.IF_mmio.re = 1;
					SoC.IF_mmio.raddr = 1'sbx;
					SoC.IF_mmio.rsize = 1'sbx;
					if ((uopLd_0[0] && uopLd_0[1]) && !isCacheBypassLdUOp) begin
						SoC.IF_mmio.re = 0;
						SoC.IF_mmio.raddr = uopLd_0[61-:32];
						SoC.IF_mmio.rsize = uopLd_0[28-:2];
					end
				end
				always @(*) begin
					SoC.IF_mmio.we = 1;
					SoC.IF_mmio.waddr = 1'sbx;
					SoC.IF_mmio.wdata = 1'sbx;
					SoC.IF_mmio.wmask = 1'sbx;
					if (uopSt[0] && uopSt[3]) begin
						SoC.IF_mmio.we = 0;
						SoC.IF_mmio.waddr = uopSt[71-:32];
						SoC.IF_mmio.wdata = uopSt[39-:32];
						SoC.IF_mmio.wmask = uopSt[7-:4];
					end
				end
				reg [71:0] stOps [1:0];
				reg loadWasExtIOBusy;
				always @(posedge clk)
					if (rst) begin : sv2v_autoblock_22
						integer i;
						for (i = 1; i < 3; i = i + 1)
							ldOps[i][0] <= 0;
					end
					else begin
						ldOps[0] <= 1'sbx;
						ldOps[0][0] <= 0;
						ldOps[1] <= 1'sbx;
						ldOps[1][0] <= 0;
						if (uopLd[0])
							ldOps[0] <= uopLd;
						if ((uopLd_0[0] && ((!IN_branch[0] || uopLd_0[4]) || ($signed(uopLd_0[12-:7] - IN_branch[27-:7]) <= 0))) && (!isCacheBypassLdUOp || BLSU_ldStall)) begin
							ldOps[1] <= uopLd_0;
							loadWasExtIOBusy <= isCacheBypassLdUOp;
						end
					end
				reg [1:0] assocCnt;
				reg [70:0] miss [1:0];
				reg [61:0] curLd;
				function automatic [1:0] CheckTransfers;
					input reg [112:0] memcReq;
					input reg [397:0] memcRes;
					input reg [0:0] cacheID;
					input reg [31:0] addr;
					reg [1:0] rv;
					begin
						rv = 0;
						begin : sv2v_autoblock_23
							integer i;
							for (i = 0; i < 4; i = i + 1)
								if ((memcRes[62 + (i * 84)] && (memcRes[62 + ((i * 84) + 2)] == cacheID)) && (memcRes[62 + ((i * 84) + 51)-:26] == addr[31:6])) begin
									rv[0] = 1;
									rv[1] = memcRes[62 + ((i * 84) + 7)-:5] > ({1'b0, addr[5:2]} - {1'b0, memcRes[62 + ((i * 84) + 25)-:4]});
								end
						end
						if ((((memcReq[112-:4] == 4'd1) || (memcReq[112-:4] == 4'd3)) && (memcReq[64:39] == addr[31:6])) && (memcReq[0] == cacheID))
							rv = 2'b01;
						CheckTransfers = rv;
					end
				endfunction
				always @(*) begin : sv2v_autoblock_24
					reg [61:0] ld;
					reg isExtMMIO;
					reg isIntMMIO;
					reg noEvict;
					reg doCacheLoad;
					ld = (ldOps[1][0] ? ldOps[1] : BLSU_uopLd);
					isExtMMIO = !ldOps[1][0];
					isIntMMIO = ldOps[1][0] && ldOps[1][1];
					noEvict = !SoC.IF_ct.rdata[(0 + assocCnt) * 21];
					doCacheLoad = 1;
					curLd = ld;
					OUT_uopLd = 1'sbx;
					OUT_uopLd[0] = 0;
					miss[0] = 1'sbx;
					miss[0][0] = 0;
					if (ld[0] && !rst) begin : sv2v_autoblock_25
						reg cacheHit;
						reg [31:0] readData;
						cacheHit = 0;
						readData = 1'sbx;
						if (isExtMMIO)
							readData = BLSU_ldResult;
						else if (isIntMMIO)
							readData = SoC.IF_mmio.rdata;
						else begin
							begin : sv2v_autoblock_26
								integer i;
								for (i = 0; i < 4; i = i + 1)
									if (SoC.IF_ct.rdata[(0 + i) * 21] && (SoC.IF_ct.rdata[((0 + i) * 21) + 20-:20] == ld[61:42])) begin
										cacheHit = 1;
										doCacheLoad = 0;
										readData = SoC.IF_cache.rdata[i * 32+:32];
									end
							end
							begin : sv2v_autoblock_27
								reg transferExists;
								reg allowPassThru;
								{allowPassThru, transferExists} = CheckTransfers(LSU_memc, IN_memc, 0, ld[61-:32]);
								if (transferExists) begin
									doCacheLoad = 0;
									cacheHit = cacheHit & allowPassThru;
								end
							end
							if (!(isExtMMIO || isIntMMIO) && (IN_stFwd[5-:4] == 4'b1111)) begin
								cacheHit = 1;
								doCacheLoad = 0;
							end
						end
						if (((((cacheHit || (ld[3-:2] != 2'd0)) || isExtMMIO) || isIntMMIO) && (!loadWasExtIOBusy || isExtMMIO)) && ((((ld[3-:2] != 2'd0) || isExtMMIO) || isIntMMIO) || !IN_stFwd[1])) begin
							if (!(isExtMMIO || isIntMMIO)) begin : sv2v_autoblock_28
								integer i;
								for (i = 0; i < 4; i = i + 1)
									if (IN_stFwd[2 + i])
										readData[i * 8+:8] = IN_stFwd[6 + (i * 8)+:8];
							end
							OUT_uopLd[0] = 1;
							OUT_uopLd[26-:7] = 1'sbx;
							OUT_uopLd[19-:7] = ld[19-:7];
							OUT_uopLd[12-:7] = ld[12-:7];
							OUT_uopLd[1] = ld[5];
							case (ld[3-:2])
								2'd0: OUT_uopLd[5-:4] = 4'd0;
								2'd1: OUT_uopLd[5-:4] = 4'd8;
								2'd2: OUT_uopLd[5-:4] = 4'd9;
								2'd3: OUT_uopLd[5-:4] = 4'd10;
							endcase
							case (ld[28-:2])
								0: OUT_uopLd[58-:32] = {{24 {(ld[29] ? readData[(8 * ld[31:30]) + 7] : 1'b0)}}, readData[8 * ld[31:30]+:8]};
								1: OUT_uopLd[58-:32] = {{16 {(ld[29] ? readData[(16 * ld[31]) + 15] : 1'b0)}}, readData[16 * ld[31]+:16]};
								2: OUT_uopLd[58-:32] = readData;
								default:
									;
							endcase
						end
						else begin
							miss[0][0] = 1;
							if (IN_stFwd[1])
								miss[0][4-:4] = 4'd8;
							else if (loadWasExtIOBusy)
								miss[0][4-:4] = 4'd6;
							else if (doCacheLoad)
								miss[0][4-:4] = (noEvict ? 4'd1 : 4'd0);
							else
								miss[0][4-:4] = 4'd2;
							miss[0][70-:32] = {SoC.IF_ct.rdata[((0 + assocCnt) * 21) + 20-:20], ld[41:30]};
							miss[0][38-:32] = ld[61-:32];
							miss[0][6-:2] = assocCnt;
						end
					end
				end
				reg [1:0] stConflictMiss;
				reg [1:0] stConflictMiss_c;
				reg stallStConflict;
				always @(posedge clk)
					if (rst) begin
						begin : sv2v_autoblock_29
							integer i;
							for (i = 0; i < 2; i = i + 1)
								stOps[i][0] <= 0;
						end
						stallStConflict <= 0;
					end
					else begin : sv2v_autoblock_30
						reg uopStStall;
						uopStStall = (isCacheBypassStUOp ? BLSU_stStall : stall[1]);
						stOps[0] <= 1'sbx;
						stOps[0][0] <= 0;
						stOps[1] <= 1'sbx;
						stOps[1][0] <= 0;
						if (uopSt[0] && uopStStall)
							stallStConflict <= stallStConflict | stConflictMiss_c[0];
						else
							stallStConflict <= 0;
						if (uopSt[0] && !uopStStall) begin
							stOps[0] <= uopSt;
							stConflictMiss[0] <= stConflictMiss_c[0] || stallStConflict;
						end
						if (stOps[0][0]) begin
							stOps[1] <= stOps[0];
							stConflictMiss[1] <= stConflictMiss_c[1];
						end
					end
				reg setDirty;
				reg [7:0] setDirtyIdx;
				always @(*) begin : sv2v_autoblock_31
					reg [71:0] st;
					reg cacheHit;
					reg doCacheLoad;
					reg [1:0] cacheHitAssoc;
					reg noEvict;
					st = stOps[1];
					cacheHit = 0;
					doCacheLoad = 1;
					cacheHitAssoc = 1'sbx;
					noEvict = !SoC.IF_ct.rdata[(4 + assocCnt) * 21];
					SoC.IF_cache.waddr = 1'sbx;
					SoC.IF_cache.wassoc = 1'sbx;
					SoC.IF_cache.wdata = 1'sbx;
					SoC.IF_cache.wmask = 1'sbx;
					SoC.IF_cache.we = 1;
					miss[1] = 1'sbx;
					miss[1][0] = 0;
					setDirty = 0;
					setDirtyIdx = 1'sbx;
					if (st[0] && !rst) begin
						begin : sv2v_autoblock_32
							integer i;
							for (i = 0; i < 4; i = i + 1)
								if (SoC.IF_ct.rdata[(4 + i) * 21] && (SoC.IF_ct.rdata[((4 + i) * 21) + 20-:20] == st[71:52])) begin
									doCacheLoad = 0;
									cacheHit = 1;
									cacheHitAssoc = i[1:0];
								end
						end
						begin : sv2v_autoblock_33
							reg transferExists;
							reg allowPassThru;
							{allowPassThru, transferExists} = CheckTransfers(LSU_memc, IN_memc, 0, st[71-:32]);
							if (transferExists) begin
								doCacheLoad = 0;
								cacheHit = cacheHit & allowPassThru;
							end
						end
						if ((cacheHit && (LSU_memc[112-:4] != 4'd0)) && (LSU_memc[76:69] == {cacheHitAssoc, st[51:46]})) begin
							cacheHit = 0;
							doCacheLoad = 0;
							cacheHitAssoc = 1'sbx;
						end
						if (stConflictMiss[1]) begin
							miss[1][0] = 1;
							miss[1][70-:32] = 1'sbx;
							miss[1][38-:32] = 1'sbx;
							miss[1][6-:2] = 1'sbx;
							miss[1][4-:4] = 4'd7;
						end
						else if (st[3])
							;
						else if (st[7-:4] == 0) begin
							if (cacheHit) begin
								miss[1][0] = 1;
								miss[1][70-:32] = st[71-:32];
								miss[1][38-:32] = st[71-:32];
								miss[1][6-:2] = cacheHitAssoc;
								case (st[9:8])
									0: miss[1][4-:4] = 4'd3;
									1: miss[1][4-:4] = 4'd4;
									2: miss[1][4-:4] = 4'd5;
									default:
										;
								endcase
							end
						end
						else if (cacheHit) begin
							SoC.IF_cache.we = 0;
							SoC.IF_cache.waddr = st[51:40];
							SoC.IF_cache.wassoc = cacheHitAssoc;
							SoC.IF_cache.wdata = st[39-:32];
							SoC.IF_cache.wmask = st[7-:4];
							setDirty = 1;
							setDirtyIdx = {cacheHitAssoc, st[51:46]};
						end
						else begin
							miss[1][0] = 1;
							miss[1][4-:4] = (doCacheLoad ? (noEvict ? 4'd1 : 4'd0) : 4'd2);
							miss[1][70-:32] = {SoC.IF_ct.rdata[((4 + assocCnt) * 21) + 20-:20], st[51:40]};
							miss[1][38-:32] = st[71-:32];
							miss[1][6-:2] = assocCnt;
						end
					end
				end
				wire redoStore = stOps[1][0] && (miss[1][0] ? ((((miss[1][4-:4] == 4'd0) || (miss[1][4-:4] == 4'd1)) || (miss[1][4-:4] == 4'd6)) || (miss[1][4-:4] == 4'd7)) || (miss[1][4-:4] == 4'd2) : !stOps[1][3] && SoC.IF_cache.wbusy);
				always @(*) begin
					stConflictMiss_c[0] = redoStore && (((stOps[1][71:42] == uopSt[71:42]) && |(stOps[1][7-:4] & uopSt[7-:4])) || (stOps[1][3] && uopSt[3]));
					stConflictMiss_c[1] = (redoStore && (((stOps[1][71:42] == stOps[0][71:42]) && |(stOps[1][7-:4] & stOps[0][7-:4])) || (stOps[1][3] && stOps[0][3]))) || stConflictMiss[0];
				end
				wire loadIsRegularMiss = (miss[0][0] && (miss[0][4-:4] != 4'd8)) && (miss[0][4-:4] != 4'd6);
				wire LMQ_full;
				wire forwardMiss = (LSU_memc[112-:4] == 4'd0) || !IN_memc[2];
				reg newMiss;
				wire LMQ_allowNewMisses = forwardMiss && !newMiss;
				LoadMissQueue #(.SIZE(2)) loadMissQueue(
					.clk(clk),
					.rst(rst),
					.IN_ready(LMQ_allowNewMisses),
					.IN_branch(IN_branch),
					.OUT_full(LMQ_full),
					.IN_memc(IN_memc),
					.IN_ld(curLd),
					.IN_enqueue(loadIsRegularMiss),
					.OUT_ld(LMQ_ld),
					.IN_dequeue(LMQ_dequeue)
				);
				always @(*) begin
					OUT_ldAck = 1'sbx;
					OUT_ldAck[0] = 0;
					if (miss[0][0] && (((miss[0][4-:4] == 4'd8) || (miss[0][4-:4] == 4'd6)) || (loadIsRegularMiss && LMQ_full))) begin
						OUT_ldAck[0] = 1;
						OUT_ldAck[2] = 1;
						OUT_ldAck[1] = curLd[4];
						OUT_ldAck[9-:7] = curLd[26-:7];
					end
				end
				assign OUT_stAck[71-:32] = stOps[1][71-:32];
				assign OUT_stAck[39-:32] = stOps[1][39-:32];
				assign OUT_stAck[7-:4] = stOps[1][7-:4];
				assign OUT_stAck[3-:2] = stOps[1][2-:2];
				assign OUT_stAck[0] = stOps[1][0];
				assign OUT_stAck[1] = redoStore;
				reg [1:0] missEvictConflict;
				always @(*) begin : sv2v_autoblock_34
					integer i;
					for (i = 0; i < 2; i = i + 1)
						begin
							missEvictConflict[i] = 0;
							begin : sv2v_autoblock_35
								integer j;
								for (j = 0; j < 4; j = j + 1)
									if ((miss[i][0] && IN_memc[62 + (j * 84)]) && (IN_memc[62 + ((j * 84) + 83)-:26] == miss[i][38:13]))
										missEvictConflict[i] = 1;
							end
							if ((((LSU_memc[112-:4] == 4'd1) || (LSU_memc[112-:4] == 4'd2)) && miss[i][0]) && (LSU_memc[32:7] == miss[i][38:13]))
								missEvictConflict[i] = 1;
							begin : sv2v_autoblock_36
								integer j;
								for (j = 0; j < 4; j = j + 1)
									if ((miss[i][0] && IN_memc[62 + (j * 84)]) && (IN_memc[62 + ((j * 84) + 51)-:26] == miss[i][70:45]))
										missEvictConflict[i] = 1;
							end
							if ((((LSU_memc[112-:4] == 4'd1) || (LSU_memc[112-:4] == 4'd3)) && miss[i][0]) && (LSU_memc[64:39] == miss[i][70:45]))
								missEvictConflict[i] = 1;
						end
				end
				reg [1:0] flushAssocIdx;
				reg flushDone;
				always @(*) begin : sv2v_autoblock_37
					reg temp;
					temp = 0;
					cacheTableWrite = 0;
					SoC.IF_ct.we = 0;
					SoC.IF_ct.waddr = 1'sbx;
					SoC.IF_ct.wassoc = 1'sbx;
					SoC.IF_ct.wdata = 1'sbx;
					newMiss = 0;
					if (!rst && (state == 4'd0)) begin : sv2v_autoblock_38
						integer i;
						for (i = 0; i < 2; i = i + 1)
							if (((((((forwardMiss && !missEvictConflict[i]) && miss[i][0]) && !temp) && (miss[i][4-:4] != 4'd6)) && (miss[i][4-:4] != 4'd7)) && (miss[i][4-:4] != 4'd8)) && (miss[i][4-:4] != 4'd2)) begin
								temp = 1;
								newMiss = 1;
								case (miss[i][4-:4])
									4'd1, 4'd0: begin
										SoC.IF_ct.we = 1;
										SoC.IF_ct.waddr = miss[i][18:7];
										SoC.IF_ct.wassoc = miss[i][6-:2];
										SoC.IF_ct.wdata[20-:20] = miss[i][38:19];
										SoC.IF_ct.wdata[0] = 1;
										cacheTableWrite = 1;
									end
									4'd4, 4'd5: begin
										SoC.IF_ct.we = 1;
										SoC.IF_ct.waddr = miss[i][18:7];
										SoC.IF_ct.wassoc = miss[i][6-:2];
										SoC.IF_ct.wdata[20-:20] = 0;
										SoC.IF_ct.wdata[0] = 0;
										cacheTableWrite = 1;
									end
									default:
										;
								endcase
							end
					end
					else if (!rst && (state == 4'd1))
						if (!flushDone) begin
							SoC.IF_ct.we = 1;
							SoC.IF_ct.waddr = {flushIdx, {6 {1'b0}}};
							SoC.IF_ct.wassoc = flushAssocIdx;
							SoC.IF_ct.wdata[20-:20] = 0;
							SoC.IF_ct.wdata[0] = 0;
							cacheTableWrite = 1;
						end
				end
				reg [255:0] dirty;
				reg flushQueued;
				wire busy = (((((((uopLd[0] || uopSt[0]) || uopLd_0[0]) || curLd[0]) || stOps[0][0]) || stOps[1][0]) || !IN_SQ_empty) || (OUT_ldAck[0] && OUT_ldAck[2])) || (OUT_stAck[0] && OUT_stAck[1]);
				wire flushReady = !busy;
				assign OUT_busy = (busy || flushQueued) || flushActive;
				reg [70:0] curCacheMiss;
				reg [1:0] replaceAssoc;
				always @(posedge clk) begin
					if ((LSU_memc[112-:4] == 4'd0) || !IN_memc[2]) begin
						LSU_memc <= 1'sbx;
						LSU_memc[112-:4] <= 4'd0;
					end
					if (rst) begin
						state <= 4'd0;
						replaceAssoc <= 0;
						flushQueued <= 1;
						LSU_memc <= 1'sbx;
						LSU_memc[112-:4] <= 4'd0;
					end
					else begin
						if (IN_flush)
							flushQueued <= 1;
						if (setDirty)
							dirty[setDirtyIdx] <= 1;
						case (state)
							4'd0: begin : sv2v_autoblock_39
								reg temp;
								temp = 0;
								begin : sv2v_autoblock_40
									integer i;
									for (i = 0; i < 2; i = i + 1)
										begin : sv2v_autoblock_41
											reg [7:0] missIdx;
											reg [3:0] missType;
											missIdx = {miss[i][6-:2], miss[i][18:13]};
											missType = miss[i][4-:4];
											if (((((((forwardMiss && !missEvictConflict[i]) && miss[i][0]) && !temp) && (miss[i][4-:4] != 4'd6)) && (miss[i][4-:4] != 4'd7)) && (miss[i][4-:4] != 4'd8)) && (miss[i][4-:4] != 4'd2)) begin
												temp = 1;
												curCacheMiss <= miss[i];
												assocCnt <= assocCnt + 1;
												if (((missType == 4'd0) && !dirty[missIdx]) && (!setDirty || (setDirtyIdx != missIdx)))
													missType = 4'd1;
												dirty[missIdx] <= 0;
												case (missType)
													4'd0: begin
														LSU_memc[112-:4] <= 4'd1;
														LSU_memc[76-:12] <= {miss[i][6-:2], miss[i][18:9]};
														LSU_memc[32-:32] <= {miss[i][70:51], miss[i][18:9], 2'b00};
														LSU_memc[64-:32] <= {miss[i][38:9], 2'b00};
														LSU_memc[0] <= 0;
													end
													4'd1: begin
														LSU_memc[112-:4] <= 4'd3;
														LSU_memc[76-:12] <= {miss[i][6-:2], miss[i][18:9]};
														LSU_memc[32-:32] <= 1'sbx;
														LSU_memc[64-:32] <= {miss[i][38:9], 2'b00};
														LSU_memc[0] <= 0;
													end
													4'd3, 4'd5: begin
														LSU_memc[112-:4] <= 4'd2;
														LSU_memc[76-:12] <= {miss[i][6-:2], miss[i][18:9]};
														LSU_memc[32-:32] <= {miss[i][70:51], miss[i][18:9], 2'b00};
														LSU_memc[64-:32] <= 1'sbx;
														LSU_memc[0] <= 0;
													end
													default:
														;
												endcase
											end
										end
								end
								if (!temp)
									if (flushQueued && flushReady) begin
										state <= 4'd4;
										flushQueued <= 0;
										flushIdx <= 0;
										flushAssocIdx <= 0;
										flushDone <= 0;
									end
							end
							4'd4: begin
								state <= 4'd2;
								if ((LSU_memc[112-:4] != 4'd0) || (BLSU_memc[112-:4] != 4'd0))
									state <= 4'd4;
								begin : sv2v_autoblock_42
									integer i;
									for (i = 0; i < 4; i = i + 1)
										if (IN_memc[62 + (i * 84)])
											state <= 4'd4;
								end
							end
							4'd2: state <= 4'd3;
							4'd3: state <= 4'd1;
							4'd1:
								if (flushDone)
									state <= 4'd0;
								else if ((LSU_memc[112-:4] == 4'd0) || !IN_memc[2]) begin : sv2v_autoblock_43
									reg [20:0] entry;
									entry = SoC.IF_ct.rdata[(0 + flushAssocIdx) * 21+:21];
									if (entry[0] && dirty[{flushAssocIdx, flushIdx}]) begin
										LSU_memc[112-:4] <= 4'd2;
										LSU_memc[76-:12] <= {flushAssocIdx, flushIdx, {4 {1'b0}}};
										LSU_memc[32-:32] <= {entry[20-:20], flushIdx, {6 {1'b0}}};
										LSU_memc[64-:32] <= 1'sbx;
										LSU_memc[0] <= 0;
									end
									{flushDone, flushIdx, flushAssocIdx} <= {flushIdx, flushAssocIdx} + 1;
									if (&flushAssocIdx)
										state <= 4'd2;
								end
							default: state <= 4'd0;
						endcase
					end
				end
			end
			assign lsu.clk = clk;
			assign lsu.rst = rst;
			assign lsu.IN_flush = TH_startFence;
			assign lsu.IN_SQ_empty = SQ_empty;
			assign LSU_busy = lsu.OUT_busy;
			assign lsu.IN_branch = branch;
			assign LSU_ldAGUStall = lsu.OUT_ldAGUStall;
			assign CC_loadStall = lsu.OUT_ldStall;
			assign CC_storeStall = lsu.OUT_stStall;
			assign lsu.IN_uopELd = AGU_eLdUOp;
			assign lsu.IN_aguLd = LB_aguUOpLd;
			assign lsu.IN_uopLd = LS_uopLd;
			assign CC_SQ_uopLd = lsu.OUT_uopLdSq;
			assign LSU_ldAck = lsu.OUT_ldAck;
			assign lsu.IN_uopSt = SQ_uop;
			assign lsu.IN_stFwd = SQ_fwd;
			assign LSU_stAck = lsu.OUT_stAck;
			assign LSU_MC_if = lsu.OUT_memc;
			assign BLSU_MC_if = lsu.OUT_BLSU_memc;
			assign lsu.IN_memc = IN_memc;
			assign wbUOp[118+:59] = lsu.OUT_uopLd;
			wire [58:0] INT1_uop;
			IntALU ialu1(
				.clk(clk),
				.en(LD_uop[187-:4] == 4'd0),
				.rst(rst),
				.IN_wbStall(1'b0),
				.IN_uop(LD_uop[182+:182]),
				.IN_invalidate(branch[0]),
				.IN_invalidateSqN(branch[27-:7]),
				.OUT_branch(branchProvs[64+:64]),
				.OUT_btUpdate(BP_btUpdates[76+:76]),
				.OUT_zcFwd(LD_zcFwd[40+:40]),
				.OUT_uop(INT1_uop)
			);
			wire [58:0] MUL_uop;
			wire MUL_busy;
			Multiply mul(
				.clk(clk),
				.rst(rst),
				.en(LD_uop[187-:4] == 4'd3),
				.OUT_busy(MUL_busy),
				.IN_branch(branch),
				.IN_uop(LD_uop[182+:182]),
				.OUT_uop(MUL_uop)
			);
			wire FDIV_busy = 1;
			assign wbUOp[59+:59] = (INT1_uop[0] ? INT1_uop : MUL_uop);
			wire [46:0] ROB_trapUOp;
			ROB rob(
				.clk(clk),
				.rst(rst),
				.IN_uop(RN_uop),
				.IN_wbUOps(wbUOp),
				.IN_interruptPending(CSR_trapControl[5]),
				.IN_branch(branch),
				.IN_sqInfo(SQ_info),
				.OUT_maxSqN(ROB_maxSqN),
				.OUT_curSqN(ROB_curSqN),
				.OUT_lastLoadSqN(ROB_comLoadSqN),
				.OUT_lastStoreSqN(ROB_comStoreSqN),
				.OUT_comUOp(comUOps),
				.OUT_fpNewFlags(ROB_fpNewFlags),
				.OUT_PERFC_validRetire(ROB_validRetire),
				.OUT_PERFC_retireBranch(ROB_retireBranch),
				.OUT_curFetchID(ROB_curFetchID),
				.OUT_trapUOp(ROB_trapUOp),
				.OUT_bpUpdate0(ROB_bpUpdate0),
				.OUT_mispredFlush(mispredFlush)
			);
			TrapHandler trapHandler(
				.clk(clk),
				.rst(rst),
				.IN_trapInstr(ROB_trapUOp),
				.OUT_pcReadAddr(PC_readAddress[20+:5]),
				.IN_pcReadData(PC_readData[148+:37]),
				.IN_trapControl(CSR_trapControl),
				.OUT_trapInfo(TH_trapInfo),
				.OUT_bpUpdate1(TH_bpUpdate1),
				.OUT_branch(branchProvs[192+:64]),
				.IN_MEM_busy(MEMSUB_busy),
				.OUT_flushTLB(TH_flushTLB),
				.OUT_fence(TH_startFence),
				.OUT_clearICache(TH_clearICache),
				.OUT_disableIFetch(TH_disableIFetch),
				.OUT_dbgStallPC(TH_stallPC)
			);
		end
	endgenerate
	assign core.clk = clk;
	assign core.rst = rst;
	assign core.en = en;
	assign MemC_ctrl = core.OUT_memc;
	assign core.IN_memc = MemC_stat;
	assign OUT_dbg = core.OUT_dbg;
	reg [157:0] CORE_DC_if;
	always @(*) begin
		CORE_DC_if[157] = IF_cache.we;
		CORE_DC_if[156] = IF_cache.we;
		CORE_DC_if[139-:12] = {IF_cache.wassoc, IF_cache.waddr[11:2]};
	end
	function automatic [15:0] sv2v_cast_16;
		input reg [15:0] inp;
		sv2v_cast_16 = inp;
	endfunction
	generate
		if (1) begin : genblk1
			always @(*) begin
				CORE_DC_if[155-:16] = sv2v_cast_16(IF_cache.wmask) << (IF_cache.waddr[2+:2] * 4);
				CORE_DC_if[127-:128] = {4 {IF_cache.wdata}};
			end
		end
	endgenerate
	reg [315:0] readIFs;
	function automatic [157:0] sv2v_cast_158;
		input reg [157:0] inp;
		sv2v_cast_158 = inp;
	endfunction
	always @(*) begin
		begin : sv2v_autoblock_44
			integer i;
			for (i = 0; i < 2; i = i + 1)
				readIFs[i * 158+:158] = sv2v_cast_158(158'b11xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
		end
		IF_cache.rbusy = 0;
		IF_cache.rbusyBank = 1'sbx;
		if (!IF_cache.re) begin
			readIFs[(IF_cache.raddr[4+:1] * 158) + 157] = IF_cache.re;
			readIFs[(IF_cache.raddr[4+:1] * 158) + 139-:12] = {{2 {1'bx}}, IF_cache.raddr[11:2]};
		end
		if (!MC_DC_rd[157]) begin
			readIFs[MC_DC_rd[130+:1] * 158+:158] = MC_DC_rd;
			IF_cache.rbusy = 1;
			IF_cache.rbusyBank = MC_DC_rd[130+:1];
		end
	end
	reg [315:0] bankIFs;
	always @(*) begin
		begin : sv2v_autoblock_45
			integer i;
			for (i = 0; i < 2; i = i + 1)
				bankIFs[i * 158+:158] = sv2v_cast_158(158'b1xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
		end
		if (!CORE_DC_if[157])
			bankIFs[CORE_DC_if[130+:1] * 158+:158] = CORE_DC_if;
		if (!MC_DC_wr[157])
			bankIFs[MC_DC_wr[130+:1] * 158+:158] = MC_DC_wr;
		IF_cache.wbusy = !MC_DC_wr[157] && (CORE_DC_if[130+:1] == MC_DC_wr[130+:1]);
	end
	reg [19:0] CORE_raddr;
	reg [23:0] MEMC_raddr;
	always @(posedge clk) begin
		CORE_raddr <= {CORE_raddr[0+:10], IF_cache.raddr[11:2]};
		MEMC_raddr <= {MEMC_raddr[0+:12], MC_DC_rd[139-:12]};
	end
	wire [511:0] dcacheOut0 [1:0];
	wire [511:0] dcacheOut1 [1:0];
	genvar i;
	function automatic [63:0] sv2v_cast_64;
		input reg [63:0] inp;
		sv2v_cast_64 = inp;
	endfunction
	generate
		for (i = 0; i < 2; i = i + 1) begin : genblk2
			MemRTL #(
				.WORD_SIZE(512),
				.NUM_WORDS(128)
			) dcache(
				.clk(clk),
				.IN_nce(bankIFs[(i * 158) + 157]),
				.IN_nwe(bankIFs[(i * 158) + 156]),
				.IN_addr(bankIFs[(i * 158) + 137-:7]),
				.IN_data({4 {bankIFs[(i * 158) + 127-:128]}}),
				.IN_wm(sv2v_cast_64(bankIFs[(i * 158) + 155-:16]) << ((bankIFs[(i * 158) + 139-:2] * 4) * 4)),
				.OUT_data(dcacheOut0[i]),
				.IN_nce1(readIFs[(i * 158) + 157]),
				.IN_addr1(readIFs[(i * 158) + 137-:7]),
				.OUT_data1(dcacheOut1[i])
			);
		end
	endgenerate
	reg [511:0] dcacheOut1_t [1:0];
	always @(*) begin : sv2v_autoblock_46
		integer i;
		for (i = 0; i < 2; i = i + 1)
			begin : sv2v_autoblock_47
				integer a;
				for (a = 0; a < 4; a = a + 1)
					begin : sv2v_autoblock_48
						integer w;
						for (w = 0; w < 4; w = w + 1)
							dcacheOut1_t[i][((w * 4) + a) * 32+:32] = dcacheOut1[i][((a * 4) + w) * 32+:32];
					end
			end
	end
	always @(*) begin
		DC_dataOut = 1'sbx;
		DC_dataOut[127:0] = dcacheOut1[MEMC_raddr[14+:1]][32 * (MEMC_raddr[23-:2] * 4)+:128];
	end
	generate
		if (1) begin : genblk3
			assign IF_cache.rdata = dcacheOut1_t[CORE_raddr[12+:1]][32 * (CORE_raddr[10+:2] * 4)+:128];
		end
	endgenerate
	wire [11:0] dctAddr = (IF_ct.we ? IF_ct.waddr : IF_ct.raddr[1]);
	MemRTL #(
		.WORD_SIZE(84),
		.NUM_WORDS(64),
		.WRITE_SIZE(21)
	) dctable(
		.clk(clk),
		.IN_nce(!(IF_ct.re[1] || IF_ct.we)),
		.IN_nwe(!IF_ct.we),
		.IN_addr(dctAddr[11-:6]),
		.IN_data({4 {IF_ct.wdata}}),
		.IN_wm(1 << IF_ct.wassoc),
		.OUT_data(IF_ct.rdata[84+:84]),
		.IN_nce1(!IF_ct.re[0]),
		.IN_addr1(IF_ct.raddr[0][11-:6]),
		.OUT_data1(IF_ct.rdata[0+:84])
	);
	MemRTL #(
		.WORD_SIZE(84),
		.NUM_WORDS(64),
		.WRITE_SIZE(21)
	) ictable(
		.clk(clk),
		.IN_nce(!IF_ict.we),
		.IN_nwe(!IF_ict.we),
		.IN_addr(IF_ict.waddr[11-:6]),
		.IN_data({4 {IF_ict.wdata}}),
		.IN_wm(1 << IF_ict.wassoc),
		.IN_nce1(!IF_ict.re),
		.IN_addr1(IF_ict.raddr[11-:6]),
		.OUT_data1(IF_ict.rdata)
	);
	MemRTL #(
		.WORD_SIZE(512),
		.NUM_WORDS(256),
		.WRITE_SIZE(128)
	) icache(
		.clk(clk),
		.IN_nce(MC_IC_wr[141]),
		.IN_nwe(MC_IC_wr[140]),
		.IN_addr(MC_IC_wr[137:130]),
		.IN_data({4 {MC_IC_wr[127-:128]}}),
		.IN_wm(1 << MC_IC_wr[139-:2]),
		.IN_nce1(!IF_icache.re),
		.IN_addr1(IF_icache.raddr[11:4]),
		.OUT_data1(IF_icache.rdata)
	);
	generate
		if (1) begin : mmio
			wire clk;
			wire rst;
			reg OUT_powerOff;
			reg OUT_reboot;
			assign SoC.IF_mmio.rbusy = 0;
			wire aclintBusy;
			wire sysConBusy;
			assign SoC.IF_mmio.wbusy = (aclintBusy || sysConBusy) || !SoC.IF_mmio.we;
			wire [31:0] aclintData;
			wire aclintRValid;
			ACLINT aclint(
				.clk(clk),
				.rst(rst),
				.IN_re(!SoC.IF_mmio.re),
				.IN_raddr(SoC.IF_mmio.raddr[31:2]),
				.OUT_rdata(aclintData),
				.OUT_rbusy(aclintBusy),
				.OUT_rvalid(aclintRValid),
				.IN_we(!SoC.IF_mmio.we),
				.IN_wmask(SoC.IF_mmio.wmask),
				.IN_waddr(SoC.IF_mmio.waddr[31:2]),
				.IN_wdata(SoC.IF_mmio.wdata),
				.OUT_mtime(SoC.IF_csr_mmio.mtime),
				.OUT_mtimecmp(SoC.IF_csr_mmio.mtimecmp)
			);
			wire [31:0] sysConData;
			wire sysConRValid;
			wire [1:1] sv2v_tmp_sysCon_OUT_powerOff;
			always @(*) OUT_powerOff = sv2v_tmp_sysCon_OUT_powerOff;
			wire [1:1] sv2v_tmp_sysCon_OUT_reboot;
			always @(*) OUT_reboot = sv2v_tmp_sysCon_OUT_reboot;
			SysCon #(.ADDR(32'h11100000)) sysCon(
				.clk(clk),
				.rst(rst),
				.IN_re(!SoC.IF_mmio.re),
				.IN_raddr(SoC.IF_mmio.raddr[31:2]),
				.OUT_rdata(sysConData),
				.OUT_rbusy(sysConBusy),
				.OUT_rvalid(sysConRValid),
				.IN_we(!SoC.IF_mmio.we),
				.IN_wmask(SoC.IF_mmio.wmask),
				.IN_waddr(SoC.IF_mmio.waddr[31:2]),
				.IN_wdata(SoC.IF_mmio.wdata),
				.OUT_powerOff(sv2v_tmp_sysCon_OUT_powerOff),
				.OUT_reboot(sv2v_tmp_sysCon_OUT_reboot)
			);
			always @(*) begin
				SoC.IF_mmio.rdata = 1'sbx;
				if (aclintRValid)
					SoC.IF_mmio.rdata = aclintData;
				if (sysConRValid)
					SoC.IF_mmio.rdata = sysConData;
			end
		end
	endgenerate
	assign mmio.clk = clk;
	assign mmio.rst = rst;
	assign OUT_powerOff = mmio.OUT_powerOff;
	assign OUT_reboot = mmio.OUT_reboot;
endmodule
module StoreQueue (
	clk,
	rst,
	IN_stallSt,
	IN_stallLd,
	OUT_empty,
	OUT_done,
	IN_uopSt,
	IN_uopLd,
	IN_rnUOp,
	IN_resultUOp,
	OUT_RF_raddr,
	IN_RF_rdata,
	IN_vmem,
	IN_curSqN,
	IN_comStSqN,
	IN_branch,
	OUT_uopSt,
	OUT_fwd,
	IN_stAck,
	OUT_flush,
	OUT_maxStoreSqN,
	OUT_sqInfo
);
	parameter NUM_ENTRIES = 16;
	parameter NUM_EVICTED = 4;
	parameter RESULT_BUS_COUNT = 3;
	parameter WIDTH_RN = 4;
	parameter AMO_RES_PORT = 0;
	input wire clk;
	input wire rst;
	input wire IN_stallSt;
	input wire IN_stallLd;
	output reg OUT_empty;
	output wire OUT_done;
	input wire [109:0] IN_uopSt;
	input wire [61:0] IN_uopLd;
	input wire [(WIDTH_RN * 126) - 1:0] IN_rnUOp;
	input wire [(RESULT_BUS_COUNT * 59) - 1:0] IN_resultUOp;
	output reg [5:0] OUT_RF_raddr;
	input wire [31:0] IN_RF_rdata;
	input wire [30:0] IN_vmem;
	input wire [6:0] IN_curSqN;
	input wire [6:0] IN_comStSqN;
	input wire [63:0] IN_branch;
	output reg [71:0] OUT_uopSt;
	output reg [37:0] OUT_fwd;
	input wire [71:0] IN_stAck;
	output wire OUT_flush;
	output reg [6:0] OUT_maxStoreSqN;
	output reg [7:0] OUT_sqInfo;
	reg [NUM_ENTRIES - 1:0] entryReady_r;
	reg [NUM_ENTRIES - 1:0] entryReady_c;
	always @(posedge clk) entryReady_r <= (rst ? 0 : entryReady_c);
	reg [NUM_ENTRIES - 1:0] entryValid_r;
	reg [NUM_ENTRIES - 1:0] entryValid_c;
	always @(posedge clk) entryValid_r <= (rst ? 0 : entryValid_c);
	reg [6:0] baseIndex;
	wire [NUM_ENTRIES - 1:0] baseIndexOneHot = 1 << baseIndex[$clog2(NUM_ENTRIES) - 1:0];
	wire [NUM_ENTRIES - 1:0] comStSqNOneHot = 1 << IN_comStSqN[$clog2(NUM_ENTRIES) - 1:0];
	reg [6:0] lastIndex;
	wire [NUM_ENTRIES - 1:0] lastIndexOneHot = 1 << lastIndex[$clog2(NUM_ENTRIES) - 1:0];
	function automatic [6:0] sv2v_cast_7;
		input reg [6:0] inp;
		sv2v_cast_7 = inp;
	endfunction
	always @(*) begin : sv2v_autoblock_1
		reg active;
		active = IN_comStSqN[$clog2(NUM_ENTRIES) - 1:0] < baseIndex[$clog2(NUM_ENTRIES) - 1:0];
		begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < NUM_ENTRIES; i = i + 1)
				begin
					if ((baseIndex + sv2v_cast_7(NUM_ENTRIES)) == IN_comStSqN)
						active = 1;
					else if (comStSqNOneHot[i])
						active = 0;
					else if (baseIndexOneHot[i])
						active = 1;
					entryReady_c[i] = active;
				end
		end
	end
	always @(*) begin : sv2v_autoblock_3
		reg active;
		active = (lastIndex[$clog2(NUM_ENTRIES) - 1:0] + 1'b1) < baseIndex[$clog2(NUM_ENTRIES) - 1:0];
		begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < NUM_ENTRIES; i = i + 1)
				begin : sv2v_autoblock_5
					integer prev;
					prev = (i >= 1 ? i - 1 : NUM_ENTRIES - 1);
					if ((baseIndex + sv2v_cast_7(NUM_ENTRIES - 1)) == lastIndex)
						active = 1;
					else if (lastIndexOneHot[prev])
						active = 0;
					else if (baseIndexOneHot[i])
						active = 1;
					entryValid_c[i] = active;
				end
		end
	end
	reg [77:0] entries [NUM_ENTRIES - 1:0];
	reg [$clog2(NUM_ENTRIES) - 1:0] loadBaseIndex;
	reg loadBaseIndexValid;
	always @(posedge clk) begin
		OUT_sqInfo <= 1'sbx;
		OUT_sqInfo[0] <= 0;
		if (rst)
			;
		else if (loadBaseIndexValid) begin
			OUT_sqInfo[0] <= 1;
			if (entries[loadBaseIndex[$clog2(NUM_ENTRIES) - 1:0]][3] && (!entries[loadBaseIndex[$clog2(NUM_ENTRIES) - 1:0]][1] || !entries[loadBaseIndex[$clog2(NUM_ENTRIES) - 1:0]][2]))
				OUT_sqInfo[7-:7] <= entries[loadBaseIndex[$clog2(NUM_ENTRIES) - 1:0]][11-:7] - 1;
			else
				OUT_sqInfo[7-:7] <= entries[loadBaseIndex[$clog2(NUM_ENTRIES) - 1:0]][11-:7];
		end
	end
	reg empty;
	reg [81:0] evicted [NUM_EVICTED - 1:0];
	always @(*) begin
		empty = 1;
		begin : sv2v_autoblock_6
			integer i;
			for (i = 0; i < NUM_ENTRIES; i = i + 1)
				if (entryValid_c[i])
					empty = 0;
		end
		begin : sv2v_autoblock_7
			integer i;
			for (i = 0; i < NUM_EVICTED; i = i + 1)
				if (evicted[i][0] && !evicted[i][1])
					empty = 0;
		end
		if (IN_stAck[0] && IN_stAck[1])
			empty = 0;
	end
	reg [71:0] stAck_r;
	always @(posedge clk)
		if (!rst)
			stAck_r <= IN_stAck;
		else begin
			stAck_r <= 1'sbx;
			stAck_r[0] <= 0;
		end
	reg [$clog2(NUM_EVICTED):0] evictedIn;
	reg [3:0] readMask;
	always @(*)
		case (IN_uopLd[28-:2])
			0: readMask = 4'b0001 << IN_uopLd[31:30];
			1: readMask = (IN_uopLd[31:30] == 2 ? 4'b1100 : 4'b0011);
			default: readMask = 4'b1111;
		endcase
	reg [3:0] lookupMask;
	reg [31:0] lookupData;
	reg lookupConflict;
	reg [NUM_ENTRIES - 1:0] lookupConflictList;
	reg [31:0] lookupDataIter [NUM_ENTRIES - 1:0];
	reg [3:0] lookupMaskIter [NUM_ENTRIES - 1:0];
	wire [$clog2(NUM_ENTRIES) - 1:0] outputIdx = baseIndex[$clog2(NUM_ENTRIES) - 1:0] - 1;
	always @(*) begin
		lookupMask = ~readMask;
		lookupData = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
		lookupConflict = 0;
		begin : sv2v_autoblock_8
			integer i;
			for (i = 0; i < NUM_EVICTED; i = i + 1)
				if ((evicted[i][0] && (evicted[i][49-:30] == IN_uopLd[61:32])) && !({evicted[i][49-:30], 2'b00} < 32'h80000000)) begin
					begin : sv2v_autoblock_9
						integer j;
						for (j = 0; j < 4; j = j + 1)
							if (evicted[i][16 + j])
								lookupData[j * 8+:8] = evicted[i][50 + (j * 8)+:8];
					end
					lookupMask = lookupMask | evicted[i][19-:4];
				end
		end
		begin : sv2v_autoblock_10
			integer i;
			for (i = 0; i < 4; i = i + 1)
				if (lookupMaskIter[outputIdx][i])
					lookupData[i * 8+:8] = lookupDataIter[outputIdx][i * 8+:8];
		end
		lookupMask = lookupMask | lookupMaskIter[outputIdx];
		lookupConflict = |lookupConflictList;
	end
	genvar i;
	generate
		for (i = 0; i < NUM_ENTRIES; i = i + 1) begin : genblk1
			always @(*) begin : sv2v_autoblock_11
				integer prev;
				prev = (i >= 1 ? i - 1 : NUM_ENTRIES - 1);
				if (i == baseIndex[$clog2(NUM_ENTRIES) - 1:0]) begin
					lookupMaskIter[i] = 0;
					lookupDataIter[i] = 0;
				end
				else begin
					lookupMaskIter[i] = lookupMaskIter[prev];
					lookupDataIter[i] = lookupDataIter[prev];
				end
				lookupConflictList[i] = 0;
				if ((((entryValid_c[i] && entries[i][2]) && (entries[i][45-:30] == IN_uopLd[61:32])) && (($signed(entries[i][11-:7] - IN_uopLd[12-:7]) < 0) || entryReady_r[i])) && !({entries[i][45-:30], 2'b00} < 32'h80000000))
					if (entries[i][1]) begin : sv2v_autoblock_12
						integer j;
						for (j = 0; j < 4; j = j + 1)
							if (entries[i][12 + j]) begin
								lookupDataIter[i][j * 8+:8] = entries[i][46 + (j * 8)+:8];
								lookupMaskIter[i][j] = 1;
							end
					end
					else if ((entries[i][15-:4] & readMask) != 0)
						lookupConflictList[i] = 1;
			end
		end
	endgenerate
	wire [$clog2(NUM_ENTRIES) - 1:0] baseIndexI = baseIndex[$clog2(NUM_ENTRIES) - 1:0];
	wire [$clog2(NUM_ENTRIES) - 1:0] comStSqNI = IN_comStSqN[$clog2(NUM_ENTRIES) - 1:0];
	assign OUT_done = (baseIndex == IN_comStSqN) && (evictedIn == 0);
	reg allowDequeue;
	always @(*) begin
		allowDequeue = 1;
		begin : sv2v_autoblock_13
			integer i;
			for (i = 0; i < NUM_EVICTED; i = i + 1)
				if ((evicted[i][0] && ((!evicted[i][1] || ((IN_stAck[0] && IN_stAck[1]) && (IN_stAck[3-:2] == evicted[i][3-:2]))) || ((stAck_r[0] && stAck_r[1]) && (stAck_r[3-:2] == evicted[i][3-:2])))) && (((evicted[i][49-:30] == entries[baseIndexI][45-:30]) || (({evicted[i][49-:30], 2'b00} < 32'h80000000) && ({entries[baseIndexI][45-:30], 2'b00} < 32'h80000000))) || (evicted[i][19-:4] == 0)))
					allowDequeue = 0;
		end
	end
	reg [NUM_EVICTED - 1:0] evictedUsedIds;
	reg [$clog2(NUM_EVICTED) - 1:0] evictedNextId;
	reg evictedNextIdValid;
	always @(*) begin
		evictedNextId = 1'sbx;
		evictedNextIdValid = 0;
		begin : sv2v_autoblock_14
			integer i;
			for (i = NUM_EVICTED - 1; i >= 0; i = i - 1)
				if (!evictedUsedIds[i]) begin
					evictedNextId = i[$clog2(NUM_EVICTED) - 1:0];
					evictedNextIdValid = 1;
				end
		end
		if (stAck_r[0] && !stAck_r[1]) begin
			evictedNextId = stAck_r[3-:2];
			evictedNextIdValid = 1;
		end
	end
	reg [$clog2(NUM_EVICTED) - 1:0] stAckIdx;
	reg stAckIdxValid;
	always @(*) begin
		stAckIdx = 1'sbx;
		stAckIdxValid = 0;
		begin : sv2v_autoblock_15
			integer i;
			for (i = 0; i < NUM_EVICTED; i = i + 1)
				if ((stAck_r[0] && evicted[i][0]) && (evicted[i][3-:2] == stAck_r[3-:2])) begin
					stAckIdx = i[$clog2(NUM_EVICTED) - 1:0];
					stAckIdxValid = 1;
				end
		end
	end
	reg [NUM_ENTRIES - 1:0] dataAvail;
	always @(*) begin : sv2v_autoblock_16
		integer i;
		for (i = 0; i < NUM_ENTRIES; i = i + 1)
			begin
				dataAvail[i] = 0;
				if (entryValid_c[i] && !entries[i][0]) begin : sv2v_autoblock_17
					integer j;
					for (j = 0; j < RESULT_BUS_COUNT; j = j + 1)
						if ((IN_resultUOp[j * 59] && !IN_resultUOp[(j * 59) + 19]) && (IN_resultUOp[(j * 59) + 18-:6] == entries[i][51:46]))
							dataAvail[i] = 1;
				end
			end
	end
	reg [(44 + $clog2(NUM_ENTRIES)) + 0:0] load_c;
	reg [(44 + $clog2(NUM_ENTRIES)) + 0:0] load_r;
	function automatic [$clog2(NUM_ENTRIES) - 1:0] sv2v_cast_CD017;
		input reg [$clog2(NUM_ENTRIES) - 1:0] inp;
		sv2v_cast_CD017 = inp;
	endfunction
	function automatic [(((44 + $clog2(NUM_ENTRIES)) + 0) >= 0 ? (44 + $clog2(NUM_ENTRIES)) + 1 : 1 - ((44 + $clog2(NUM_ENTRIES)) + 0)) - 1:0] sv2v_cast_21446;
		input reg [(((44 + $clog2(NUM_ENTRIES)) + 0) >= 0 ? (44 + $clog2(NUM_ENTRIES)) + 1 : 1 - ((44 + $clog2(NUM_ENTRIES)) + 0)) - 1:0] inp;
		sv2v_cast_21446 = inp;
	endfunction
	always @(*) begin : sv2v_autoblock_18
		reg [NUM_ENTRIES - 1:0] isLoadCandidate;
		begin : sv2v_autoblock_19
			integer i;
			for (i = 0; i < NUM_ENTRIES; i = i + 1)
				isLoadCandidate[i] = (((entryValid_r[i] && !entries[i][1]) && entries[i][0]) && entries[i][2]) && !entries[i][4];
		end
		if (load_r[0])
			isLoadCandidate[load_r[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))]] = 0;
		load_c = 1'sbx;
		load_c[0] = 0;
		begin : sv2v_autoblock_20
			integer i;
			for (i = 0; i < NUM_ENTRIES; i = i + 1)
				begin : sv2v_autoblock_21
					reg [$clog2(NUM_ENTRIES) - 1:0] idx;
					idx = i[$clog2(NUM_ENTRIES) - 1:0] + baseIndex[$clog2(NUM_ENTRIES) - 1:0];
					if (!load_c[0] && isLoadCandidate[idx]) begin
						load_c[0] = 1;
						load_c[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))] = idx;
						load_c[12 + ($clog2(NUM_ENTRIES) + 0)] = 0;
					end
				end
		end
		if (IN_resultUOp[AMO_RES_PORT * 59] && IN_resultUOp[(AMO_RES_PORT * 59) + 1]) begin
			load_c[12 + ($clog2(NUM_ENTRIES) + 0)] = 1;
			load_c[0] = 1;
			load_c[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))] = IN_resultUOp[(AMO_RES_PORT * 59) + ((19 + $clog2(NUM_ENTRIES)) >= 20 ? 19 + $clog2(NUM_ENTRIES) : ((19 + $clog2(NUM_ENTRIES)) + ((19 + $clog2(NUM_ENTRIES)) >= 20 ? (19 + $clog2(NUM_ENTRIES)) - 19 : 21 - (19 + $clog2(NUM_ENTRIES)))) - 1)-:((19 + $clog2(NUM_ENTRIES)) >= 20 ? (19 + $clog2(NUM_ENTRIES)) - 19 : 21 - (19 + $clog2(NUM_ENTRIES)))];
			load_c[44 + ($clog2(NUM_ENTRIES) + 0)-:((44 + ($clog2(NUM_ENTRIES) + 0)) >= (12 + ($clog2(NUM_ENTRIES) + 1)) ? ((44 + ($clog2(NUM_ENTRIES) + 0)) - (12 + ($clog2(NUM_ENTRIES) + 1))) + 1 : ((12 + ($clog2(NUM_ENTRIES) + 1)) - (44 + ($clog2(NUM_ENTRIES) + 0))) + 1)] = IN_resultUOp[(AMO_RES_PORT * 59) + 58-:32];
		end
		OUT_RF_raddr = 1'sb0;
		if (load_c[0]) begin
			load_c[4 + ($clog2(NUM_ENTRIES) + 0)-:((4 + ($clog2(NUM_ENTRIES) + 0)) >= ($clog2(NUM_ENTRIES) + 1) ? ((4 + ($clog2(NUM_ENTRIES) + 0)) - ($clog2(NUM_ENTRIES) + 1)) + 1 : (($clog2(NUM_ENTRIES) + 1) - (4 + ($clog2(NUM_ENTRIES) + 0))) + 1)] = entries[load_c[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))]][15-:4];
			load_c[11 + ($clog2(NUM_ENTRIES) + 0)-:((11 + ($clog2(NUM_ENTRIES) + 0)) >= (4 + ($clog2(NUM_ENTRIES) + 1)) ? ((11 + ($clog2(NUM_ENTRIES) + 0)) - (4 + ($clog2(NUM_ENTRIES) + 1))) + 1 : ((4 + ($clog2(NUM_ENTRIES) + 1)) - (11 + ($clog2(NUM_ENTRIES) + 0))) + 1)] = entries[load_c[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))]][52:46];
			if (!load_c[11 + ($clog2(NUM_ENTRIES) + 0)])
				OUT_RF_raddr = load_c[(11 + ($clog2(NUM_ENTRIES) + 0)) - 1:(11 + ($clog2(NUM_ENTRIES) + 0)) - 6];
		end
		if (IN_branch[0] && (($signed(entries[load_c[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))]][11-:7] - IN_branch[27-:7]) > 0) || IN_branch[6]))
			load_c = sv2v_cast_21446({44'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_CD017(1'sbx), 1'd0});
	end
	always @(posedge clk)
		if (rst)
			load_r <= sv2v_cast_21446({44'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_CD017(1'sbx), 1'd0});
		else
			load_r <= load_c;
	always @(*) begin : sv2v_autoblock_22
		reg [NUM_ENTRIES - 1:0] isNotLoaded;
		begin : sv2v_autoblock_23
			integer i;
			for (i = 0; i < NUM_ENTRIES; i = i + 1)
				isNotLoaded[i] = entryValid_c[i] && (!entries[i][1] || !entries[i][2]);
		end
		loadBaseIndexValid = 0;
		loadBaseIndex = 1'sbx;
		begin : sv2v_autoblock_24
			integer i;
			for (i = 0; i < NUM_ENTRIES; i = i + 1)
				begin : sv2v_autoblock_25
					reg [$clog2(NUM_ENTRIES) - 1:0] idx;
					idx = i[$clog2(NUM_ENTRIES) - 1:0] + baseIndex[$clog2(NUM_ENTRIES) - 1:0];
					if (!loadBaseIndexValid && isNotLoaded[idx]) begin
						loadBaseIndexValid = 1;
						loadBaseIndex = idx;
					end
				end
		end
	end
	reg [31:0] loadData;
	always @(*) begin : sv2v_autoblock_26
		reg [31:0] rawLoadData;
		rawLoadData = 1'sbx;
		loadData = 1'sbx;
		if (load_r[12 + ($clog2(NUM_ENTRIES) + 0)])
			rawLoadData = load_r[44 + ($clog2(NUM_ENTRIES) + 0)-:((44 + ($clog2(NUM_ENTRIES) + 0)) >= (12 + ($clog2(NUM_ENTRIES) + 1)) ? ((44 + ($clog2(NUM_ENTRIES) + 0)) - (12 + ($clog2(NUM_ENTRIES) + 1))) + 1 : ((12 + ($clog2(NUM_ENTRIES) + 1)) - (44 + ($clog2(NUM_ENTRIES) + 0))) + 1)];
		else if (load_r[11 + ($clog2(NUM_ENTRIES) + 0)])
			rawLoadData = {{26 {load_r[(11 + ($clog2(NUM_ENTRIES) + 0)) - 1]}}, load_r[(11 + ($clog2(NUM_ENTRIES) + 0)) - 1:(11 + ($clog2(NUM_ENTRIES) + 0)) - 6]};
		else
			rawLoadData = IN_RF_rdata;
		case (load_r[4 + ($clog2(NUM_ENTRIES) + 0)-:((4 + ($clog2(NUM_ENTRIES) + 0)) >= ($clog2(NUM_ENTRIES) + 1) ? ((4 + ($clog2(NUM_ENTRIES) + 0)) - ($clog2(NUM_ENTRIES) + 1)) + 1 : (($clog2(NUM_ENTRIES) + 1) - (4 + ($clog2(NUM_ENTRIES) + 0))) + 1)])
			default: loadData = rawLoadData;
			4'b0001: loadData[7:0] = rawLoadData[7:0];
			4'b0010: loadData[15:8] = rawLoadData[7:0];
			4'b0100: loadData[23:16] = rawLoadData[7:0];
			4'b1000: loadData[31:24] = rawLoadData[7:0];
			4'b0011: loadData[15:0] = rawLoadData[15:0];
			4'b1100: loadData[31:16] = rawLoadData[15:0];
		endcase
	end
	reg reIssueValid;
	reg [$clog2(NUM_EVICTED) - 1:0] reIssueIdx;
	always @(*) begin
		reIssueValid = 0;
		reIssueIdx = 1'sbx;
		begin : sv2v_autoblock_27
			integer i;
			for (i = NUM_EVICTED - 1; i >= 0; i = i - 1)
				if (evicted[i][0] && !evicted[i][1]) begin
					reIssueValid = 1;
					reIssueIdx = i[$clog2(NUM_EVICTED) - 1:0];
				end
		end
		reIssueValid = reIssueValid & (((!stAck_r[0] || !stAck_r[1]) || ((stAck_r[71:42] != evicted[reIssueIdx][49-:30]) && !((stAck_r[71-:32] < 32'h80000000) && ({evicted[reIssueIdx][49-:30], 2'b00} < 32'h80000000)))) && ((!IN_stAck[0] || !IN_stAck[1]) || ((IN_stAck[71:42] != evicted[reIssueIdx][49-:30]) && !((IN_stAck[71-:32] < 32'h80000000) && ({evicted[reIssueIdx][49-:30], 2'b00} < 32'h80000000)))));
	end
	reg [125:0] rnUOpSorted [3:0];
	always @(*) begin : sv2v_autoblock_28
		integer i;
		for (i = 0; i < 4; i = i + 1)
			begin
				rnUOpSorted[i] = 1'sbx;
				rnUOpSorted[i][0] = 0;
				begin : sv2v_autoblock_29
					integer j;
					for (j = 0; j < 4; j = j + 1)
						if ((IN_rnUOp[j * 126] && (IN_rnUOp[(j * 126) + 18-:2] == i[1:0])) && ((IN_rnUOp[(j * 126) + 9-:4] == 4'd2) || (IN_rnUOp[(j * 126) + 9-:4] == 4'd9)))
							rnUOpSorted[i] = IN_rnUOp[j * 126+:126];
				end
			end
	end
	reg flushing;
	assign OUT_flush = flushing;
	always @(posedge clk) begin
		OUT_fwd <= 1'sbx;
		OUT_fwd[0] <= 0;
		if (rst) begin
			begin : sv2v_autoblock_30
				integer i;
				for (i = 0; i < NUM_EVICTED; i = i + 1)
					evicted[i][0] <= 0;
			end
			evictedIn <= 0;
			baseIndex <= 0;
			lastIndex <= 1'sb1;
			OUT_maxStoreSqN <= (baseIndex + NUM_ENTRIES[6:0]) - 1;
			OUT_empty <= 1;
			OUT_uopSt[0] <= 0;
			flushing <= 0;
			evictedUsedIds <= 0;
		end
		else begin : sv2v_autoblock_31
			reg [6:0] nextBaseIndex;
			reg modified;
			reg [$clog2(NUM_EVICTED):0] nextEvictedIn;
			nextBaseIndex = baseIndex;
			modified = 0;
			nextEvictedIn = evictedIn;
			if (!IN_stallSt)
				OUT_uopSt[0] <= 0;
			if (stAck_r[0])
				if (!stAck_r[1]) begin
					begin : sv2v_autoblock_32
						integer i;
						for (i = 0; i < (NUM_EVICTED - 1); i = i + 1)
							if (i >= stAckIdx)
								evicted[i] <= evicted[i + 1];
					end
					evicted[NUM_EVICTED - 1] <= 1'sbx;
					evicted[NUM_EVICTED - 1][0] <= 0;
					nextEvictedIn = nextEvictedIn - 1;
					evictedUsedIds[stAck_r[3-:2]] <= 0;
				end
				else begin
					evicted[stAckIdx][1] <= 0;
					modified = 1;
				end
			if (!IN_stallSt) begin : sv2v_autoblock_33
				reg [$clog2(NUM_ENTRIES) - 1:0] idx;
				idx = baseIndex[$clog2(NUM_ENTRIES) - 1:0];
				if (((((!IN_branch[0] && entryReady_r[idx]) && (nextEvictedIn < NUM_EVICTED)) && entries[idx][1]) && allowDequeue) && entries[idx][2]) begin
					modified = 1;
					entries[idx] <= 1'sbx;
					OUT_uopSt[0] <= 1;
					OUT_uopSt[2-:2] <= evictedNextId;
					OUT_uopSt[71-:32] <= {entries[idx][45-:30], 2'b00};
					OUT_uopSt[39-:32] <= entries[idx][77-:32];
					OUT_uopSt[7-:4] <= entries[idx][15-:4];
					OUT_uopSt[3] <= {entries[idx][45-:30], 2'b00} < 32'h80000000;
					evicted[nextEvictedIn[$clog2(NUM_EVICTED) - 1:0]][81-:78] <= entries[idx];
					evicted[nextEvictedIn[$clog2(NUM_EVICTED) - 1:0]][1] <= 1;
					evicted[nextEvictedIn[$clog2(NUM_EVICTED) - 1:0]][3-:2] <= evictedNextId;
					evicted[nextEvictedIn[$clog2(NUM_EVICTED) - 1:0]][0] <= 1;
					nextEvictedIn = nextEvictedIn + 1;
					evictedUsedIds[evictedNextId] <= 1;
					nextBaseIndex = nextBaseIndex + 1;
				end
				else if (reIssueValid) begin
					OUT_uopSt[0] <= 1;
					OUT_uopSt[2-:2] <= evicted[reIssueIdx][3-:2];
					OUT_uopSt[71-:32] <= {evicted[reIssueIdx][49-:30], 2'b00};
					OUT_uopSt[39-:32] <= evicted[reIssueIdx][81-:32];
					OUT_uopSt[7-:4] <= evicted[reIssueIdx][19-:4];
					OUT_uopSt[3] <= {evicted[reIssueIdx][49-:30], 2'b00} < 32'h80000000;
					if ((stAck_r[0] && !stAck_r[1]) && (reIssueIdx >= stAckIdx))
						evicted[reIssueIdx - 1][1] <= 1;
					else
						evicted[reIssueIdx][1] <= 1;
					modified = 1;
				end
			end
			begin : sv2v_autoblock_34
				integer i;
				for (i = 0; i < NUM_ENTRIES; i = i + 1)
					if (entryValid_c[i] && dataAvail[i])
						entries[i][0] <= 1;
			end
			if (load_r[0]) begin
				entries[load_r[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))]][0] <= 1;
				entries[load_r[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))]][1] <= 1;
				entries[load_r[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))]][77-:32] <= loadData;
			end
			if (IN_branch[0]) begin
				lastIndex <= IN_branch[20-:7];
				flushing <= IN_branch[6];
			end
			if (IN_uopSt[0] && (!IN_branch[0] || (($signed(IN_uopSt[30-:7] - IN_branch[27-:7]) <= 0) && !IN_branch[6]))) begin : sv2v_autoblock_35
				reg [$clog2(NUM_ENTRIES) - 1:0] index;
				index = IN_uopSt[$clog2(NUM_ENTRIES) + 16:17];
				if (IN_uopSt[3-:2] == 2'd0) begin
					entries[index][45-:30] <= IN_uopSt[109:80];
					entries[index][15-:4] <= IN_uopSt[77-:4];
					entries[index][2] <= 1;
				end
				modified = 1;
			end
			if (!IN_branch[0]) begin
				begin : sv2v_autoblock_36
					integer i;
					for (i = 0; i < WIDTH_RN; i = i + 1)
						if (rnUOpSorted[i][0]) begin : sv2v_autoblock_37
							reg [$clog2(NUM_ENTRIES) - 1:0] index;
							index = {rnUOpSorted[i][16 + $clog2(NUM_ENTRIES):19], i[0+:2]};
							entries[index][77-:32] <= 1'sbx;
							entries[index][45-:30] <= 1'sbx;
							entries[index][15-:4] <= 0;
							entries[index][4] <= 0;
							entries[index][3] <= 0;
							entries[index][1] <= 0;
							entries[index][11-:7] <= rnUOpSorted[i][56-:7];
							entries[index][2] <= 0;
							entries[index][0] <= rnUOpSorted[i][73];
							entries[index][52-:7] <= rnUOpSorted[i][72-:7];
							begin : sv2v_autoblock_38
								integer j;
								for (j = 0; j < RESULT_BUS_COUNT; j = j + 1)
									if ((IN_resultUOp[j * 59] && !IN_resultUOp[(j * 59) + 19]) && (rnUOpSorted[i][72-:7] == IN_resultUOp[(j * 59) + 19-:7]))
										entries[index][0] <= 1;
							end
							if (rnUOpSorted[i][9-:4] == 4'd9) begin
								entries[index][3] <= 1;
								if (rnUOpSorted[i][37-:6] != 6'd55) begin
									entries[index][4] <= 1;
									entries[index][52-:7] <= 1'sbx;
									entries[index][0] <= 0;
								end
							end
							if (rnUOpSorted[i][9-:4] == 4'd2)
								case (rnUOpSorted[i][37-:6])
									6'd3: begin
										entries[index][77-:32] <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx00;
										entries[index][1] <= 1;
									end
									6'd4: begin
										entries[index][77-:32] <= {30'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, (IN_vmem[4-:2] == 3 ? 2'd1 : 2'd2)};
										entries[index][1] <= 1;
									end
									6'd5: begin
										entries[index][77-:32] <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx10;
										entries[index][1] <= 1;
									end
									default:
										;
								endcase
							modified = 1;
						end
				end
				begin : sv2v_autoblock_39
					integer i;
					for (i = 0; i < WIDTH_RN; i = i + 1)
						if (IN_rnUOp[i * 126] && ((IN_rnUOp[(i * 126) + 9-:4] == 4'd2) || (IN_rnUOp[(i * 126) + 9-:4] == 4'd9)))
							lastIndex <= IN_rnUOp[(i * 126) + 23-:7];
				end
			end
			OUT_empty <= empty && !modified;
			if (OUT_empty && flushing)
				flushing <= 0;
			OUT_maxStoreSqN <= (nextBaseIndex + NUM_ENTRIES[6:0]) - 1;
			if (IN_uopLd[0]) begin
				OUT_fwd[0] <= 1;
				OUT_fwd[37-:32] <= lookupData;
				OUT_fwd[5-:4] <= lookupMask;
				OUT_fwd[1] <= lookupConflict;
			end
			evictedIn <= nextEvictedIn;
			baseIndex <= nextBaseIndex;
		end
	end
endmodule
module TagBuffer (
	clk,
	rst,
	IN_mispr,
	IN_mispredFlush,
	IN_issueValid,
	OUT_issueTags,
	OUT_issueTagsValid,
	IN_commitValid,
	IN_commitNewest,
	IN_RAT_commitPrevTags,
	IN_commitTagDst
);
	parameter NUM_ISSUE = 4;
	parameter NUM_COMMIT = 4;
	input wire clk;
	input wire rst;
	input wire IN_mispr;
	input wire IN_mispredFlush;
	input wire [NUM_ISSUE - 1:0] IN_issueValid;
	output reg [(NUM_ISSUE * 6) - 1:0] OUT_issueTags;
	output reg [NUM_ISSUE - 1:0] OUT_issueTagsValid;
	input wire [NUM_COMMIT - 1:0] IN_commitValid;
	input wire [NUM_COMMIT - 1:0] IN_commitNewest;
	input wire [(NUM_COMMIT * 7) - 1:0] IN_RAT_commitPrevTags;
	input wire [(NUM_COMMIT * 7) - 1:0] IN_commitTagDst;
	localparam PTAG_LEN = 6;
	localparam NUM_TAGS = 64;
	reg free [63:0];
	reg freeCom [63:0];
	reg mispredWait;
	reg issueTagsValid [NUM_ISSUE - 1:0];
	reg [5:0] issueTags [NUM_ISSUE - 1:0];
	localparam NUM_STAGES = 6;
	genvar g;
	generate
		for (g = 0; g < 7; g = g + 1) begin : gen
			reg [(g >= 0 ? (NUM_ISSUE * (g + 1)) - 1 : (NUM_ISSUE * (1 - g)) + (g - 1)):(g >= 0 ? 0 : g + 0)] s [(NUM_TAGS >> g) - 1:0];
			if (g == 0) begin : genblk1
				always @(*) begin : sv2v_autoblock_1
					integer i;
					for (i = 0; i < NUM_TAGS; i = i + 1)
						begin
							begin : sv2v_autoblock_2
								integer j;
								for (j = 0; j < NUM_ISSUE; j = j + 1)
									s[i][(g >= 0 ? 0 : g) + (j * (g >= 0 ? g + 1 : 1 - g))+:(g >= 0 ? g + 1 : 1 - g)] = 1;
							end
							s[i][(g >= 0 ? 0 : g) + 0+:(g >= 0 ? g + 1 : 1 - g)] = !free[i];
						end
				end
			end
			else begin : genblk1
				genvar i;
				for (i = 0; i < (NUM_TAGS >> g); i = i + 1) begin : genblk1
					wire [(NUM_ISSUE * g) - 1:0] a = gen[g - 1].s[(2 * i) + 0];
					wire [(NUM_ISSUE * g) - 1:0] b = gen[g - 1].s[(2 * i) + 1];
					genvar j;
					for (j = 0; j < NUM_ISSUE; j = j + 1) begin : gen2
						wire [g - 1:0] mux [j + 1:0];
						genvar k;
						for (k = 0; k <= j; k = k + 1) begin : genblk1
							assign mux[k] = b[(j - k) * g+:g];
						end
						assign mux[j + 1] = a[j * g+:g];
						wire [(j == 0 ? 0 : $clog2(j + 2) - 1):0] redSum;
						if (j == 0) begin : genblk2
							assign redSum = !a[j * g];
						end
						else begin : genblk2
							assign redSum = !a[j * g] + gen2[j - 1].redSum;
						end
						wire [(g >= 0 ? g + 1 : 1 - g) * 1:1] sv2v_tmp_A7BA0;
						assign sv2v_tmp_A7BA0 = {a[j * g], mux[redSum]};
						always @(*) s[i][(g >= 0 ? 0 : g) + (j * (g >= 0 ? g + 1 : 1 - g))+:(g >= 0 ? g + 1 : 1 - g)] = sv2v_tmp_A7BA0;
					end
				end
			end
		end
	endgenerate
	always @(*) begin : sv2v_autoblock_3
		reg [(NUM_ISSUE * 7) - 1:0] packedTags;
		packedTags = gen[NUM_STAGES].s[0];
		begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < NUM_ISSUE; i = i + 1)
				begin
					issueTags[i] = packedTags[(i * 7) + PTAG_LEN-:PTAG_LEN];
					issueTagsValid[i] = !packedTags[(i * 7) + 0];
				end
		end
	end
	always @(posedge clk) begin
		mispredWait <= 0;
		if (rst) begin
			begin : sv2v_autoblock_5
				integer i;
				for (i = 0; i < 64; i = i + 1)
					begin
						free[i] <= 1'b1;
						freeCom[i] <= 1'b1;
					end
			end
			begin : sv2v_autoblock_6
				integer i;
				for (i = 0; i < NUM_ISSUE; i = i + 1)
					OUT_issueTagsValid[i] <= 0;
			end
		end
		else begin
			if (IN_mispr) begin
				mispredWait <= 1;
				begin : sv2v_autoblock_7
					integer i;
					for (i = 0; i < 64; i = i + 1)
						if (freeCom[i])
							free[i] <= 1;
				end
				begin : sv2v_autoblock_8
					integer i;
					for (i = 0; i < NUM_ISSUE; i = i + 1)
						begin
							OUT_issueTagsValid[i] <= 0;
							OUT_issueTags[i * 6+:6] <= 1'sbx;
						end
				end
			end
			else begin
				begin : sv2v_autoblock_9
					integer i;
					for (i = 0; i < NUM_ISSUE; i = i + 1)
						if (IN_issueValid[i]) begin
							OUT_issueTagsValid[i] <= 0;
							OUT_issueTags[i * 6+:6] <= 1'sbx;
						end
				end
				begin : sv2v_autoblock_10
					integer i;
					for (i = 0; i < NUM_ISSUE; i = i + 1)
						if (((!OUT_issueTagsValid[i] || IN_issueValid[i]) && issueTagsValid[i]) && !(mispredWait || IN_mispredFlush)) begin
							OUT_issueTagsValid[i] <= 1;
							OUT_issueTags[i * 6+:6] <= issueTags[i];
							free[issueTags[i]] <= 0;
						end
				end
			end
			begin : sv2v_autoblock_11
				integer i;
				for (i = 0; i < NUM_COMMIT; i = i + 1)
					if (IN_commitValid[i])
						if (IN_mispredFlush) begin
							if (!IN_mispr && !IN_commitTagDst[(i * 7) + 6])
								free[IN_commitTagDst[(i * 7) + 5-:6]] <= 0;
						end
						else if (IN_commitNewest[i]) begin
							if (!IN_RAT_commitPrevTags[(i * 7) + 6]) begin
								freeCom[IN_RAT_commitPrevTags[(i * 7) + 5-:6]] <= 1;
								free[IN_RAT_commitPrevTags[(i * 7) + 5-:6]] <= 1;
							end
							if (!IN_commitTagDst[(i * 7) + 6]) begin
								freeCom[IN_commitTagDst[(i * 7) + 5-:6]] <= 0;
								free[IN_commitTagDst[(i * 7) + 5-:6]] <= 0;
							end
						end
						else if (!IN_commitTagDst[(i * 7) + 6]) begin
							freeCom[IN_commitTagDst[(i * 7) + 5-:6]] <= 1;
							free[IN_commitTagDst[(i * 7) + 5-:6]] <= 1;
						end
			end
		end
	end
endmodule
module TagePredictor (
	clk,
	rst,
	IN_predValid,
	IN_predAddr,
	IN_predHistory,
	OUT_predTageID,
	OUT_altPred,
	OUT_predTaken,
	IN_writeValid,
	IN_writeAddr,
	IN_writeHistory,
	IN_writeTageID,
	IN_writeTaken,
	IN_writeAltPred,
	IN_writePred
);
	parameter NUM_STAGES = 3;
	parameter FACTOR = 2;
	parameter BASE = 6;
	parameter TABLE_SIZE = 64;
	parameter TAG_SIZE = 9;
	input wire clk;
	input wire rst;
	input wire IN_predValid;
	input wire [30:0] IN_predAddr;
	input wire [11:0] IN_predHistory;
	output reg [2:0] OUT_predTageID;
	output reg OUT_altPred;
	output reg OUT_predTaken;
	input wire IN_writeValid;
	input wire [30:0] IN_writeAddr;
	input wire [11:0] IN_writeHistory;
	input wire [2:0] IN_writeTageID;
	input wire IN_writeTaken;
	input wire IN_writeAltPred;
	input wire IN_writePred;
	localparam HASH_SIZE = $clog2(TABLE_SIZE);
	wire [NUM_STAGES - 1:0] valid;
	wire [NUM_STAGES - 1:0] predictions;
	BranchPredictionTable basePredictor(
		.clk(clk),
		.rst(rst),
		.IN_readValid(IN_predValid),
		.IN_readAddr(IN_predAddr[9:0]),
		.OUT_taken(predictions[0]),
		.IN_writeEn(IN_writeValid),
		.IN_writeAddr(IN_writeAddr[9:0]),
		.IN_writeInit(0),
		.IN_writeTaken(IN_writeTaken)
	);
	assign valid[0] = 1;
	reg [HASH_SIZE - 1:0] predHashes [NUM_STAGES - 2:0];
	reg [HASH_SIZE - 1:0] writeHashes [NUM_STAGES - 2:0];
	reg [TAG_SIZE - 1:0] predTags [NUM_STAGES - 2:0];
	reg [TAG_SIZE - 1:0] writeTags [NUM_STAGES - 2:0];
	always @(*) begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < (NUM_STAGES - 1); i = i + 1)
			begin
				predTags[i] = IN_predAddr[TAG_SIZE - 1:0];
				writeTags[i] = IN_writeAddr[TAG_SIZE - 1:0];
				predHashes[i] = 0;
				writeHashes[i] = 0;
				begin : sv2v_autoblock_2
					integer j;
					for (j = 0; j < (31 / HASH_SIZE); j = j + 1)
						begin
							predHashes[i] = predHashes[i] ^ IN_predAddr[j * HASH_SIZE+:HASH_SIZE];
							writeHashes[i] = writeHashes[i] ^ IN_writeAddr[j * HASH_SIZE+:HASH_SIZE];
						end
				end
				begin : sv2v_autoblock_3
					integer j;
					for (j = 0; j < (BASE * (FACTOR ** i)); j = j + 1)
						begin
							predHashes[i][j % HASH_SIZE] = predHashes[i][j % HASH_SIZE] ^ IN_predHistory[j];
							writeHashes[i][j % HASH_SIZE] = writeHashes[i][j % HASH_SIZE] ^ IN_writeHistory[j];
							predTags[i][j % TAG_SIZE] = (predTags[i][j % TAG_SIZE] ^ IN_predHistory[j]) ^ IN_predHistory[j + 1];
							writeTags[i][j % TAG_SIZE] = (writeTags[i][j % TAG_SIZE] ^ IN_writeHistory[j]) ^ IN_writeHistory[j + 1];
						end
				end
			end
	end
	reg [7:0] random;
	always @(posedge clk)
		if (rst)
			random[0] <= 1;
		else
			random <= {random[6:0], ((random[7] ^ random[5]) ^ random[4]) ^ random[3]};
	wire [NUM_STAGES - 1:0] avail;
	assign avail[0] = 0;
	reg [NUM_STAGES - 1:0] doAlloc;
	reg allocFailed;
	always @(*) begin : sv2v_autoblock_4
		reg [NUM_STAGES - 1:0] followingAllocAvail;
		reg temp;
		followingAllocAvail = 1'sb0;
		temp = 0;
		doAlloc = 1'sb0;
		allocFailed = 0;
		if (IN_writeTaken != IN_writePred) begin
			begin : sv2v_autoblock_5
				integer i;
				for (i = 0; i < NUM_STAGES; i = i + 1)
					begin : sv2v_autoblock_6
						integer j;
						for (j = i + 1; j < NUM_STAGES; j = j + 1)
							followingAllocAvail[i] = followingAllocAvail[i] | avail[j];
					end
			end
			begin : sv2v_autoblock_7
				integer i;
				for (i = 0; i < NUM_STAGES; i = i + 1)
					if ((((i > IN_writeTageID) && avail[i]) && (temp == 0)) && (!followingAllocAvail[i] || (random[(2 * i) - 2+:2] != 2'b00))) begin
						temp = 1;
						doAlloc[i] = 1;
					end
			end
			allocFailed = !temp;
		end
	end
	genvar i;
	generate
		for (i = 1; i < NUM_STAGES; i = i + 1) begin : genblk1
			TageTable #(
				.SIZE(TABLE_SIZE),
				.TAG_SIZE(TAG_SIZE)
			) tage(
				.clk(clk),
				.rst(rst),
				.IN_readValid(IN_predValid),
				.IN_readAddr(predHashes[i - 1]),
				.IN_readTag(predTags[i - 1]),
				.OUT_readValid(valid[i]),
				.OUT_readTaken(predictions[i]),
				.IN_writeValid(IN_writeValid),
				.IN_writeAddr(writeHashes[i - 1]),
				.IN_writeTag(writeTags[i - 1]),
				.IN_writeTaken(IN_writeTaken),
				.IN_writeUpdate(i == IN_writeTageID),
				.IN_writeUseful(IN_writePred != IN_writeAltPred),
				.IN_writeCorrect(IN_writePred == IN_writeTaken),
				.OUT_allocAvail(avail[i]),
				.IN_doAlloc(doAlloc[i]),
				.IN_allocFailed(allocFailed && (i > IN_writeTageID))
			);
		end
	endgenerate
	always @(*) begin
		OUT_altPred = predictions[0];
		OUT_predTaken = predictions[0];
		OUT_predTageID = 0;
		begin : sv2v_autoblock_8
			integer i;
			for (i = 0; i < NUM_STAGES; i = i + 1)
				if (valid[i]) begin
					OUT_predTageID = i[2:0];
					OUT_altPred = OUT_predTaken;
					OUT_predTaken = predictions[i];
				end
		end
	end
endmodule
module TageTable (
	clk,
	rst,
	IN_readValid,
	IN_readAddr,
	IN_readTag,
	OUT_readValid,
	OUT_readTaken,
	IN_writeValid,
	IN_writeAddr,
	IN_writeTag,
	IN_writeTaken,
	IN_writeUpdate,
	IN_writeUseful,
	IN_writeCorrect,
	OUT_allocAvail,
	IN_doAlloc,
	IN_allocFailed
);
	parameter SIZE = 64;
	parameter TAG_SIZE = 9;
	parameter USF_SIZE = 2;
	parameter CNT_SIZE = 2;
	parameter INTERVAL = 20;
	input wire clk;
	input wire rst;
	input wire IN_readValid;
	input wire [$clog2(SIZE) - 1:0] IN_readAddr;
	input wire [TAG_SIZE - 1:0] IN_readTag;
	output reg OUT_readValid;
	output wire OUT_readTaken;
	input wire IN_writeValid;
	input wire [$clog2(SIZE) - 1:0] IN_writeAddr;
	input wire [TAG_SIZE - 1:0] IN_writeTag;
	input wire IN_writeTaken;
	input wire IN_writeUpdate;
	input wire IN_writeUseful;
	input wire IN_writeCorrect;
	output reg OUT_allocAvail;
	input wire IN_doAlloc;
	input wire IN_allocFailed;
	reg [USF_SIZE - 1:0] useful [SIZE - 1:0];
	BranchPredictionTable #(.IDX_LEN($clog2(SIZE))) counters(
		.clk(clk),
		.rst(rst),
		.IN_readValid(IN_readValid),
		.IN_readAddr(IN_readAddr),
		.OUT_taken(OUT_readTaken),
		.IN_writeEn(IN_writeValid && (IN_writeUpdate || (IN_doAlloc && (useful[IN_writeAddr] == 0)))),
		.IN_writeAddr(IN_writeAddr),
		.IN_writeInit(!IN_writeUpdate),
		.IN_writeTaken(IN_writeTaken)
	);
	reg [TAG_SIZE - 1:0] tag [SIZE - 1:0];
	reg [TAG_SIZE - 1:0] tagRegA;
	reg [TAG_SIZE - 1:0] tagRegB;
	always @(posedge clk)
		if (IN_readValid) begin
			tagRegA <= tag[IN_readAddr];
			tagRegB <= IN_readTag;
		end
	always @(*) OUT_readValid = tagRegA == tagRegB;
	always @(*) OUT_allocAvail = useful[IN_writeAddr] == 0;
	reg [INTERVAL - 1:0] decrCnt;
	reg decrBit;
	always @(posedge clk)
		if (rst)
			decrCnt <= 0;
		else if (IN_writeValid)
			if (IN_writeUpdate) begin
				if (IN_writeUseful)
					if (IN_writeCorrect && (useful[IN_writeAddr] != {USF_SIZE {1'b1}}))
						useful[IN_writeAddr] <= useful[IN_writeAddr] + 1;
					else if (!IN_writeCorrect && (useful[IN_writeAddr] != {USF_SIZE {1'b0}}))
						useful[IN_writeAddr] <= useful[IN_writeAddr] - 1;
			end
			else if (IN_doAlloc) begin
				if (useful[IN_writeAddr] == 0)
					tag[IN_writeAddr] <= IN_writeTag;
			end
			else if (IN_allocFailed)
				useful[IN_writeAddr] <= useful[IN_writeAddr] - 1;
endmodule
module TLBMissQueue (
	clk,
	rst,
	IN_branch,
	IN_vmem,
	IN_pw,
	IN_pwActive,
	OUT_stall,
	IN_enqueue,
	IN_uopReady,
	IN_uop,
	IN_dequeue,
	OUT_uop
);
	parameter SIZE = 4;
	input wire clk;
	input wire rst;
	input wire [63:0] IN_branch;
	input wire [30:0] IN_vmem;
	input wire [52:0] IN_pw;
	input wire IN_pwActive;
	output reg OUT_stall;
	input wire IN_enqueue;
	input wire IN_uopReady;
	input wire [109:0] IN_uop;
	input wire IN_dequeue;
	output reg [109:0] OUT_uop;
	localparam ID_LEN = $clog2(SIZE);
	reg [109:0] queue [SIZE - 1:0];
	reg [SIZE - 1:0] ready;
	reg [ID_LEN - 1:0] idxIn;
	reg idxInValid;
	always @(*) begin
		idxInValid = 0;
		idxIn = 1'sbx;
		OUT_stall = 1;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < SIZE; i = i + 1)
				if (!queue[i][0]) begin
					idxIn = i[ID_LEN - 1:0];
					if (idxInValid)
						OUT_stall = 0;
					idxInValid = 1;
				end
		end
	end
	reg [ID_LEN - 1:0] idxOut;
	reg idxOutValid;
	always @(*) begin
		idxOutValid = 0;
		idxOut = 1'sbx;
		begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < SIZE; i = i + 1)
				if (queue[i][0] && (ready[i] || !IN_pwActive)) begin
					idxOut = i[ID_LEN - 1:0];
					idxOutValid = 1;
				end
		end
	end
	always @(posedge clk)
		if (rst) begin
			begin : sv2v_autoblock_3
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					begin
						queue[i] <= 1'sbx;
						queue[i][0] <= 0;
					end
			end
			OUT_uop <= 1'sbx;
			OUT_uop[0] <= 0;
		end
		else begin
			if (IN_pw[0]) begin : sv2v_autoblock_4
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					if ((queue[i][0] && !ready[i]) && (IN_pw[9] ? IN_pw[52:43] == queue[i][109:100] : IN_pw[52-:20] == queue[i][109:90]))
						ready[i] <= 1;
			end
			if (IN_branch[0]) begin : sv2v_autoblock_5
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					if (queue[i][0] && ($signed(queue[i][30-:7] - IN_branch[27-:7]) > 0)) begin
						ready[i] <= 1'sbx;
						queue[i] <= 1'sbx;
						queue[i][0] <= 0;
					end
			end
			if ((IN_enqueue && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[30-:7] - IN_branch[27-:7]) <= 0))) begin
				ready[idxIn] <= !IN_vmem[30] || IN_uopReady;
				queue[idxIn] <= IN_uop;
			end
			if (IN_dequeue || (IN_branch[0] && ($signed(OUT_uop[30-:7] - IN_branch[27-:7]) > 0))) begin
				OUT_uop <= 1'sbx;
				OUT_uop[0] <= 0;
			end
			if ((!OUT_uop[0] || IN_dequeue) && idxOutValid)
				if (queue[idxOut][0] && (!IN_branch[0] || ($signed(queue[idxOut][30-:7] - IN_branch[27-:7]) <= 0))) begin
					OUT_uop <= queue[idxOut];
					ready[idxOut] <= 1'sbx;
					queue[idxOut] <= 1'sbx;
					queue[idxOut][0] <= 0;
				end
		end
endmodule
module TLB (
	clk,
	rst,
	clear,
	IN_pw,
	IN_rqs,
	OUT_res
);
	parameter NUM_RQ = 1;
	parameter SIZE = 8;
	parameter ASSOC = 4;
	parameter IS_IFETCH = 0;
	input wire clk;
	input wire rst;
	input wire clear;
	input wire [52:0] IN_pw;
	input wire [(NUM_RQ * 21) - 1:0] IN_rqs;
	output reg [(NUM_RQ * 28) - 1:0] OUT_res;
	localparam LEN = SIZE / ASSOC;
	localparam VIRT_LEN = 20 - $clog2(LEN);
	reg [VIRT_LEN + 28:0] tlb [LEN - 1:0][ASSOC - 1:0];
	reg [$clog2(ASSOC) - 1:0] counters [LEN - 1:0];
	reg [LEN - 1:0] inc;
	always @(*) begin
		inc = 1'sb0;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_RQ; i = i + 1)
				begin : sv2v_autoblock_2
					reg [$clog2(LEN) - 1:0] idx;
					idx = IN_rqs[(i * 21) + ((0 + $clog2(LEN)) >= 1 ? 0 + $clog2(LEN) : ((0 + $clog2(LEN)) + ((0 + $clog2(LEN)) >= 1 ? 0 + $clog2(LEN) : 2 - (0 + $clog2(LEN)))) - 1)-:((0 + $clog2(LEN)) >= 1 ? 0 + $clog2(LEN) : 2 - (0 + $clog2(LEN)))];
					OUT_res[i * 28+:28] = 1'sbx;
					OUT_res[(i * 28) + 7] = 0;
					OUT_res[(i * 28) + 6] = 0;
					OUT_res[i * 28] = 0;
					if (IN_rqs[i * 21]) begin : sv2v_autoblock_3
						integer j;
						for (j = 0; j < ASSOC; j = j + 1)
							if (tlb[idx][j][0] && (tlb[idx][j][8] ? tlb[idx][j][(VIRT_LEN + 28) - ((VIRT_LEN - 1) - (19 - $clog2(LEN))):(VIRT_LEN + 28) - ((VIRT_LEN - 1) - (10 - $clog2(LEN)))] == IN_rqs[(i * 21) + 20-:10] : tlb[idx][j][VIRT_LEN + 28-:((VIRT_LEN + 28) >= 29 ? VIRT_LEN + 0 : 30 - (VIRT_LEN + 28))] == IN_rqs[(i * 21) + (20 >= (1 + $clog2(LEN)) ? 20 : (20 + (20 >= (1 + $clog2(LEN)) ? 21 - (1 + $clog2(LEN)) : (1 + $clog2(LEN)) - 19)) - 1)-:(20 >= (1 + $clog2(LEN)) ? 21 - (1 + $clog2(LEN)) : (1 + $clog2(LEN)) - 19)])) begin
								OUT_res[(i * 28) + 6] = tlb[idx][j][2];
								OUT_res[(i * 28) + 7] = tlb[idx][j][1];
								OUT_res[(i * 28) + 5-:3] = tlb[idx][j][5-:3];
								OUT_res[(i * 28) + 1] = tlb[idx][j][7];
								OUT_res[(i * 28) + 2] = tlb[idx][j][8];
								OUT_res[i * 28] = 1;
								OUT_res[(i * 28) + 27-:20] = (tlb[idx][j][8] ? {tlb[idx][j][28:19], IN_rqs[(i * 21) + 10-:10]} : tlb[idx][j][28-:20]);
								if (counters[idx] == j[$clog2(ASSOC) - 1:0])
									inc[i] = 1;
							end
					end
				end
		end
	end
	reg ignoreCur;
	always @(posedge clk)
		if (rst || clear) begin
			begin : sv2v_autoblock_4
				integer i;
				for (i = 0; i < LEN; i = i + 1)
					begin : sv2v_autoblock_5
						integer j;
						for (j = 0; j < ASSOC; j = j + 1)
							tlb[i][j][0] <= 0;
					end
			end
			if (clear)
				ignoreCur <= 1;
			if (rst)
				ignoreCur <= 0;
		end
		else begin
			if (ignoreCur && !IN_pw[1])
				ignoreCur <= 0;
			if ((IN_pw[0] && !ignoreCur) && (IS_IFETCH ? IN_pw[3-:2] == 0 : IN_pw[3-:2] != 0)) begin : sv2v_autoblock_6
				reg [$clog2(LEN) - 1:0] idx;
				reg [$clog2(ASSOC) - 1:0] assocIdx;
				idx = IN_pw[32 + $clog2(LEN):33];
				assocIdx = counters[idx];
				tlb[idx][assocIdx][5-:3] <= IN_pw[6-:3];
				tlb[idx][assocIdx][8] <= IN_pw[9];
				tlb[idx][assocIdx][28-:20] <= IN_pw[30:11];
				tlb[idx][assocIdx][VIRT_LEN + 28-:((VIRT_LEN + 28) >= 29 ? VIRT_LEN + 0 : 30 - (VIRT_LEN + 28))] <= IN_pw[52:33 + $clog2(LEN)];
				tlb[idx][assocIdx][6] <= IN_pw[8];
				tlb[idx][assocIdx][7] <= IN_pw[7];
				tlb[idx][assocIdx][1] <= IN_pw[10];
				tlb[idx][assocIdx][2] <= IN_pw[32:31] != 0;
				tlb[idx][assocIdx][0] <= 1;
			end
			begin : sv2v_autoblock_7
				integer i;
				for (i = 0; i < LEN; i = i + 1)
					if (inc[i])
						counters[i] <= counters[i] + 1;
			end
		end
endmodule
module TrapHandler (
	clk,
	rst,
	IN_trapInstr,
	OUT_pcReadAddr,
	IN_pcReadData,
	IN_trapControl,
	OUT_trapInfo,
	OUT_bpUpdate1,
	OUT_branch,
	IN_MEM_busy,
	OUT_flushTLB,
	OUT_fence,
	OUT_clearICache,
	OUT_disableIFetch,
	OUT_dbgStallPC
);
	input wire clk;
	input wire rst;
	input wire [46:0] IN_trapInstr;
	output wire [4:0] OUT_pcReadAddr;
	input wire [36:0] IN_pcReadData;
	input wire [132:0] IN_trapControl;
	output reg [38:0] OUT_trapInfo;
	output reg [31:0] OUT_bpUpdate1;
	output reg [63:0] OUT_branch;
	input wire IN_MEM_busy;
	output reg OUT_flushTLB;
	output reg OUT_fence;
	output reg OUT_clearICache;
	output wire OUT_disableIFetch;
	output reg [31:0] OUT_dbgStallPC;
	reg memoryWait;
	assign OUT_disableIFetch = memoryWait;
	assign OUT_pcReadAddr = IN_trapInstr[6-:5];
	wire [30:0] baseIndexPC = {IN_pcReadData[36:9], IN_trapInstr[9-:3]} - (IN_trapInstr[1] ? 0 : 1);
	wire [31:0] nextInstr = {baseIndexPC + (IN_trapInstr[1] ? 31'd1 : 31'd2), 1'b0};
	reg [2:0] baseIndexBPI;
	always @(*) baseIndexBPI = IN_pcReadData[2-:3];
	always @(posedge clk) begin
		OUT_fence <= 0;
		OUT_clearICache <= 0;
		OUT_bpUpdate1 <= 1'sbx;
		OUT_bpUpdate1[0] <= 0;
		OUT_branch <= 1'sbx;
		OUT_branch[0] <= 0;
		OUT_trapInfo <= 1'sbx;
		OUT_trapInfo[0] <= 0;
		OUT_flushTLB <= 0;
		if (rst)
			memoryWait <= 0;
		else begin
			if (memoryWait && !IN_MEM_busy)
				memoryWait <= 0;
			if (IN_trapInstr[0])
				if ((((IN_trapInstr[46-:4] == 4'd4) || (IN_trapInstr[46-:4] == 4'd5)) || (IN_trapInstr[46-:4] == 4'd14)) || ((IN_trapInstr[46-:4] == 4'd7) && (IN_trapInstr[14-:5] == 5'd15))) begin
					case (IN_trapInstr[46-:4])
						4'd5: begin
							memoryWait <= 1;
							OUT_branch[59-:32] <= nextInstr;
						end
						4'd4: begin
							OUT_clearICache <= 1;
							memoryWait <= 1;
							OUT_fence <= 1;
							OUT_branch[59-:32] <= nextInstr;
						end
						4'd14: OUT_branch[59-:32] <= {IN_trapControl[132-:31], 1'b0};
						4'd7: begin
							OUT_flushTLB <= 1;
							OUT_branch[59-:32] <= nextInstr;
						end
						default:
							;
					endcase
					if ((IN_trapInstr[46-:4] == 4'd14) || (IN_trapInstr[46-:4] == 4'd5))
						if (IN_trapControl[5]) begin
							OUT_trapInfo[0] <= 1;
							OUT_trapInfo[38-:32] <= (IN_trapInstr[46-:4] == 4'd14 ? {IN_trapControl[132-:31], 1'b0} : nextInstr);
							OUT_trapInfo[5-:4] <= IN_trapControl[4-:4];
							OUT_trapInfo[1] <= IN_trapControl[0];
							OUT_trapInfo[6] <= 1;
							OUT_branch[59-:32] <= {(IN_trapControl[0] ? IN_trapControl[70-:30] : IN_trapControl[101-:30]), 2'b00};
						end
					OUT_branch[0] <= 1;
					OUT_branch[27-:7] <= IN_trapInstr[35-:7];
					OUT_branch[6] <= 1;
					OUT_branch[20-:7] <= IN_trapInstr[21-:7];
					OUT_branch[13-:7] <= IN_trapInstr[28-:7];
					OUT_branch[5-:5] <= IN_trapInstr[6-:5];
					OUT_branch[61-:2] <= 2'd0;
					OUT_branch[63-:2] <= 2'd0;
				end
				else if ((IN_trapInstr[46-:4] >= 4'd6) && (IN_trapInstr[46-:4] <= 4'd13)) begin : sv2v_autoblock_1
					reg [3:0] trapCause;
					reg delegate;
					reg isInterrupt;
					isInterrupt = (IN_trapInstr[46-:4] == 4'd7) && (IN_trapInstr[14-:5] == 5'd16);
					if (isInterrupt)
						trapCause = IN_trapControl[4-:4];
					else begin
						case (IN_trapInstr[46-:4])
							4'd7: trapCause = IN_trapInstr[13:10];
							4'd8: trapCause = 4'd4;
							4'd9: trapCause = 4'd5;
							4'd10: trapCause = 4'd13;
							4'd11: trapCause = 4'd6;
							4'd12: trapCause = 4'd7;
							4'd13: trapCause = 4'd15;
							4'd6: trapCause = 4'd2;
							default:
								;
						endcase
						if (trapCause == 4'd11)
							case (IN_trapControl[7-:2])
								2'd1: trapCause = 4'd9;
								2'd0: trapCause = 4'd8;
								default:
									;
							endcase
					end
					delegate = (IN_trapControl[7-:2] != 2'd3) && (isInterrupt ? IN_trapControl[8 + trapCause] : IN_trapControl[24 + trapCause]);
					OUT_trapInfo[0] <= 1;
					OUT_trapInfo[38-:32] <= {baseIndexPC, 1'b0};
					OUT_trapInfo[5-:4] <= trapCause;
					OUT_trapInfo[1] <= delegate;
					OUT_trapInfo[6] <= isInterrupt;
					OUT_branch[0] <= 1;
					OUT_branch[59-:32] <= {(delegate ? IN_trapControl[70-:30] : IN_trapControl[101-:30]), 2'b00};
					OUT_branch[27-:7] <= IN_trapInstr[35-:7];
					OUT_branch[6] <= 1;
					OUT_branch[20-:7] <= IN_trapInstr[21-:7];
					OUT_branch[13-:7] <= IN_trapInstr[28-:7];
					if (((IN_trapInstr[46-:4] == 4'd11) || (IN_trapInstr[46-:4] == 4'd12)) || (IN_trapInstr[46-:4] == 4'd13))
						OUT_branch[20-:7] <= IN_trapInstr[21-:7] - 1;
					OUT_branch[5-:5] <= IN_trapInstr[6-:5];
					OUT_branch[61-:2] <= 2'd0;
					OUT_branch[63-:2] <= 2'd0;
				end
				else if ((IN_trapInstr[46-:4] == 4'd2) || (IN_trapInstr[46-:4] == 4'd3)) begin
					OUT_bpUpdate1[0] <= 1;
					OUT_bpUpdate1[31-:31] <= IN_pcReadData[36-:31];
				end
				else
					OUT_dbgStallPC <= {baseIndexPC, 1'b0};
		end
	end
endmodule
module TValSelect (
	clk,
	rst,
	IN_branch,
	IN_commitSqN,
	IN_tvalProvs,
	OUT_tvalState
);
	parameter NUM_TVAL_PROVS = 2;
	input wire clk;
	input wire rst;
	input wire [63:0] IN_branch;
	input wire [6:0] IN_commitSqN;
	input wire [(NUM_TVAL_PROVS * 40) - 1:0] IN_tvalProvs;
	output wire [31:0] OUT_tvalState;
	reg [39:0] curTVal;
	wire invalidateCurTVal_c = curTVal[0] && (($signed(IN_commitSqN - curTVal[7-:7]) > 0) || (IN_branch[0] && ($signed(curTVal[7-:7] - IN_branch[27-:7]) > 0)));
	reg invalidateCurTVal;
	assign OUT_tvalState[31-:32] = curTVal[39-:32];
	reg [39:0] earliest;
	always @(*) begin
		earliest = 1'sbx;
		earliest[0] = 0;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_TVAL_PROVS; i = i + 1)
				if (IN_tvalProvs[i * 40] && (!earliest[0] || ($signed(earliest[7-:7] - IN_tvalProvs[(i * 40) + 7-:7]) > 0)))
					earliest = IN_tvalProvs[i * 40+:40];
		end
	end
	always @(posedge clk)
		if (rst) begin
			curTVal <= 1'sbx;
			curTVal[0] <= 0;
			invalidateCurTVal <= 0;
		end
		else begin
			invalidateCurTVal <= invalidateCurTVal_c;
			if (invalidateCurTVal) begin
				curTVal[7-:7] <= 1'sbx;
				curTVal[0] <= 0;
			end
			if ((earliest[0] && (!IN_branch[0] || ($signed(earliest[7-:7] - IN_branch[27-:7]) < 0))) && (!curTVal[0] || ($signed(curTVal[7-:7] - earliest[7-:7]) >= 0))) begin
				curTVal[39-:32] <= earliest[39-:32];
				curTVal[7-:7] <= earliest[7-:7];
				curTVal[0] <= 1;
				invalidateCurTVal <= 0;
			end
		end
endmodule
