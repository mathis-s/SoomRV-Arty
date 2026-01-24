interface IF_CSR_MMIO;
	logic [63:0] mtime;
	logic [63:0] mtimecmp;
	modport CSR(
		input mtime,
		input mtimecmp
	);
	modport MMIO(
		output mtime,
		output mtimecmp
	);
endinterface
interface IF_Mem;
	localparam ADDR_LEN = 30;
	logic we;
	logic [29:0] waddr;
	logic [31:0] wdata;
	logic [3:0] wmask;
	logic re;
	logic [29:0] raddr;
	logic [31:0] rdata;
	logic rbusy;
	logic wbusy;
	modport HOST(
		output we,
		output waddr,
		output wdata,
		output wmask,
		output re,
		output raddr,
		input rdata,
		input rbusy,
		input wbusy
	);
	modport MEM(
		input we,
		input waddr,
		input wdata,
		input wmask,
		input re,
		input raddr,
		output rdata,
		output rbusy,
		output wbusy
	);
endinterface
interface IF_Cache;
	localparam NUM_AGUS = 2;
	logic [1:0] re;
	logic [1:0] we;
	logic [1:0][11:0] addr;
	logic [1:0][3:0][31:0] rdata;
	logic [1:0][1:0] wassoc;
	logic [1:0][127:0] wdata;
	logic [1:0][15:0] wmask;
	logic [1:0] busy;
	modport HOST(
		output we,
		output wassoc,
		output wdata,
		output wmask,
		output re,
		output addr,
		input rdata,
		input busy
	);
	modport MEM(
		input we,
		input wassoc,
		input wdata,
		input wmask,
		input re,
		input addr,
		output rdata,
		output busy
	);
endinterface
interface IF_CTable;
	logic we;
	logic [11:0] waddr;
	logic [1:0] wassoc;
	localparam type CTEntry = struct packed {
		logic [19:0] addr;
		logic valid;
	};
	CTEntry wdata;
	localparam NUM_AGUS = 2;
	logic re [1:0];
	logic [11:0] raddr [1:0];
	CTEntry [1:0][3:0] rdata;
	modport HOST(
		output we,
		output waddr,
		output wassoc,
		output wdata,
		output re,
		output raddr,
		input rdata
	);
	modport MEM(
		input we,
		input waddr,
		input wassoc,
		input wdata,
		input re,
		input raddr,
		output rdata
	);
endinterface
interface IF_MMIO;
	localparam ADDR_LEN = 32;
	logic we;
	logic [31:0] waddr;
	logic [31:0] wdata;
	logic [3:0] wmask;
	logic re;
	logic [31:0] raddr;
	logic [1:0] rsize;
	logic [31:0] rdata;
	logic rbusy;
	logic wbusy;
	modport HOST(
		output we,
		output waddr,
		output wdata,
		output wmask,
		output re,
		output raddr,
		output rsize,
		input rdata,
		input rbusy,
		input wbusy
	);
	modport MEM(
		input we,
		input waddr,
		input wdata,
		input wmask,
		input re,
		input raddr,
		input rsize,
		output rdata,
		output rbusy,
		output wbusy
	);
endinterface
interface IF_ICTable;
	logic we;
	logic [11:0] waddr;
	logic [1:0] wassoc;
	localparam type CTEntry = struct packed {
		logic [19:0] addr;
		logic valid;
	};
	CTEntry wdata;
	logic re;
	logic [11:0] raddr;
	CTEntry [3:0] rdata;
	modport HOST(
		output we,
		output waddr,
		output wassoc,
		output wdata,
		output re,
		output raddr,
		input rdata
	);
	modport MEM(
		input we,
		input waddr,
		input wassoc,
		input wdata,
		input re,
		input raddr,
		output rdata
	);
endinterface
interface IF_ICache;
	logic re;
	logic [11:0] raddr;
	localparam FETCH_BITS = 128;
	logic [3:0][127:0] rdata;
	logic busy;
	modport HOST(
		output re,
		output raddr,
		input rdata,
		input busy
	);
	modport MEM(
		input re,
		input raddr,
		output rdata,
		output busy
	);
endinterface
module AGU (
	clk,
	rst,
	IN_stall,
	OUT_stall,
	OUT_TMQ_free,
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
	parameter RQ_ID = 2;
	input wire clk;
	input wire rst;
	input wire IN_stall;
	output wire OUT_stall;
	output wire [2:0] OUT_TMQ_free;
	input logic [73:0] IN_branch;
	input logic [30:0] IN_vmem;
	output logic [54:0] OUT_pw;
	input logic [52:0] IN_pw;
	output logic [20:0] OUT_tlb;
	input logic [27:0] IN_tlb;
	output logic [39:0] OUT_tvalProv;
	input logic [182:0] IN_uop;
	output logic [81:0] OUT_aguOp;
	output logic [12:0] OUT_eldOp;
	output logic [19:0] OUT_uop;
	function logic IsPermFault;
		input logic [2:0] pte_rwx;
		input logic pte_user;
		input logic isLoad;
		input logic isStore;
		logic r;
		begin
			r = (((isLoad && !(pte_rwx[2] || (pte_rwx[0] && IN_vmem[6]))) || (isStore && !pte_rwx[1])) || ((IN_vmem[1-:2] == 2'd0) && !pte_user)) || (((IN_vmem[1-:2] == 2'd1) && pte_user) && !IN_vmem[5]);
			IsPermFault = r;
		end
	endfunction
	reg pageWalkActive;
	reg pageWalkAccepted;
	reg eldIsPageWalkOp;
	assign OUT_stall = OUT_TMQ_free == 0;
	wire [31:0] addr = IN_uop[182-:32] + IN_uop[150-:32];
	logic [81:0] aguUOp_c;
	logic [39:0] tvalProv_c;
	reg isIllegalInstr_c;
	localparam logic [6:0] TAG_ZERO = 7'b1000000;
	always_comb begin
		aguUOp_c = 'x;
		aguUOp_c[0] = 0;
		tvalProv_c = 'x;
		tvalProv_c[0] = 0;
		isIllegalInstr_c = 0;
		aguUOp_c[81-:32] = addr;
		aguUOp_c[38-:7] = IN_uop[39-:7];
		aguUOp_c[31-:7] = IN_uop[32-:7];
		aguUOp_c[24-:7] = IN_uop[19-:7];
		aguUOp_c[17-:7] = IN_uop[12-:7];
		aguUOp_c[7-:5] = IN_uop[25-:5];
		aguUOp_c[10-:3] = IN_uop[86-:3];
		aguUOp_c[40] = 0;
		aguUOp_c[1] = IN_uop[1];
		aguUOp_c[0] = IN_uop[0] && ((IN_uop[5-:4] == 4'd3) || (IN_uop[5-:4] == 4'd10));
		if (IN_uop[45-:6] < 6'd6) begin
			aguUOp_c[41] = 1;
			aguUOp_c[42] = 0;
			aguUOp_c[2] = 0;
			case (IN_uop[45-:6])
				6'd0: begin
					aguUOp_c[44-:2] = 0;
					aguUOp_c[45] = 1;
				end
				6'd1: begin
					aguUOp_c[44-:2] = 1;
					aguUOp_c[45] = 1;
				end
				6'd5: begin
					aguUOp_c[40] = 1;
					aguUOp_c[44-:2] = 2;
					aguUOp_c[45] = 0;
				end
				6'd2: begin
					aguUOp_c[44-:2] = 2;
					aguUOp_c[45] = 0;
				end
				6'd3: begin
					aguUOp_c[44-:2] = 0;
					aguUOp_c[45] = 0;
				end
				6'd4: begin
					aguUOp_c[44-:2] = 1;
					aguUOp_c[45] = 0;
				end
				default:
					;
			endcase
		end
		else begin
			aguUOp_c[41] = 0;
			aguUOp_c[42] = 1;
			aguUOp_c[2] = 0;
			aguUOp_c[49-:4] = 4'b1111;
			aguUOp_c[44-:2] = 2;
			case (IN_uop[45-:6])
				6'd7: begin
					aguUOp_c[44-:2] = 0;
					case (addr[1:0])
						0: aguUOp_c[49-:4] = 4'b0001;
						1: aguUOp_c[49-:4] = 4'b0010;
						2: aguUOp_c[49-:4] = 4'b0100;
						3: aguUOp_c[49-:4] = 4'b1000;
					endcase
				end
				6'd8: begin
					aguUOp_c[44-:2] = 1;
					case (addr[1])
						0: aguUOp_c[49-:4] = 4'b0011;
						1: aguUOp_c[49-:4] = 4'b1100;
					endcase
				end
				6'd6: begin
					aguUOp_c[40] = 1;
					aguUOp_c[49-:4] = 4'b1111;
					aguUOp_c[38-:7] = TAG_ZERO;
				end
				6'd9: aguUOp_c[49-:4] = 4'b1111;
				6'd10: begin
					aguUOp_c[49-:4] = 0;
					if (!IN_vmem[2])
						isIllegalInstr_c = 1;
				end
				6'd11: begin
					aguUOp_c[49-:4] = 0;
					if (IN_vmem[4-:2] == 2'b00)
						isIllegalInstr_c = 1;
				end
				6'd12: begin
					aguUOp_c[49-:4] = 0;
					if (!IN_vmem[2])
						isIllegalInstr_c = 1;
				end
				6'd55, 6'd56, 6'd57, 6'd58, 6'd59, 6'd60, 6'd61, 6'd62, 6'd63: begin
					if (IN_uop[45-:6] != 6'd55)
						aguUOp_c[2] = 1;
					aguUOp_c[41] = 1;
					aguUOp_c[44-:2] = 2;
					aguUOp_c[45] = 0;
				end
				default:
					;
			endcase
		end
	end
	logic TMQ_enqueue;
	logic TMQ_uopReady;
	logic TMQ_dequeue;
	logic [81:0] TMQ_uop;
	logic TMQ_ready;
	logic [81:0] issUOp_c;
	TLBMissQueue #(.SIZE(4)) tmq(
		.clk(clk),
		.rst(rst),
		.OUT_free(OUT_TMQ_free),
		.OUT_ready(TMQ_ready),
		.IN_branch(IN_branch),
		.IN_vmem(IN_vmem),
		.IN_pw(IN_pw),
		.IN_pwActive(pageWalkActive),
		.IN_enqueue(TMQ_enqueue),
		.IN_uopReady(TMQ_uopReady),
		.IN_uop(issUOp_c),
		.IN_dequeue(TMQ_dequeue),
		.OUT_uop(TMQ_uop)
	);
	logic [19:0] issResUOp_c;
	always_comb begin
		issUOp_c = 'x;
		issUOp_c[0] = 0;
		issResUOp_c = 'x;
		issResUOp_c[0] = 0;
		TMQ_dequeue = 0;
		if (aguUOp_c[0] && !OUT_stall) begin
			issUOp_c = aguUOp_c;
			issResUOp_c[0] = aguUOp_c[0];
			issResUOp_c[1] = aguUOp_c[2];
			issResUOp_c[5-:4] = (isIllegalInstr_c ? 4'd6 : 4'd0);
			issResUOp_c[12-:7] = aguUOp_c[31-:7];
			issResUOp_c[19-:7] = aguUOp_c[38-:7];
		end
		else if (TMQ_uop[0]) begin
			TMQ_dequeue = 1;
			issUOp_c = TMQ_uop;
			issResUOp_c[0] = TMQ_uop[0];
			issResUOp_c[1] = TMQ_uop[2];
			issResUOp_c[5-:4] = 4'd0;
			issResUOp_c[12-:7] = TMQ_uop[31-:7];
			issResUOp_c[19-:7] = TMQ_uop[38-:7];
		end
	end
	always_comb begin
		OUT_eldOp = 'x;
		OUT_eldOp[0] = ((!rst && issUOp_c[0]) && issUOp_c[41]) && (!IN_branch[0] || ($signed(issUOp_c[31-:7] - IN_branch[27-:7]) <= 0));
		if (OUT_eldOp[0])
			OUT_eldOp[12-:12] = issUOp_c[61:50];
	end
	always_comb begin
		OUT_tlb[0] = (IN_vmem[30] && !rst) && issUOp_c[0];
		OUT_tlb[20-:20] = issUOp_c[81:62];
	end
	wire [31:0] phyAddr = (IN_vmem[30] ? {IN_tlb[27-:20], issUOp_c[61:50]} : issUOp_c[81-:32]);
	logic [3:0] exceptFlags;
	always_comb begin
		exceptFlags = 4'd0;
		if (issUOp_c[42] && (issUOp_c[49-:4] == 0))
			exceptFlags = 4'd5;
		if ((IN_vmem[30] && IN_tlb[0]) && (IN_tlb[7] || IsPermFault(IN_tlb[5-:3], IN_tlb[1], issUOp_c[41], issUOp_c[42])))
			exceptFlags = (issUOp_c[42] ? 4'd13 : 4'd10);
		else if ((!(((phyAddr >= 32'h80000000) && (phyAddr < 32'h90000000)) || ((phyAddr < 32'h80000000) && (phyAddr >= 32'h10000000))) || IN_tlb[6]) && !(IN_vmem[30] && !IN_tlb[0]))
			exceptFlags = (issUOp_c[42] ? 4'd12 : 4'd9);
		if (issUOp_c[42])
			case (issUOp_c[44-:2])
				0:
					;
				1:
					if (phyAddr[0])
						exceptFlags = 4'd11;
				default:
					if (phyAddr[0] || phyAddr[1])
						exceptFlags = 4'd11;
			endcase
		else
			case (issUOp_c[44-:2])
				0:
					;
				1:
					if (phyAddr[0])
						exceptFlags = 4'd8;
				default:
					if (phyAddr[0] || phyAddr[1])
						exceptFlags = 4'd8;
			endcase
		if (issResUOp_c[5-:4] != 4'd0)
			exceptFlags = issResUOp_c[5-:4];
	end
	reg tlbMiss;
	always_comb begin
		tlbMiss = 0;
		TMQ_enqueue = 0;
		TMQ_uopReady = 'x;
		if ((issUOp_c[0] && (!IN_branch[0] || ($signed(issUOp_c[31-:7] - IN_branch[27-:7]) <= 0))) && ((IN_vmem[30] && (exceptFlags == 4'd0)) && !IN_tlb[0])) begin
			tlbMiss = 1;
			TMQ_enqueue = 1;
			TMQ_uopReady = 0;
		end
	end
	reg [31:0] pageWalkAddr;
	function automatic logic [54:0] sv2v_cast_55;
		input logic [54:0] inp;
		sv2v_cast_55 = inp;
	endfunction
	function automatic logic [39:0] sv2v_cast_40;
		input logic [39:0] inp;
		sv2v_cast_40 = inp;
	endfunction
	function automatic logic [19:0] sv2v_cast_20;
		input logic [19:0] inp;
		sv2v_cast_20 = inp;
	endfunction
	function automatic logic [81:0] sv2v_cast_82;
		input logic [81:0] inp;
		sv2v_cast_82 = inp;
	endfunction
	function automatic logic signed [1:0] sv2v_cast_2C231_signed;
		input logic signed [1:0] inp;
		sv2v_cast_2C231_signed = inp;
	endfunction
	always_ff @(posedge clk) begin
		OUT_pw <= sv2v_cast_55(55'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		OUT_tvalProv <= sv2v_cast_40(40'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		OUT_uop <= sv2v_cast_20(20'bxxxxxxxxxxxxxxxxxxx0);
		OUT_aguOp <= sv2v_cast_82(82'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		if (rst) begin
			pageWalkActive <= 0;
			pageWalkAccepted <= 'x;
			pageWalkAddr <= 'x;
		end
		else begin
			if (pageWalkActive)
				if (!pageWalkAccepted) begin
					if (IN_pw[1] && (IN_pw[3-:2] == sv2v_cast_2C231_signed(RQ_ID)))
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
			if (issUOp_c[0] && (!IN_branch[0] || ($signed(issUOp_c[31-:7] - IN_branch[27-:7]) <= 0))) begin : sv2v_autoblock_1
				reg doIssue;
				doIssue = 1;
				if (exceptFlags != 4'd6) begin
					if (tlbMiss) begin
						if (!pageWalkActive) begin
							pageWalkActive <= 1;
							pageWalkAccepted <= 0;
							pageWalkAddr <= issUOp_c[81-:32];
						end
						doIssue = 0;
					end
					if ((exceptFlags != 4'd0) && (exceptFlags != 4'd5)) begin
						OUT_tvalProv[0] <= 1;
						OUT_tvalProv[7-:7] <= issUOp_c[31-:7];
						OUT_tvalProv[39-:32] <= issUOp_c[81-:32];
					end
				end
				if (doIssue) begin : sv2v_autoblock_2
					reg isLoad;
					reg isStore;
					reg isAtomic;
					isLoad = issUOp_c[41] && !issUOp_c[42];
					isStore = !issUOp_c[41] && issUOp_c[42];
					isAtomic = issUOp_c[41] && issUOp_c[42];
					if (((isLoad || isAtomic) && (exceptFlags != 4'd0)) || isStore) begin
						OUT_uop <= issResUOp_c;
						OUT_uop[5-:4] <= exceptFlags;
						OUT_uop[1] <= 0;
					end
					if ((exceptFlags == 4'd0) || (exceptFlags == 4'd5)) begin
						OUT_aguOp <= issUOp_c;
						OUT_aguOp[39] <= IN_stall;
						if (IN_vmem[30])
							OUT_aguOp[81-:32] <= phyAddr;
					end
				end
			end
		end
	end
endmodule
module BranchHandler (
	clk,
	rst,
	IN_clear,
	IN_accept,
	IN_op,
	IN_instrs,
	OUT_decBranch,
	OUT_btUpdate,
	OUT_retUpdate,
	OUT_endOffsValid,
	OUT_endOffs,
	OUT_newPredTaken,
	OUT_newPredPos
);
	parameter NUM_INST = 8;
	input wire clk;
	input wire rst;
	input wire IN_clear;
	input wire IN_accept;
	input logic [119:0] IN_op;
	input wire [(NUM_INST * 16) - 1:0] IN_instrs;
	output logic [48:0] OUT_decBranch;
	output logic [75:0] OUT_btUpdate;
	output logic [36:0] OUT_retUpdate;
	output logic OUT_endOffsValid;
	output logic [2:0] OUT_endOffs;
	output logic OUT_newPredTaken;
	output logic [2:0] OUT_newPredPos;
	logic [15:0] lastInstr;
	logic [31:0] lastInstrPC;
	logic lastInstrValid;
	wire [(NUM_INST >= 0 ? ((NUM_INST + 1) * 16) - 1 : ((1 - NUM_INST) * 16) + ((NUM_INST * 16) - 1)):(NUM_INST >= 0 ? 0 : NUM_INST * 16)] instrsView = {IN_instrs, lastInstr};
	logic [NUM_INST:0] is16bit;
	logic [NUM_INST:0] is32bit;
	wire logic [2:0] firstValid = (lastInstrValid ? 0 : IN_op[89+:3]);
	function automatic logic [2:0] sv2v_cast_3;
		input logic [2:0] inp;
		sv2v_cast_3 = inp;
	endfunction
	always_comb begin : sv2v_autoblock_1
		logic validInstrStart;
		validInstrStart = 1;
		is16bit = 0;
		is32bit = 0;
		if (lastInstrValid && (IN_op[89+:3] == 0)) begin
			is32bit[0] = 1;
			validInstrStart = 0;
		end
		begin : sv2v_autoblock_2
			integer i;
			for (i = 1; i < (NUM_INST + 1); i = i + 1)
				begin
					if (sv2v_cast_3(i - 1) < firstValid)
						validInstrStart = 0;
					if ((sv2v_cast_3(i - 1) == firstValid) && !lastInstrValid)
						validInstrStart = 1;
					if (sv2v_cast_3(i - 1) > IN_op[80-:3])
						validInstrStart = 0;
					if (validInstrStart) begin
						if (instrsView[((NUM_INST >= 0 ? i : NUM_INST - i) * 16) + 1-:2] == 2'b11) begin
							is32bit[i] = 1;
							validInstrStart = 0;
						end
						else begin
							is16bit[i] = 1;
							validInstrStart = 1;
						end
					end
					else
						validInstrStart = 1;
				end
		end
	end
	logic [31:0] pc [NUM_INST:0];
	always_comb begin
		pc[0] = lastInstrPC;
		begin : sv2v_autoblock_3
			integer i;
			for (i = 1; i < (NUM_INST + 1); i = i + 1)
				pc[i] = {IN_op[119:92], 3'd0, 1'b0} + ((i - 1) * 2);
		end
	end
	logic [31:0] CJ_target [NUM_INST:0];
	logic [31:0] CB_target [NUM_INST:0];
	logic [31:0] J_target [NUM_INST - 1:0];
	logic [31:0] B_target [NUM_INST - 1:0];
	always_comb begin
		begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < (NUM_INST + 1); i = i + 1)
				begin : sv2v_autoblock_5
					logic [15:0] i16;
					i16 = instrsView[(NUM_INST >= 0 ? i : NUM_INST - i) * 16+:16];
					CJ_target[i] = pc[i] + {{20 {i16[12]}}, i16[12], i16[8], i16[10:9], i16[6], i16[7], i16[2], i16[11], i16[5:3], 1'b0};
					CB_target[i] = pc[i] + {{23 {i16[12]}}, i16[12], i16[6:5], i16[2], i16[11:10], i16[4:3], 1'b0};
				end
		end
		begin : sv2v_autoblock_6
			integer i;
			for (i = 0; i < NUM_INST; i = i + 1)
				begin : sv2v_autoblock_7
					logic [31:0] i32;
					i32 = {instrsView[(NUM_INST >= 0 ? i + 1 : NUM_INST - (i + 1)) * 16+:16], instrsView[(NUM_INST >= 0 ? i : NUM_INST - i) * 16+:16]};
					J_target[i] = pc[i] + {{12 {i32[31]}}, i32[19:12], i32[20], i32[30:21], 1'b0};
					B_target[i] = pc[i] + {{20 {i32[31]}}, i32[7], i32[30:25], i32[11:8], 1'b0};
				end
		end
	end
	logic [100:0] branch [NUM_INST - 1:0];
	function automatic logic [100:0] sv2v_cast_101;
		input logic [100:0] inp;
		sv2v_cast_101 = inp;
	endfunction
	always_comb begin
		begin : sv2v_autoblock_8
			integer i;
			for (i = 0; i < NUM_INST; i = i + 1)
				branch[i] = sv2v_cast_101(101'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		end
		begin : sv2v_autoblock_9
			integer i;
			for (i = 0; i < NUM_INST; i = i + 1)
				if (is16bit[i + 1]) begin : sv2v_autoblock_10
					logic [15:0] i16;
					i16 = instrsView[(NUM_INST >= 0 ? i + 1 : NUM_INST - (i + 1)) * 16+:16];
					casez (i16)
						16'b001zzzzzzzzzzz01, 16'b101zzzzzzzzzzz01: begin
							branch[i][0] = 1;
							branch[i][1] = 1;
							branch[i][4-:3] = (i16[15-:3] == 3'b001 ? 3'd2 : 3'd0);
							branch[i][100-:32] = CJ_target[i + 1];
							branch[i][68-:32] = pc[i + 1];
							branch[i][36-:32] = pc[i + 1];
						end
						16'b1000zzzzz0000010:
							if (i16[11:7] != 0) begin
								branch[i][0] = 1;
								branch[i][1] = 1;
								branch[i][4-:3] = (i16[11:7] == 1 ? 3'd7 : 3'd1);
								branch[i][100-:32] = 'x;
								branch[i][68-:32] = pc[i + 1];
								branch[i][36-:32] = pc[i + 1];
							end
						16'b1001zzzzz0000010:
							if (i16[11:7] != 0) begin
								branch[i][0] = 1;
								branch[i][1] = 1;
								branch[i][4-:3] = 3'd3;
								branch[i][100-:32] = 'x;
								branch[i][68-:32] = pc[i + 1];
								branch[i][36-:32] = pc[i + 1];
							end
						16'b111zzzzzzzzzzz01, 16'b110zzzzzzzzzzz01: begin
							branch[i][0] = 1;
							branch[i][1] = 1;
							branch[i][4-:3] = 3'd4;
							branch[i][100-:32] = CB_target[i + 1];
							branch[i][68-:32] = pc[i + 1];
							branch[i][36-:32] = pc[i + 1];
						end
						default:
							;
					endcase
				end
		end
		begin : sv2v_autoblock_11
			integer i;
			for (i = 0; i < NUM_INST; i = i + 1)
				if (is32bit[i]) begin : sv2v_autoblock_12
					logic [31:0] i32;
					i32 = {instrsView[(NUM_INST >= 0 ? i + 1 : NUM_INST - (i + 1)) * 16+:16], instrsView[(NUM_INST >= 0 ? i : NUM_INST - i) * 16+:16]};
					casez (i32)
						32'bzzzzzzzzzzzzzzzzzzzzzzzzz1101111: begin
							branch[i][0] = 1;
							branch[i][1] = 0;
							branch[i][4-:3] = ((i32[11:7] == 1) || (i32[11:7] == 5) ? 3'd2 : 3'd0);
							branch[i][100-:32] = J_target[i];
							branch[i][68-:32] = pc[i];
							branch[i][36-:32] = pc[i + 1];
						end
						32'bzzzzzzzzzzzzzzzzz000zzzzz1100111: begin
							branch[i][0] = 1;
							branch[i][1] = 0;
							casez ({(i32[11:7] == 1) || (i32[11:7] == 5), (i32[19:15] == 1) || (i32[19:15] == 5), i32[17] == i32[9]})
								3'b00z: branch[i][4-:3] = 3'd1;
								3'b01z: branch[i][4-:3] = 3'd7;
								3'b10z: branch[i][4-:3] = 3'd3;
								3'b110: branch[i][4-:3] = 3'd1;
								3'b111: branch[i][4-:3] = 3'd3;
							endcase
							branch[i][100-:32] = 'x;
							branch[i][68-:32] = pc[i];
							branch[i][36-:32] = pc[i + 1];
						end
						32'bzzzzzzzzzzzzzzzzzzzzzzzzz1100011:
							if ((instrsView[((NUM_INST >= 0 ? i : NUM_INST - i) * 16) + 14-:3] != 2) && (instrsView[((NUM_INST >= 0 ? i : NUM_INST - i) * 16) + 14-:3] != 3)) begin
								branch[i][0] = 1;
								branch[i][1] = 0;
								branch[i][4-:3] = 3'd4;
								branch[i][100-:32] = B_target[i];
								branch[i][68-:32] = pc[i];
								branch[i][36-:32] = pc[i + 1];
							end
						default:
							;
					endcase
				end
		end
	end
	logic [48:0] decBranch_c;
	logic [75:0] btUpdate_c;
	logic [36:0] retUpd_c;
	logic endOffsValid;
	logic [2:0] endOffs;
	logic [2:0] newPredPos_c;
	logic newPredTaken_c;
	function automatic logic [48:0] sv2v_cast_49;
		input logic [48:0] inp;
		sv2v_cast_49 = inp;
	endfunction
	function automatic logic [36:0] sv2v_cast_37;
		input logic [36:0] inp;
		sv2v_cast_37 = inp;
	endfunction
	always_comb begin
		OUT_decBranch = sv2v_cast_49(49'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		OUT_retUpdate = sv2v_cast_37(37'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		OUT_endOffsValid = 0;
		OUT_endOffs = 'x;
		OUT_newPredPos = 'x;
		OUT_newPredTaken = 'x;
		if (IN_accept) begin
			OUT_decBranch = decBranch_c;
			OUT_retUpdate = retUpd_c;
			OUT_endOffsValid = endOffsValid;
			OUT_endOffs = endOffs;
			OUT_newPredPos = newPredPos_c;
			OUT_newPredTaken = newPredTaken_c;
		end
	end
	function automatic logic [75:0] sv2v_cast_76;
		input logic [75:0] inp;
		sv2v_cast_76 = inp;
	endfunction
	always_ff @(posedge clk) begin
		OUT_btUpdate <= sv2v_cast_76(76'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		if (IN_accept && !IN_clear)
			OUT_btUpdate <= btUpdate_c;
	end
	always_comb begin
		decBranch_c = sv2v_cast_49(49'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		btUpdate_c = sv2v_cast_76(76'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		retUpd_c = sv2v_cast_37(37'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		decBranch_c[48] = 1;
		endOffs = 'x;
		endOffsValid = 0;
		newPredTaken_c = IN_op[37] && IN_op[39];
		newPredPos_c = IN_op[46-:3];
		begin : sv2v_autoblock_13
			integer i;
			for (i = 0; i < NUM_INST; i = i + 1)
				begin : sv2v_autoblock_14
					logic [100:0] curBr;
					logic [1:0] curBr_btypeSimple;
					logic isIndirBranch;
					logic [30:0] curPC;
					logic [30:0] nextPC;
					logic predicted;
					curBr = branch[i];
					curBr_btypeSimple = curBr[3+:2];
					isIndirBranch = curBr[0] && (((curBr[4-:3] == 3'd1) || (curBr[4-:3] == 3'd3)) || (curBr[4-:3] == 3'd7));
					curPC = {IN_op[119:92], sv2v_cast_3(i)};
					nextPC = curPC + 1;
					predicted = (IN_op[37] && (IN_op[46-:3] == sv2v_cast_3(i))) && !IN_op[38];
					if (decBranch_c[0])
						;
					else if ((i > IN_op[80-:3]) || (i < IN_op[89+:3]))
						;
					else if (predicted && IN_op[39]) begin
						if ((!curBr[0] || (curBr_btypeSimple != IN_op[42-:2])) || (!isIndirBranch && (curBr[100:70] != IN_op[77-:31]))) begin : sv2v_autoblock_15
							logic predIllegal;
							predIllegal = is32bit[IN_op[46-:3] + 4'sd1];
							btUpdate_c[0] = 1;
							btUpdate_c[1] = 1;
							btUpdate_c[3] = 0;
							btUpdate_c[6-:3] = 'x;
							btUpdate_c[11-:3] = IN_op[89+:3];
							btUpdate_c[75-:32] = {IN_op[119:91], IN_op[46-:3]};
							decBranch_c[0] = 1;
							decBranch_c[6-:5] = IN_op[87-:5];
							decBranch_c[45-:3] = sv2v_cast_3(i);
							decBranch_c[42-:2] = 2'd0;
							decBranch_c[40-:3] = (curBr[0] && (curBr[4-:3] == 3'd4) ? 3'd2 : 3'd0);
							decBranch_c[47-:2] = 2'd0;
							decBranch_c[1] = 0;
							if (curBr[0] && ((curBr[4-:3] == 3'd2) || (curBr[4-:3] == 3'd3))) begin
								retUpd_c[0] = 1;
								retUpd_c[5-:5] = IN_op[5-:5];
								retUpd_c[36-:31] = {IN_op[119:92], curBr[6+:3]};
							end
							if (curBr[0])
								case (curBr[4-:3])
									3'd2, 3'd3: decBranch_c[42-:2] = 2'd1;
									3'd7: decBranch_c[42-:2] = 2'd2;
									default:
										;
								endcase
							if ((!predIllegal && curBr[0]) && (!isIndirBranch || (curBr[4-:3] == 3'd7))) begin
								btUpdate_c[1] = 0;
								btUpdate_c[8-:2] = curBr_btypeSimple;
								btUpdate_c[75-:32] = curBr[36-:32];
								btUpdate_c[11-:3] = IN_op[89+:3];
								btUpdate_c[43-:32] = curBr[100-:32];
								btUpdate_c[2] = curBr[1];
								decBranch_c[37-:31] = (curBr[4-:3] == 3'd7 ? IN_op[36-:31] : curBr[100:70]);
							end
							else if (predIllegal) begin
								decBranch_c[37-:31] = curPC;
								newPredTaken_c = 0;
								newPredPos_c = {3 {1'b1}};
								endOffsValid = 1;
								endOffs = IN_op[46-:3];
							end
							else begin
								decBranch_c[37-:31] = nextPC;
								newPredTaken_c = 0;
								newPredPos_c = {3 {1'b1}};
								if (IN_op[46-:3] != {3 {1'b1}}) begin
									endOffsValid = 1;
									endOffs = IN_op[46-:3] + 1;
								end
							end
						end
					end
					else if (curBr[0]) begin : sv2v_autoblock_16
						logic [2:0] actualOffs;
						reg dirOnly;
						reg dirOnlyTaken;
						actualOffs = curBr[6+:3];
						dirOnly = ((curBr[4-:3] == 3'd4) && IN_op[37]) && IN_op[38];
						dirOnlyTaken = dirOnly && IN_op[39];
						if ((((curBr[4-:3] == 3'd0) || (curBr[4-:3] == 3'd2)) || (curBr[4-:3] == 3'd7)) || dirOnlyTaken) begin
							decBranch_c[0] = 1;
							decBranch_c[6-:5] = IN_op[87-:5];
							decBranch_c[45-:3] = sv2v_cast_3(i);
							decBranch_c[37-:31] = (curBr[4-:3] == 3'd7 ? IN_op[36-:31] : curBr[100:70]);
							decBranch_c[40-:3] = (dirOnlyTaken ? 3'd2 : 3'd0);
							decBranch_c[47-:2] = 2'd0;
							decBranch_c[1] = 0;
							case (curBr[4-:3])
								3'd2: decBranch_c[42-:2] = 2'd1;
								3'd7: decBranch_c[42-:2] = 2'd2;
								default: decBranch_c[42-:2] = 2'd0;
							endcase
							newPredTaken_c = 1;
							newPredPos_c = actualOffs;
							if (actualOffs != {3 {1'b1}}) begin
								endOffsValid = 1;
								endOffs = actualOffs + 1;
							end
						end
						else if (((!predicted && (curBr[4-:3] == 3'd4)) && !dirOnlyTaken) || (curBr[4-:3] == 3'd3)) begin
							decBranch_c[0] = 1;
							decBranch_c[6-:5] = IN_op[87-:5];
							decBranch_c[45-:3] = sv2v_cast_3(i);
							decBranch_c[37-:31] = nextPC;
							decBranch_c[42-:2] = (curBr[4-:3] == 3'd3 ? 2'd1 : 2'd0);
							decBranch_c[40-:3] = (curBr[4-:3] == 3'd4 ? 3'd1 : 3'd0);
							decBranch_c[47-:2] = 2'd0;
							decBranch_c[1] = 0;
							if (actualOffs != {3 {1'b1}}) begin
								endOffsValid = 1;
								endOffs = actualOffs + 1;
							end
						end
						if (!predicted && ((((curBr[4-:3] == 3'd0) || (curBr[4-:3] == 3'd2)) || (curBr[4-:3] == 3'd4)) || (curBr[4-:3] == 3'd7))) begin
							btUpdate_c[0] = 1;
							btUpdate_c[1] = 0;
							btUpdate_c[3] = actualOffs > IN_op[46-:3];
							btUpdate_c[6-:3] = IN_op[46-:3] + 1;
							btUpdate_c[8-:2] = curBr_btypeSimple;
							btUpdate_c[75-:32] = curBr[36-:32];
							btUpdate_c[11-:3] = IN_op[89+:3];
							btUpdate_c[43-:32] = curBr[100-:32];
							btUpdate_c[2] = curBr[1];
						end
						if ((curBr[4-:3] == 3'd2) || (curBr[4-:3] == 3'd3)) begin
							retUpd_c[0] = 1;
							retUpd_c[5-:5] = IN_op[5-:5];
							retUpd_c[36-:31] = {IN_op[119:92], actualOffs};
						end
					end
					else if (predicted) begin : sv2v_autoblock_17
						logic predIllegal;
						predIllegal = is32bit[IN_op[46-:3] + 4'sd1];
						decBranch_c[0] = 1;
						decBranch_c[6-:5] = IN_op[87-:5];
						decBranch_c[45-:3] = sv2v_cast_3(i);
						decBranch_c[37-:31] = nextPC;
						decBranch_c[42-:2] = 2'd0;
						decBranch_c[40-:3] = 3'd0;
						decBranch_c[47-:2] = 2'd0;
						decBranch_c[1] = 0;
						newPredTaken_c = 0;
						newPredPos_c = {3 {1'b1}};
						if (sv2v_cast_3(i) != {3 {1'b1}}) begin
							endOffsValid = 1;
							endOffs = sv2v_cast_3(i) + 1;
						end
						if (predIllegal) begin
							endOffsValid = 1;
							endOffs = sv2v_cast_3(i);
							decBranch_c[37-:31] = curPC;
						end
						btUpdate_c[0] = 1;
						btUpdate_c[1] = 1;
						btUpdate_c[3] = 0;
						btUpdate_c[6-:3] = 'x;
						btUpdate_c[11-:3] = IN_op[89+:3];
						btUpdate_c[75-:32] = {IN_op[119:91], IN_op[46-:3]};
					end
				end
		end
	end
	always_ff @(posedge clk)
		if (rst) begin
			lastInstr <= 'x;
			lastInstrPC <= 'x;
			lastInstrValid <= 0;
		end
		else if (IN_clear) begin
			lastInstr <= 'x;
			lastInstrValid <= 0;
		end
		else if (IN_accept) begin : sv2v_autoblock_18
			reg [3:0] lastIdx;
			lastIdx = IN_op[80-:3] + 1;
			if (is32bit[lastIdx] && !decBranch_c[0]) begin
				lastInstrValid <= 1;
				lastInstr <= instrsView[(NUM_INST >= 0 ? NUM_INST : NUM_INST - NUM_INST) * 16+:16];
				lastInstrPC <= pc[NUM_INST];
			end
			else begin
				lastInstrValid <= 0;
				lastInstr <= 'x;
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
	parameter IDX_LEN = 12;
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
	always_ff @(posedge clk)
		if (IN_readValid)
			OUT_taken <= pred[IN_readAddr];
	reg [1:0] writeTempReg;
	logic [IDX_LEN + 2:0] write_c;
	logic [IDX_LEN + 2:0] write_r;
	always_comb begin
		write_c[0] = IN_writeEn;
		write_c[1] = IN_writeInit;
		write_c[IDX_LEN + 2-:((IDX_LEN + 2) >= 3 ? IDX_LEN + 0 : 4 - (IDX_LEN + 2))] = IN_writeAddr;
		write_c[2] = IN_writeTaken;
	end
	logic [IDX_LEN:0] resetIdx;
	function automatic logic [IDX_LEN - 1:0] sv2v_cast_58D9F;
		input logic [IDX_LEN - 1:0] inp;
		sv2v_cast_58D9F = inp;
	endfunction
	function automatic logic [((IDX_LEN + 2) >= 0 ? IDX_LEN + 3 : 1 - (IDX_LEN + 2)) - 1:0] sv2v_cast_5CD0B;
		input logic [((IDX_LEN + 2) >= 0 ? IDX_LEN + 3 : 1 - (IDX_LEN + 2)) - 1:0] inp;
		sv2v_cast_5CD0B = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst) begin
			write_r <= sv2v_cast_5CD0B({sv2v_cast_58D9F('x), 1'bx, 1'bx, 1'd0});
			resetIdx <= 0;
			writeTempReg <= 'x;
		end
		else if (!resetIdx[IDX_LEN]) begin
			pred[resetIdx[IDX_LEN - 1:0]] <= 0;
			hist[resetIdx[IDX_LEN - 1:0]] <= 0;
			resetIdx <= resetIdx + 1;
		end
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
	IN_mispr,
	IN_pcValid,
	OUT_fetchLimit,
	IN_fetchID,
	IN_comFetchID,
	OUT_pc,
	OUT_lastOffs,
	OUT_curRetAddr,
	OUT_lateRetAddr,
	OUT_rIdx,
	OUT_predBr,
	IN_retDecUpd,
	OUT_pcFileRead,
	IN_pcFileRData,
	IN_btUpdates,
	IN_bpUpdate
);
	parameter NUM_IN = 2;
	input wire clk;
	input wire rst;
	input wire en1;
	output wire OUT_stall;
	input logic [48:0] IN_mispr;
	input wire IN_pcValid;
	output logic [5:0] OUT_fetchLimit;
	input logic [4:0] IN_fetchID;
	input logic [4:0] IN_comFetchID;
	output reg [30:0] OUT_pc;
	output logic [2:0] OUT_lastOffs;
	output wire [30:0] OUT_curRetAddr;
	output wire [30:0] OUT_lateRetAddr;
	output logic [4:0] OUT_rIdx;
	output logic [40:0] OUT_predBr;
	input logic [36:0] IN_retDecUpd;
	output logic [5:0] OUT_pcFileRead;
	input logic [34:0] IN_pcFileRData;
	input logic [(NUM_IN * 76) - 1:0] IN_btUpdates;
	input logic [9:0] IN_bpUpdate;
	wire RET_stall;
	assign OUT_stall = RET_stall;
	logic [79:0] bpBackup;
	logic [4:0] RET_idx;
	wire TAGE_altPred;
	logic [3:0] TAGE_tageID;
	logic [63:0] history;
	always_comb begin
		bpBackup[74-:64] = history;
		bpBackup[10-:5] = RET_idx;
		bpBackup[5] = OUT_predBr[5-:2] == 2'd2;
		bpBackup[4] = OUT_predBr[2];
		bpBackup[3-:3] = OUT_predBr[9-:3];
		bpBackup[0] = OUT_predBr[0];
		bpBackup[79-:4] = TAGE_tageID;
		bpBackup[75] = TAGE_altPred;
	end
	logic [79:0] bpFileRData;
	logic [4:0] bpFileRAddr;
	logic bpFileRE;
	RegFile #(
		.WIDTH(80),
		.SIZE(32),
		.NUM_READ(1),
		.NUM_WRITE(1)
	) bpFile(
		.clk(clk),
		.IN_re({bpFileRE}),
		.IN_raddr({bpFileRAddr}),
		.OUT_rdata({bpFileRData}),
		.IN_we(en1),
		.IN_waddr(IN_fetchID),
		.IN_wdata(bpBackup)
	);
	logic [75:0] btUpdate;
	always_comb begin
		btUpdate = 'x;
		btUpdate[0] = 0;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_IN; i = i + 1)
				if (IN_btUpdates[i * 76])
					btUpdate = IN_btUpdates[i * 76+:76];
		end
	end
	logic [30:0] recoveredPC;
	logic [15:0] recovery;
	always_comb begin
		recoveredPC = {IN_pcFileRData[34:7], recovery[8-:3]};
		case (recovery[15-:2])
			2'd3: recoveredPC = recoveredPC - 1;
			2'd2: recoveredPC = recoveredPC;
			2'd1: recoveredPC = recoveredPC + 1;
			2'd0:
				;
		endcase
	end
	wire [30:0] branchAddr = OUT_pc;
	logic [40:0] BTB_br;
	logic [40:0] RET_br;
	wire TAGE_taken;
	reg ignorePred;
	reg [30:0] pcReg;
	reg [30:0] pcRegNoInc;
	always_comb begin
		OUT_predBr = '0;
		OUT_predBr[40-:31] = OUT_curRetAddr;
		OUT_predBr[9-:3] = {3 {1'b1}};
		OUT_pc = pcReg;
		OUT_lastOffs = {3 {1'b1}};
		if (ignorePred) begin
			if (recovery[0] && (recovery[15-:2] != 2'd0))
				OUT_pc = recoveredPC;
		end
		else if (BTB_br[0] && (BTB_br[5-:2] != 2'd3)) begin
			OUT_predBr = BTB_br;
			OUT_predBr[2] = OUT_predBr[2] | TAGE_taken;
			OUT_predBr[3] = !OUT_predBr[2] && BTB_br[3];
			if (OUT_predBr[2]) begin
				OUT_pc = OUT_predBr[40-:31];
				OUT_lastOffs = OUT_predBr[9-:3];
			end
			if (OUT_predBr[3] && (OUT_predBr[9-:3] != {3 {1'b1}})) begin
				OUT_lastOffs = OUT_predBr[9-:3];
				OUT_pc = {pcRegNoInc[30:3], OUT_predBr[9-:3] + 1'b1};
			end
		end
		else if ((BTB_br[0] && (BTB_br[5-:2] == 2'd3)) && RET_br[0]) begin
			OUT_predBr = BTB_br;
			OUT_predBr[2] = 1;
			OUT_predBr[3] = 0;
			OUT_predBr[40-:31] = OUT_curRetAddr;
			OUT_pc = OUT_predBr[40-:31];
			OUT_lastOffs = OUT_predBr[9-:3];
		end
		else begin
			OUT_predBr[0] = 1;
			OUT_predBr[5-:2] = 2'd2;
			OUT_predBr[1] = 1;
			OUT_predBr[2] = TAGE_taken;
		end
	end
	BranchTargetBuffer btb(
		.clk(clk),
		.rst(rst),
		.IN_pcValid(IN_pcValid),
		.IN_pc(OUT_pc),
		.OUT_branch(BTB_br),
		.IN_btUpdate(btUpdate)
	);
	logic [9:0] bpUpdateActive;
	logic [63:0] lookupHistory;
	logic [63:0] updHistory;
	TagePredictor tagePredictor(
		.clk(clk),
		.rst(rst),
		.IN_predValid(IN_pcValid),
		.IN_predAddr(branchAddr),
		.IN_predHistory(lookupHistory),
		.OUT_predTageID(TAGE_tageID),
		.OUT_altPred(TAGE_altPred),
		.OUT_predTaken(TAGE_taken),
		.IN_writeValid(bpUpdateActive[0]),
		.IN_writeAddr(IN_pcFileRData[34-:31]),
		.IN_writeHistory(updHistory),
		.IN_writeTageID(bpFileRData[79-:4]),
		.IN_writeTaken(bpUpdateActive[1]),
		.IN_writeAltPred(bpFileRData[75]),
		.IN_writePred(bpFileRData[4])
	);
	assign OUT_rIdx = RET_idx;
	logic [4:0] recRIdx;
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
		.IN_recoveryIdx(recRIdx),
		.OUT_curIdx(RET_idx),
		.OUT_predBr(RET_br),
		.IN_returnUpd(IN_retDecUpd)
	);
	logic [63:0] recHistory;
	always_comb begin
		recHistory = bpFileRData[74-:64];
		if (bpFileRData[0] && (recovery[8-:3] > bpFileRData[3-:3]))
			recHistory = {recHistory[62:0], bpFileRData[4]};
		if ((recovery[3-:3] == 3'd3) || (recovery[3-:3] == 3'd4))
			recHistory = {recHistory[62:0], recovery[3-:3] == 3'd4};
		if ((recovery[3-:3] == 3'd2) || (recovery[3-:3] == 3'd1))
			recHistory = {recHistory[62:0], recovery[3-:3] == 3'd2};
	end
	always_comb begin
		recRIdx = bpFileRData[10-:5];
		case (recovery[5-:2])
			2'd2: recRIdx = recRIdx - 1;
			2'd1: recRIdx = recRIdx + 1;
			default:
				;
		endcase
	end
	always_comb begin
		lookupHistory = history;
		if (recovery[0])
			lookupHistory = recHistory;
		else if ((OUT_predBr[0] && (OUT_predBr[5-:2] == 2'd2)) && !OUT_predBr[1])
			lookupHistory = {lookupHistory[62:0], OUT_predBr[2]};
	end
	always_comb begin
		updHistory = bpFileRData[74-:64];
		if ((bpFileRData[0] && bpFileRData[5]) && (bpUpdateActive[9-:3] > bpFileRData[3-:3]))
			updHistory = {updHistory[62:0], bpFileRData[4]};
	end
	logic updFIFO_deq;
	logic [9:0] bpUpdate;
	FIFO #(
		.WIDTH(9),
		.NUM(4),
		.FORWARD1(1),
		.FORWARD0(0)
	) updFIFO(
		.clk(clk),
		.rst(rst),
		.IN_valid(IN_bpUpdate[0]),
		.IN_data(IN_bpUpdate[9:1]),
		.OUT_valid(bpUpdate[0]),
		.IN_ready(updFIFO_deq),
		.OUT_data(bpUpdate[9:1])
	);
	function automatic logic [9:0] sv2v_cast_10;
		input logic [9:0] inp;
		sv2v_cast_10 = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst)
			bpUpdateActive <= sv2v_cast_10(10'bxxxxxxxxx0);
		else if (updFIFO_deq)
			bpUpdateActive <= bpUpdate;
		else
			bpUpdateActive <= sv2v_cast_10(10'bxxxxxxxxx0);
	function automatic logic [5:0] sv2v_cast_6;
		input logic [5:0] inp;
		sv2v_cast_6 = inp;
	endfunction
	always_comb begin
		OUT_fetchLimit = sv2v_cast_6(6'bxxxxx0);
		if (bpUpdate[0]) begin
			OUT_fetchLimit[0] = 1;
			OUT_fetchLimit[5-:5] = bpUpdate[6-:5];
		end
		else if (IN_bpUpdate[0]) begin
			OUT_fetchLimit[0] = 1;
			OUT_fetchLimit[5-:5] = IN_bpUpdate[6-:5];
		end
	end
	always_comb begin
		OUT_pcFileRead[5-:5] = 'x;
		OUT_pcFileRead[0] = 0;
		bpFileRAddr = 'x;
		bpFileRE = 0;
		updFIFO_deq = 0;
		if (IN_mispr[0]) begin
			bpFileRAddr = IN_mispr[6-:5];
			bpFileRE = 1;
			if (IN_mispr[47-:2] != 2'd0) begin
				OUT_pcFileRead[5-:5] = IN_mispr[6-:5];
				OUT_pcFileRead[0] = 1;
			end
		end
		else if (bpUpdate[0]) begin
			updFIFO_deq = 1;
			bpFileRAddr = bpUpdate[6-:5];
			bpFileRE = 1;
			OUT_pcFileRead[5-:5] = bpUpdate[6-:5];
			OUT_pcFileRead[0] = 1;
		end
	end
	function automatic logic [15:0] sv2v_cast_16;
		input logic [15:0] inp;
		sv2v_cast_16 = inp;
	endfunction
	function automatic logic [30:0] sv2v_cast_31;
		input logic [30:0] inp;
		sv2v_cast_31 = inp;
	endfunction
	always_ff @(posedge clk) begin
		recovery <= sv2v_cast_16(16'bxxxxxxxxxxxxxxx0);
		if (rst) begin
			pcReg <= sv2v_cast_31(32'h80000000 >> 1);
			ignorePred <= 1;
			history <= 0;
			pcRegNoInc <= 'x;
		end
		else begin
			if (IN_pcValid) begin
				pcReg <= {OUT_pc[30:3] + 1'b1, 3'b000};
				pcRegNoInc <= OUT_pc;
				ignorePred <= 0;
				history <= lookupHistory;
			end
			else if (recovery[0]) begin
				history <= recHistory;
				if (recovery[15-:2] != 2'd0)
					pcReg <= recoveredPC;
			end
			if (IN_mispr[0]) begin
				recovery[0] <= 1;
				recovery[15-:2] <= IN_mispr[47-:2];
				recovery[13-:5] <= IN_mispr[6-:5];
				recovery[5-:2] <= IN_mispr[42-:2];
				recovery[3-:3] <= IN_mispr[40-:3];
				recovery[8-:3] <= IN_mispr[45-:3];
				pcReg <= (IN_mispr[47-:2] == 2'd0 ? IN_mispr[37-:31] : 'x);
				ignorePred <= 1;
			end
		end
	end
endmodule
module BranchSelector (
	clk,
	rst,
	IN_isUOps,
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
	localparam NUM_BRANCH_PORTS = 2;
	input logic [217:0] IN_isUOps;
	input logic [(NUM_BRANCHES * 74) - 1:0] IN_branches;
	output logic [73:0] OUT_branch;
	output reg OUT_PERFC_branchMispr;
	input logic [6:0] IN_ROB_curSqN;
	input logic [6:0] IN_RN_nextSqN;
	input wire IN_mispredFlush;
	logic OUT_PERFC_branchMispr_c;
	logic [73:0] branch_c;
	always_ff @(posedge clk) OUT_branch <= branch_c;
	always_ff @(posedge clk) OUT_PERFC_branchMispr <= OUT_PERFC_branchMispr_c;
	logic [0:0] priorityPort;
	always_ff @(posedge clk) priorityPort <= $signed(IN_isUOps[156-:7] - IN_isUOps[47-:7]) > 0;
	logic [73:0] intPortBranch;
	always_comb if (IN_branches[0] && (!IN_branches[74] || priorityPort))
		intPortBranch = IN_branches[0+:74];
	else
		intPortBranch = IN_branches[74+:74];
	wire logic [147:0] compBranches = {IN_branches[148+:74], intPortBranch};
	always_comb begin
		branch_c = 'x;
		branch_c[6] = 0;
		branch_c[0] = 0;
		OUT_PERFC_branchMispr_c = 0;
		if (compBranches[0] && (!compBranches[74] || ($signed(compBranches[27-:7] - compBranches[101-:7]) < 0))) begin
			branch_c = compBranches[0+:74];
			if (!IN_mispredFlush)
				OUT_PERFC_branchMispr_c = 1;
		end
		else
			branch_c = compBranches[74+:74];
		if (IN_branches[222]) begin
			branch_c = IN_branches[222+:74];
			OUT_PERFC_branchMispr_c = 0;
		end
	end
endmodule
module BranchTargetBuffer (
	clk,
	rst,
	IN_pcValid,
	IN_pc,
	OUT_branch,
	IN_btUpdate
);
	input wire clk;
	input wire rst;
	input wire IN_pcValid;
	input wire [30:0] IN_pc;
	output logic [40:0] OUT_branch;
	input logic [75:0] IN_btUpdate;
	localparam LENGTH = 4096;
	(* ram_style = "block" *) logic [53:0] entries [4095:0];
	(* ram_style = "block" *) logic multiple [4095:0];
	logic [85:0] fetched;
	always_ff @(posedge clk)
		if (IN_pcValid) begin
			fetched[85-:54] <= entries[IN_pc[11:0]];
			fetched[31] <= multiple[IN_pc[11:0]];
			fetched[30-:31] <= IN_pc;
		end
	function automatic logic [40:0] sv2v_cast_41;
		input logic [40:0] inp;
		sv2v_cast_41 = inp;
	endfunction
	always_comb begin
		OUT_branch = sv2v_cast_41(41'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		if ((fetched[82] && (fetched[50-:16] == fetched[12+:16])) && (fetched[34-:3] >= fetched[0+:3])) begin
			OUT_branch[0] = 1;
			OUT_branch[3] = fetched[31];
			OUT_branch[40-:31] = fetched[81-:31];
			OUT_branch[5-:2] = fetched[85-:2];
			OUT_branch[6] = fetched[83];
			OUT_branch[9-:3] = fetched[34-:3];
			OUT_branch[2] = (fetched[85-:2] == 2'd1) || (fetched[85-:2] == 2'd0);
			OUT_branch[1] = 0;
		end
	end
	logic [12:0] setMult;
	logic [12:0] resetIdx;
	function automatic logic [11:0] sv2v_cast_65A20;
		input logic [11:0] inp;
		sv2v_cast_65A20 = inp;
	endfunction
	function automatic logic [12:0] sv2v_cast_E1452;
		input logic [12:0] inp;
		sv2v_cast_E1452 = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst) begin
			setMult <= sv2v_cast_E1452({sv2v_cast_65A20('x), 1'd0});
			resetIdx <= 0;
		end
		else if (!resetIdx[12]) begin
			multiple[resetIdx[11:0]] <= 0;
			entries[resetIdx[11:0]] <= '0;
			resetIdx <= resetIdx + 1;
		end
		else if (IN_btUpdate[0]) begin : sv2v_autoblock_1
			reg [11:0] idx;
			idx = {IN_btUpdate[56:48], IN_btUpdate[11-:3]};
			if (IN_btUpdate[1]) begin
				entries[idx] <= 'x;
				entries[idx][50] <= 0;
			end
			else begin
				if (IN_btUpdate[3]) begin
					setMult[0] <= 1;
					setMult[12-:12] <= idx;
					idx[2:0] = IN_btUpdate[6-:3];
				end
				entries[idx][50] <= 1;
				entries[idx][51] <= IN_btUpdate[2];
				entries[idx][53-:2] <= IN_btUpdate[8-:2];
				entries[idx][49-:31] <= IN_btUpdate[43:13];
				entries[idx][18-:16] <= IN_btUpdate[57+:16];
				entries[idx][2-:3] <= IN_btUpdate[45+:3];
				multiple[idx] <= 0;
			end
		end
		else if (setMult[0]) begin
			multiple[setMult[12-:12]] <= 1;
			setMult <= sv2v_cast_E1452({sv2v_cast_65A20('x), 1'd0});
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
	input logic [73:0] IN_branch;
	input wire IN_uopLdEn;
	output reg OUT_ldStall;
	input logic [100:0] IN_uopLd;
	input wire IN_uopStEn;
	output reg OUT_stStall;
	input logic [183:0] IN_uopSt;
	input wire IN_ldStall;
	output logic [100:0] OUT_uopLd;
	output reg [31:0] OUT_ldData;
	output logic [224:0] OUT_memc;
	input logic [558:0] IN_memc;
	reg [31:0] result;
	logic [100:0] activeLd;
	wire invalidateActiveLd = !((activeLd[2] || !IN_branch[0]) || ($signed(activeLd[11-:7] - IN_branch[27-:7]) <= 0));
	logic [2:0] state;
	always_comb begin
		OUT_stStall = state != 3'd0;
		OUT_ldStall = (state != 3'd0) || (IN_uopSt[0] && !OUT_stStall);
		OUT_uopLd = 'x;
		OUT_uopLd[0] = 0;
		if (state == 3'd5)
			OUT_uopLd = activeLd;
	end
	function automatic logic [100:0] sv2v_cast_101;
		input logic [100:0] inp;
		sv2v_cast_101 = inp;
	endfunction
	function automatic logic [224:0] sv2v_cast_225;
		input logic [224:0] inp;
		sv2v_cast_225 = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst) begin
			activeLd <= sv2v_cast_101(101'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			OUT_memc <= sv2v_cast_225(225'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
			state <= 3'd0;
		end
		else begin
			if (invalidateActiveLd)
				activeLd <= sv2v_cast_101(101'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			case (state)
				default: begin
					state <= 3'd0;
					if ((IN_uopSt[0] && IN_uopStEn) && !OUT_stStall) begin : sv2v_autoblock_1
						reg [1:0] addrLow;
						begin : sv2v_autoblock_2
							integer i;
							for (i = 3; i >= 0; i = i - 1)
								if (IN_uopSt[8 + i] == 1)
									addrLow = i[1:0];
						end
						case (IN_uopSt[11:8])
							4'b0001, 4'b0010, 4'b0100, 4'b1000: OUT_memc[3-:4] <= 4'd7;
							4'b0011, 4'b1100: OUT_memc[3-:4] <= 4'd8;
							4'b1111: OUT_memc[3-:4] <= 4'd9;
							default:
								;
						endcase
						OUT_memc[80-:12] <= 'x;
						OUT_memc[36-:32] <= {IN_uopSt[183:154], addrLow};
						OUT_memc[4] <= 'x;
						OUT_memc[112:81] <= IN_uopSt[55:24];
						state <= 3'd2;
					end
					else if (((IN_uopLd[0] && IN_uopLdEn) && !OUT_ldStall) && ((IN_uopLd[2] || !IN_branch[0]) || ($signed(IN_uopLd[11-:7] - IN_branch[27-:7]) <= 0))) begin
						case (IN_uopLd[34-:2])
							0: OUT_memc[3-:4] <= 4'd4;
							1: OUT_memc[3-:4] <= 4'd5;
							2: OUT_memc[3-:4] <= 4'd6;
							default:
								;
						endcase
						OUT_memc[80-:12] <= 'x;
						OUT_memc[68-:32] <= IN_uopLd[67:36];
						OUT_memc[4] <= 'x;
						state <= 3'd1;
						activeLd <= IN_uopLd;
					end
				end
				3'd1, 3'd2:
					if (!IN_memc[3]) begin
						OUT_memc <= sv2v_cast_225(225'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000);
						state <= (state == 3'd1 ? 3'd3 : 3'd4);
					end
				3'd3:
					if (IN_memc[17]) begin
						state <= 3'd5;
						case (activeLd[34-:2])
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
						activeLd <= 'x;
						activeLd[0] <= 0;
					end
			endcase
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
	output logic OUT_valid;
	output logic [ID_LEN - 1:0] OUT_id;
	output logic [IWIDTH - 1:0] OUT_data;
	output logic OUT_last;
	input wire IN_CACHE_ready;
	output reg OUT_CACHE_ce;
	output reg OUT_CACHE_we;
	output reg [ADDR_BITS - 1:0] OUT_CACHE_addr;
	input wire [CWIDTH - 1:0] IN_CACHE_data;
	output reg OUT_cacheReadValid;
	output reg [ID_LEN - 1:0] OUT_cacheReadId;
	localparam WNUM = IWIDTH / CWIDTH;
	localparam CWIDTH_W_ = CWIDTH / 32;
	function automatic logic signed [LEN_BITS - 1:0] sv2v_cast_2466C_signed;
		input logic signed [LEN_BITS - 1:0] inp;
		sv2v_cast_2466C_signed = inp;
	endfunction
	localparam CWIDTH_W = sv2v_cast_2466C_signed(CWIDTH_W_);
	logic [$clog2(BUF_LEN):0] FIFO_free;
	logic FIFO_valid;
	logic [IWIDTH - 1:0] FIFO_data;
	logic [ID_LEN - 1:0] FIFO_id;
	logic FIFO_last;
	logic FIFO_ready;
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
	logic [((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 0:0] cur;
	logic [((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 0:0] next;
	logic [IWIDTH - 1:0] acc;
	logic [$clog2(WNUM):0] accIdx_r;
	logic [$clog2(WNUM):0] accIdx_c;
	logic doAcc;
	logic [(((32 + ID_LEN) + 2) >= 0 ? (2 * ((32 + ID_LEN) + 3)) - 1 : (2 * (1 - ((32 + ID_LEN) + 2))) + ((32 + ID_LEN) + 1)):(((32 + ID_LEN) + 2) >= 0 ? 0 : (32 + ID_LEN) + 2)] readMetaSR;
	always_comb begin
		accIdx_c = accIdx_r;
		FIFO_valid = 0;
		FIFO_data = 'x;
		FIFO_id = 'x;
		FIFO_last = 'x;
		doAcc = 0;
		if (readMetaSR[(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) + (((32 + ID_LEN) + 2) >= 0 ? 0 : (32 + ID_LEN) + 2)]) begin
			accIdx_c = accIdx_c + 1;
			if (readMetaSR[(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) + (((32 + ID_LEN) + 2) >= 0 ? 2 : (32 + ID_LEN) + 0)]) begin
				FIFO_valid = 1;
				FIFO_data = '0;
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
	always_ff @(posedge clk)
		if (rst)
			accIdx_r <= 0;
		else begin
			accIdx_r <= accIdx_c;
			if (doAcc)
				acc[accIdx_r * CWIDTH+:CWIDTH] <= IN_CACHE_data;
		end
	logic allowNewRead;
	function automatic logic [$clog2(BUF_LEN) - 1:0] sv2v_cast_3E8F8;
		input logic [$clog2(BUF_LEN) - 1:0] inp;
		sv2v_cast_3E8F8 = inp;
	endfunction
	always_comb begin : sv2v_autoblock_1
		logic [$clog2(BUF_LEN):0] inFlight;
		inFlight = sv2v_cast_3E8F8(readMetaSR[(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) + (((32 + ID_LEN) + 2) >= 0 ? 0 : (32 + ID_LEN) + 2)]) + sv2v_cast_3E8F8(readMetaSR[0 + (((32 + ID_LEN) + 2) >= 0 ? 0 : (32 + ID_LEN) + 2)]);
		allowNewRead = (FIFO_free * WNUM) > inFlight;
	end
	logic [(32 + ID_LEN) + 2:0] readMeta;
	function automatic logic [ID_LEN - 1:0] sv2v_cast_52A61;
		input logic [ID_LEN - 1:0] inp;
		sv2v_cast_52A61 = inp;
	endfunction
	function automatic logic [(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) - 1:0] sv2v_cast_5F2A1;
		input logic [(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2)) - 1:0] inp;
		sv2v_cast_5F2A1 = inp;
	endfunction
	always_comb begin
		OUT_CACHE_ce = 1;
		OUT_CACHE_we = 1;
		OUT_CACHE_addr = 'x;
		readMeta = sv2v_cast_5F2A1({32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_52A61('x), 1'bx, 1'bx, 1'd0});
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
	always_comb begin
		OUT_cacheReadValid = 0;
		OUT_cacheReadId = 'x;
		if (readSucc) begin
			OUT_cacheReadValid = 1;
			OUT_cacheReadId = readMeta[ID_LEN + 2-:((ID_LEN + 2) >= 3 ? ID_LEN + 0 : 4 - (ID_LEN + 2))];
		end
	end
	function automatic logic [LEN_BITS - 1:0] sv2v_cast_F41B2;
		input logic [LEN_BITS - 1:0] inp;
		sv2v_cast_F41B2 = inp;
	endfunction
	function automatic logic [ADDR_BITS - 1:0] sv2v_cast_F5DEB;
		input logic [ADDR_BITS - 1:0] inp;
		sv2v_cast_F5DEB = inp;
	endfunction
	function automatic logic [((((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 0) >= 0 ? ((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 1 : 1 - (((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 0)) - 1:0] sv2v_cast_E24E2;
		input logic [((((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 0) >= 0 ? ((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 1 : 1 - (((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 0)) - 1:0] inp;
		sv2v_cast_E24E2 = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst) begin
			cur <= sv2v_cast_E24E2({33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_F41B2('x), sv2v_cast_F41B2('x), sv2v_cast_F5DEB('x), sv2v_cast_52A61('x), 1'd0});
			next <= sv2v_cast_E24E2({33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_F41B2('x), sv2v_cast_F41B2('x), sv2v_cast_F5DEB('x), sv2v_cast_52A61('x), 1'd0});
			readMetaSR <= '0;
		end
		else begin : sv2v_autoblock_2
			logic [((((33 + LEN_BITS) + LEN_BITS) + ADDR_BITS) + ID_LEN) + 0:0] incoming;
			incoming = sv2v_cast_E24E2({33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_F41B2('x), sv2v_cast_F41B2('x), sv2v_cast_F5DEB('x), sv2v_cast_52A61('x), 1'd0});
			if (IN_valid && OUT_ready) begin
				incoming[0] = 1;
				incoming[ID_LEN + 0-:((ID_LEN + 0) >= 1 ? ID_LEN + 0 : 2 - (ID_LEN + 0))] = IN_id;
				incoming[ADDR_BITS + (ID_LEN + 0)-:((ADDR_BITS + (ID_LEN + 0)) >= (ID_LEN + 1) ? ((ADDR_BITS + (ID_LEN + 0)) - (ID_LEN + 1)) + 1 : ((ID_LEN + 1) - (ADDR_BITS + (ID_LEN + 0))) + 1)] = IN_addr;
				incoming[LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))-:((LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))) >= (LEN_BITS + (ADDR_BITS + (ID_LEN + 1))) ? ((LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))) - (LEN_BITS + (ADDR_BITS + (ID_LEN + 1)))) + 1 : ((LEN_BITS + (ADDR_BITS + (ID_LEN + 1))) - (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))) + 1)] = 0;
				incoming[LEN_BITS + (ADDR_BITS + (ID_LEN + 0))-:((LEN_BITS + (ADDR_BITS + (ID_LEN + 0))) >= (ADDR_BITS + (ID_LEN + 1)) ? ((LEN_BITS + (ADDR_BITS + (ID_LEN + 0))) - (ADDR_BITS + (ID_LEN + 1))) + 1 : ((ADDR_BITS + (ID_LEN + 1)) - (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))) + 1)] = IN_len;
				incoming[1 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))] = IN_mmio;
				incoming[33 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))-:((33 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))) >= (1 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 1))))) ? ((33 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0))))) - (1 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 1)))))) + 1 : ((1 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 1))))) - (33 + (LEN_BITS + (LEN_BITS + (ADDR_BITS + (ID_LEN + 0)))))) + 1)] = IN_mmioData;
			end
			readMetaSR <= {readMetaSR[(((32 + ID_LEN) + 2) >= 0 ? 0 : (32 + ID_LEN) + 2) + 0+:(((32 + ID_LEN) + 2) >= 0 ? (32 + ID_LEN) + 3 : 1 - ((32 + ID_LEN) + 2))], (readSucc ? readMeta : '0)};
			if (readSucc)
				if (readMeta[1]) begin
					if (next[0]) begin
						cur <= next;
						next <= sv2v_cast_E24E2({33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_F41B2('x), sv2v_cast_F41B2('x), sv2v_cast_F5DEB('x), sv2v_cast_52A61('x), 1'd0});
					end
					else begin
						cur <= incoming;
						incoming = sv2v_cast_E24E2({33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_F41B2('x), sv2v_cast_F41B2('x), sv2v_cast_F5DEB('x), sv2v_cast_52A61('x), 1'd0});
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
	OUT_CACHE_wm,
	OUT_CACHE_addr,
	OUT_CACHE_data
);
	parameter ADDR_BITS = 10;
	parameter LEN_BITS = 8;
	parameter IWIDTH = 128;
	parameter CWIDTH = 128;
	parameter ID_LEN = 2;
	localparam WNUM = IWIDTH / CWIDTH;
	localparam CNUM = CWIDTH / IWIDTH;
	localparam WIDTH = (CWIDTH > IWIDTH ? CWIDTH : IWIDTH);
	localparam CHUNK_END_I = CWIDTH / IWIDTH;
	function automatic logic signed [$clog2(CHUNK_END_I + 1) - 1:0] sv2v_cast_7EC4C_signed;
		input logic signed [$clog2(CHUNK_END_I + 1) - 1:0] inp;
		sv2v_cast_7EC4C_signed = inp;
	endfunction
	localparam CHUNK_END = sv2v_cast_7EC4C_signed(CHUNK_END_I);
	localparam WM_LEN = (CNUM == 0 ? 1 : CNUM);
	localparam CHUNK_LEN = $clog2(CWIDTH / IWIDTH);
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
	output reg [WM_LEN - 1:0] OUT_CACHE_wm;
	output reg [ADDR_BITS - 1:0] OUT_CACHE_addr;
	output reg [CWIDTH - 1:0] OUT_CACHE_data;
	logic [((((WIDTH + ADDR_BITS) + ($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH))) + ID_LEN) + WM_LEN) + 0:0] cur_r;
	logic [((((WIDTH + ADDR_BITS) + ($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH))) + ID_LEN) + WM_LEN) + 0:0] cur_c;
	wire addrConflict;
	wire [WM_LEN - 1:0] wm_new;
	wire [(CHUNK_LEN == 0 ? 0 : CHUNK_LEN - 1):0] chunkInsertIdx;
	generate
		if (IWIDTH >= CWIDTH) begin : genblk1
			assign wm_new = '1;
			assign addrConflict = 0;
			assign chunkInsertIdx = 0;
			assign OUT_ready = !cur_r[0];
		end
		else begin : genblk1
			assign addrConflict = (cur_r[0] && IN_valid) && (cur_r[(ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) - ((ADDR_BITS - 1) - (ADDR_BITS - 1)):(ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) - ((ADDR_BITS - 1) - CHUNK_LEN)] != IN_addr[ADDR_BITS - 1:CHUNK_LEN]);
			assign wm_new = 1 << IN_addr[0+:$clog2(WM_LEN)];
			assign chunkInsertIdx = IN_addr[0+:$clog2(WM_LEN)];
			assign OUT_ready = !cur_r[0] || !(&cur_r[(ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) - (ADDR_BITS - 1)+:CHUNK_LEN]);
		end
	endgenerate
	logic writeLast;
	logic [ID_LEN - 1:0] writeLastId;
	function automatic logic [(((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) >= (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1))) ? ((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1)))) + 1 : ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1))) - (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))))) + 1) * 1) - 1:0] sv2v_cast_99686;
		input logic [(((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) >= (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1))) ? ((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1)))) + 1 : ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1))) - (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))))) + 1) * 1) - 1:0] inp;
		sv2v_cast_99686 = inp;
	endfunction
	function automatic logic [WIDTH - 1:0] sv2v_cast_099BD;
		input logic [WIDTH - 1:0] inp;
		sv2v_cast_099BD = inp;
	endfunction
	always_comb begin
		writeLast = 0;
		writeLastId = 'x;
		OUT_CACHE_ce = 1;
		OUT_CACHE_we = 'x;
		OUT_CACHE_addr = 'x;
		OUT_CACHE_data = 'x;
		OUT_CACHE_wm = 'x;
		cur_c = cur_r;
		if ((!cur_c[0] && OUT_ready) && IN_valid) begin
			cur_c[0] = 1;
			cur_c[ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))-:((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) >= (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1))) ? ((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1)))) + 1 : ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1))) - (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))))) + 1)] = IN_addr;
			cur_c[(WIDTH + (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))))) - ((WIDTH - 1) - (chunkInsertIdx * IWIDTH))+:IWIDTH] = IN_data;
			cur_c[ID_LEN + (WM_LEN + 0)-:((ID_LEN + (WM_LEN + 0)) >= (WM_LEN + 1) ? ((ID_LEN + (WM_LEN + 0)) - (WM_LEN + 1)) + 1 : ((WM_LEN + 1) - (ID_LEN + (WM_LEN + 0))) + 1)] = IN_id;
			cur_c[($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))-:((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))) >= (ID_LEN + (WM_LEN + 1)) ? ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))) - (ID_LEN + (WM_LEN + 1))) + 1 : ((ID_LEN + (WM_LEN + 1)) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) + 1)] = 0;
			cur_c[WM_LEN + 0-:((WM_LEN + 0) >= 1 ? WM_LEN + 0 : 2 - (WM_LEN + 0))] = cur_c[WM_LEN + 0-:((WM_LEN + 0) >= 1 ? WM_LEN + 0 : 2 - (WM_LEN + 0))] | wm_new;
			if (IWIDTH < CWIDTH) begin
				writeLast = 1;
				writeLastId = cur_c[ID_LEN + (WM_LEN + 0)-:((ID_LEN + (WM_LEN + 0)) >= (WM_LEN + 1) ? ((ID_LEN + (WM_LEN + 0)) - (WM_LEN + 1)) + 1 : ((WM_LEN + 1) - (ID_LEN + (WM_LEN + 0))) + 1)];
			end
		end
		else if (((cur_c[0] && OUT_ready) && IN_valid) && !addrConflict) begin
			cur_c[(WIDTH + (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))))) - ((WIDTH - 1) - (chunkInsertIdx * IWIDTH))+:IWIDTH] = IN_data;
			cur_c[ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))-:((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) >= (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1))) ? ((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1)))) + 1 : ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1))) - (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))))) + 1)] = IN_addr;
			cur_c[WM_LEN + 0-:((WM_LEN + 0) >= 1 ? WM_LEN + 0 : 2 - (WM_LEN + 0))] = cur_c[WM_LEN + 0-:((WM_LEN + 0) >= 1 ? WM_LEN + 0 : 2 - (WM_LEN + 0))] | wm_new;
			if (IWIDTH < CWIDTH) begin
				writeLast = 1;
				writeLastId = cur_c[ID_LEN + (WM_LEN + 0)-:((ID_LEN + (WM_LEN + 0)) >= (WM_LEN + 1) ? ((ID_LEN + (WM_LEN + 0)) - (WM_LEN + 1)) + 1 : ((WM_LEN + 1) - (ID_LEN + (WM_LEN + 0))) + 1)];
			end
		end
		if (((((IWIDTH >= CWIDTH) || &cur_c[(ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) - ((ADDR_BITS - 1) - (CHUNK_LEN == 0 ? 0 : CHUNK_LEN - 1)):(ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) - (ADDR_BITS - 1)]) || addrConflict) && cur_c[0]) && IN_CACHE_ready) begin
			OUT_CACHE_ce = 0;
			OUT_CACHE_we = 0;
			OUT_CACHE_addr = cur_c[ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))-:((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) >= (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1))) ? ((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1)))) + 1 : ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1))) - (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))))) + 1)] + sv2v_cast_99686(cur_c[($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))-:((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))) >= (ID_LEN + (WM_LEN + 1)) ? ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))) - (ID_LEN + (WM_LEN + 1))) + 1 : ((ID_LEN + (WM_LEN + 1)) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) + 1)]);
			OUT_CACHE_data = cur_c[(WIDTH + (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))))) - ((WIDTH - 1) - (cur_c[($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))-:((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))) >= (ID_LEN + (WM_LEN + 1)) ? ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))) - (ID_LEN + (WM_LEN + 1))) + 1 : ((ID_LEN + (WM_LEN + 1)) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) + 1)] * CWIDTH))+:CWIDTH];
			OUT_CACHE_wm = cur_c[WM_LEN + 0-:((WM_LEN + 0) >= 1 ? WM_LEN + 0 : 2 - (WM_LEN + 0))];
			cur_c[($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))-:((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))) >= (ID_LEN + (WM_LEN + 1)) ? ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))) - (ID_LEN + (WM_LEN + 1))) + 1 : ((ID_LEN + (WM_LEN + 1)) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) + 1)] = cur_c[($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))-:((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))) >= (ID_LEN + (WM_LEN + 1)) ? ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))) - (ID_LEN + (WM_LEN + 1))) + 1 : ((ID_LEN + (WM_LEN + 1)) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) + 1)] + 1;
			if (cur_c[($clog2(IWIDTH / CWIDTH) >= 0 ? (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))) - ($clog2(IWIDTH / CWIDTH) - $clog2(IWIDTH / CWIDTH)) : (ID_LEN + (WM_LEN + 1)) - $clog2(IWIDTH / CWIDTH))]) begin
				if (IWIDTH >= CWIDTH) begin
					writeLast = 1;
					writeLastId = cur_c[ID_LEN + (WM_LEN + 0)-:((ID_LEN + (WM_LEN + 0)) >= (WM_LEN + 1) ? ((ID_LEN + (WM_LEN + 0)) - (WM_LEN + 1)) + 1 : ((WM_LEN + 1) - (ID_LEN + (WM_LEN + 0))) + 1)];
				end
				cur_c = 'x;
				cur_c[0] = 0;
			end
		end
		if (addrConflict && IN_valid) begin
			cur_c[0] = 1;
			cur_c[ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))-:((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) >= (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1))) ? ((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1)))) + 1 : ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1))) - (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))))) + 1)] = IN_addr;
			cur_c[WIDTH + (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))))-:((WIDTH + (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))))) >= (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1)))) ? ((WIDTH + (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))))) - (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1))))) + 1 : ((ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 1)))) - (WIDTH + (ADDR_BITS + (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))))) + 1)] = sv2v_cast_099BD(IN_data);
			cur_c[ID_LEN + (WM_LEN + 0)-:((ID_LEN + (WM_LEN + 0)) >= (WM_LEN + 1) ? ((ID_LEN + (WM_LEN + 0)) - (WM_LEN + 1)) + 1 : ((WM_LEN + 1) - (ID_LEN + (WM_LEN + 0))) + 1)] = IN_id;
			cur_c[($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))-:((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))) >= (ID_LEN + (WM_LEN + 1)) ? ((($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0))) - (ID_LEN + (WM_LEN + 1))) + 1 : ((ID_LEN + (WM_LEN + 1)) - (($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) + (ID_LEN + (WM_LEN + 0)))) + 1)] = 0;
			cur_c[WM_LEN + 0-:((WM_LEN + 0) >= 1 ? WM_LEN + 0 : 2 - (WM_LEN + 0))] = cur_c[WM_LEN + 0-:((WM_LEN + 0) >= 1 ? WM_LEN + 0 : 2 - (WM_LEN + 0))] | wm_new;
			if (IWIDTH < CWIDTH) begin
				writeLast = 1;
				writeLastId = cur_c[ID_LEN + (WM_LEN + 0)-:((ID_LEN + (WM_LEN + 0)) >= (WM_LEN + 1) ? ((ID_LEN + (WM_LEN + 0)) - (WM_LEN + 1)) + 1 : ((WM_LEN + 1) - (ID_LEN + (WM_LEN + 0))) + 1)];
			end
		end
	end
	function automatic logic [WIDTH - 1:0] sv2v_cast_7EE0B;
		input logic [WIDTH - 1:0] inp;
		sv2v_cast_7EE0B = inp;
	endfunction
	function automatic logic [ADDR_BITS - 1:0] sv2v_cast_F7E03;
		input logic [ADDR_BITS - 1:0] inp;
		sv2v_cast_F7E03 = inp;
	endfunction
	function automatic logic [($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) - 1:0] sv2v_cast_FA67C;
		input logic [($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH)) - 1:0] inp;
		sv2v_cast_FA67C = inp;
	endfunction
	function automatic logic [ID_LEN - 1:0] sv2v_cast_CAD59;
		input logic [ID_LEN - 1:0] inp;
		sv2v_cast_CAD59 = inp;
	endfunction
	function automatic logic [WM_LEN - 1:0] sv2v_cast_1D394;
		input logic [WM_LEN - 1:0] inp;
		sv2v_cast_1D394 = inp;
	endfunction
	function automatic logic [((((((WIDTH + ADDR_BITS) + ($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH))) + ID_LEN) + WM_LEN) + 0) >= 0 ? ((((WIDTH + ADDR_BITS) + ($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH))) + ID_LEN) + WM_LEN) + 1 : 1 - (((((WIDTH + ADDR_BITS) + ($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH))) + ID_LEN) + WM_LEN) + 0)) - 1:0] sv2v_cast_236EF;
		input logic [((((((WIDTH + ADDR_BITS) + ($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH))) + ID_LEN) + WM_LEN) + 0) >= 0 ? ((((WIDTH + ADDR_BITS) + ($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH))) + ID_LEN) + WM_LEN) + 1 : 1 - (((((WIDTH + ADDR_BITS) + ($clog2(IWIDTH / CWIDTH) >= 0 ? $clog2(IWIDTH / CWIDTH) + 1 : 1 - $clog2(IWIDTH / CWIDTH))) + ID_LEN) + WM_LEN) + 0)) - 1:0] inp;
		sv2v_cast_236EF = inp;
	endfunction
	always_ff @(posedge clk) begin
		OUT_ackValid <= 0;
		OUT_ackId <= 'x;
		if (rst)
			cur_r <= sv2v_cast_236EF({sv2v_cast_7EE0B('x), sv2v_cast_F7E03('x), sv2v_cast_FA67C('x), sv2v_cast_CAD59('x), sv2v_cast_1D394('x), 1'd0});
		else begin
			cur_r <= cur_c;
			if (writeLast) begin
				OUT_ackValid <= 1;
				OUT_ackId <= writeLastId;
			end
		end
	end
endmodule
module Core (
	clk,
	clkx5,
	rst,
	en,
	IN_irq,
	IF_cache,
	IF_ct,
	IF_mmio,
	IF_csr_mmio,
	IF_ict,
	IF_icache,
	OUT_memc,
	IN_memc,
	OUT_dbg
);
	input wire clk;
	input wire clkx5;
	input wire rst;
	input wire en;
	input wire IN_irq;
	IF_Cache.HOST IF_cache;
	IF_CTable.HOST IF_ct;
	IF_MMIO.HOST IF_mmio;
	IF_CSR_MMIO.CSR IF_csr_mmio;
	IF_ICTable.HOST IF_ict;
	IF_ICache.HOST IF_icache;
	output logic [674:0] OUT_memc;
	input logic [558:0] IN_memc;
	output logic [39:0] OUT_dbg;
	logic [224:0] PC_MC_if;
	assign OUT_memc[0+:225] = PC_MC_if;
	logic [224:0] LSU_MC_if;
	assign OUT_memc[225+:225] = LSU_MC_if;
	logic [224:0] BLSU_MC_if;
	assign OUT_memc[450+:225] = BLSU_MC_if;
	wire [31:0] TH_stallPC;
	assign OUT_dbg[39-:32] = TH_stallPC;
	logic [6:0] RN_nextSqN;
	logic [6:0] ROB_maxSqN;
	wire sqNStall = $signed(RN_nextSqN - ROB_maxSqN) > -4;
	assign OUT_dbg[7] = sqNStall;
	assign OUT_dbg[6] = 0;
	wire RN_stall;
	assign OUT_dbg[5] = RN_stall;
	wire LSU_busy;
	wire SQB_busy;
	wire SQ_empty;
	wire STORE_busy = !SQ_empty || SQB_busy;
	wire MEM_busy = STORE_busy || LSU_busy;
	assign OUT_dbg[4] = MEM_busy;
	logic [183:0] SQB_uop;
	assign OUT_dbg[3] = !SQ_empty || SQB_uop[0];
	assign OUT_dbg[2] = 0;
	assign OUT_dbg[1] = 0;
	assign OUT_dbg[0] = 0;
	logic [91:0] comUOps;
	wire TH_disableIFetch;
	wire ifetchEn = en && !TH_disableIFetch;
	localparam NUM_BRANCH_PORTS = 2;
	localparam NUM_BRANCHES = 4;
	localparam LQ_BRANCH_PORT = 2;
	localparam TH_BRANCH_PORT = 3;
	logic [295:0] branchProvs;
	logic [73:0] branch;
	wire mispredFlush;
	wire BS_PERFC_branchMispr;
	localparam NUM_AGUS = 2;
	localparam NUM_ALUS = 3;
	localparam NUM_PORTS = 5;
	logic [544:0] IS_uop;
	logic [6:0] ROB_curSqN;
	BranchSelector #(.NUM_BRANCHES(4)) bsel(
		.clk(clk),
		.rst(rst),
		.IN_isUOps(IS_uop[0+:218]),
		.IN_branches(branchProvs[0+:296]),
		.OUT_branch(branch),
		.OUT_PERFC_branchMispr(BS_PERFC_branchMispr),
		.IN_ROB_curSqN(ROB_curSqN),
		.IN_RN_nextSqN(RN_nextSqN),
		.IN_mispredFlush(mispredFlush)
	);
	logic [227:0] BP_btUpdates;
	logic [11:0] PC_readReq;
	logic [69:0] PC_readData;
	logic [6:0] PC_readReqTH;
	logic [34:0] PC_readDataTH;
	logic [54:0] PC_PW_rq;
	logic [133:0] CSR_trapControl;
	logic [30:0] CSR_vmem;
	logic [439:0] PD_instrs;
	logic [164:0] PW_reqs;
	logic [52:0] PW_res;
	logic [9:0] ROB_bpUpdate;
	logic [4:0] ROB_curFetchID;
	wire TH_clearICache;
	wire TH_flushTLB;
	logic [9:0] decBranch;
	wire SQ_flush;
	wire frontendEn = (!sqNStall && !branch[0]) && !SQ_flush;
	IFetch ifetch(
		.clk(clk),
		.rst(rst),
		.IN_en(ifetchEn),
		.IN_interruptPending(CSR_trapControl[6]),
		.IN_MEM_busy(MEM_busy),
		.IF_ict(IF_ict),
		.IF_icache(IF_icache),
		.IN_ROB_curFetchID(ROB_curFetchID),
		.IN_branch(branch),
		.IN_decBranch(decBranch),
		.IN_clearICache(TH_clearICache),
		.IN_flushTLB(TH_flushTLB),
		.IN_btUpdates(BP_btUpdates[0+:152]),
		.IN_bpUpdate(ROB_bpUpdate),
		.IN_pcRead(PC_readReq),
		.OUT_pcReadData(PC_readData),
		.IN_pcReadTH(PC_readReqTH),
		.OUT_pcReadDataTH(PC_readDataTH),
		.IN_ready(!RN_stall && frontendEn),
		.OUT_instrs(PD_instrs),
		.IN_vmem(CSR_vmem),
		.OUT_pw(PW_reqs[0+:55]),
		.IN_pw(PW_res),
		.OUT_memc(PC_MC_if),
		.IN_memc(IN_memc)
	);
	logic [319:0] DE_uop;
	logic [2:0] CSR_dec;
	InstrDecoder idec(
		.clk(clk),
		.rst(rst),
		.en(!RN_stall && frontendEn),
		.IN_branch(branch),
		.IN_dec(CSR_dec),
		.IN_instrs(PD_instrs),
		.IN_enCustom(1'b1),
		.OUT_uop(DE_uop),
		.OUT_decBranch(decBranch)
	);
	localparam NUM_PORTS_TOTAL = 7;
	logic [515:0] RN_uop;
	logic [7:0] RN_uopOrdering;
	logic [6:0] RN_nextLoadSqN;
	logic [6:0] RN_nextStoreSqN;
	wire [27:0] IQ_stalls;
	logic [139:0] flagUOps;
	Rename #(.WIDTH_WR(NUM_PORTS)) rn(
		.clk(clk),
		.frontEn(frontendEn),
		.rst(rst),
		.IN_stalls(IQ_stalls),
		.OUT_stall(RN_stall),
		.IN_uop(DE_uop),
		.IN_comUOp(comUOps),
		.IN_flagsUOps(flagUOps[0+:100]),
		.IN_branch(branch),
		.IN_mispredFlush(mispredFlush),
		.OUT_uop(RN_uop),
		.OUT_uopOrdering(RN_uopOrdering),
		.OUT_nextSqN(RN_nextSqN),
		.OUT_nextLoadSqN(RN_nextLoadSqN),
		.OUT_nextStoreSqN(RN_nextStoreSqN)
	);
	wire [4:0] stall;
	wire DIV_doNotIssue [4:0];
	wire FDIV_doNotIssue [4:0];
	genvar i;
	logic [6:0] LB_maxLoadSqN;
	logic [6:0] SQ_maxStoreSqN;
	localparam [15:0] FU_AGU_OH = 1 << 4'd3;
	localparam [15:0] FU_ATOMIC_OH = 1 << 4'd10;
	localparam [15:0] FU_BITMANIP_OH = 1 << 4'd2;
	localparam [15:0] FU_BRANCH_OH = 1 << 4'd1;
	localparam [15:0] FU_CSR_OH = 1 << 4'd11;
	localparam [15:0] FU_DIV_OH = 1 << 4'd5;
	localparam [15:0] FU_INT_OH = 1 << 4'd0;
	localparam [15:0] FU_MUL_OH = 1 << 4'd4;
	localparam logic [79:0] PORT_FUS = {FU_AGU_OH | FU_ATOMIC_OH, FU_AGU_OH | FU_ATOMIC_OH, (FU_INT_OH | FU_MUL_OH) | FU_BITMANIP_OH, ((FU_INT_OH | FU_BRANCH_OH) | FU_MUL_OH) | FU_ATOMIC_OH, (((FU_INT_OH | FU_BRANCH_OH) | FU_DIV_OH) | FU_CSR_OH) | FU_ATOMIC_OH};
	localparam logic signed [159:0] PORT_IQ_SIZE = 160'h0000000800000008000000080000000800000008;
	generate
		for (i = 0; i < NUM_PORTS; i = i + 1) begin : genblk1
			IssueQueue #(
				.SIZE(PORT_IQ_SIZE[i * 32+:32]),
				.NUM_ENQUEUE(2),
				.PORT_IDX(i),
				.NUM_OPERANDS((i < NUM_ALUS ? 2 : 1)),
				.NUM_UOPS(4),
				.RESULT_BUS_COUNT(NUM_PORTS),
				.IMM_BITS((i < NUM_ALUS ? 36 : 12)),
				.FUS(PORT_FUS[i * 16+:16])
			) iq(
				.clk(clk),
				.rst(rst),
				.IN_defer((i < NUM_ALUS ? '0 : IQ_stalls[(i + NUM_AGUS) * 4+:4])),
				.OUT_stall(IQ_stalls[i * 4+:4]),
				.IN_stall(stall[i]),
				.IN_doNotIssueDiv((i < NUM_ALUS ? DIV_doNotIssue[i] : 1'b0)),
				.IN_doNotIssueFDiv((i < NUM_ALUS ? FDIV_doNotIssue[i] : 1'b0)),
				.IN_uop(RN_uop),
				.IN_uopOrdering(RN_uopOrdering),
				.IN_flagUOp(flagUOps[0+:100]),
				.IN_branch(branch),
				.IN_issueUOps(IS_uop),
				.IN_maxStoreSqN(SQ_maxStoreSqN),
				.IN_maxLoadSqN(LB_maxLoadSqN),
				.IN_commitSqN(ROB_curSqN),
				.OUT_uop(IS_uop[i * 109+:109])
			);
		end
	endgenerate
	logic [33:0] stLookupUOp;
	wire [1:0] stLookupUOp_ready;
	logic [15:0] stCommitLimit;
	logic [914:0] LD_uop;
	generate
		for (i = 0; i < NUM_AGUS; i = i + 1) begin : genblk2
			StoreDataIQ #(
				.SIZE(8),
				.NUM_ENQUEUE(2),
				.PORT_IDX(i),
				.NUM_UOPS(4),
				.RESULT_BUS_COUNT(NUM_PORTS)
			) iqStD(
				.clk(clk),
				.rst(rst),
				.OUT_stall(IQ_stalls[(NUM_PORTS + i) * 4+:4]),
				.IN_uop(RN_uop),
				.IN_flagUOp(flagUOps[0+:100]),
				.IN_branch(branch),
				.IN_issueUOps(IS_uop),
				.IN_aguUOps(LD_uop[549+:366]),
				.IN_maxStoreSqN(SQ_maxStoreSqN),
				.OUT_comLimit(stCommitLimit[i * 8+:8]),
				.IN_ready(stLookupUOp_ready[i]),
				.OUT_uop(stLookupUOp[i * 17+:17])
			);
		end
	endgenerate
	localparam NUM_RF_WRITES = 5;
	logic [4:0] RF_writeEnable;
	logic [29:0] RF_writeAddress;
	logic [159:0] RF_writeData;
	logic [204:0] resultUOps;
	function automatic logic [5:0] sv2v_cast_6;
		input logic [5:0] inp;
		sv2v_cast_6 = inp;
	endfunction
	always_comb begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < NUM_RF_WRITES; i = i + 1)
			begin
				RF_writeAddress[i * 6+:6] = sv2v_cast_6(resultUOps[(i * 41) + 8-:7]);
				RF_writeData[i * 32+:32] = resultUOps[(i * 41) + 40-:32];
				RF_writeEnable[i] = resultUOps[i * 41] && !resultUOps[(i * 41) + 8];
			end
	end
	localparam NUM_RF_READS = 10;
	logic [69:0] RFMUX_reads;
	logic [9:0] RFMUX_readReady;
	logic [319:0] RFMUX_readData;
	localparam NUM_RF_READS_PHY = 8;
	logic [47:0] RF_readAddress;
	logic [255:0] RF_readDataRaw;
	logic [7:0] RF_readEnable;
	RFReadMux #(
		.VIRT_READS(NUM_RF_READS),
		.PHY_READS(NUM_RF_READS_PHY)
	) rfMux(
		.clk(clk),
		.IN_read(RFMUX_reads),
		.OUT_readReady(RFMUX_readReady),
		.OUT_readData(RFMUX_readData),
		.OUT_readEnable(RF_readEnable),
		.OUT_readAddress(RF_readAddress),
		.IN_readData(RF_readDataRaw)
	);
	RegFileX5 #(
		.WIDTH(32),
		.SIZE(64),
		.NUM_READ(NUM_RF_READS_PHY),
		.NUM_WRITE(NUM_RF_WRITES),
		.ALLOW_COLLISION(1)
	) rf(
		.clk(clk),
		.clkx5(clkx5),
		.rst(rst),
		.IN_re(RF_readEnable),
		.IN_raddr(RF_readAddress),
		.OUT_rdata(RF_readDataRaw),
		.IN_we(RF_writeEnable),
		.IN_waddr(RF_writeAddress),
		.IN_wdata(RF_writeData)
	);
	logic [119:0] LD_zcFwd;
	Load #(
		.NUM_UOPS(NUM_PORTS),
		.NUM_WBS(NUM_PORTS),
		.NUM_ZC_FWDS(NUM_ALUS),
		.NUM_PC_READS(NUM_BRANCH_PORTS)
	) ld(
		.clk(clk),
		.rst(rst),
		.IN_uop(IS_uop),
		.IN_resultUOps(resultUOps[0+:205]),
		.IN_branch(branch),
		.IN_stall(stall),
		.IN_zcFwd(LD_zcFwd),
		.OUT_pcRead(PC_readReq),
		.IN_pcReadData(PC_readData),
		.OUT_rfReadReq(RFMUX_reads[0+:56]),
		.IN_rfReadData(RFMUX_readData[0+:256]),
		.OUT_uop(LD_uop)
	);
	logic [140:0] SDL_amoData;
	logic [79:0] SDL_stDataUOp;
	StoreDataLoad #(.WIDTH(NUM_AGUS)) stDataLd(
		.clk(clk),
		.rst(rst),
		.IN_branch(branch),
		.IN_uop(stLookupUOp),
		.OUT_ready(stLookupUOp_ready),
		.IN_atomicUOp(SDL_amoData[0+:94]),
		.OUT_readReq(RFMUX_reads[56+:14]),
		.IN_readReady(RFMUX_readReady[9-:NUM_AGUS]),
		.IN_readData(RFMUX_readData[256+:64]),
		.OUT_uop(SDL_stDataUOp)
	);
	wire [2:0] CSR_fRoundMode;
	wire [4:0] ROB_fpNewFlags;
	logic [12:0] ROB_perfcInfo;
	logic [71:0] TH_trapInfo;
	logic [31:0] TVS_tvalState;
	localparam [15:0] FU_FDIV_OH = 1 << 4'd8;
	localparam [15:0] FU_FMUL_OH = 1 << 4'd7;
	localparam [15:0] FU_FPU_OH = 1 << 4'd6;
	function automatic logic [51:0] sv2v_cast_52;
		input logic [51:0] inp;
		sv2v_cast_52 = inp;
	endfunction
	generate
		for (i = 0; i < NUM_ALUS; i = i + 1) begin : intPortsGen
			logic [831:0] resUOps;
			assign stall[i] = 1'b0;
			if ((PORT_FUS[i * 16+:16] & (((FU_INT_OH | FU_BRANCH_OH) | FU_BITMANIP_OH) | FU_ATOMIC_OH)) != 0) begin : genblk1
				logic [73:0] ialuBranch;
				IntALU #(.FUS(PORT_FUS[i * 16+:16] & (((FU_INT_OH | FU_BRANCH_OH) | FU_BITMANIP_OH) | FU_ATOMIC_OH))) ialu(
					.clk(clk),
					.rst(rst),
					.IN_uop(LD_uop[i * 183+:183]),
					.IN_branch(branch),
					.OUT_branch(ialuBranch),
					.OUT_btUpdate(BP_btUpdates[i * 76+:76]),
					.OUT_zcFwd(LD_zcFwd[i * 40+:40]),
					.OUT_amoData(SDL_amoData[i * 47+:47]),
					.OUT_uop(resUOps[4'd0 * 52+:52])
				);
				if (i < NUM_BRANCH_PORTS) begin : genblk1
					assign branchProvs[i * 74+:74] = ialuBranch;
				end
			end
			if ((PORT_FUS[i * 16+:16] & FU_DIV_OH) != 0) begin : genblk2
				wire DIV_busy;
				Divide div(
					.clk(clk),
					.rst(rst),
					.en(LD_uop[(i * 183) + 5-:4] == 4'd5),
					.OUT_busy(DIV_busy),
					.IN_branch(branch),
					.IN_uop(LD_uop[i * 183+:183]),
					.OUT_uop(resUOps[4'd5 * 52+:52])
				);
				assign DIV_doNotIssue[i] = (DIV_busy || (LD_uop[i * 183] && (LD_uop[(i * 183) + 5-:4] == 4'd5))) || (IS_uop[i * 109] && (IS_uop[(i * 109) + 5-:4] == 4'd5));
			end
			else begin : genblk2
				assign DIV_doNotIssue[i] = 1'b1;
			end
			if ((PORT_FUS[i * 16+:16] & FU_FPU_OH) != 0) begin : genblk3
				FPU fpu(
					.clk(clk),
					.rst(rst),
					.en(LD_uop[(i * 183) + 5-:4] == 4'd6),
					.IN_branch(branch),
					.IN_uop(LD_uop[i * 183+:183]),
					.IN_fRoundMode(CSR_fRoundMode),
					.OUT_uop(resUOps[4'd6 * 52+:52])
				);
			end
			if ((PORT_FUS[i * 16+:16] & FU_MUL_OH) != 0) begin : genblk4
				Multiply mul(
					.clk(clk),
					.rst(rst),
					.en(LD_uop[(i * 183) + 5-:4] == 4'd4),
					.IN_branch(branch),
					.IN_uop(LD_uop[i * 183+:183]),
					.OUT_uop(resUOps[4'd4 * 52+:52])
				);
			end
			if ((PORT_FUS[i * 16+:16] & FU_FMUL_OH) != 0) begin : genblk5
				FMul fmul(
					.clk(clk),
					.rst(rst),
					.en(LD_uop[(i * 183) + 5-:4] == 4'd7),
					.IN_branch(branch),
					.IN_uop(LD_uop[i * 183+:183]),
					.IN_fRoundMode(CSR_fRoundMode),
					.OUT_uop(resUOps[4'd7 * 52+:52])
				);
			end
			if ((PORT_FUS[i * 16+:16] & FU_FDIV_OH) != 0) begin : genblk6
				wire FDIV_busy;
				FDiv fdiv(
					.clk(clk),
					.rst(rst),
					.en(LD_uop[(i * 183) + 5-:4] == 4'd8),
					.IN_wbAvail(1'b1),
					.OUT_busy(FDIV_busy),
					.IN_branch(branch),
					.IN_uop(LD_uop[i * 183+:183]),
					.IN_fRoundMode(CSR_fRoundMode),
					.OUT_uop(resUOps[4'd8 * 52+:52])
				);
				assign FDIV_doNotIssue[i] = (FDIV_busy || (LD_uop[i * 183] && (LD_uop[(i * 183) + 5-:4] == 4'd8))) || (IS_uop[i * 109] && (IS_uop[(i * 109) + 5-:4] == 4'd8));
			end
			else begin : genblk6
				assign FDIV_doNotIssue[i] = 1;
			end
			if ((PORT_FUS[i * 16+:16] & FU_CSR_OH) != 0) begin : genblk7
				CSR csr(
					.clk(clk),
					.rst(rst),
					.en(LD_uop[(i * 183) + 5-:4] == 4'd11),
					.IN_irq(IN_irq),
					.IN_uop(LD_uop[i * 183+:183]),
					.IN_branch(branch),
					.IN_fpNewFlags(ROB_fpNewFlags),
					.IN_perfcInfo(ROB_perfcInfo),
					.IN_branchMispr(BS_PERFC_branchMispr),
					.IF_mmio(IF_csr_mmio),
					.IN_tvalState(TVS_tvalState),
					.IN_trapInfo(TH_trapInfo),
					.OUT_trapControl(CSR_trapControl),
					.OUT_fRoundMode(CSR_fRoundMode),
					.OUT_dec(CSR_dec),
					.OUT_vmem(CSR_vmem),
					.OUT_uop(resUOps[4'd11 * 52+:52])
				);
			end
			logic [51:0] wbUOp;
			always_comb begin
				wbUOp = sv2v_cast_52(52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				begin : sv2v_autoblock_2
					integer j;
					for (j = 0; j < 16; j = j + 1)
						if (((PORT_FUS[i * 16+:16] & (1 << j)) != 0) && resUOps[j * 52])
							wbUOp = resUOps[j * 52+:52];
				end
			end
			ResultFlagsSplit wbUOpSplit(
				.IN_uop(wbUOp),
				.OUT_flagsUOp(flagUOps[i * 20+:20]),
				.OUT_resultUOp(resultUOps[i * 41+:41])
			);
		end
	endgenerate
	logic [79:0] TVS_tvalProvs;
	TValSelect #(.NUM_TVAL_PROVS(NUM_AGUS)) tvalSelect(
		.clk(clk),
		.rst(rst),
		.IN_branch(branch),
		.IN_commitSqN(ROB_curSqN),
		.IN_tvalProvs(TVS_tvalProvs),
		.OUT_tvalState(TVS_tvalState)
	);
	wire [1:0] CC_PW_LD_stall;
	logic [65:0] PW_LD_uop;
	function automatic logic [32:0] sv2v_cast_33;
		input logic [32:0] inp;
		sv2v_cast_33 = inp;
	endfunction
	generate
		for (i = 1; i < NUM_AGUS; i = i + 1) begin : genblk4
			assign PW_LD_uop[i * 33+:33] = sv2v_cast_33(33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		end
	endgenerate
	logic [85:0] LSU_ldAck;
	PageWalker #(.NUM_RQS(3)) pageWalker(
		.clk(clk),
		.rst(rst),
		.IN_rqs(PW_reqs),
		.OUT_res(PW_res),
		.IN_ldStall(CC_PW_LD_stall[0]),
		.OUT_ldUOp(PW_LD_uop[0+:33]),
		.IN_ldAck(LSU_ldAck),
		.IN_ldResUOp(resultUOps[123+:82])
	);
	wire [1:0] LS_AGULD_uopStall;
	logic [201:0] LS_uopLd;
	wire [1:0] CC_loadStall;
	logic [201:0] LB_uopLd;
	LoadSelector loadSelector(
		.IN_aguLd(LB_uopLd),
		.OUT_aguLdStall(LS_AGULD_uopStall),
		.IN_pwLd(PW_LD_uop),
		.OUT_pwLdStall(CC_PW_LD_stall),
		.IN_ldUOpStall(CC_loadStall),
		.OUT_ldUOp(LS_uopLd)
	);
	logic [41:0] TLB_rqs;
	logic [55:0] TLB_res;
	TLB #(
		.NUM_RQ(NUM_AGUS),
		.SIZE(8),
		.ASSOC(4)
	) dtlb(
		.clk(clk),
		.rst(rst),
		.clear(TH_flushTLB),
		.IN_pw(PW_res),
		.IN_rqs(TLB_rqs),
		.OUT_res(TLB_res)
	);
	logic [163:0] AGU_uop;
	logic [25:0] AGU_eLdUOp;
	wire [1:0] LSU_AGUStall;
	generate
		for (i = 0; i < NUM_AGUS; i = i + 1) begin : aguPortsGen
			AGU #(.RQ_ID(1 + i)) agu(
				.clk(clk),
				.rst(rst),
				.IN_stall(LSU_AGUStall[i]),
				.OUT_stall(stall[NUM_ALUS + i]),
				.IN_branch(branch),
				.IN_vmem(CSR_vmem),
				.OUT_pw(PW_reqs[(i + 1) * 55+:55]),
				.IN_pw(PW_res),
				.OUT_tvalProv(TVS_tvalProvs[i * 40+:40]),
				.OUT_tlb(TLB_rqs[i * 21+:21]),
				.IN_tlb(TLB_res[i * 28+:28]),
				.IN_uop(LD_uop[(NUM_ALUS + i) * 183+:183]),
				.OUT_aguOp(AGU_uop[i * 82+:82]),
				.OUT_eldOp(AGU_eLdUOp[i * 13+:13]),
				.OUT_uop(flagUOps[(5 + i) * 20+:20])
			);
		end
	endgenerate
	logic [201:0] LB_aguUOpLd;
	logic [7:0] LB_ldComLimit;
	logic [6:0] ROB_comLoadSqN;
	wire SQ_done;
	LoadBuffer lb(
		.clk(clk),
		.rst(rst),
		.IN_memc(IN_memc),
		.IN_LSU_memc(LSU_MC_if),
		.IN_comLoadSqN(ROB_comLoadSqN),
		.IN_comSqN(ROB_curSqN),
		.IN_stall(LS_AGULD_uopStall),
		.IN_uop(AGU_uop),
		.IN_ldAck(LSU_ldAck),
		.IN_SQ_done(SQ_done),
		.OUT_uopAGULd(LB_aguUOpLd),
		.OUT_uopLd(LB_uopLd),
		.IN_branch(branch),
		.OUT_branch(branchProvs[148+:74]),
		.OUT_maxLoadSqN(LB_maxLoadSqN),
		.OUT_comLimit(LB_ldComLimit)
	);
	logic [75:0] SQ_fwd;
	logic [75:0] SQB_fwd;
	localparam SQ_DEQ_PORTS = 2;
	logic [139:0] SQ_uops;
	wire [1:0] SQ_stall;
	logic [201:0] CC_SQ_uopLd;
	logic [6:0] ROB_comStoreSqN;
	StoreQueue #(.NUM_OUT(SQ_DEQ_PORTS)) sq(
		.clk(clk),
		.rst(rst),
		.OUT_empty(SQ_empty),
		.OUT_done(SQ_done),
		.IN_uopLd(CC_SQ_uopLd),
		.OUT_fwd(SQ_fwd),
		.IN_uopSt(AGU_uop),
		.IN_rnUOp(RN_uop),
		.IN_stDataUOp(SDL_stDataUOp),
		.IN_curSqN(ROB_curSqN),
		.IN_comStSqN(ROB_comStoreSqN),
		.IN_branch(branch),
		.OUT_uop(SQ_uops),
		.IN_stall(SQ_stall),
		.OUT_flush(SQ_flush),
		.OUT_maxStoreSqN(SQ_maxStoreSqN)
	);
	wire CC_storeStall;
	logic [182:0] LSU_stAck;
	StoreQueueBackend #(.NUM_IN(SQ_DEQ_PORTS)) sqb(
		.clk(clk),
		.rst(rst),
		.OUT_busy(SQB_busy),
		.IN_uopLd(CC_SQ_uopLd),
		.OUT_fwd(SQB_fwd),
		.IN_uop(SQ_uops),
		.OUT_stall(SQ_stall),
		.IN_stallSt(CC_storeStall),
		.OUT_uopSt(SQB_uop),
		.IN_stAck(LSU_stAck)
	);
	wire TH_startFence;
	LoadStoreUnit lsu(
		.clk(clk),
		.rst(rst),
		.IN_flush(TH_startFence),
		.IN_storeBusy(STORE_busy),
		.OUT_busy(LSU_busy),
		.IN_branch(branch),
		.OUT_ldAGUStall(LSU_AGUStall),
		.OUT_ldStall(CC_loadStall),
		.OUT_stStall(CC_storeStall),
		.IN_uopELd(AGU_eLdUOp),
		.IN_aguLd(LB_aguUOpLd),
		.IN_uopLd(LS_uopLd),
		.OUT_uopLdSq(CC_SQ_uopLd),
		.OUT_ldAck(LSU_ldAck),
		.IN_uopSt(SQB_uop),
		.IF_cache(IF_cache),
		.IF_mmio(IF_mmio),
		.IF_ct(IF_ct),
		.IN_sqStFwd(SQ_fwd),
		.IN_sqbStFwd(SQB_fwd),
		.OUT_stAck(LSU_stAck),
		.OUT_memc(LSU_MC_if),
		.OUT_BLSU_memc(BLSU_MC_if),
		.IN_memc(IN_memc),
		.IN_ready({NUM_AGUS {1'b1}}),
		.OUT_resultUOp(resultUOps[123+:82]),
		.OUT_flagsUOp(flagUOps[60+:40])
	);
	logic [47:0] ROB_trapUOp;
	ROB rob(
		.clk(clk),
		.rst(rst),
		.IN_uop(RN_uop),
		.IN_flagUOps(flagUOps),
		.IN_interruptPending(CSR_trapControl[6]),
		.OUT_perfcInfo(ROB_perfcInfo),
		.IN_branch(branch),
		.IN_stComLimit(stCommitLimit),
		.IN_ldComLimit(LB_ldComLimit),
		.OUT_maxSqN(ROB_maxSqN),
		.OUT_curSqN(ROB_curSqN),
		.OUT_lastLoadSqN(ROB_comLoadSqN),
		.OUT_lastStoreSqN(ROB_comStoreSqN),
		.OUT_comUOp(comUOps),
		.OUT_fpNewFlags(ROB_fpNewFlags),
		.OUT_curFetchID(ROB_curFetchID),
		.OUT_trapUOp(ROB_trapUOp),
		.OUT_bpUpdate(ROB_bpUpdate),
		.OUT_mispredFlush(mispredFlush)
	);
	TrapHandler trapHandler(
		.clk(clk),
		.rst(rst),
		.IN_trapInstr(ROB_trapUOp),
		.OUT_pcRead(PC_readReqTH),
		.IN_pcReadData(PC_readDataTH),
		.IN_trapControl(CSR_trapControl),
		.OUT_trapInfo(TH_trapInfo),
		.OUT_branch(branchProvs[222+:74]),
		.IN_MEM_busy(MEM_busy),
		.OUT_flushTLB(TH_flushTLB),
		.OUT_fence(TH_startFence),
		.OUT_clearICache(TH_clearICache),
		.OUT_disableIFetch(TH_disableIFetch),
		.OUT_dbgStallPC(TH_stallPC)
	);
endmodule
module CSR (
	clk,
	rst,
	en,
	IN_irq,
	IN_uop,
	IN_branch,
	IN_fpNewFlags,
	IN_perfcInfo,
	IN_branchMispr,
	IF_mmio,
	IN_tvalState,
	IN_trapInfo,
	OUT_trapControl,
	OUT_fRoundMode,
	OUT_dec,
	OUT_vmem,
	OUT_uop
);
	parameter NUM_FLOAT_FLAG_UPD = 2;
	input wire clk;
	input wire rst;
	input wire en;
	input wire IN_irq;
	input logic [182:0] IN_uop;
	input logic [73:0] IN_branch;
	input wire [4:0] IN_fpNewFlags;
	input logic [12:0] IN_perfcInfo;
	input wire IN_branchMispr;
	IF_CSR_MMIO.CSR IF_mmio;
	input logic [31:0] IN_tvalState;
	input logic [71:0] IN_trapInfo;
	output logic [133:0] OUT_trapControl;
	output wire [2:0] OUT_fRoundMode;
	output logic [2:0] OUT_dec;
	output logic [30:0] OUT_vmem;
	output logic [51:0] OUT_uop;
	localparam NUM_PERFC = 17;
	logic [1:0] priv;
	reg [4:0] fflags;
	reg [2:0] frm;
	reg [63:0] mcycle;
	reg [63:0] minstret;
	reg [63:0] mhpmcounter [16:0];
	logic [31:0] mstatus;
	logic [31:0] mtvec;
	logic [31:0] stvec;
	reg [31:0] mscratch;
	reg [31:0] mepc;
	reg [31:0] mcause;
	reg [31:0] mtval;
	reg [15:0] medeleg;
	reg [15:0] mideleg;
	reg [15:0] mip;
	reg [15:0] mie;
	reg [31:0] mcounteren;
	reg [31:0] mcountinhibit;
	logic [31:0] menvcfg;
	logic [31:0] senvcfg;
	reg [31:0] scounteren;
	reg [31:0] sepc;
	reg [31:0] sscratch;
	reg [31:0] scause;
	reg [31:0] stval;
	reg misa_X;
	logic [31:0] satp;
	reg [30:0] retvec;
	reg interrupt;
	logic [4:0] interruptCause;
	reg interruptDelegate;
	always_comb begin : sv2v_autoblock_1
		logic [23:0] mPrio;
		logic [11:0] sPrio;
		mPrio = 24'h51973b;
		sPrio = 12'h519;
		interruptCause = 0;
		interrupt = 0;
		interruptDelegate = 0;
		if ((priv < 2'd1) || (mstatus[1] && (priv == 2'd1))) begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < 3; i = i + 1)
				if (mip[sPrio[(i * 4) + 3-:4]] && mie[sPrio[(i * 4) + 3-:4]]) begin
					interrupt = 1;
					interruptCause = {1'b0, sPrio[i * 4+:4]};
					interruptDelegate = 1;
				end
		end
		if ((priv < 2'd3) || mstatus[3]) begin : sv2v_autoblock_3
			integer i;
			for (i = 0; i < 6; i = i + 1)
				if ((mip[mPrio[(i * 4) + 3-:4]] && mie[mPrio[(i * 4) + 3-:4]]) && !mideleg[mPrio[(i * 4) + 3-:4]]) begin
					interrupt = 1;
					interruptCause = {1'b0, mPrio[i * 4+:4]};
					interruptDelegate = 0;
				end
		end
	end
	assign OUT_trapControl[72] = mtvec[0];
	assign OUT_trapControl[102-:30] = mtvec[31-:30];
	assign OUT_trapControl[41] = stvec[0];
	assign OUT_trapControl[71-:30] = stvec[31-:30];
	assign OUT_trapControl[133-:31] = retvec;
	assign OUT_trapControl[24-:16] = mideleg;
	assign OUT_trapControl[40-:16] = medeleg;
	assign OUT_trapControl[8-:2] = priv;
	assign OUT_trapControl[6] = interrupt;
	assign OUT_trapControl[5-:5] = interruptCause;
	assign OUT_trapControl[0] = interruptDelegate;
	assign OUT_fRoundMode = frm;
	assign OUT_dec[1] = (priv == 2'd3) || ((priv == 2'd1) && !mstatus[21]);
	assign OUT_dec[2] = misa_X;
	assign OUT_dec[0] = !mstatus[20];
	logic [30:0] vmem_c;
	always_comb begin : sv2v_autoblock_4
		logic [1:0] epm;
		epm = (mstatus[17] ? mstatus[12-:2] : priv);
		vmem_c[28-:22] = satp[21-:22];
		vmem_c[29] = satp[31] && (priv != 2'd3);
		vmem_c[30] = satp[31];
		vmem_c[1-:2] = epm;
		vmem_c[6] = mstatus[19];
		vmem_c[5] = 0;
		if (epm == 2'd3) begin
			vmem_c[29] = 0;
			vmem_c[30] = 0;
		end
		else if (epm == 2'd1)
			vmem_c[5] = mstatus[18];
		vmem_c[2] = !(((priv != 2'd3) && !menvcfg[6]) || ((priv == 2'd0) && !senvcfg[6]));
		if (((priv != 2'd3) && (menvcfg[5-:2] == 0)) || ((priv == 2'd0) && (senvcfg[5-:2] == 0)))
			vmem_c[4-:2] = 0;
		else if (((priv != 2'd3) && (menvcfg[5-:2] == 1)) || ((priv == 2'd0) && (senvcfg[5-:2] == 1)))
			vmem_c[4-:2] = 1;
		else
			vmem_c[4-:2] = 3;
	end
	always_ff @(posedge clk) OUT_vmem <= vmem_c;
	reg [31:0] rdata;
	reg invalidCSR;
	function automatic logic [11:0] sv2v_cast_12;
		input logic [11:0] inp;
		sv2v_cast_12 = inp;
	endfunction
	always_comb begin : sv2v_autoblock_5
		logic [31:0] temp;
		temp = 0;
		invalidCSR = 0;
		rdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
		case (IN_uop[57:46])
			12'hc01, 12'hc81: begin
				invalidCSR = !(((priv == 2'd3) || ((priv == 2'd1) && mcounteren[1])) || (((priv == 2'd0) && mcounteren[1]) && scounteren[1]));
				rdata = (IN_uop[57:46] == 12'hc01 ? IF_mmio.mtime[31:0] : IF_mmio.mtime[63:32]);
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
			12'h301: rdata = 32'b01000000000101000001000100000101 | {8'b00000000, misa_X, 23'b00000000000000000000000};
			12'hf12: rdata = 32'h50087502;
			12'hf13: rdata = 32'h50087532;
			12'h300: rdata = mstatus;
			12'hb00: rdata = mcycle[31:0];
			12'hb80: rdata = mcycle[63:32];
			12'hb02: rdata = minstret[31:0];
			12'hb82: rdata = minstret[63:32];
			12'h306: rdata = mcounteren;
			12'h320: rdata = mcountinhibit;
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
			12'h106: rdata = scounteren;
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
			12'h180: begin
				invalidCSR = mstatus[20];
				rdata = satp;
			end
			12'h10a: rdata = senvcfg;
			12'h323: rdata = 3;
			12'h324: rdata = 4;
			12'h325: rdata = 5;
			12'hcc0: rdata = 32'h0088980f;
			12'h31a, 12'hf11, 12'hf15, 12'h310, 12'hf14, 12'h7a0, 12'h7a1, 12'h7a2, 12'h7a3, 12'h7a8: rdata = 0;
			12'hc06, 12'hc07, 12'd3080, 12'd3081, 12'd3082, 12'd3083, 12'd3084, 12'd3085, 12'd3086, 12'd3087, 12'd3088, 12'd3089, 12'd3090, 12'd3091, 12'd3092, 12'd3093, 12'd3094, 12'd3095, 12'd3096, 12'd3097, 12'd3098, 12'd3099, 12'd3100, 12'd3101, 12'd3102, 12'hc1f, 12'hc86, 12'hc87, 12'd3208, 12'd3209, 12'd3210, 12'd3211, 12'd3212, 12'd3213, 12'd3214, 12'd3215, 12'd3216, 12'd3217, 12'd3218, 12'd3219, 12'd3220, 12'd3221, 12'd3222, 12'd3223, 12'd3224, 12'd3225, 12'd3226, 12'd3227, 12'd3228, 12'd3229, 12'd3230, 12'hc9f, 12'd2822, 12'd2823, 12'd2824, 12'd2825, 12'd2826, 12'd2827, 12'd2828, 12'd2829, 12'd2830, 12'd2831, 12'd2832, 12'd2833, 12'd2834, 12'd2835, 12'd2836, 12'd2837, 12'd2838, 12'd2839, 12'd2840, 12'd2841, 12'd2842, 12'd2843, 12'd2844, 12'd2845, 12'd2846, 12'hb1f, 12'd2950, 12'd2951, 12'd2952, 12'd2953, 12'd2954, 12'd2955, 12'd2956, 12'd2957, 12'd2958, 12'd2959, 12'd2960, 12'd2961, 12'd2962, 12'd2963, 12'd2964, 12'd2965, 12'd2966, 12'd2967, 12'd2968, 12'd2969, 12'd2970, 12'd2971, 12'd2972, 12'd2973, 12'd2974, 12'hb9f, 12'h326, 12'h327, 12'h328, 12'h329, 12'h32a, 12'h32b, 12'h32c, 12'h32d, 12'h32e, 12'h32f, 12'h330, 12'h331, 12'h332, 12'h333, 12'h334, 12'h335, 12'h336, 12'h337, 12'h338, 12'h339, 12'h33a, 12'h33b, 12'h33c, 12'h33d, 12'h33e, 12'h33f: rdata = 0;
			default: invalidCSR = 1;
		endcase
		begin : sv2v_autoblock_6
			integer i;
			for (i = 3; i < NUM_PERFC; i = i + 1)
				begin : sv2v_autoblock_7
					logic [11:0] hpm;
					logic [11:0] hpmh;
					logic [11:0] mhpm;
					logic [11:0] mhpmh;
					hpm = 12'hc00 + sv2v_cast_12(i);
					hpmh = 12'hc80 + sv2v_cast_12(i);
					mhpm = 12'hb00 + sv2v_cast_12(i);
					mhpmh = 12'hb80 + sv2v_cast_12(i);
					if ((IN_uop[57:46] == mhpm) || (IN_uop[57:46] == mhpmh)) begin
						rdata = (IN_uop[57:46] == mhpm ? mhpmcounter[i][31:0] : mhpmcounter[i][63:32]);
						invalidCSR = 0;
					end
					else if ((IN_uop[57:46] == hpm) || (IN_uop[57:46] == hpmh)) begin
						invalidCSR = !(((priv == 2'd3) || ((priv == 2'd1) && mcounteren[i])) || (((priv == 2'd0) && mcounteren[i]) && scounteren[i]));
						rdata = (IN_uop[57:46] == hpm ? mhpmcounter[i][31:0] : mhpmcounter[i][63:32]);
					end
				end
		end
	end
	function automatic logic [29:0] sv2v_cast_30;
		input logic [29:0] inp;
		sv2v_cast_30 = inp;
	endfunction
	function automatic logic [63:0] sv2v_cast_64;
		input logic [63:0] inp;
		sv2v_cast_64 = inp;
	endfunction
	function automatic logic [1:0] sv2v_cast_2;
		input logic [1:0] inp;
		sv2v_cast_2 = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst) begin
			priv <= 2'd3;
			fflags <= 0;
			frm <= 0;
			mstatus <= 0;
			mcycle <= 0;
			minstret <= 0;
			mcounteren <= 0;
			mcountinhibit <= 0;
			mtvec[31-:30] <= sv2v_cast_30(32'h80000000 >> 2);
			mtvec[1-:2] <= 0;
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
			stvec[31-:30] <= sv2v_cast_30(32'h80000000 >> 2);
			stvec[1-:2] <= 0;
			satp <= 0;
			senvcfg <= 0;
			begin : sv2v_autoblock_8
				integer i;
				for (i = 0; i < NUM_PERFC; i = i + 1)
					mhpmcounter[i] <= 0;
			end
			OUT_uop <= 'x;
			OUT_uop[0] <= 0;
			misa_X <= 1;
		end
		else begin
			if (IN_trapInfo[0]) begin : sv2v_autoblock_9
				reg [31:0] tval;
				tval = 0;
				if (!IN_trapInfo[7])
					case (IN_trapInfo[6-:5])
						5'd12, 5'd1: tval = IN_trapInfo[39-:32];
						5'd3: tval = IN_trapInfo[71-:32];
						5'd4, 5'd5, 5'd13, 5'd6, 5'd7, 5'd15: tval = IN_tvalState[31-:32];
						default:
							;
					endcase
				if (IN_trapInfo[1]) begin
					mstatus[5] <= mstatus[1];
					mstatus[1] <= 0;
					mstatus[8] <= priv[0];
					sepc <= IN_trapInfo[71-:32];
					scause[0+:5] <= IN_trapInfo[6-:5];
					scause[31] <= IN_trapInfo[7];
					stval <= tval;
					priv <= 2'd1;
				end
				else begin
					mstatus[7] <= mstatus[3];
					mstatus[3] <= 0;
					mstatus[12-:2] <= priv;
					mepc <= IN_trapInfo[71-:32];
					mcause[0+:5] <= IN_trapInfo[6-:5];
					mcause[4] <= 0;
					mcause[31] <= IN_trapInfo[7];
					mtval <= tval;
					priv <= 2'd3;
				end
			end
			fflags <= fflags | IN_fpNewFlags;
			if (!mcountinhibit[0])
				mcycle <= mcycle + 1;
			mip[7] <= IF_mmio.mtime >= IF_mmio.mtimecmp;
			mip[11] <= IN_irq;
			if (!mcountinhibit[2]) begin : sv2v_autoblock_10
				reg [2:0] temp;
				temp = 0;
				begin : sv2v_autoblock_11
					integer i;
					for (i = 0; i < 4; i = i + 1)
						if (IN_perfcInfo[0 + i])
							temp = temp + 1;
				end
				minstret <= minstret + {61'b0000000000000000000000000000000000000000000000000000000000000, temp};
			end
			if (!mcountinhibit[3]) begin : sv2v_autoblock_12
				reg [2:0] temp;
				temp = 0;
				begin : sv2v_autoblock_13
					integer i;
					for (i = 0; i < 4; i = i + 1)
						if (IN_perfcInfo[4 + i])
							temp = temp + 1;
				end
				mhpmcounter[3] <= mhpmcounter[3] + {61'b0000000000000000000000000000000000000000000000000000000000000, temp};
			end
			if (!mcountinhibit[4] && IN_branchMispr)
				mhpmcounter[4] <= mhpmcounter[4] + 1;
			if (!mcountinhibit[5] && IN_branch[0])
				mhpmcounter[5] <= mhpmcounter[5] + 1;
			if (IN_branch[0] && !mcountinhibit[6 + IN_branch[73-:3]])
				mhpmcounter[6 + IN_branch[73-:3]] <= mhpmcounter[6 + IN_branch[73-:3]] + 1;
			if (IN_perfcInfo[10-:3] != 3'd0)
				mhpmcounter[11 + IN_perfcInfo[10-:3]] <= (mhpmcounter[11 + IN_perfcInfo[10-:3]] + sv2v_cast_64(IN_perfcInfo[12-:2])) + 1;
			if ((en && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[32-:7] - IN_branch[27-:7]) <= 0))) begin
				OUT_uop[0] <= 1;
				OUT_uop[1] <= 0;
				OUT_uop[5-:4] <= 4'd0;
				OUT_uop[12-:7] <= IN_uop[32-:7];
				OUT_uop[19-:7] <= IN_uop[39-:7];
				if ((IN_uop[45-:6] == 6'd8) || (IN_uop[45-:6] == 6'd7)) begin
					OUT_uop[5-:4] <= 4'd14;
					if (IN_uop[45-:6] == 6'd8) begin
						if (priv < 2'd3)
							OUT_uop[5-:4] <= 4'd6;
						else begin
							mstatus[3] <= mstatus[7];
							mstatus[7] <= 1;
							priv <= mstatus[12-:2];
							mstatus[12-:2] <= 2'd0;
							if (mstatus[12-:2] != 2'd3)
								mstatus[17] <= 0;
							retvec <= mepc[31:1];
						end
					end
					else if ((priv < 2'd1) || ((IN_uop[45-:6] == 6'd7) && (mstatus[22] == 1)))
						OUT_uop[5-:4] <= 4'd6;
					else begin
						mstatus[1] <= mstatus[5];
						mstatus[5] <= 1;
						priv <= sv2v_cast_2({1'b0, mstatus[8]});
						mstatus[8] <= 1'b0;
						mstatus[17] <= 0;
						retvec <= sepc[31:1];
					end
				end
				else if (($unsigned(priv) < IN_uop[55:54]) || invalidCSR)
					OUT_uop[5-:4] <= 4'd6;
				else begin
					if (IN_uop[45-:6] != 6'd0) begin : sv2v_autoblock_14
						reg [31:0] wdata;
						case (IN_uop[57:46])
							12'h001, 12'h002, 12'h003, 12'h100, 12'h104, 12'h106, 12'h10a, 12'h144, 12'h180, 12'h300, 12'h301, 12'h303, 12'h304, 12'h306, 12'h310, 12'h344, 12'h30a: OUT_uop[5-:4] <= 4'd5;
							default:
								;
						endcase
						if (IN_uop[57:56] == 2'b11)
							OUT_uop[5-:4] <= 4'd6;
						else begin
							case (IN_uop[45-:6])
								6'd1: wdata = IN_uop[182-:32];
								6'd4: wdata = {27'b000000000000000000000000000, IN_uop[62:58]};
								6'd2: wdata = rdata | IN_uop[182-:32];
								6'd5: wdata = rdata | {27'b000000000000000000000000000, IN_uop[62:58]};
								6'd3: wdata = rdata & ~IN_uop[182-:32];
								6'd6: wdata = rdata & ~{27'b000000000000000000000000000, IN_uop[62:58]};
								default:
									;
							endcase
							begin : sv2v_autoblock_15
								integer i;
								for (i = 3; i <= 11; i = i + 1)
									begin
										if (IN_uop[57:46] == (sv2v_cast_12(i) + 12'hb00))
											mhpmcounter[i][31:0] <= wdata;
										if (IN_uop[57:46] == (sv2v_cast_12(i) + 12'hb80))
											mhpmcounter[i][63:32] <= wdata;
									end
							end
							case (IN_uop[57:46])
								12'h300: begin : sv2v_autoblock_16
									logic [31:0] temp;
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
									mstatus[14-:2] <= temp[14-:2];
									mstatus[31] <= |temp[14-:2];
								end
								12'hb00: mcycle[31:0] <= wdata;
								12'hb80: mcycle[63:32] <= wdata;
								12'hb02: minstret[31:0] <= wdata;
								12'hb82: minstret[63:32] <= wdata;
								12'h306: mcounteren[31:0] <= wdata[31:0];
								12'h320: mcountinhibit <= wdata;
								12'h305: mtvec[31-:30] <= wdata[31:2];
								12'h30a: begin : sv2v_autoblock_17
									logic [31:0] temp;
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
								12'h301: misa_X <= wdata[23];
								12'h100: begin : sv2v_autoblock_18
									logic [31:0] temp;
									temp = wdata;
									mstatus[19] <= temp[19];
									mstatus[18] <= temp[18];
									mstatus[1] <= temp[1];
									mstatus[5] <= temp[5];
									mstatus[8] <= temp[8];
								end
								12'h106: scounteren[31:0] <= wdata[31:0];
								12'h141: sepc[31:1] <= wdata[31:1];
								12'h140: sscratch <= wdata;
								12'h142: begin
									scause[0+:5] <= wdata[0+:5];
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
								12'h10a: begin : sv2v_autoblock_19
									logic [31:0] temp;
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
					if (!IN_uop[39])
						OUT_uop[51-:32] <= rdata;
				end
			end
			else
				OUT_uop[0] <= 0;
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
	input logic [73:0] IN_branch;
	input logic [182:0] IN_uop;
	output logic [51:0] OUT_uop;
	logic [182:0] uop;
	reg [5:0] cnt;
	reg [64:0] r;
	reg [31:0] d;
	reg invert;
	wire [32:0] d_inv = -{1'b0, d};
	wire [31:0] q = r[31:0];
	reg running;
	assign OUT_busy = running && ((cnt != 0) && (cnt != 63));
	function automatic logic [182:0] sv2v_cast_183;
		input logic [182:0] inp;
		sv2v_cast_183 = inp;
	endfunction
	always_ff @(posedge clk) begin
		running <= 0;
		OUT_uop <= 'x;
		OUT_uop[0] <= 0;
		if (rst) begin
			uop <= sv2v_cast_183(183'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			cnt <= 'x;
			invert <= 'x;
			r <= 'x;
			d <= 'x;
		end
		else if ((en && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[32-:7] - IN_branch[27-:7]) <= 0))) begin
			running <= 1;
			uop <= IN_uop;
			cnt <= 31;
			if (IN_uop[45-:6] == 6'd0) begin
				invert <= (IN_uop[182] ^ IN_uop[150]) && (IN_uop[150-:32] != 0);
				r <= {33'b000000000000000000000000000000000, (IN_uop[182] ? -IN_uop[182-:32] : IN_uop[182-:32])};
				d <= (IN_uop[150] ? -IN_uop[150-:32] : IN_uop[150-:32]);
			end
			else if (IN_uop[45-:6] == 6'd2) begin
				invert <= IN_uop[182];
				r <= {33'b000000000000000000000000000000000, (IN_uop[182] ? -IN_uop[182-:32] : IN_uop[182-:32])};
				d <= (IN_uop[150] ? -IN_uop[150-:32] : IN_uop[150-:32]);
			end
			else begin
				invert <= 0;
				r <= {33'b000000000000000000000000000000000, IN_uop[182-:32]};
				d <= IN_uop[150-:32];
			end
			OUT_uop[0] <= 0;
		end
		else if (running)
			if (IN_branch[0] && ($signed(IN_branch[27-:7] - uop[32-:7]) < 0)) begin
				running <= 0;
				uop[0] <= 0;
				OUT_uop[0] <= 0;
			end
			else if (cnt != 63) begin
				running <= 1;
				r <= (r << 1) + {(r[64] ? {1'b0, d} : d_inv), 31'b0000000000000000000000000000000, !r[64]};
				cnt <= cnt - 1;
				OUT_uop[0] <= 0;
			end
			else begin : sv2v_autoblock_1
				reg [31:0] qRestored;
				reg [31:0] remainder;
				qRestored = (q - ~q) - (r[64] ? 1 : 0);
				remainder = (r[64] ? r[63:32] + d : r[63:32]);
				running <= 0;
				OUT_uop[12-:7] <= uop[32-:7];
				OUT_uop[19-:7] <= uop[39-:7];
				OUT_uop[1] <= 0;
				OUT_uop[5-:4] <= 4'd0;
				OUT_uop[0] <= 1;
				if ((uop[45-:6] == 6'd2) || (uop[45-:6] == 6'd3))
					OUT_uop[51-:32] <= (invert ? -remainder : remainder);
				else
					OUT_uop[51-:32] <= (invert ? -qRestored : qRestored);
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
	input logic [73:0] IN_branch;
	input logic [182:0] IN_uop;
	input wire [2:0] IN_fRoundMode;
	output logic [51:0] OUT_uop;
	wire [2:0] rm = (IN_uop[45:43] == 3'b111 ? IN_fRoundMode : IN_uop[45:43]);
	wire [32:0] srcArec;
	wire [32:0] srcBrec;
	fNToRecFN #(
		8,
		24
	) recA(
		.in(IN_uop[182-:32]),
		.out(srcArec)
	);
	fNToRecFN #(
		8,
		24
	) recB(
		.in(IN_uop[150-:32]),
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
		.inValid((en && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[32-:7] - IN_branch[27-:7]) <= 0))),
		.sqrtOp(IN_uop[40]),
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
	function automatic logic [51:0] sv2v_cast_52;
		input logic [51:0] inp;
		sv2v_cast_52 = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst) begin
			OUT_uop <= sv2v_cast_52(52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			running <= 0;
		end
		else if (((!running && en) && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[32-:7] - IN_branch[27-:7]) <= 0))) begin
			OUT_uop[19-:7] <= IN_uop[39-:7];
			OUT_uop[12-:7] <= IN_uop[32-:7];
			OUT_uop[1] <= 0;
			if (rm >= 3'b101)
				OUT_uop[5-:4] <= 4'd6;
			running <= 1;
		end
		else if ((running && outValid) && (!IN_branch[0] || ($signed(OUT_uop[12-:7] - IN_branch[27-:7]) <= 0))) begin
			OUT_uop[0] <= 1;
			OUT_uop[51-:32] <= fpResult;
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
	input logic clk;
	input logic rst;
	output logic [$clog2(NUM):0] free;
	input logic IN_valid;
	input logic [WIDTH - 1:0] IN_data;
	output logic OUT_ready;
	output logic OUT_valid;
	input logic IN_ready;
	output logic [WIDTH - 1:0] OUT_data;
	logic [WIDTH - 1:0] mem [NUM - 1:0];
	logic [$clog2(NUM) - 1:0] indexIn;
	logic [$clog2(NUM) - 1:0] indexOut;
	logic fullCond;
	wire equal = indexIn == indexOut;
	wire empty = !fullCond && equal;
	wire full = fullCond && equal;
	logic outValidReg;
	wire outputReady = !outValidReg || IN_ready;
	wire doExtract = !empty && outputReady;
	wire doInsert = IN_valid && OUT_ready;
	assign OUT_ready = !full || doExtract;
	always_comb if (empty)
		free = NUM;
	else
		free = (indexOut - indexIn) % NUM;
	logic [WIDTH - 1:0] outDataReg;
	logic combPassthru;
	always_comb begin
		OUT_valid = outValidReg;
		OUT_data = outDataReg;
		combPassthru = 0;
		if ((!OUT_valid && empty) && FORWARD0) begin
			OUT_valid = IN_valid;
			OUT_data = IN_data;
			combPassthru = 1;
		end
	end
	always_ff @(posedge clk)
		if (rst) begin
			fullCond <= 0;
			indexIn <= 0;
			indexOut <= 0;
			outDataReg <= '0;
			outValidReg <= 0;
		end
		else begin
			if (outputReady)
				outDataReg <= 'x;
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
	input logic [73:0] IN_branch;
	input logic [182:0] IN_uop;
	input wire [2:0] IN_fRoundMode;
	output logic [51:0] OUT_uop;
	wire [32:0] srcArec;
	wire [32:0] srcBrec;
	fNToRecFN #(
		8,
		24
	) recA(
		.in(IN_uop[182-:32]),
		.out(srcArec)
	);
	fNToRecFN #(
		8,
		24
	) recB(
		.in(IN_uop[150-:32]),
		.out(srcBrec)
	);
	wire [2:0] rm = (IN_uop[45:43] == 3'b111 ? IN_fRoundMode : IN_uop[45:43]);
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
		OUT_uop <= 'x;
		OUT_uop[0] <= 0;
		if (((!rst && en) && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[32-:7] - IN_branch[27-:7]) <= 0))) begin
			OUT_uop[19-:7] <= IN_uop[39-:7];
			OUT_uop[12-:7] <= IN_uop[32-:7];
			OUT_uop[0] <= 1;
			OUT_uop[51-:32] <= fpResult;
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
	input logic [73:0] IN_branch;
	input logic [182:0] IN_uop;
	input wire [2:0] IN_fRoundMode;
	output logic [51:0] OUT_uop;
	wire [32:0] srcArec;
	wire [32:0] srcBrec;
	fNToRecFN #(
		8,
		24
	) recA(
		.in(IN_uop[182-:32]),
		.out(srcArec)
	);
	fNToRecFN #(
		8,
		24
	) recB(
		.in(IN_uop[150-:32]),
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
		.signaling((IN_uop[45-:6] == 6'd42) || (IN_uop[45-:6] == 6'd41)),
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
		.signedOut(IN_uop[42:40] == 3'd2),
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
		.signedIn(IN_uop[42:40] == 3'd4),
		.in(IN_uop[182-:32]),
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
		.subOp(IN_uop[42:40] == 3'd1),
		.a(srcArec),
		.b(srcBrec),
		.roundingMode(rm),
		.out(addSub),
		.exceptionFlags(addSubFlags)
	);
	reg [32:0] recResult;
	always_comb case (IN_uop[42:40])
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
	wire srcAIsNaN = (IN_uop[181:174] == 8'hff) && (IN_uop[173:151] != 0);
	wire srcBIsNaN = (IN_uop[149:142] == 8'hff) && (IN_uop[141:119] != 0);
	wire minChooseA = (srcBIsNaN || lessThan) || ((equal && IN_uop[182]) && !IN_uop[150]);
	wire maxChooseA = (srcBIsNaN || greaterThan) || ((equal && !IN_uop[182]) && IN_uop[150]);
	wire minMaxCanonicalNaN = srcAIsNaN && srcBIsNaN;
	always @(posedge clk) begin
		OUT_uop <= 'x;
		OUT_uop[0] <= 0;
		if (((!rst && en) && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[32-:7] - IN_branch[27-:7]) <= 0))) begin : sv2v_autoblock_1
			reg [4:0] except;
			except = 0;
			OUT_uop[19-:7] <= IN_uop[39-:7];
			OUT_uop[12-:7] <= IN_uop[32-:7];
			OUT_uop[0] <= 1;
			OUT_uop[1] <= 0;
			if (IN_uop[45:43] == 3'b101)
				case (IN_uop[45-:6])
					6'b101000: begin
						OUT_uop[51-:32] <= {31'b0000000000000000000000000000000, equal};
						except = compareFlags;
					end
					6'd41: begin
						OUT_uop[51-:32] <= {31'b0000000000000000000000000000000, equal || lessThan};
						except = compareFlags;
					end
					6'd42: begin
						OUT_uop[51-:32] <= {31'b0000000000000000000000000000000, lessThan};
						except = compareFlags;
					end
					6'd43: begin
						if (minMaxCanonicalNaN)
							OUT_uop[51-:32] <= 32'h7fc00000;
						else if (minChooseA)
							OUT_uop[51-:32] <= IN_uop[182-:32];
						else
							OUT_uop[51-:32] <= IN_uop[150-:32];
						except = compareFlags;
					end
					6'd44: begin
						if (minMaxCanonicalNaN)
							OUT_uop[51-:32] <= 32'h7fc00000;
						else if (maxChooseA)
							OUT_uop[51-:32] <= IN_uop[182-:32];
						else
							OUT_uop[51-:32] <= IN_uop[150-:32];
						except = compareFlags;
					end
					default:
						;
				endcase
			else
				case (IN_uop[42:40])
					3'd0, 3'd1: begin
						except = addSubFlags;
						OUT_uop[51-:32] <= fpResult;
					end
					3'd5, 3'd4: begin
						except = fromIntFlags;
						OUT_uop[51-:32] <= fpResult;
					end
					3'd2, 3'd3: begin
						except = {intFlags[2] | intFlags[1], 3'b000, intFlags[0]};
						OUT_uop[51-:32] <= toInt;
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
			if ((IN_uop[45:43] == 3'b111) && (IN_fRoundMode >= 3'b101))
				OUT_uop[5-:4] <= 4'd6;
		end
	end
endmodule
module IFetchPipeline (
	clk,
	rst,
	IN_MEM_busy,
	IN_mispr,
	IN_misprFetchID,
	IN_ROB_curFetchID,
	IN_BP_fetchLimit,
	IN_ifetchOp,
	OUT_stall,
	IN_predBranch,
	IN_rIdx,
	IN_lastValid,
	OUT_bpFileWE,
	OUT_bpFileAddr,
	OUT_pcFileWE,
	OUT_pcFileAddr,
	OUT_pcFileEntry,
	OUT_fetchBranch,
	OUT_btUpdate,
	OUT_retUpdate,
	IN_lateRetAddr,
	IF_icache,
	IF_ict,
	IN_ready,
	OUT_instrs,
	IN_clearICache,
	IN_flushTLB,
	IN_vmem,
	OUT_pw,
	IN_pw,
	OUT_memc,
	IN_memc
);
	parameter ASSOC = 4;
	parameter NUM_ICACHE_LINES = 256;
	parameter RQ_ID = 0;
	parameter FIFO_SIZE = 4;
	input logic clk;
	input logic rst;
	input wire IN_MEM_busy;
	input logic IN_mispr;
	input logic [4:0] IN_misprFetchID;
	input logic [4:0] IN_ROB_curFetchID;
	input logic [5:0] IN_BP_fetchLimit;
	input logic [119:0] IN_ifetchOp;
	output logic OUT_stall;
	input logic [40:0] IN_predBranch;
	input logic [4:0] IN_rIdx;
	input logic [2:0] IN_lastValid;
	output logic OUT_bpFileWE;
	output logic [4:0] OUT_bpFileAddr;
	output logic OUT_pcFileWE;
	output logic [4:0] OUT_pcFileAddr;
	output logic [34:0] OUT_pcFileEntry;
	output logic [48:0] OUT_fetchBranch;
	output logic [75:0] OUT_btUpdate;
	output logic [36:0] OUT_retUpdate;
	input wire [30:0] IN_lateRetAddr;
	IF_ICache.HOST IF_icache;
	IF_ICTable.HOST IF_ict;
	input logic IN_ready;
	output logic [439:0] OUT_instrs;
	input wire IN_clearICache;
	input wire IN_flushTLB;
	input logic [30:0] IN_vmem;
	output logic [54:0] OUT_pw;
	input logic [52:0] IN_pw;
	output logic [224:0] OUT_memc;
	input logic [558:0] IN_memc;
	function automatic logic [1:0] CheckTransfersIF;
		input logic [224:0] memcReq;
		input logic [558:0] memcRes;
		input logic [0:0] cacheID;
		input logic [31:0] addr;
		input logic isStore;
		logic [1:0] rv;
		begin
			rv = 0;
			begin : sv2v_autoblock_1
				integer i;
				for (i = 0; i < 4; i = i + 1)
					if ((memcRes[62 + (i * 84)] && (memcRes[62 + ((i * 84) + 2)] == cacheID)) && (memcRes[62 + ((i * 84) + 51)-:26] == addr[31:6])) begin
						rv[0] = 1;
						rv[1] = memcRes[62 + ((i * 84) + 7)-:3] > ({1'b0, addr[5:4]} - {1'b0, memcRes[62 + ((i * 84) + 25)-:2]});
					end
			end
			if ((((memcReq[3-:4] == 4'd1) || (memcReq[3-:4] == 4'd3)) && (memcReq[68:43] == addr[31:6])) && (memcReq[4] == cacheID))
				rv = 2'b01;
			CheckTransfersIF = rv;
		end
	endfunction
	localparam NUM_INST = 8;
	logic BH_endOffsetValid;
	logic [2:0] BH_endOffset;
	logic BH_newPredTaken;
	logic [2:0] BH_newPredPos;
	logic [48:0] BH_decBranch;
	logic [2:0] assocHit;
	wire [127:0] assocHitInstrs = IF_icache.rdata[assocHit[2-:2]];
	logic [119:0] fetch1;
	localparam FETCH_WORDS = 8;
	logic [204:0] packet;
	BranchHandler #(.NUM_INST(NUM_INST)) branchHandler(
		.clk(clk),
		.rst(rst),
		.IN_clear(IN_mispr),
		.IN_accept(packet[0]),
		.IN_op(fetch1),
		.IN_instrs(assocHitInstrs),
		.OUT_decBranch(BH_decBranch),
		.OUT_btUpdate(OUT_btUpdate),
		.OUT_retUpdate(OUT_retUpdate),
		.OUT_endOffsValid(BH_endOffsetValid),
		.OUT_endOffs(BH_endOffset),
		.OUT_newPredTaken(BH_newPredTaken),
		.OUT_newPredPos(BH_newPredPos)
	);
	wire IA_ready;
	logic [204:0] FIFO_out;
	InstrAligner #(
		.NUM_PACKETS(NUM_INST),
		.NUM_INSTRS(4)
	) instrAligner(
		.clk(clk),
		.rst(rst),
		.IN_clear(IN_mispr),
		.IN_accept(1'b1),
		.OUT_ready(IA_ready),
		.IN_op(FIFO_out),
		.IN_ready(IN_ready),
		.OUT_instr(OUT_instrs)
	);
	logic [204:0] packetRePred;
	always_ff @(posedge clk) begin
		OUT_pcFileWE <= 0;
		OUT_pcFileEntry <= 'x;
		OUT_pcFileAddr <= 'x;
		if (rst)
			;
		else if (fetch1[0]) begin
			OUT_pcFileWE <= 1;
			OUT_pcFileAddr <= fetch1[87-:5];
			OUT_pcFileEntry[34-:31] <= fetch1[119:89];
			OUT_pcFileEntry[3-:3] <= packetRePred[163-:3];
			OUT_pcFileEntry[-0] <= packetRePred[160];
		end
	end
	logic [119:0] fetch0;
	logic [4:0] fetchID;
	always_comb begin
		OUT_bpFileWE = fetch0[0];
		OUT_bpFileAddr = fetchID;
	end
	wire logic [4:0] fetchLimit = (IN_BP_fetchLimit[0] ? IN_BP_fetchLimit[5-:5] : IN_ROB_curFetchID);
	wire [$clog2(FIFO_SIZE):0] FIFO_free;
	logic [1:0] flushState;
	function automatic logic [$clog2(FIFO_SIZE) - 1:0] sv2v_cast_6BFFB;
		input logic [$clog2(FIFO_SIZE) - 1:0] inp;
		sv2v_cast_6BFFB = inp;
	endfunction
	function automatic logic [4:0] sv2v_cast_5;
		input logic [4:0] inp;
		sv2v_cast_5 = inp;
	endfunction
	always_comb begin
		OUT_stall = 0;
		if (IN_pw[1] && (IN_pw[3-:2] == RQ_ID))
			OUT_stall = 1;
		if ($signed(((FIFO_free - sv2v_cast_6BFFB(fetch0[0])) - sv2v_cast_6BFFB(fetch1[0])) - 1) <= -1)
			OUT_stall = 1;
		if (fetchLimit == (fetchID + sv2v_cast_5(fetch0[0])))
			OUT_stall = 1;
		if (flushState != 2'd0)
			OUT_stall = 1;
		if (IF_icache.busy)
			OUT_stall = 1;
	end
	always_comb begin
		IF_icache.re = 0;
		IF_icache.raddr = 'x;
		IF_ict.re = 0;
		IF_ict.raddr = 'x;
		if (IN_ifetchOp[0] && !OUT_stall) begin
			IF_icache.re = 1;
			IF_icache.raddr = IN_ifetchOp[99:88];
			IF_ict.re = 1;
			IF_ict.raddr = IN_ifetchOp[99:88];
		end
	end
	logic [20:0] TLB_req;
	always_comb begin
		TLB_req[20-:20] = fetch0[119:100];
		TLB_req[0] = fetch0[0];
	end
	logic [27:0] TLB_res_c;
	logic [27:0] TLB_res;
	TLB #(
		.NUM_RQ(1),
		.SIZE(8),
		.ASSOC(4),
		.IS_IFETCH(1)
	) itlb(
		.clk(clk),
		.rst(rst),
		.clear(IN_clearICache || IN_flushTLB),
		.IN_pw(IN_pw),
		.IN_rqs({TLB_req}),
		.OUT_res({TLB_res_c})
	);
	always_ff @(posedge clk) TLB_res <= TLB_res_c;
	logic [1:0] assocCnt;
	logic cacheHit;
	logic cacheMiss;
	logic doCacheLoad;
	logic [31:0] phyPC;
	logic pageFault;
	logic tlbMiss;
	always_comb begin
		phyPC = 'x;
		pageFault = 0;
		tlbMiss = 0;
		if ((fetch1[0] && (fetch1[82-:2] == 2'd0)) && IN_vmem[29]) begin
			if (TLB_res[0]) begin
				if (((TLB_res[7] || !TLB_res[3]) || ((IN_vmem[1-:2] == 2'd0) && !TLB_res[1])) || (((IN_vmem[1-:2] == 2'd1) && TLB_res[1]) && !IN_vmem[5]))
					pageFault = 1;
				else
					phyPC = {(TLB_res[2] ? {TLB_res[27:18], fetch1[109:100]} : TLB_res[27-:20]), fetch1[99:88]};
			end
			else
				tlbMiss = 1;
		end
		else
			phyPC = fetch1[119-:32];
	end
	logic [3:0] assocHitUnary_c;
	always_comb begin : sv2v_autoblock_2
		integer i;
		for (i = 0; i < 4; i = i + 1)
			assocHitUnary_c[i] = IF_ict.rdata[i].valid && (IF_ict.rdata[i].addr == phyPC[31:12]);
	end
	OHEncoder #(
		.LEN(4),
		.ALLOW_NULL(1)
	) assocEnc(
		.IN_idxOH(assocHitUnary_c),
		.OUT_idx(assocHit[2-:2]),
		.OUT_valid(assocHit[0])
	);
	function automatic logic [127:0] sv2v_cast_693CF;
		input logic [127:0] inp;
		sv2v_cast_693CF = inp;
	endfunction
	function automatic logic [204:0] sv2v_cast_7E2FC;
		input logic [204:0] inp;
		sv2v_cast_7E2FC = inp;
	endfunction
	always_comb begin : sv2v_autoblock_3
		logic transferExists;
		logic allowPassThru;
		transferExists = 'x;
		allowPassThru = 'x;
		packet = sv2v_cast_7E2FC({76'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_693CF('x), 1'd0});
		packet[171-:2] = fetch1[82-:2];
		cacheHit = 0;
		cacheMiss = 0;
		doCacheLoad = 1;
		if (fetch1[0]) begin
			if (pageFault)
				packet[171-:2] = 2'd3;
			if (!tlbMiss && (packet[171-:2] == 2'd0))
				if (!(((phyPC >= 32'h80000000) && (phyPC < 32'h90000000)) || ((phyPC < 32'h80000000) && (phyPC >= 32'h10000000))) || (phyPC < 32'h80000000))
					packet[171-:2] = 2'd2;
			if (!tlbMiss && (packet[171-:2] == 2'd0)) begin
				if (assocHit[0]) begin
					cacheHit = 1;
					doCacheLoad = 0;
					packet[128-:128] = assocHitInstrs;
				end
				{allowPassThru, transferExists} = CheckTransfersIF(OUT_memc, IN_memc, 1, phyPC, 0);
				if (transferExists) begin
					doCacheLoad = 0;
					cacheHit = cacheHit & allowPassThru;
				end
				cacheMiss = !cacheHit;
			end
			if (packet[171-:2] != 2'd0) begin
				packet[204-:28] = fetch1[119:92];
				packet[169-:3] = fetch1[89+:3];
				packet[166-:3] = fetch1[89+:3];
				packet[163-:3] = {3 {1'b1}};
				packet[160] = 0;
				packet[159-:31] = 'x;
				packet[176-:5] = fetch1[87-:5];
				packet[128-:128] = '0;
				packet[0] = 1;
			end
			else if (!tlbMiss && cacheHit) begin
				packet[204-:28] = fetch1[119:92];
				packet[169-:3] = fetch1[89+:3];
				packet[166-:3] = fetch1[80-:3];
				packet[163-:3] = fetch1[46-:3];
				packet[160] = (fetch1[37] && fetch1[39]) && !fetch1[38];
				packet[159-:31] = fetch1[77-:31];
				packet[176-:5] = fetch1[87-:5];
				packet[0] = 1;
			end
		end
	end
	always_comb begin
		packetRePred = packet;
		if (packetRePred[171-:2] != 2'd0)
			;
		else begin
			if (BH_endOffsetValid) begin
				if (BH_endOffset == 0) begin
					packetRePred = 'x;
					packetRePred[0] = 0;
				end
				else
					packetRePred[166-:3] = BH_endOffset - 1;
				if (packetRePred[169-:3] > packetRePred[166-:3]) begin
					packetRePred = 'x;
					packetRePred[0] = 0;
				end
			end
			if (BH_decBranch[0]) begin
				packetRePred[159-:31] = BH_decBranch[37-:31];
				packetRePred[163-:3] = BH_newPredPos;
				packetRePred[160] = BH_newPredTaken;
			end
		end
	end
	logic [54:0] OUT_pw_c;
	function automatic logic [54:0] sv2v_cast_55;
		input logic [54:0] inp;
		sv2v_cast_55 = inp;
	endfunction
	always_comb begin
		OUT_pw_c = sv2v_cast_55(55'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		if (rst)
			;
		else if (OUT_pw[0] && IN_pw[1])
			OUT_pw_c = OUT_pw;
		else if (tlbMiss) begin
			OUT_pw_c[54-:32] = fetch1[119-:32];
			OUT_pw_c[22-:22] = IN_vmem[28-:22];
			OUT_pw_c[0] = 1;
		end
	end
	always_ff @(posedge clk) OUT_pw <= OUT_pw_c;
	logic [224:0] OUT_memc_c;
	logic handlingMiss;
	always_comb begin
		OUT_memc_c = 'x;
		OUT_memc_c[3-:4] = 4'd0;
		handlingMiss = 0;
		if (rst)
			;
		else if ((OUT_memc[3-:4] != 4'd0) && IN_memc[1])
			OUT_memc_c = OUT_memc;
		else if (cacheMiss && doCacheLoad) begin
			OUT_memc_c[3-:4] = 4'd3;
			OUT_memc_c[80-:12] = {assocCnt, phyPC[11:4], 2'b00};
			OUT_memc_c[68-:32] = {phyPC[31:4], 4'b0000};
			OUT_memc_c[4] = 1;
			OUT_memc_c[208-:128] = 0;
			OUT_memc_c[224-:16] = 0;
			handlingMiss = 1;
		end
	end
	logic [5:0] flushAddrIter;
	logic [1:0] flushAssocIter;
	always_comb begin
		IF_ict.wdata = 'x;
		IF_ict.wassoc = 'x;
		IF_ict.waddr = 'x;
		IF_ict.we = 0;
		if (flushState == 2'd2) begin
			IF_ict.wdata.valid = 0;
			IF_ict.wdata.addr = '0;
			IF_ict.wassoc = flushAssocIter;
			IF_ict.waddr = {flushAddrIter, {6 {1'b0}}};
			IF_ict.we = 1;
		end
		else if (handlingMiss) begin
			IF_ict.wdata.valid = 1;
			IF_ict.wdata.addr = phyPC[31:12];
			IF_ict.wassoc = assocCnt;
			IF_ict.waddr = phyPC[11:0];
			IF_ict.we = 1;
		end
	end
	function automatic logic [224:0] sv2v_cast_225;
		input logic [224:0] inp;
		sv2v_cast_225 = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst)
			OUT_memc <= sv2v_cast_225(225'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000);
		else
			OUT_memc <= OUT_memc_c;
	function automatic logic [2:0] sv2v_cast_3;
		input logic [2:0] inp;
		sv2v_cast_3 = inp;
	endfunction
	function automatic logic [48:0] sv2v_cast_49;
		input logic [48:0] inp;
		sv2v_cast_49 = inp;
	endfunction
	always_comb begin
		OUT_fetchBranch = BH_decBranch;
		if (cacheMiss || tlbMiss)
			OUT_fetchBranch = sv2v_cast_49({3'h4, sv2v_cast_3(fetch1[89+:3]), 2'b00, 3'b000, fetch1[119:89], fetch1[87-:5], 1'b0, 1'd1});
	end
	wire FIFO_ready;
	FIFO #(
		.WIDTH(204),
		.NUM(FIFO_SIZE),
		.FORWARD1(1),
		.FORWARD0(0)
	) outFIFO(
		.clk(clk),
		.rst(rst || IN_mispr),
		.free(FIFO_free),
		.IN_valid(packetRePred[0]),
		.IN_data(packetRePred[1+:204]),
		.OUT_ready(FIFO_ready),
		.OUT_valid(FIFO_out[0]),
		.IN_ready(IA_ready),
		.OUT_data(FIFO_out[1+:204])
	);
	logic [4:0] fetchID_c;
	function automatic logic [119:0] sv2v_cast_120;
		input logic [119:0] inp;
		sv2v_cast_120 = inp;
	endfunction
	always_ff @(posedge clk) begin
		fetch0 <= sv2v_cast_120(120'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		fetch1 <= sv2v_cast_120(120'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		if (rst) begin
			fetchID <= 0;
			assocCnt <= 0;
		end
		else if (IN_mispr)
			fetchID <= IN_misprFetchID + 1;
		else if (BH_decBranch[0])
			fetchID <= BH_decBranch[6-:5] + 1;
		else begin
			if (cacheMiss || tlbMiss)
				fetchID <= fetch1[87-:5];
			else begin
				if (IN_ifetchOp[0] && !OUT_stall)
					fetch0 <= IN_ifetchOp;
				if (fetch0[0]) begin
					fetch1 <= fetch0;
					fetch1[87-:5] <= fetchID;
					fetch1[80-:3] <= IN_lastValid;
					fetch1[77-:41] <= IN_predBranch;
					fetch1[36-:31] <= IN_lateRetAddr;
					fetch1[5-:5] <= IN_rIdx;
					fetchID <= fetchID + 1;
				end
			end
			if (handlingMiss)
				assocCnt <= assocCnt + 1;
		end
	end
	always_ff @(posedge clk)
		if (rst) begin
			flushState <= 2'd1;
			flushAssocIter <= 'x;
			flushAddrIter <= 'x;
		end
		else
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
				2'd2: begin : sv2v_autoblock_4
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
endmodule
module IFetch (
	clk,
	rst,
	IN_en,
	IN_interruptPending,
	IN_MEM_busy,
	IF_ict,
	IF_icache,
	IN_ROB_curFetchID,
	IN_branch,
	IN_decBranch,
	IN_clearICache,
	IN_flushTLB,
	IN_btUpdates,
	IN_bpUpdate,
	IN_pcRead,
	OUT_pcReadData,
	IN_pcReadTH,
	OUT_pcReadDataTH,
	IN_ready,
	OUT_instrs,
	IN_vmem,
	OUT_pw,
	IN_pw,
	OUT_memc,
	IN_memc
);
	parameter NUM_UOPS = 3;
	parameter NUM_BLOCKS = 8;
	parameter NUM_BP_UPD = 2;
	input wire clk;
	input wire rst;
	input wire IN_en;
	input wire IN_interruptPending;
	input wire IN_MEM_busy;
	IF_ICTable.HOST IF_ict;
	IF_ICache.HOST IF_icache;
	input logic [4:0] IN_ROB_curFetchID;
	input logic [73:0] IN_branch;
	input logic [9:0] IN_decBranch;
	input wire IN_clearICache;
	input wire IN_flushTLB;
	input logic [(NUM_BP_UPD * 76) - 1:0] IN_btUpdates;
	input logic [9:0] IN_bpUpdate;
	localparam NUM_BRANCH_PORTS = 2;
	input logic [11:0] IN_pcRead;
	output logic [69:0] OUT_pcReadData;
	input logic [6:0] IN_pcReadTH;
	output logic [34:0] OUT_pcReadDataTH;
	input wire IN_ready;
	output logic [439:0] OUT_instrs;
	input logic [30:0] IN_vmem;
	output logic [54:0] OUT_pw;
	input logic [52:0] IN_pw;
	output logic [224:0] OUT_memc;
	input logic [558:0] IN_memc;
	wire [30:0] pc;
	wire [31:0] pcFull = {pc, 1'b0};
	wire BPF_we;
	logic [2:0] BP_lastOffs;
	logic [40:0] predBr;
	wire BP_stall;
	wire [30:0] BP_curRetAddr;
	logic [4:0] BP_rIdx;
	logic [5:0] BP_pcFileRead;
	logic [34:0] BP_pcFileRData;
	logic [48:0] BP_mispr;
	logic [48:0] BH_fetchBranch;
	function automatic logic [1:0] sv2v_cast_2;
		input logic [1:0] inp;
		sv2v_cast_2 = inp;
	endfunction
	function automatic logic [2:0] sv2v_cast_3;
		input logic [2:0] inp;
		sv2v_cast_3 = inp;
	endfunction
	function automatic logic [4:0] sv2v_cast_5;
		input logic [4:0] inp;
		sv2v_cast_5 = inp;
	endfunction
	function automatic logic [48:0] sv2v_cast_49;
		input logic [48:0] inp;
		sv2v_cast_49 = inp;
	endfunction
	always_comb begin
		BP_mispr = BH_fetchBranch;
		if (IN_branch[0])
			BP_mispr = sv2v_cast_49({1'b0, sv2v_cast_2(IN_branch[70-:2]), sv2v_cast_3(IN_branch[67-:3]), sv2v_cast_2(IN_branch[64-:2]), sv2v_cast_3(IN_branch[62-:3]), IN_branch[59:29], sv2v_cast_5(IN_branch[5-:5]), 1'b0, IN_branch[0]});
		else if (IN_decBranch[0])
			BP_mispr = sv2v_cast_49({3'b001, sv2v_cast_3(IN_decBranch[4-:3]), 2'd0, 3'd0, 31'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_5(IN_decBranch[9-:5]), 1'b0, IN_decBranch[0]});
	end
	wire [30:0] BP_lateRetAddr;
	logic [5:0] BP_fetchLimit;
	logic [75:0] BH_btUpdate;
	logic [36:0] BH_retDecUpd;
	logic [4:0] BPF_writeAddr;
	reg issuedInterrupt;
	reg waitForInterrupt;
	wire baseEn = ((IN_en && !waitForInterrupt) && !issuedInterrupt) && !BP_stall;
	wire icacheStall;
	wire ifetchEn = baseEn && !icacheStall;
	BranchPredictor #(.NUM_IN(NUM_BP_UPD + 1)) bp(
		.clk(clk),
		.rst(rst),
		.en1(BPF_we),
		.OUT_stall(BP_stall),
		.IN_mispr(BP_mispr),
		.IN_pcValid(ifetchEn),
		.OUT_fetchLimit(BP_fetchLimit),
		.IN_fetchID(BPF_writeAddr),
		.IN_comFetchID(IN_ROB_curFetchID),
		.OUT_pc(pc),
		.OUT_lastOffs(BP_lastOffs),
		.OUT_curRetAddr(BP_curRetAddr),
		.OUT_lateRetAddr(BP_lateRetAddr),
		.OUT_rIdx(BP_rIdx),
		.OUT_predBr(predBr),
		.IN_retDecUpd(BH_retDecUpd),
		.OUT_pcFileRead(BP_pcFileRead),
		.IN_pcFileRData(BP_pcFileRData),
		.IN_btUpdates({BH_btUpdate, IN_btUpdates[76+:76], IN_btUpdates[0+:76]}),
		.IN_bpUpdate(IN_bpUpdate)
	);
	logic [4:0] PCF_writeAddr;
	logic [34:0] PCF_writeData;
	logic [119:0] ifetchOp;
	wire pcFileWriteEn;
	IFetchPipeline ifp(
		.clk(clk),
		.rst(rst),
		.IN_MEM_busy(IN_MEM_busy),
		.IN_mispr(IN_branch[0] || IN_decBranch[0]),
		.IN_misprFetchID((IN_branch[0] ? IN_branch[5-:5] : IN_decBranch[9-:5])),
		.IN_ROB_curFetchID(IN_ROB_curFetchID),
		.IN_BP_fetchLimit(BP_fetchLimit),
		.IN_ifetchOp(ifetchOp),
		.OUT_stall(icacheStall),
		.IN_predBranch(predBr),
		.IN_rIdx(BP_rIdx),
		.IN_lastValid(BP_lastOffs),
		.OUT_bpFileWE(BPF_we),
		.OUT_bpFileAddr(BPF_writeAddr),
		.OUT_pcFileWE(pcFileWriteEn),
		.OUT_pcFileAddr(PCF_writeAddr),
		.OUT_pcFileEntry(PCF_writeData),
		.OUT_fetchBranch(BH_fetchBranch),
		.OUT_btUpdate(BH_btUpdate),
		.OUT_retUpdate(BH_retDecUpd),
		.IN_lateRetAddr(BP_lateRetAddr),
		.IF_icache(IF_icache),
		.IF_ict(IF_ict),
		.IN_ready(IN_ready),
		.OUT_instrs(OUT_instrs),
		.IN_clearICache(IN_clearICache),
		.IN_flushTLB(IN_flushTLB),
		.IN_vmem(IN_vmem),
		.OUT_pw(OUT_pw),
		.IN_pw(IN_pw),
		.OUT_memc(OUT_memc),
		.IN_memc(IN_memc)
	);
	function automatic logic [5:0] sv2v_cast_6;
		input logic [5:0] inp;
		sv2v_cast_6 = inp;
	endfunction
	wire logic [5:0] sharedReq = (IN_pcReadTH[0] && (IN_pcReadTH[6] || !IN_pcRead[0]) ? sv2v_cast_6(IN_pcReadTH) : IN_pcRead[0+:6]);
	logic [34:0] sharedData;
	assign OUT_pcReadData[0+:35] = sharedData;
	assign OUT_pcReadDataTH = sharedData;
	RegFile #(
		.WIDTH(35),
		.SIZE(32),
		.NUM_READ(3),
		.NUM_WRITE(1)
	) pcFile(
		.clk(clk),
		.IN_we({pcFileWriteEn}),
		.IN_waddr({PCF_writeAddr}),
		.IN_wdata({PCF_writeData}),
		.IN_re({BP_pcFileRead[0], IN_pcRead[6], sharedReq[0]}),
		.IN_raddr({BP_pcFileRead[5-:5], IN_pcRead[11-:5], sharedReq[5-:5]}),
		.OUT_rdata({BP_pcFileRData, OUT_pcReadData[35+:35], sharedData})
	);
	function automatic logic [119:0] sv2v_cast_120;
		input logic [119:0] inp;
		sv2v_cast_120 = inp;
	endfunction
	always_comb begin
		ifetchOp = sv2v_cast_120(120'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		if (IN_branch[0] || BH_fetchBranch[0])
			;
		else if (ifetchEn) begin
			ifetchOp[0] = 1;
			ifetchOp[119-:32] = {pc, 1'b0};
			ifetchOp[82-:2] = (IN_interruptPending ? 2'd1 : 2'd0);
		end
	end
	reg [11:0] wfiCount;
	reg resetWait;
	function automatic logic signed [11:0] sv2v_cast_E0C10_signed;
		input logic signed [11:0] inp;
		sv2v_cast_E0C10_signed = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst) begin
			issuedInterrupt <= 0;
			waitForInterrupt <= 1;
			wfiCount <= sv2v_cast_E0C10_signed(4095);
			resetWait <= 1;
		end
		else begin
			if (waitForInterrupt) begin : sv2v_autoblock_1
				reg [11:0] wfiCount_next;
				reg wfiDone;
				{wfiDone, wfiCount_next} = wfiCount - 1;
				wfiCount <= wfiCount_next;
				if ((IN_interruptPending && !resetWait) || wfiDone)
					waitForInterrupt <= 0;
			end
			if ((IN_branch[0] || BH_fetchBranch[0]) || IN_decBranch[0]) begin
				if (IN_branch[0])
					waitForInterrupt <= 0;
				else if ((BH_fetchBranch[0] && BH_fetchBranch[1]) || (IN_decBranch[0] && IN_decBranch[1])) begin
					waitForInterrupt <= 1;
					wfiCount <= sv2v_cast_E0C10_signed(1023);
				end
				issuedInterrupt <= 0;
			end
			else if (ifetchEn)
				if (IN_interruptPending)
					issuedInterrupt <= 1;
		end
endmodule
module InstrDecoder (
	clk,
	rst,
	en,
	IN_branch,
	IN_dec,
	IN_instrs,
	IN_enCustom,
	OUT_decBranch,
	OUT_uop
);
	parameter NUM_UOPS = 4;
	parameter DO_FUSE = 0;
	parameter FUSE_LUI = 0;
	parameter FUSE_STORE_DATA = 0;
	input wire clk;
	input wire rst;
	input wire en;
	input logic [73:0] IN_branch;
	input logic [2:0] IN_dec;
	input logic [(NUM_UOPS * 110) - 1:0] IN_instrs;
	input wire IN_enCustom;
	output logic [9:0] OUT_decBranch;
	output logic [(NUM_UOPS * 80) - 1:0] OUT_uop;
	logic [79:0] uop;
	reg invalidEnc;
	logic [31:0] instr;
	logic [15:0] i16;
	logic [31:0] i32;
	logic [79:0] uopsComb [NUM_UOPS - 1:0];
	logic [9:0] decBranch;
	function automatic logic [9:0] sv2v_cast_10;
		input logic [9:0] inp;
		sv2v_cast_10 = inp;
	endfunction
	function automatic logic [4:0] sv2v_cast_5;
		input logic [4:0] inp;
		sv2v_cast_5 = inp;
	endfunction
	function automatic logic [2:0] sv2v_cast_3;
		input logic [2:0] inp;
		sv2v_cast_3 = inp;
	endfunction
	always_comb begin
		decBranch = sv2v_cast_10(10'bxxxxxxxxx0);
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_UOPS; i = i + 1)
				begin
					instr = IN_instrs[(i * 110) + 109-:32];
					i32 = IN_instrs[(i * 110) + 109-:32];
					i16 = IN_instrs[(i * 110) + 93-:16];
					uop = 0;
					invalidEnc = 1;
					uop[0] = ((IN_instrs[i * 110] && en) && !decBranch[0]) && !OUT_decBranch[0];
					uop[9-:5] = IN_instrs[(i * 110) + 8-:5];
					uop[4-:3] = IN_instrs[(i * 110) + 49-:3] + (instr[1:0] == 2'b11 ? 1 : 0);
					case (instr[6-:7])
						7'b0110111, 7'b0010111: uop[79-:32] = {instr[31:12], 12'b000000000000};
						7'b1101111: uop[79-:32] = $signed({{12 {instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0});
						7'b1110011, 7'b1100111, 7'b0000011, 7'b0010011: uop[79-:32] = $signed({{20 {instr[31]}}, instr[31:20]});
						7'b1100011: uop[79-:32] = $signed({{20 {instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0});
						7'b0001011, 7'b0100011: uop[79-:32] = $signed({{20 {instr[31]}}, instr[31:25], instr[11:7]});
						default: uop[79-:32] = 0;
					endcase
					if (uop[0])
						if (IN_instrs[(i * 110) + 3-:2] != 2'd0) begin
							uop[13-:4] = 4'd12;
							invalidEnc = 0;
							case (IN_instrs[(i * 110) + 3-:2])
								2'd1: uop[19-:6] = 6'd16;
								2'd2: uop[19-:6] = 6'd1;
								2'd3: uop[19-:6] = 6'd12;
								default:
									;
							endcase
							uop[1] = IN_instrs[(i * 110) + 1];
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
												uop[13-:4] = 4'd12;
												uop[35-:5] = 0;
												uop[30-:5] = 0;
												uop[24-:5] = 0;
												uop[25] = 1;
												decBranch = sv2v_cast_10({sv2v_cast_5(uop[9-:5]), sv2v_cast_3(uop[4-:3]), 1'd1, 1'd1});
												invalidEnc = 0;
											end
											else if (((instr[24-:5] == 5'b00010) && (instr[19-:5] == 0)) && (instr[11-:5] == 0)) begin
												if (instr[31-:7] == 7'b0001000) begin
													uop[13-:4] = 4'd11;
													uop[19-:6] = 6'd7;
													invalidEnc = 0;
													decBranch = sv2v_cast_10({sv2v_cast_5(uop[9-:5]), sv2v_cast_3(uop[4-:3]), 1'd1, 1'd1});
												end
												else if (instr[31-:7] == 7'b0011000) begin
													uop[13-:4] = 4'd11;
													uop[19-:6] = 6'd8;
													invalidEnc = 0;
													decBranch = sv2v_cast_10({sv2v_cast_5(uop[9-:5]), sv2v_cast_3(uop[4-:3]), 1'd1, 1'd1});
												end
											end
											else if ((((instr[31-:7] == 7'b0001000) && (instr[24-:5] == 5'b00101)) && (instr[19-:5] == 0)) && (instr[11-:5] == 0)) begin
												if (IN_dec[1]) begin
													uop[13-:4] = 4'd9;
													invalidEnc = 0;
													decBranch = sv2v_cast_10({sv2v_cast_5(uop[9-:5]), sv2v_cast_3(uop[4-:3]), 1'd1, 1'd1});
												end
											end
											else if ((instr[31-:7] == 7'b0001001) && (instr[11-:5] == 0)) begin
												uop[13-:4] = 4'd12;
												uop[19-:6] = (IN_dec[0] ? 6'd15 : 6'd2);
												invalidEnc = 0;
												decBranch = sv2v_cast_10({sv2v_cast_5(uop[9-:5]), sv2v_cast_3(uop[4-:3]), 1'd1, 1'd1});
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
											uop[13-:4] = 4'd11;
											uop[35-:5] = instr[19-:5];
											uop[24-:5] = instr[11-:5];
											uop[19-:6] = 6'd1;
											uop[79-:32] = {20'bxxxxxxxxxxxxxxxxxxxx, instr[31:20]};
											invalidEnc = 0;
										end
										2: begin
											uop[13-:4] = 4'd11;
											uop[35-:5] = instr[19-:5];
											uop[24-:5] = instr[11-:5];
											uop[19-:6] = (instr[19-:5] == 0 ? 6'd0 : 6'd2);
											uop[79-:32] = {20'bxxxxxxxxxxxxxxxxxxxx, instr[31:20]};
											invalidEnc = 0;
										end
										3: begin
											uop[13-:4] = 4'd11;
											uop[35-:5] = instr[19-:5];
											uop[24-:5] = instr[11-:5];
											uop[19-:6] = (instr[19-:5] == 0 ? 6'd0 : 6'd3);
											uop[79-:32] = {20'bxxxxxxxxxxxxxxxxxxxx, instr[31:20]};
											invalidEnc = 0;
										end
										5: begin
											uop[13-:4] = 4'd11;
											uop[24-:5] = instr[11-:5];
											uop[19-:6] = 6'd4;
											uop[79-:32] = {15'bxxxxxxxxxxxxxxx, instr[19-:5], instr[31:20]};
											invalidEnc = 0;
										end
										6: begin
											uop[13-:4] = 4'd11;
											uop[24-:5] = instr[11-:5];
											uop[19-:6] = (instr[19-:5] == 0 ? 6'd0 : 6'd5);
											uop[79-:32] = {15'bxxxxxxxxxxxxxxx, instr[19-:5], instr[31:20]};
											invalidEnc = 0;
										end
										7: begin
											uop[13-:4] = 4'd11;
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
									uop[19-:6] = 6'd10;
									invalidEnc = 0;
								end
								7'b0010111: begin
									uop[13-:4] = 4'd1;
									uop[35-:5] = 0;
									uop[30-:5] = 0;
									uop[24-:5] = instr[11-:5];
									uop[19-:6] = 6'd0;
									invalidEnc = 0;
								end
								7'b1101111: begin
									uop[13-:4] = 4'd1;
									uop[35-:5] = 0;
									uop[30-:5] = 0;
									uop[25] = 1;
									uop[24-:5] = instr[11-:5];
									uop[19-:6] = 6'd1;
									invalidEnc = 0;
									if (uop[24-:5] == 0)
										uop[13-:4] = 4'd9;
								end
								7'b1100111: begin
									uop[13-:4] = 4'd1;
									uop[35-:5] = instr[19-:5];
									uop[25] = 1;
									uop[24-:5] = instr[11-:5];
									uop[47-:12] = instr[31:20];
									casez ({(instr[11-:5] == 1) || (instr[11-:5] == 5), (instr[19-:5] == 1) || (instr[19-:5] == 5), instr[11-:5] == instr[19-:5]})
										3'b00z: uop[19-:6] = 6'd10;
										3'b01z: uop[19-:6] = 6'd8;
										3'b10z: uop[19-:6] = 6'd9;
										3'b110: uop[19-:6] = 6'd10;
										3'b111: uop[19-:6] = 6'd9;
									endcase
									if (IN_instrs[(i * 110) + 9])
										uop[79-:32] = {IN_instrs[(i * 110) + 40-:31], 1'b0};
									else
										uop[79-:32] = {IN_instrs[(i * 110) + 77-:31] + (uop[1] ? 31'd1 : 31'd2), 1'b0};
									invalidEnc = 0;
								end
								7'b0000011: begin
									uop[35-:5] = instr[19-:5];
									uop[30-:5] = 0;
									uop[25] = 1;
									uop[24-:5] = instr[11-:5];
									uop[13-:4] = 4'd3;
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
									uop[25] = 1;
									uop[24-:5] = 0;
									uop[13-:4] = 4'd3;
									invalidEnc = 0;
									case (instr[14-:3])
										0: uop[19-:6] = 6'd7;
										1: uop[19-:6] = 6'd8;
										2: uop[19-:6] = 6'd9;
										default: invalidEnc = 1;
									endcase
								end
								7'b0001011:
									if (IN_dec[2])
										;
								7'b1100011: begin
									uop[35-:5] = instr[19-:5];
									uop[30-:5] = instr[24-:5];
									uop[25] = 0;
									uop[24-:5] = 0;
									uop[13-:4] = 4'd1;
									invalidEnc = (uop[19-:6] == 2) || (uop[19-:6] == 3);
									case (instr[14-:3])
										0: uop[19-:6] = 6'd2;
										1: uop[19-:6] = 6'd3;
										4: uop[19-:6] = 6'd4;
										5: uop[19-:6] = 6'd5;
										6: uop[19-:6] = 6'd6;
										7: uop[19-:6] = 6'd7;
									endcase
								end
								7'b0001111:
									if (instr[14-:3] == 0) begin
										uop[13-:4] = 4'd9;
										invalidEnc = 0;
									end
									else if (instr[14-:3] == 1) begin
										uop[13-:4] = 4'd0;
										uop[19-:6] = 6'd11;
										uop[79-:32] = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxx0100;
										invalidEnc = 0;
										decBranch = sv2v_cast_10({sv2v_cast_5(uop[9-:5]), sv2v_cast_3(uop[4-:3]), 1'd1, 1'd1});
									end
									else if (((instr[14-:3] == 3'b010) && (instr[11-:5] == 0)) && (instr[31:20] == 0)) begin
										invalidEnc = 0;
										uop[19-:6] = 6'd11;
										uop[13-:4] = 4'd3;
										uop[35-:5] = instr[19-:5];
										uop[30-:5] = 0;
										decBranch = sv2v_cast_10({sv2v_cast_5(uop[9-:5]), sv2v_cast_3(uop[4-:3]), 1'd1, 1'd1});
									end
									else if (((instr[14-:3] == 3'b010) && (instr[11-:5] == 0)) && (instr[31:20] == 1)) begin
										invalidEnc = 0;
										uop[19-:6] = 6'd10;
										uop[13-:4] = 4'd3;
										uop[35-:5] = instr[19-:5];
										uop[30-:5] = 0;
										decBranch = sv2v_cast_10({sv2v_cast_5(uop[9-:5]), sv2v_cast_3(uop[4-:3]), 1'd1, 1'd1});
									end
									else if (((instr[14-:3] == 3'b010) && (instr[11-:5] == 0)) && (instr[31:20] == 2)) begin
										invalidEnc = 0;
										uop[19-:6] = 6'd12;
										uop[13-:4] = 4'd3;
										uop[35-:5] = instr[19-:5];
										uop[30-:5] = 0;
										decBranch = sv2v_cast_10({sv2v_cast_5(uop[9-:5]), sv2v_cast_3(uop[4-:3]), 1'd1, 1'd1});
									end
								7'b0010011: begin
									uop[35-:5] = instr[19-:5];
									uop[30-:5] = 0;
									uop[25] = 1;
									uop[24-:5] = instr[11-:5];
									uop[13-:4] = 4'd0;
									if (!(((instr[14-:3] == 1) && (instr[31-:7] != 0)) || (((instr[14-:3] == 5) && (instr[31-:7] != 7'h20)) && (instr[31-:7] != 0)))) begin
										invalidEnc = 0;
										case (instr[14-:3])
											3'd0: uop[19-:6] = 6'd0;
											3'd1: uop[19-:6] = 6'd4;
											3'd2: uop[19-:6] = 6'd6;
											3'd3: uop[19-:6] = 6'd7;
											3'd4: uop[19-:6] = 6'd1;
											3'd5: uop[19-:6] = (instr[31-:7] == 7'h20 ? 6'd9 : 6'd5);
											3'd6: uop[19-:6] = 6'd2;
											3'd7: uop[19-:6] = 6'd3;
										endcase
									end
									else if (instr[31-:7] == 7'b0110000) begin
										if (instr[14-:3] == 3'b001) begin
											if (instr[24-:5] == 5'b00000) begin
												invalidEnc = 0;
												uop[13-:4] = 4'd2;
												uop[19-:6] = 6'd0;
											end
											else if (instr[24-:5] == 5'b00001) begin
												invalidEnc = 0;
												uop[13-:4] = 4'd2;
												uop[19-:6] = 6'd1;
											end
											else if (instr[24-:5] == 5'b00010) begin
												invalidEnc = 0;
												uop[13-:4] = 4'd2;
												uop[19-:6] = 6'd2;
											end
											else if (instr[24-:5] == 5'b00100) begin
												invalidEnc = 0;
												uop[19-:6] = 6'd22;
											end
											else if (instr[24-:5] == 5'b00101) begin
												invalidEnc = 0;
												uop[19-:6] = 6'd23;
											end
											else if (instr[24-:5] == 5'b00101) begin
												invalidEnc = 0;
												uop[19-:6] = 6'd24;
											end
										end
										else if (instr[14-:3] == 3'b101) begin
											invalidEnc = 0;
											uop[13-:4] = 4'd2;
											uop[19-:6] = 6'd4;
											uop[79-:32] = {27'b000000000000000000000000000, instr[24-:5]};
										end
									end
									else if ((instr[31:20] == 12'b001010000111) && (instr[14-:3] == 3'b101)) begin
										invalidEnc = 0;
										uop[13-:4] = 4'd2;
										uop[19-:6] = 6'd5;
									end
									else if ((instr[31:20] == 12'b011010011000) && (instr[14-:3] == 3'b101)) begin
										invalidEnc = 0;
										uop[13-:4] = 4'd2;
										uop[19-:6] = 6'd6;
									end
									if (instr[31-:7] == 7'b0100100) begin
										if (instr[14-:3] == 3'b001) begin
											invalidEnc = 0;
											uop[13-:4] = 4'd2;
											uop[19-:6] = 6'd7;
											uop[79-:32] = {27'b000000000000000000000000000, instr[24-:5]};
										end
										else if (instr[14-:3] == 3'b101) begin
											invalidEnc = 0;
											uop[13-:4] = 4'd2;
											uop[19-:6] = 6'd8;
											uop[79-:32] = {27'b000000000000000000000000000, instr[24-:5]};
										end
									end
									else if (instr[31-:7] == 7'b0110100) begin
										if (instr[14-:3] == 3'b001) begin
											invalidEnc = 0;
											uop[13-:4] = 4'd2;
											uop[19-:6] = 6'd9;
											uop[79-:32] = {27'b000000000000000000000000000, instr[24-:5]};
										end
									end
									else if (instr[31-:7] == 7'b0010100)
										if (instr[14-:3] == 3'b001) begin
											invalidEnc = 0;
											uop[13-:4] = 4'd2;
											uop[19-:6] = 6'd10;
											uop[79-:32] = {27'b000000000000000000000000000, instr[24-:5]};
										end
									if (((((((((uop[13-:4] == 4'd0) && (uop[19-:6] == 6'd0)) && (uop[35-:5] == 0)) && (uop[59] == uop[58])) && (uop[59] == uop[57])) && (uop[59] == uop[56])) && (uop[59] == uop[55])) && (uop[59] == uop[54])) && (uop[59] == uop[53]))
										uop[13-:4] = 4'd9;
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
											uop[13-:4] = 4'd4;
										else
											uop[13-:4] = 4'd5;
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
											uop[19-:6] = 6'd12;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b100) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd13;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b110) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd14;
											uop[13-:4] = 4'd0;
										end
									end
									else if (instr[31-:7] == 7'b0100000) begin
										if (instr[14-:3] == 3'b111) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd16;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b110) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd17;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b100) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd15;
											uop[13-:4] = 4'd0;
										end
									end
									else if (instr[31-:7] == 7'b0000101) begin
										if (instr[14-:3] == 3'b110) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd18;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b111) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd19;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b100) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd20;
											uop[13-:4] = 4'd0;
										end
										else if (instr[14-:3] == 3'b101) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd21;
											uop[13-:4] = 4'd0;
										end
									end
									else if (((instr[31-:7] == 7'b0000100) && (instr[24-:5] == 0)) && (instr[14-:3] == 3'b100)) begin
										invalidEnc = 0;
										uop[30-:5] = 0;
										uop[19-:6] = 6'd24;
									end
									else if (instr[31-:7] == 7'b0110000) begin
										if (instr[14-:3] == 3'b001) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd3;
											uop[13-:4] = 4'd2;
										end
										else if (instr[14-:3] == 3'b101) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd4;
											uop[13-:4] = 4'd2;
										end
									end
									else if (instr[31-:7] == 7'b0100100) begin
										if (instr[14-:3] == 3'b001) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd7;
											uop[13-:4] = 4'd2;
										end
										else if (instr[14-:3] == 3'b101) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd8;
											uop[13-:4] = 4'd2;
										end
									end
									else if (instr[31-:7] == 7'b0110100) begin
										if (instr[14-:3] == 3'b001) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd9;
											uop[13-:4] = 4'd2;
										end
									end
									else if (instr[31-:7] == 7'b0010100)
										if (instr[14-:3] == 3'b001) begin
											invalidEnc = 0;
											uop[19-:6] = 6'd10;
											uop[13-:4] = 4'd2;
										end
								end
								7'b0101111:
									if (instr[14-:3] == 3'b010) begin
										uop[24-:5] = instr[11-:5];
										uop[35-:5] = instr[19-:5];
										uop[30-:5] = instr[24-:5];
										uop[13-:4] = 4'd10;
										case (instr[31:27])
											5'b00010:
												if (instr[24-:5] == 5'b00000) begin
													uop[19-:6] = 6'd5;
													uop[13-:4] = 4'd3;
													uop[25] = 0;
													uop[30-:5] = 0;
													invalidEnc = 0;
												end
											5'b00011: begin
												uop[19-:6] = 6'd6;
												uop[13-:4] = 4'd3;
												uop[25] = 1;
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
									uop[13-:4] = 4'd3;
									uop[79-:32] = {25'b0000000000000000000000000, i16[5], i16[12-:3], i16[6], 2'b00};
									uop[35-:5] = {2'b01, i16[9-:3]};
									uop[24-:5] = {2'b01, i16[4-:3]};
									uop[25] = 1;
									invalidEnc = 0;
								end
								else if (i16[15-:3] == 3'b110) begin
									uop[19-:6] = 6'd9;
									uop[13-:4] = 4'd3;
									uop[79-:32] = {25'b0000000000000000000000000, i16[5], i16[12-:3], i16[6], 2'b00};
									uop[35-:5] = {2'b01, i16[9-:3]};
									uop[30-:5] = {2'b01, i16[4-:3]};
									uop[25] = 1;
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
								else if ((i16[15-:3] == 3'b100) && (i16[12:10] == 3'b000)) begin
									uop[35-:5] = {2'b01, i16[9:7]};
									uop[30-:5] = 0;
									uop[25] = 1;
									uop[79-:32] = {30'b000000000000000000000000000000, i16[5], i16[6]};
									uop[24-:5] = {2'b01, i16[4:2]};
									uop[13-:4] = 4'd3;
									uop[19-:6] = 6'd3;
									uop[25] = 1;
									invalidEnc = 0;
								end
								else if (((i16[15-:3] == 3'b100) && (i16[12:10] == 3'b001)) && (i16[6] == 0)) begin
									uop[35-:5] = {2'b01, i16[9:7]};
									uop[30-:5] = 0;
									uop[25] = 1;
									uop[79-:32] = {30'b000000000000000000000000000000, i16[5], 1'b0};
									uop[24-:5] = {2'b01, i16[4:2]};
									uop[13-:4] = 4'd3;
									uop[19-:6] = 6'd4;
									uop[25] = 1;
									invalidEnc = 0;
								end
								else if (((i16[15-:3] == 3'b100) && (i16[12:10] == 3'b001)) && (i16[6] == 1)) begin
									uop[35-:5] = {2'b01, i16[9:7]};
									uop[30-:5] = 0;
									uop[25] = 1;
									uop[79-:32] = {30'b000000000000000000000000000000, i16[5], 1'b0};
									uop[24-:5] = {2'b01, i16[4:2]};
									uop[13-:4] = 4'd3;
									uop[19-:6] = 6'd1;
									uop[25] = 1;
									invalidEnc = 0;
								end
								else if ((i16[15-:3] == 3'b100) && (i16[12:10] == 3'b010)) begin
									uop[35-:5] = {2'b01, i16[9:7]};
									uop[30-:5] = {2'b01, i16[4:2]};
									uop[79-:32] = {30'b000000000000000000000000000000, i16[5], i16[6]};
									uop[25] = 0;
									uop[24-:5] = 0;
									uop[13-:4] = 4'd3;
									uop[19-:6] = 6'd7;
									uop[25] = 1;
									invalidEnc = 0;
								end
							end
							else if (i16[1:0] == 2'b01) begin
								if (i16[15-:3] == 3'b101) begin
									uop[13-:4] = 4'd9;
									invalidEnc = 0;
								end
								else if (i16[15-:3] == 3'b001) begin
									uop[19-:6] = 6'd1;
									uop[13-:4] = 4'd1;
									uop[79-:32] = {{20 {i16[12]}}, i16[12], i16[8], i16[10:9], i16[6], i16[7], i16[2], i16[11], i16[5:3], 1'b0};
									uop[25] = 1;
									uop[24-:5] = 1;
									invalidEnc = 0;
								end
								else if (i16[15-:3] == 3'b110) begin
									uop[19-:6] = 6'd2;
									uop[13-:4] = 4'd1;
									uop[79-:32] = {{23 {i16[12]}}, i16[12], i16[6:5], i16[2], i16[11:10], i16[4:3], 1'b0};
									uop[35-:5] = {2'b01, i16[9-:3]};
									invalidEnc = 0;
								end
								else if (i16[15-:3] == 3'b111) begin
									uop[19-:6] = 6'd3;
									uop[13-:4] = 4'd1;
									uop[79-:32] = {{23 {i16[12]}}, i16[12], i16[6:5], i16[2], i16[11:10], i16[4:3], 1'b0};
									uop[35-:5] = {2'b01, i16[9-:3]};
									invalidEnc = 0;
								end
								else if ((i16[15-:3] == 3'b010) && (i16[11-:5] != 0)) begin
									uop[13-:4] = 4'd9;
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
										uop[19-:6] = 6'd10;
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
									uop[13-:4] = 4'd9;
									invalidEnc = 0;
								end
								else if ((((i16[15:13] == 3'b100) && (i16[12:10] == 3'b111)) && (i16[6:5] == 2'b11)) && (i16[4:2] == 3'b000)) begin
									uop[35-:5] = {2'b01, i16[9:7]};
									uop[24-:5] = {2'b01, i16[9:7]};
									uop[13-:4] = 4'd0;
									uop[19-:6] = 6'd3;
									uop[25] = 1;
									uop[79-:32] = 32'h000000ff;
									invalidEnc = 0;
								end
								else if ((((i16[15:13] == 3'b100) && (i16[12:10] == 3'b111)) && (i16[6:5] == 2'b11)) && (i16[4:2] == 3'b001)) begin
									uop[35-:5] = {2'b01, i16[9:7]};
									uop[24-:5] = {2'b01, i16[9:7]};
									uop[13-:4] = 4'd0;
									uop[19-:6] = 6'd22;
									uop[25] = 0;
									invalidEnc = 0;
								end
								else if ((((i16[15:13] == 3'b100) && (i16[12:10] == 3'b111)) && (i16[6:5] == 2'b11)) && (i16[4:2] == 3'b010)) begin
									uop[35-:5] = {2'b01, i16[9:7]};
									uop[24-:5] = {2'b01, i16[9:7]};
									uop[13-:4] = 4'd0;
									uop[19-:6] = 6'd24;
									uop[25] = 0;
									invalidEnc = 0;
								end
								else if ((((i16[15:13] == 3'b100) && (i16[12:10] == 3'b111)) && (i16[6:5] == 2'b11)) && (i16[4:2] == 3'b011)) begin
									uop[35-:5] = {2'b01, i16[9:7]};
									uop[24-:5] = {2'b01, i16[9:7]};
									uop[13-:4] = 4'd0;
									uop[19-:6] = 6'd23;
									uop[25] = 0;
									invalidEnc = 0;
								end
								else if ((((i16[15:13] == 3'b100) && (i16[12:10] == 3'b111)) && (i16[6:5] == 2'b11)) && (i16[4:2] == 3'b101)) begin
									uop[35-:5] = {2'b01, i16[9:7]};
									uop[24-:5] = {2'b01, i16[9:7]};
									uop[13-:4] = 4'd0;
									uop[19-:6] = 6'd15;
									uop[25] = 1;
									uop[79-:32] = 0;
									invalidEnc = 0;
								end
								else if (((i16[15:13] == 3'b100) && (i16[12:10] == 3'b111)) && (i16[6:5] == 2'b10)) begin
									uop[30-:5] = {2'b01, i16[4:2]};
									uop[35-:5] = {2'b01, i16[9:7]};
									uop[24-:5] = {2'b01, i16[9:7]};
									uop[13-:4] = 4'd4;
									uop[19-:6] = 6'd0;
									uop[25] = 0;
									invalidEnc = 0;
								end
							end
							else if (i16[1:0] == 2'b10)
								if ((i16[15-:3] == 3'b010) && (i16[11-:5] != 0)) begin
									uop[19-:6] = 6'd2;
									uop[13-:4] = 4'd3;
									uop[79-:32] = {24'b000000000000000000000000, i16[3:2], i16[12], i16[6:4], 2'b00};
									uop[35-:5] = 2;
									uop[24-:5] = i16[11-:5];
									uop[25] = 1;
									invalidEnc = 0;
								end
								else if (i16[15-:3] == 3'b110) begin
									uop[19-:6] = 6'd9;
									uop[13-:4] = 4'd3;
									uop[79-:32] = {24'b000000000000000000000000, i16[8:7], i16[12:9], 2'b00};
									uop[35-:5] = 2;
									uop[30-:5] = i16[6-:5];
									uop[25] = 1;
									invalidEnc = 0;
								end
								else if ((i16[15-:4] == 4'b1000) && !((i16[11-:5] == 0) || (i16[6-:5] != 0))) begin
									uop[13-:4] = 4'd1;
									uop[35-:5] = i16[11-:5];
									uop[19-:6] = (i16[11-:5] == 1 ? 6'd8 : 6'd10);
									uop[25] = 1;
									uop[47-:12] = 0;
									if (IN_instrs[(i * 110) + 9])
										uop[79-:32] = {IN_instrs[(i * 110) + 40-:31], 1'b0};
									else
										uop[79-:32] = {IN_instrs[(i * 110) + 77-:31] + (uop[1] ? 31'd1 : 31'd2), 1'b0};
									invalidEnc = 0;
								end
								else if ((i16[15-:4] == 4'b1001) && !((i16[11-:5] == 0) || (i16[6-:5] != 0))) begin
									uop[13-:4] = 4'd1;
									uop[35-:5] = i16[11-:5];
									uop[24-:5] = 1;
									uop[19-:6] = 6'd9;
									uop[25] = 1;
									uop[47-:12] = 0;
									if (IN_instrs[(i * 110) + 9])
										uop[79-:32] = {IN_instrs[(i * 110) + 40-:31], 1'b0};
									else
										uop[79-:32] = {IN_instrs[(i * 110) + 77-:31] + (uop[1] ? 31'd1 : 31'd2), 1'b0};
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
									uop[13-:4] = 4'd12;
									invalidEnc = 0;
									decBranch = sv2v_cast_10({sv2v_cast_5(uop[9-:5]), sv2v_cast_3(uop[4-:3]), 1'd1, 1'd1});
								end
						end
					if (invalidEnc) begin
						uop[19-:6] = 6'd2;
						uop[13-:4] = 4'd12;
						uop[24-:5] = 0;
						if (uop[0])
							decBranch = sv2v_cast_10({sv2v_cast_5(uop[9-:5]), sv2v_cast_3(uop[4-:3]), 1'd1, 1'd1});
					end
					uopsComb[i] = uop;
				end
		end
	end
	always_ff @(posedge clk) begin
		OUT_decBranch <= sv2v_cast_10(10'bxxxxxxxxx0);
		if (rst) begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < NUM_UOPS; i = i + 1)
				begin
					OUT_uop[i * 80+:80] <= 'x;
					OUT_uop[i * 80] <= 0;
				end
		end
		else if (IN_branch[0]) begin : sv2v_autoblock_3
			integer i;
			for (i = 0; i < NUM_UOPS; i = i + 1)
				begin
					OUT_uop[i * 80+:80] <= 'x;
					OUT_uop[i * 80] <= 0;
				end
		end
		else if (en) begin
			begin : sv2v_autoblock_4
				integer i;
				for (i = 0; i < NUM_UOPS; i = i + 1)
					OUT_uop[i * 80+:80] <= uopsComb[i];
			end
			OUT_decBranch <= decBranch;
		end
	end
endmodule
module IntALU (
	clk,
	rst,
	IN_uop,
	IN_branch,
	OUT_branch,
	OUT_btUpdate,
	OUT_zcFwd,
	OUT_amoData,
	OUT_uop
);
	localparam [15:0] FU_INT_OH = 1 << 4'd0;
	parameter FUS = FU_INT_OH;
	input wire clk;
	input wire rst;
	input logic [182:0] IN_uop;
	input logic [73:0] IN_branch;
	output logic [73:0] OUT_branch;
	output logic [75:0] OUT_btUpdate;
	output logic [39:0] OUT_zcFwd;
	output logic [46:0] OUT_amoData;
	output logic [51:0] OUT_uop;
	function automatic HasFU;
		input logic [3:0] fu;
		logic rv;
		begin
			rv = (FUS & (1 << fu)) != 0;
			HasFU = rv;
		end
	endfunction
	wire [31:0] srcA = IN_uop[182-:32];
	wire [31:0] srcB = IN_uop[150-:32];
	wire [31:0] imm = IN_uop[77-:32];
	reg [31:0] resC;
	assign OUT_zcFwd[39-:32] = resC;
	assign OUT_zcFwd[7-:7] = IN_uop[39-:7];
	assign OUT_zcFwd[0] = (IN_uop[0] && HasFU(IN_uop[5-:4])) && !IN_uop[39];
	wire [5:0] resLzTz;
	reg [31:0] srcAbitRev;
	always_comb begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < 32; i = i + 1)
			srcAbitRev[i] = srcA[31 - i];
	end
	LZCnt lzc(
		.in((IN_uop[45-:6] == 6'd0 ? srcA : srcAbitRev)),
		.out(resLzTz)
	);
	wire [5:0] resPopCnt;
	PopCnt popc(
		.in(IN_uop[182-:32]),
		.res(resPopCnt)
	);
	wire lessThan = $signed(srcA) < $signed(srcB);
	wire lessThanU = srcA < srcB;
	wire [31:0] finalHalfwPC = IN_uop[118-:32];
	wire [31:0] nextInstrPC = finalHalfwPC + 2;
	wire [31:0] firstHalfwPC = finalHalfwPC - (IN_uop[1] ? 0 : 2);
	function automatic logic [31:0] sv2v_cast_32;
		input logic [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	always_comb begin
		resC = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
		case (IN_uop[5-:4])
			4'd0:
				if (HasFU(4'd0) || HasFU(4'd10))
					case (IN_uop[45-:6])
						6'd56, 6'd0: resC = srcA + srcB;
						6'd57, 6'd1: resC = srcA ^ srcB;
						6'd59, 6'd2: resC = srcA | srcB;
						6'd58, 6'd3: resC = srcA & srcB;
						6'd61, 6'd18: resC = (lessThan ? srcB : srcA);
						6'd63, 6'd19: resC = (lessThanU ? srcB : srcA);
						6'd60, 6'd20: resC = (lessThan ? srcA : srcB);
						6'd62, 6'd21: resC = (lessThanU ? srcA : srcB);
						6'd4: resC = srcA << srcB[4:0];
						6'd5: resC = srcA >> srcB[4:0];
						6'd6: resC = {31'b0000000000000000000000000000000, lessThan};
						6'd7: resC = {31'b0000000000000000000000000000000, lessThanU};
						6'd8: resC = srcA - srcB;
						6'd9: resC = $signed(srcA) >>> srcB[4:0];
						6'd10: resC = srcB;
						6'd12: resC = srcB + (srcA << 1);
						6'd13: resC = srcB + (srcA << 2);
						6'd14: resC = srcB + (srcA << 3);
						6'd16: resC = srcA & ~srcB;
						6'd17: resC = srcA | ~srcB;
						6'd15: resC = srcA ^ ~srcB;
						6'd22: resC = {{24 {srcA[7]}}, srcA[7:0]};
						6'd23: resC = {{16 {srcA[15]}}, srcA[15:0]};
						6'd24: resC = {16'b0000000000000000, srcA[15:0]};
						default:
							;
					endcase
			4'd1:
				if (HasFU(4'd1))
					case (IN_uop[45-:6])
						6'd0: resC = firstHalfwPC + imm;
						6'd8, 6'd10, 6'd9, 6'd1: resC = nextInstrPC;
						default:
							;
					endcase
			4'd2:
				if (HasFU(4'd2))
					case (IN_uop[45-:6])
						6'd0, 6'd1: resC = {26'b00000000000000000000000000, resLzTz};
						6'd2: resC = {26'b00000000000000000000000000, resPopCnt};
						6'd3: resC = (srcA << srcB[4:0]) | (srcA >> (32 - srcB[4:0]));
						6'd4: resC = (srcA >> srcB[4:0]) | (srcA << (32 - srcB[4:0]));
						6'd5: resC = {{4'd8 {|srcA[31:24]}}, {4'd8 {|srcA[23:16]}}, {4'd8 {|srcA[15:8]}}, {4'd8 {|srcA[7:0]}}};
						6'd6: resC = {srcA[7:0], srcA[15:8], srcA[23:16], srcA[31:24]};
						6'd7: resC = srcA & ~(32'd1 << srcB[4:0]);
						6'd8: resC = sv2v_cast_32(srcA[srcB[4:0]]);
						6'd9: resC = srcA ^ (32'd1 << srcB[4:0]);
						6'd10: resC = srcA | (32'd1 << srcB[4:0]);
						default:
							;
					endcase
			default:
				;
		endcase
	end
	logic [3:0] flags;
	always_comb begin
		flags = 4'd0;
		if ((IN_uop[5-:4] == 4'd0) && (IN_uop[45-:6] == 6'd11))
			flags = imm[3:0];
	end
	reg isBranch;
	reg branchTaken;
	always_comb begin
		branchTaken = 0;
		isBranch = 0;
		if (IN_uop[5-:4] == 4'd1) begin
			case (IN_uop[45-:6])
				6'd1: branchTaken = 1;
				6'd2: branchTaken = srcA == srcB;
				6'd3: branchTaken = srcA != srcB;
				6'd4: branchTaken = lessThan;
				6'd5: branchTaken = !lessThan;
				6'd6: branchTaken = lessThanU;
				6'd7: branchTaken = !lessThanU;
				default:
					;
			endcase
			isBranch = (((((IN_uop[45-:6] == 6'd2) || (IN_uop[45-:6] == 6'd3)) || (IN_uop[45-:6] == 6'd4)) || (IN_uop[45-:6] == 6'd5)) || (IN_uop[45-:6] == 6'd6)) || (IN_uop[45-:6] == 6'd7);
		end
	end
	generate
		if (HasFU(4'd1)) begin : genblk1
			logic [73:0] branch_c;
			logic [75:0] btUpdate_c;
			always_ff @(posedge clk) OUT_btUpdate <= btUpdate_c;
			assign OUT_branch = branch_c;
			reg indBranchCorrect;
			reg [31:0] indBranchDst;
			always_comb begin
				indBranchCorrect = 'x;
				indBranchDst = 'x;
				case (IN_uop[45-:6])
					6'd8, 6'd9, 6'd10: begin
						indBranchDst = srcA + {{20 {imm[11]}}, imm[11:0]};
						indBranchDst[0] = 0;
						indBranchCorrect = indBranchDst[31:1] == srcB[31:1];
					end
					default:
						;
				endcase
			end
			always_comb begin
				branch_c = 'x;
				branch_c[0] = 0;
				btUpdate_c = 'x;
				btUpdate_c[0] = 0;
				if (rst)
					;
				else if ((IN_uop[0] && (IN_uop[5-:4] == 4'd1)) && (!IN_branch[0] || ($signed(IN_uop[32-:7] - IN_branch[27-:7]) <= 0))) begin
					branch_c[27-:7] = IN_uop[32-:7];
					branch_c[13-:7] = IN_uop[12-:7];
					branch_c[20-:7] = IN_uop[19-:7];
					branch_c[0] = 0;
					branch_c[6] = 0;
					branch_c[5-:5] = IN_uop[25-:5];
					branch_c[67-:3] = IN_uop[86-:3];
					branch_c[62-:3] = 3'd0;
					branch_c[64-:2] = 2'd0;
					branch_c[68] = 0;
					branch_c[70-:2] = 2'd0;
					if (isBranch) begin
						if ((branchTaken != IN_uop[20]) && (IN_uop[45-:6] != 6'd1)) begin
							if (branchTaken) begin
								branch_c[59-:32] = firstHalfwPC + {{19 {imm[12]}}, imm[12:0]};
								btUpdate_c[43-:32] = firstHalfwPC + {{19 {imm[12]}}, imm[12:0]};
							end
							else
								branch_c[59-:32] = nextInstrPC;
							branch_c[0] = 1;
							branch_c[73-:3] = (branchTaken ? 3'd1 : 3'd2);
							branch_c[62-:3] = (branchTaken ? 3'd4 : 3'd3);
						end
					end
					else if (((IN_uop[45-:6] == 6'd8) || (IN_uop[45-:6] == 6'd9)) || (IN_uop[45-:6] == 6'd10))
						if (!indBranchCorrect || !IN_uop[20]) begin
							branch_c[59-:32] = indBranchDst;
							branch_c[73-:3] = (IN_uop[45-:6] == 6'd8 ? 3'd3 : 3'd4);
							branch_c[0] = 1;
							if (IN_uop[45-:6] == 6'd8)
								branch_c[64-:2] = 2'd2;
							if (IN_uop[45-:6] == 6'd9)
								branch_c[64-:2] = 2'd1;
							if ((IN_uop[45-:6] == 6'd9) || (IN_uop[45-:6] == 6'd10)) begin
								btUpdate_c[75-:32] = finalHalfwPC;
								btUpdate_c[11-:3] = IN_uop[83-:3];
								btUpdate_c[3] = finalHalfwPC[1+:3] > IN_uop[80-:3];
								btUpdate_c[6-:3] = IN_uop[80-:3] + 1;
								btUpdate_c[43-:32] = indBranchDst;
								btUpdate_c[8-:2] = (IN_uop[45-:6] == 6'd9 ? 2'd1 : 2'd0);
								btUpdate_c[2] = IN_uop[1];
								btUpdate_c[1] = 0;
								btUpdate_c[0] = 1;
							end
						end
				end
			end
		end
		else begin : genblk1
			assign OUT_btUpdate = 'x;
			assign OUT_branch = 'x;
		end
	endgenerate
	function automatic logic [51:0] sv2v_cast_52;
		input logic [51:0] inp;
		sv2v_cast_52 = inp;
	endfunction
	function automatic logic [46:0] sv2v_cast_47;
		input logic [46:0] inp;
		sv2v_cast_47 = inp;
	endfunction
	always_ff @(posedge clk) begin
		OUT_uop <= sv2v_cast_52(52'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		OUT_amoData <= sv2v_cast_47(47'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		if (rst)
			;
		else if ((IN_uop[0] && HasFU(IN_uop[5-:4])) && (!IN_branch[0] || ($signed(IN_uop[32-:7] - IN_branch[27-:7]) <= 0))) begin
			OUT_uop[51-:32] <= resC;
			OUT_uop[19-:7] <= IN_uop[39-:7];
			OUT_uop[1] <= 0;
			OUT_uop[12-:7] <= IN_uop[32-:7];
			if (HasFU(4'd10) && (IN_uop[45-:6] >= 6'd56)) begin
				OUT_amoData[0] <= 1;
				OUT_amoData[46-:32] <= resC;
				OUT_amoData[14-:7] <= IN_uop[19-:7];
				OUT_amoData[7-:7] <= IN_uop[32-:7];
			end
			OUT_uop[5-:4] <= flags;
			if (HasFU(4'd1))
				if (isBranch)
					OUT_uop[5-:4] <= (branchTaken ? 4'd2 : 4'd3);
				else if (((IN_uop[45-:6] == 6'd8) || (IN_uop[45-:6] == 6'd9)) || (IN_uop[45-:6] == 6'd10))
					OUT_uop[5-:4] <= 4'd1;
			OUT_uop[0] <= 1;
		end
	end
endmodule
module IssueQueue (
	clk,
	rst,
	IN_defer,
	OUT_stall,
	IN_stall,
	IN_doNotIssueDiv,
	IN_doNotIssueFDiv,
	IN_uop,
	IN_uopOrdering,
	IN_flagUOp,
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
	parameter FUS = 0;
	input wire clk;
	input wire rst;
	input wire [NUM_UOPS - 1:0] IN_defer;
	output reg [NUM_UOPS - 1:0] OUT_stall;
	input wire IN_stall;
	input wire IN_doNotIssueDiv;
	input wire IN_doNotIssueFDiv;
	localparam NUM_AGUS = 2;
	localparam NUM_ALUS = 3;
	localparam NUM_PORTS_TOTAL = 7;
	input logic [(NUM_UOPS * 129) - 1:0] IN_uop;
	input logic [(NUM_UOPS * 2) - 1:0] IN_uopOrdering;
	input logic [(RESULT_BUS_COUNT * 20) - 1:0] IN_flagUOp;
	input logic [73:0] IN_branch;
	input logic [(RESULT_BUS_COUNT * 109) - 1:0] IN_issueUOps;
	input logic [6:0] IN_maxStoreSqN;
	input logic [6:0] IN_maxLoadSqN;
	input logic [6:0] IN_commitSqN;
	output logic [108:0] OUT_uop;
	function automatic HasFU;
		input logic [3:0] fu;
		logic rv;
		begin
			rv = (FUS & (1 << fu)) != 0;
			HasFU = rv;
		end
	endfunction
	localparam ID_LEN = $clog2(SIZE);
	localparam IMM_EXT = ((32 - IMM_BITS) > 0 ? 32 - IMM_BITS : 0);
	localparam REGULAR_IMM_BITS = (IMM_BITS < 32 ? IMM_BITS : 32);
	localparam IDIV_DLY = 33;
	localparam IMUL_DLY = 3;
	localparam AGU_PORT_IDX = (PORT_IDX >= NUM_ALUS ? PORT_IDX - NUM_ALUS : PORT_IDX);
	logic [((IMM_BITS + NUM_OPERANDS) + (NUM_OPERANDS * 7)) + 47:0] queue [SIZE - 1:0];
	reg [$clog2(SIZE):0] insertIndex;
	reg [32:0] reservedWBs;
	reg [NUM_OPERANDS - 1:0] newAvail [SIZE - 1:0];
	reg [NUM_OPERANDS - 1:0] newAvail_dl [SIZE - 1:0];
	always_comb begin : sv2v_autoblock_1
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
								if ((IN_flagUOp[j * 20] && !IN_flagUOp[(j * 20) + 19]) && (queue[i][((NUM_OPERANDS * 7) + 47) - (((NUM_OPERANDS * 7) - 1) - (k * 7))+:7] == IN_flagUOp[(j * 20) + 19-:7]))
									newAvail[i][k] = 1;
						end
				end
				begin : sv2v_autoblock_5
					integer j;
					for (j = 0; j < NUM_ALUS; j = j + 1)
						if (IN_issueUOps[j * 109] && !IN_issueUOps[(j * 109) + 40])
							if (((IN_issueUOps[(j * 109) + 5-:4] == 4'd0) || (IN_issueUOps[(j * 109) + 5-:4] == 4'd1)) || (IN_issueUOps[(j * 109) + 5-:4] == 4'd2)) begin : sv2v_autoblock_6
								integer k;
								for (k = 0; k < NUM_OPERANDS; k = k + 1)
									if (queue[i][((NUM_OPERANDS * 7) + 47) - (((NUM_OPERANDS * 7) - 1) - (k * 7))+:7] == IN_issueUOps[(j * 109) + 40-:7])
										newAvail[i][k] = 1;
							end
							else if ((IN_issueUOps[(j * 109) + 5-:4] == 4'd6) || (IN_issueUOps[(j * 109) + 5-:4] == 4'd7)) begin : sv2v_autoblock_7
								integer k;
								for (k = 0; k < NUM_OPERANDS; k = k + 1)
									if (queue[i][((NUM_OPERANDS * 7) + 47) - (((NUM_OPERANDS * 7) - 1) - (k * 7))+:7] == IN_issueUOps[(j * 109) + 40-:7])
										newAvail_dl[i][k] = 1;
							end
				end
			end
	end
	reg defer [NUM_UOPS - 1:0];
	always_comb begin
		defer[0] = IN_defer[0];
		begin : sv2v_autoblock_8
			integer i;
			for (i = 1; i < NUM_UOPS; i = i + 1)
				defer[i] = defer[i - 1] | IN_defer[i];
		end
	end
	logic [128:0] enqCandidates [NUM_ENQUEUE - 1:0];
	function automatic logic [6:0] sv2v_cast_CE970;
		input logic [6:0] inp;
		sv2v_cast_CE970 = inp;
	endfunction
	function automatic logic [128:0] sv2v_cast_EAC36;
		input logic [128:0] inp;
		sv2v_cast_EAC36 = inp;
	endfunction
	function automatic logic [1:0] sv2v_cast_87C5F;
		input logic [1:0] inp;
		sv2v_cast_87C5F = inp;
	endfunction
	function automatic logic signed [($clog2(SIZE) >= 0 ? $clog2(SIZE) + 1 : 1 - $clog2(SIZE)) - 1:0] sv2v_cast_83CE2_signed;
		input logic signed [($clog2(SIZE) >= 0 ? $clog2(SIZE) + 1 : 1 - $clog2(SIZE)) - 1:0] inp;
		sv2v_cast_83CE2_signed = inp;
	endfunction
	always_comb begin : sv2v_autoblock_9
		logic [$clog2(NUM_ENQUEUE) - 1:0] idx;
		logic [$clog2(SIZE):0] qIdx;
		logic limit;
		idx = 0;
		qIdx = insertIndex;
		limit = 0;
		begin : sv2v_autoblock_10
			integer i;
			for (i = 0; i < NUM_ENQUEUE; i = i + 1)
				enqCandidates[i] = sv2v_cast_EAC36({121'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_CE970(0), 1'd0});
		end
		begin : sv2v_autoblock_11
			integer i;
			for (i = 0; i < NUM_UOPS; i = i + 1)
				begin
					OUT_stall[i] = 0;
					if ((((((IN_uop[(i * 129) + (1 + PORT_IDX)] && HasFU(IN_uop[(i * 129) + 12-:4])) && (!((IN_uop[(i * 129) + 12-:4] == 4'd3) && (IN_uop[(i * 129) + 40-:6] < 6'd6)) || (IN_uop[(i * 129) + 13] == AGU_PORT_IDX[0]))) && (!((IN_uop[(i * 129) + 12-:4] == 4'd3) && (IN_uop[(i * 129) + 40-:6] >= 6'd6)) || (IN_uop[(i * 129) + 20] == AGU_PORT_IDX[0]))) && ((IN_uop[(i * 129) + 12-:4] != 4'd10) || (IN_uop[(i * 129) + 20] == AGU_PORT_IDX[0]))) && ((PORT_IDX >= NUM_ALUS) || (IN_uopOrdering[i * 2+:2] == sv2v_cast_87C5F(PORT_IDX)))) && (((PORT_IDX >= NUM_ALUS) || (IN_uop[(i * 129) + 12-:4] != 4'd10)) || (IN_uop[(i * 129) + 40-:6] != 6'd55)))
						if (((!limit && (qIdx != sv2v_cast_83CE2_signed(SIZE))) && !IN_branch[0]) && !defer[i]) begin
							if (NUM_ENQUEUE == NUM_UOPS)
								enqCandidates[i] = IN_uop[0 + (i * 129)+:129];
							else begin
								enqCandidates[idx] = IN_uop[0 + (i * 129)+:129];
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
	reg [SIZE - 1:0] deqCandidate_c;
	always_comb begin : sv2v_autoblock_12
		integer i;
		for (i = 0; i < SIZE; i = i + 1)
			deqCandidate_c[i] = ((((((((i < insertIndex) && &(queue[i][NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)-:((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) >= ((NUM_OPERANDS * 7) + 48) ? ((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - ((NUM_OPERANDS * 7) + 48)) + 1 : (((NUM_OPERANDS * 7) + 48) - (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) + 1)] | newAvail[i])) && ((!HasFU(4'd5) || (queue[i][4-:4] != 4'd5)) || !IN_doNotIssueDiv)) && ((!HasFU(4'd8) || (queue[i][4-:4] != 4'd8)) || !IN_doNotIssueFDiv)) && !((((((queue[i][4-:4] == 4'd0) || (queue[i][4-:4] == 4'd1)) || (queue[i][4-:4] == 4'd2)) || (queue[i][4-:4] == 4'd6)) || (queue[i][4-:4] == 4'd7)) && reservedWBs[0])) && ((!HasFU(4'd11) || (queue[i][4-:4] != 4'd11)) || ((i == 0) && (queue[i][46-:7] == IN_commitSqN)))) && (((!HasFU(4'd3) || ((queue[i][4-:4] != 4'd3) && (queue[i][4-:4] != 4'd10))) || ((queue[i][32-:6] >= 6'd6) && (queue[i][32-:6] < 6'd55))) || ($signed(queue[i][11-:7] - IN_maxLoadSqN) <= 0))) && (((!HasFU(4'd3) || ((queue[i][4-:4] != 4'd3) && (queue[i][4-:4] != 4'd10))) || (queue[i][32-:6] < 6'd6)) || ($signed(queue[i][18-:7] - IN_maxStoreSqN) <= 0))) && (((!HasFU(4'd3) || (queue[i][4-:4] != 4'd3)) || (queue[i][32-:6] != 6'd6)) || ((i == 0) && (queue[i][46-:7] == IN_commitSqN)));
	end
	logic [$clog2(SIZE) + 0:0] deq;
	PriorityEncoder #(.BITS(SIZE)) penc(
		.IN_data(deqCandidate_c),
		.OUT_idx({deq[$clog2(SIZE) + 0-:(($clog2(SIZE) + 0) >= 1 ? $clog2(SIZE) + 0 : 2 - ($clog2(SIZE) + 0))]}),
		.OUT_idxValid({deq[0]})
	);
	localparam logic [6:0] TAG_ZERO = 7'b1000000;
	function automatic logic [108:0] sv2v_cast_109;
		input logic [108:0] inp;
		sv2v_cast_109 = inp;
	endfunction
	function automatic logic [6:0] sv2v_cast_7;
		input logic [6:0] inp;
		sv2v_cast_7 = inp;
	endfunction
	function automatic logic [IMM_BITS - 1:0] sv2v_cast_93B7D;
		input logic [IMM_BITS - 1:0] inp;
		sv2v_cast_93B7D = inp;
	endfunction
	function automatic logic [NUM_OPERANDS - 1:0] sv2v_cast_D09C0;
		input logic [NUM_OPERANDS - 1:0] inp;
		sv2v_cast_D09C0 = inp;
	endfunction
	function automatic logic [(NUM_OPERANDS * 7) - 1:0] sv2v_cast_F391B;
		input logic [(NUM_OPERANDS * 7) - 1:0] inp;
		sv2v_cast_F391B = inp;
	endfunction
	function automatic logic [((((IMM_BITS + NUM_OPERANDS) + (NUM_OPERANDS * 7)) + 47) >= 0 ? ((IMM_BITS + NUM_OPERANDS) + (NUM_OPERANDS * 7)) + 48 : 1 - (((IMM_BITS + NUM_OPERANDS) + (NUM_OPERANDS * 7)) + 47)) - 1:0] sv2v_cast_29448;
		input logic [((((IMM_BITS + NUM_OPERANDS) + (NUM_OPERANDS * 7)) + 47) >= 0 ? ((IMM_BITS + NUM_OPERANDS) + (NUM_OPERANDS * 7)) + 48 : 1 - (((IMM_BITS + NUM_OPERANDS) + (NUM_OPERANDS * 7)) + 47)) - 1:0] inp;
		sv2v_cast_29448 = inp;
	endfunction
	always_ff @(posedge clk) begin : sv2v_autoblock_13
		reg [ID_LEN:0] newInsertIndex;
		newInsertIndex = 'x;
		begin : sv2v_autoblock_14
			integer i;
			for (i = 0; i < SIZE; i = i + 1)
				queue[i][NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)-:((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) >= ((NUM_OPERANDS * 7) + 48) ? ((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - ((NUM_OPERANDS * 7) + 48)) + 1 : (((NUM_OPERANDS * 7) + 48) - (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) + 1)] <= (queue[i][NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)-:((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) >= ((NUM_OPERANDS * 7) + 48) ? ((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - ((NUM_OPERANDS * 7) + 48)) + 1 : (((NUM_OPERANDS * 7) + 48) - (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) + 1)] | newAvail[i]) | newAvail_dl[i];
		end
		reservedWBs <= {1'b0, reservedWBs[32:1]};
		if (rst) begin
			insertIndex <= 0;
			reservedWBs <= 0;
			OUT_uop <= sv2v_cast_109(109'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			begin : sv2v_autoblock_15
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					queue[i] <= sv2v_cast_29448({sv2v_cast_93B7D('x), sv2v_cast_D09C0(0), sv2v_cast_F391B('x), 1'bx, 7'bxxxxxxx, 7'bxxxxxxx, 6'bxxxxxx, 5'bxxxxx, 3'bxxx, 7'bxxxxxxx, 7'bxxxxxxx, 4'bxxxx, 1'bx});
			end
		end
		else if (IN_branch[0]) begin
			newInsertIndex = 0;
			begin : sv2v_autoblock_16
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					if ((i < insertIndex) && ($signed(queue[i][46-:7] - IN_branch[27-:7]) <= 0))
						newInsertIndex = i[$clog2(SIZE):0] + 1;
			end
			insertIndex <= newInsertIndex;
			if (!IN_stall || ($signed(OUT_uop[47-:7] - IN_branch[27-:7]) > 0)) begin
				OUT_uop <= 'x;
				OUT_uop[0] <= 0;
			end
		end
		else begin
			newInsertIndex = insertIndex;
			if (!IN_stall) begin
				OUT_uop <= 'x;
				OUT_uop[0] <= 0;
				if (deq[0]) begin : sv2v_autoblock_17
					logic [((IMM_BITS + NUM_OPERANDS) + (NUM_OPERANDS * 7)) + 47:0] deqEntry;
					deqEntry = queue[deq[$clog2(SIZE) + 0-:(($clog2(SIZE) + 0) >= 1 ? $clog2(SIZE) + 0 : 2 - ($clog2(SIZE) + 0))]];
					OUT_uop[0] <= 1;
					OUT_uop[108-:32] <= {{IMM_EXT {deqEntry[(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - ((IMM_BITS - 1) - (REGULAR_IMM_BITS - 1))]}}, deqEntry[(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - ((IMM_BITS - 1) - (REGULAR_IMM_BITS - 1)):(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - (IMM_BITS - 1)]};
					OUT_uop[63-:7] <= deqEntry[((NUM_OPERANDS * 7) + 47) - ((NUM_OPERANDS * 7) - 1)+:7];
					if (NUM_OPERANDS >= 2)
						OUT_uop[55-:7] <= deqEntry[((NUM_OPERANDS * 7) + 47) - ((NUM_OPERANDS * 7) - 8)+:7];
					else
						OUT_uop[55-:7] <= TAG_ZERO;
					OUT_uop[48] <= deqEntry[47];
					OUT_uop[47-:7] <= deqEntry[46-:7];
					OUT_uop[40-:7] <= deqEntry[39-:7];
					OUT_uop[33-:6] <= deqEntry[32-:6];
					OUT_uop[27-:5] <= deqEntry[26-:5];
					OUT_uop[22-:3] <= deqEntry[21-:3];
					OUT_uop[19-:7] <= deqEntry[18-:7];
					OUT_uop[12-:7] <= deqEntry[11-:7];
					OUT_uop[5-:4] <= deqEntry[4-:4];
					OUT_uop[1] <= deqEntry[0];
					if ((IMM_BITS == 36) && HasFU(4'd1))
						OUT_uop[76-:12] <= {deqEntry[(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - ((IMM_BITS - 1) - (IMM_BITS - 1))-:4], deqEntry[(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - (IMM_BITS - 1)], deqEntry[((NUM_OPERANDS * 7) + 47) - ((NUM_OPERANDS * 7) - 14)-:7]};
					else
						OUT_uop[76-:12] <= 'x;
					case (deqEntry[4-:4])
						4'd5: reservedWBs <= {1'b0, reservedWBs[32:1]} | 34'sd4294967296;
						4'd4: reservedWBs <= {1'b0, reservedWBs[32:1]} | 4;
						default:
							;
					endcase
					newInsertIndex = newInsertIndex - 1;
					begin : sv2v_autoblock_18
						integer i;
						for (i = 0; i < (SIZE - 1); i = i + 1)
							if (i >= deq[$clog2(SIZE) + 0-:(($clog2(SIZE) + 0) >= 1 ? $clog2(SIZE) + 0 : 2 - ($clog2(SIZE) + 0))]) begin
								queue[i] <= queue[i + 1];
								queue[i][NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)-:((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) >= ((NUM_OPERANDS * 7) + 48) ? ((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - ((NUM_OPERANDS * 7) + 48)) + 1 : (((NUM_OPERANDS * 7) + 48) - (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) + 1)] <= (queue[i + 1][NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)-:((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) >= ((NUM_OPERANDS * 7) + 48) ? ((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - ((NUM_OPERANDS * 7) + 48)) + 1 : (((NUM_OPERANDS * 7) + 48) - (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) + 1)] | newAvail[i + 1]) | newAvail_dl[i + 1];
							end
					end
				end
			end
			begin : sv2v_autoblock_19
				integer i;
				for (i = 0; i < NUM_ENQUEUE; i = i + 1)
					if (enqCandidates[i][1 + PORT_IDX]) begin : sv2v_autoblock_20
						logic [((IMM_BITS + NUM_OPERANDS) + (NUM_OPERANDS * 7)) + 47:0] temp;
						temp[IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))-:((IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) >= (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 48)) ? ((IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 48))) + 1 : ((NUM_OPERANDS + ((NUM_OPERANDS * 7) + 48)) - (IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)))) + 1)] = 0;
						temp[(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - ((IMM_BITS - 1) - (REGULAR_IMM_BITS - 1)):(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - (IMM_BITS - 1)] = enqCandidates[i][96 + REGULAR_IMM_BITS:97];
						temp[(NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - (NUM_OPERANDS - 1)] = enqCandidates[i][84];
						temp[((NUM_OPERANDS * 7) + 47) - ((NUM_OPERANDS * 7) - 1)+:7] = enqCandidates[i][83-:7];
						if (NUM_OPERANDS >= 2) begin
							temp[(NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - (NUM_OPERANDS - 2)] = enqCandidates[i][76];
							temp[((NUM_OPERANDS * 7) + 47) - ((NUM_OPERANDS * 7) - 8)+:7] = enqCandidates[i][75-:7];
						end
						temp[39-:7] = enqCandidates[i][52-:7];
						temp[4-:4] = enqCandidates[i][12-:4];
						temp[47] = enqCandidates[i][68];
						temp[46-:7] = enqCandidates[i][59-:7];
						temp[32-:6] = enqCandidates[i][40-:6];
						temp[26-:5] = enqCandidates[i][34-:5];
						temp[21-:3] = enqCandidates[i][29-:3];
						temp[18-:7] = enqCandidates[i][26-:7];
						temp[11-:7] = enqCandidates[i][19-:7];
						temp[0] = enqCandidates[i][8];
						if (temp[4-:4] == 4'd10)
							if (PORT_IDX < NUM_ALUS) begin
								temp[4-:4] = 4'd0;
								temp[(NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - (NUM_OPERANDS - 1)] = enqCandidates[i][67];
								temp[((NUM_OPERANDS * 7) + 47) - ((NUM_OPERANDS * 7) - 1)+:7] = enqCandidates[i][66-:7];
								temp[39-:7] = TAG_ZERO;
							end
						begin : sv2v_autoblock_21
							integer j;
							for (j = 0; j < RESULT_BUS_COUNT; j = j + 1)
								if (IN_flagUOp[j * 20] && !IN_flagUOp[(j * 20) + 19]) begin : sv2v_autoblock_22
									integer k;
									for (k = 0; k < NUM_OPERANDS; k = k + 1)
										if (temp[((NUM_OPERANDS * 7) + 47) - (((NUM_OPERANDS * 7) - 1) - (k * 7))+:7] == IN_flagUOp[(j * 20) + 19-:7])
											temp[(NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - ((NUM_OPERANDS - 1) - k)] = 1;
								end
						end
						if ((HasFU(4'd1) && (enqCandidates[i][12-:4] == 4'd1)) && (((enqCandidates[i][40-:6] == 6'd9) || (enqCandidates[i][40-:6] == 6'd10)) || (enqCandidates[i][40-:6] == 6'd8))) begin
							temp[((NUM_OPERANDS * 7) + 47) - (((NUM_OPERANDS * 7) - 1) - ((NUM_OPERANDS - 1) * 7))+:7] = sv2v_cast_7(enqCandidates[i][91:85]);
							temp[(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - (IMM_BITS - 1)] = enqCandidates[i][92];
							temp[(IMM_BITS + (NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47))) - ((IMM_BITS - 1) - (IMM_BITS - 1))-:4] = enqCandidates[i][96:93];
							temp[(NUM_OPERANDS + ((NUM_OPERANDS * 7) + 47)) - ((NUM_OPERANDS - 1) - (NUM_OPERANDS - 1))] = 1;
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
	IN_memc,
	IN_LSU_memc,
	IN_comLoadSqN,
	IN_comSqN,
	IN_stall,
	IN_uop,
	IN_ldAck,
	IN_SQ_done,
	OUT_uopAGULd,
	OUT_uopLd,
	IN_branch,
	OUT_branch,
	OUT_maxLoadSqN,
	OUT_comLimit
);
	parameter NUM_ENTRIES = 16;
	input wire clk;
	input wire rst;
	input logic [558:0] IN_memc;
	input logic [224:0] IN_LSU_memc;
	input logic [6:0] IN_comLoadSqN;
	input logic [6:0] IN_comSqN;
	localparam NUM_AGUS = 2;
	input wire [1:0] IN_stall;
	input logic [163:0] IN_uop;
	input logic [85:0] IN_ldAck;
	input wire IN_SQ_done;
	output logic [201:0] OUT_uopAGULd;
	output logic [201:0] OUT_uopLd;
	input logic [73:0] IN_branch;
	output logic [73:0] OUT_branch;
	output logic [6:0] OUT_maxLoadSqN;
	output logic [7:0] OUT_comLimit;
	localparam TAG_SIZE = 7 - $clog2(NUM_ENTRIES);
	wire logic [6:0] baseIndex = IN_comLoadSqN;
	function automatic logic [6:0] GetLoadSqN;
		input logic [$clog2(NUM_ENTRIES) - 1:0] idx;
		logic [TAG_SIZE - 1:0] hiBits;
		logic [6:0] rv;
		begin
			hiBits = baseIndex[$clog2(NUM_ENTRIES)+:TAG_SIZE];
			rv = {(idx >= baseIndex[0+:$clog2(NUM_ENTRIES)] ? hiBits : hiBits + 1'b1), idx};
			GetLoadSqN = rv;
		end
	endfunction
	logic [61:0] entries [NUM_ENTRIES - 1:0];
	logic [6:0] lastBaseIndex;
	logic [100:0] lateLoadUOp [1:0];
	reg delayLoad [1:0];
	reg nonSpeculative [1:0];
	always_comb begin : sv2v_autoblock_1
		integer h;
		for (h = 0; h < NUM_AGUS; h = h + 1)
			begin
				OUT_uopAGULd[h * 101+:101] = 'x;
				OUT_uopAGULd[h * 101] = 0;
				OUT_uopLd[h * 101+:101] = 'x;
				OUT_uopLd[h * 101] = 0;
				nonSpeculative[h] = IN_uop[h * 82] && (IN_uop[(h * 82) + 81-:32] < 32'h80000000);
				delayLoad[h] = nonSpeculative[h] || IN_uop[(h * 82) + 39];
				begin : sv2v_autoblock_2
					integer i;
					for (i = 0; i < NUM_AGUS; i = i + 1)
						if (i != h)
							if (((((((IN_uop[h * 82] && IN_uop[(h * 82) + 41]) && ($signed(IN_uop[(i * 82) + 17-:7] - IN_uop[(h * 82) + 17-:7]) <= 0)) && IN_uop[i * 82]) && IN_uop[(i * 82) + 42]) && (!IN_uop[(i * 82) + 2] || (IN_uop[(i * 82) + 17-:7] != IN_uop[(h * 82) + 17-:7]))) && (IN_uop[(h * 82) + 81-:30] == IN_uop[(i * 82) + 81-:30])) && (((IN_uop[(i * 82) + 44-:2] == 2) || ((IN_uop[(i * 82) + 44-:2] == 1) && ((IN_uop[(h * 82) + 44-:2] > 1) || (IN_uop[(h * 82) + 51] == IN_uop[(i * 82) + 51])))) || ((IN_uop[(i * 82) + 44-:2] == 0) && ((IN_uop[(h * 82) + 44-:2] > 0) || (IN_uop[(h * 82) + 51-:2] == IN_uop[(i * 82) + 51-:2])))))
								delayLoad[h] = 1;
				end
				if (!delayLoad[h]) begin
					OUT_uopAGULd[(h * 101) + 100-:32] = 'x;
					OUT_uopAGULd[(h * 101) + 68] = 0;
					OUT_uopAGULd[(h * 101) + 67-:32] = IN_uop[(h * 82) + 81-:32];
					OUT_uopAGULd[(h * 101) + 35] = IN_uop[(h * 82) + 45];
					OUT_uopAGULd[(h * 101) + 34-:2] = IN_uop[(h * 82) + 44-:2];
					OUT_uopAGULd[(h * 101) + 25-:7] = IN_uop[(h * 82) + 17-:7];
					OUT_uopAGULd[(h * 101) + 32-:7] = IN_uop[(h * 82) + 24-:7];
					OUT_uopAGULd[(h * 101) + 18-:7] = IN_uop[(h * 82) + 38-:7];
					OUT_uopAGULd[(h * 101) + 11-:7] = IN_uop[(h * 82) + 31-:7];
					OUT_uopAGULd[(h * 101) + 4] = IN_uop[(h * 82) + 41] && IN_uop[(h * 82) + 42];
					OUT_uopAGULd[(h * 101) + 3] = IN_uop[(h * 82) + 2];
					OUT_uopAGULd[(h * 101) + 2] = 0;
					OUT_uopAGULd[(h * 101) + 1] = IN_uop[(h * 82) + 81-:32] < 32'h80000000;
					OUT_uopAGULd[h * 101] = IN_uop[h * 82];
				end
				OUT_uopLd[h * 101+:101] = lateLoadUOp[h];
			end
	end
	logic [31:0] wAddrToMatch [1:0];
	logic [1:0] addrCompT [1:0];
	always_comb begin : sv2v_autoblock_3
		integer h;
		for (h = 0; h < NUM_AGUS; h = h + 1)
			begin
				wAddrToMatch[h] = 'x;
				addrCompT[h] = 2'd0;
				if (IN_uop[h * 82] && IN_uop[(h * 82) + 42])
					wAddrToMatch[h] = IN_uop[(h * 82) + 81-:32];
			end
	end
	logic [NUM_ENTRIES - 1:0] wAddrMatch [1:0];
	always_comb begin : sv2v_autoblock_4
		integer h;
		for (h = 0; h < NUM_AGUS; h = h + 1)
			begin : sv2v_autoblock_5
				integer i;
				for (i = 0; i < NUM_ENTRIES; i = i + 1)
					wAddrMatch[h][i] = (entries[i][0] && (entries[i][38:13] == wAddrToMatch[h][31:6])) && (entries[i][12:9] == wAddrToMatch[h][5:2]);
			end
	end
	logic [NUM_ENTRIES - 1:0] isBefore [1:0];
	genvar h;
	function automatic logic [$clog2(NUM_ENTRIES) - 1:0] sv2v_cast_899FE;
		input logic [$clog2(NUM_ENTRIES) - 1:0] inp;
		sv2v_cast_899FE = inp;
	endfunction
	function automatic logic [6:0] sv2v_cast_7;
		input logic [6:0] inp;
		sv2v_cast_7 = inp;
	endfunction
	generate
		for (h = 0; h < NUM_AGUS; h = h + 1) begin : genblk1
			wire [$clog2(NUM_ENTRIES) - 1:0] startIdx = IN_uop[(h * 82) + ((10 + $clog2(NUM_ENTRIES)) >= 11 ? 10 + $clog2(NUM_ENTRIES) : ((10 + $clog2(NUM_ENTRIES)) + ((10 + $clog2(NUM_ENTRIES)) >= 11 ? (10 + $clog2(NUM_ENTRIES)) - 10 : 12 - (10 + $clog2(NUM_ENTRIES)))) - 1)-:((10 + $clog2(NUM_ENTRIES)) >= 11 ? (10 + $clog2(NUM_ENTRIES)) - 10 : 12 - (10 + $clog2(NUM_ENTRIES)))] + sv2v_cast_899FE(IN_uop[(h * 82) + 41] && IN_uop[(h * 82) + 42]);
			RangeMaskGen #(
				.LENGTH(NUM_ENTRIES),
				.OUTPUT_ON_EQUAL(1)
			) isBeforeMaskGen(
				.IN_allOnes(1'b0),
				.IN_enable($signed(IN_uop[(h * 82) + 17-:7] - (lastBaseIndex + sv2v_cast_7(NUM_ENTRIES))) < 0),
				.IN_startIdx(startIdx),
				.IN_endIdx(lastBaseIndex[$clog2(NUM_ENTRIES) - 1:0]),
				.OUT_range(isBefore[h])
			);
		end
	endgenerate
	logic storeIsConflict [1:0];
	always_comb begin : sv2v_autoblock_6
		integer h;
		for (h = 0; h < NUM_AGUS; h = h + 1)
			begin
				storeIsConflict[h] = 0;
				begin : sv2v_autoblock_7
					integer i;
					for (i = 0; i < NUM_ENTRIES; i = i + 1)
						if ((((wAddrMatch[h][i] && entries[i][2]) && IN_uop[(h * 82) + 42]) && isBefore[h][i]) && (((IN_uop[(h * 82) + 44-:2] == 2) || ((IN_uop[(h * 82) + 44-:2] == 1) && ((entries[i][40-:2] > 1) || (entries[i][8] == IN_uop[(h * 82) + 51])))) || ((IN_uop[(h * 82) + 44-:2] == 0) && ((entries[i][40-:2] > 0) || (entries[i][8:7] == IN_uop[(h * 82) + 51-:2])))))
							storeIsConflict[h] = 1;
				end
			end
	end
	logic storeHasRsv [1:0];
	logic [37:0] comRsv;
	always_comb begin : sv2v_autoblock_8
		integer h;
		for (h = 0; h < NUM_AGUS; h = h + 1)
			storeHasRsv[h] = ((IN_uop[(h * 82) + 42] && IN_uop[(h * 82) + 40]) && comRsv[0]) && (comRsv[30-:30] == IN_uop[(h * 82) + 81-:30]);
	end
	logic [$clog2(NUM_ENTRIES) + 1:0] ltIssue [1:0];
	wire [$clog2(NUM_ENTRIES) - 1:0] deqIndex = baseIndex[$clog2(NUM_ENTRIES) - 1:0];
	function automatic logic [$clog2(NUM_ENTRIES) - 1:0] sv2v_cast_6187D;
		input logic [$clog2(NUM_ENTRIES) - 1:0] inp;
		sv2v_cast_6187D = inp;
	endfunction
	function automatic logic [(($clog2(NUM_ENTRIES) + 1) >= 0 ? $clog2(NUM_ENTRIES) + 2 : 1 - ($clog2(NUM_ENTRIES) + 1)) - 1:0] sv2v_cast_6C2CE;
		input logic [(($clog2(NUM_ENTRIES) + 1) >= 0 ? $clog2(NUM_ENTRIES) + 2 : 1 - ($clog2(NUM_ENTRIES) + 1)) - 1:0] inp;
		sv2v_cast_6C2CE = inp;
	endfunction
	always_comb begin : sv2v_autoblock_9
		logic memcNotBusy;
		memcNotBusy = !IN_memc[62];
		begin : sv2v_autoblock_10
			integer h;
			for (h = 0; h < NUM_AGUS; h = h + 1)
				begin : sv2v_autoblock_11
					logic [NUM_ENTRIES - 1:0] issueCandidates;
					issueCandidates = 0;
					ltIssue[h] = sv2v_cast_6C2CE({sv2v_cast_6187D('x), 1'bx, 1'd0});
					begin : sv2v_autoblock_12
						integer i;
						for (i = 0; i < NUM_ENTRIES; i = i + 1)
							issueCandidates[i] = (entries[i][0] && !entries[i][2]) && !entries[i][3];
					end
					begin : sv2v_autoblock_13
						integer i;
						for (i = 0; i < h; i = i + 1)
							if (ltIssue[i][0])
								issueCandidates[ltIssue[i][$clog2(NUM_ENTRIES) + 1-:(($clog2(NUM_ENTRIES) + 1) >= 2 ? $clog2(NUM_ENTRIES) + 0 : 3 - ($clog2(NUM_ENTRIES) + 1))]] = 0;
					end
					begin : sv2v_autoblock_14
						integer i;
						for (i = 0; i < NUM_ENTRIES; i = i + 1)
							begin : sv2v_autoblock_15
								logic [$clog2(NUM_ENTRIES) - 1:0] idx;
								idx = i[$clog2(NUM_ENTRIES) - 1:0] + deqIndex;
								if (issueCandidates[idx] && !ltIssue[h][0]) begin
									ltIssue[h][1] = 0;
									ltIssue[h][0] = 1;
									ltIssue[h][$clog2(NUM_ENTRIES) + 1-:(($clog2(NUM_ENTRIES) + 1) >= 2 ? $clog2(NUM_ENTRIES) + 0 : 3 - ($clog2(NUM_ENTRIES) + 1))] = idx[$clog2(NUM_ENTRIES) - 1:0];
								end
							end
					end
					if (((((h == 0) && entries[deqIndex][0]) && !entries[deqIndex][2]) && entries[deqIndex][3]) && ((IN_comLoadSqN == GetLoadSqN(deqIndex)) && IN_SQ_done)) begin
						ltIssue[h][1] = 0;
						ltIssue[h][0] = 1;
						ltIssue[h][$clog2(NUM_ENTRIES) + 1-:(($clog2(NUM_ENTRIES) + 1) >= 2 ? $clog2(NUM_ENTRIES) + 0 : 3 - ($clog2(NUM_ENTRIES) + 1))] = deqIndex;
					end
				end
		end
	end
	logic [(2 * NUM_ENTRIES) - 1:0] hasRsvOrInvalid;
	always_comb begin
		begin : sv2v_autoblock_16
			integer i;
			for (i = 0; i < NUM_ENTRIES; i = i + 1)
				begin
					hasRsvOrInvalid[i] = entries[i][1];
					hasRsvOrInvalid[i + NUM_ENTRIES] = entries[i][1];
				end
		end
		hasRsvOrInvalid = hasRsvOrInvalid & ({{NUM_ENTRIES {1'b0}}, {NUM_ENTRIES {1'b1}}} << baseIndex[$clog2(NUM_ENTRIES) - 1:0]);
	end
	logic [$clog2(NUM_ENTRIES) + 0:0] loadRsv;
	wire [$clog2(NUM_ENTRIES):0] PENC_idx;
	wire PENC_valid;
	PriorityEncoder #(.BITS(2 * NUM_ENTRIES)) penc(
		.IN_data(hasRsvOrInvalid),
		.OUT_idx({PENC_idx}),
		.OUT_idxValid({PENC_valid})
	);
	function automatic logic [(($clog2(NUM_ENTRIES) + 0) >= 0 ? $clog2(NUM_ENTRIES) + 1 : 1 - ($clog2(NUM_ENTRIES) + 0)) - 1:0] sv2v_cast_B33CD;
		input logic [(($clog2(NUM_ENTRIES) + 0) >= 0 ? $clog2(NUM_ENTRIES) + 1 : 1 - ($clog2(NUM_ENTRIES) + 0)) - 1:0] inp;
		sv2v_cast_B33CD = inp;
	endfunction
	always_comb begin
		loadRsv[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))] = sv2v_cast_899FE(PENC_idx);
		loadRsv[0] = PENC_valid;
		if (loadRsv[0] && !entries[loadRsv[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))]][0])
			loadRsv = sv2v_cast_B33CD({sv2v_cast_6187D('x), 1'd0});
	end
	reg [NUM_ENTRIES - 1:0] invalMask;
	RangeMaskGen #(
		.LENGTH(NUM_ENTRIES),
		.OUTPUT_ON_EQUAL(0)
	) invalMaskGen(
		.IN_allOnes(1'b0),
		.IN_enable(1'b1),
		.IN_startIdx(lastBaseIndex[$clog2(NUM_ENTRIES) - 1:0]),
		.IN_endIdx(baseIndex[$clog2(NUM_ENTRIES) - 1:0]),
		.OUT_range(invalMask)
	);
	reg [NUM_ENTRIES - 1:0] invalMaskBr;
	RangeMaskGen #(
		.LENGTH(NUM_ENTRIES),
		.OUTPUT_ON_EQUAL(1)
	) invalMaskBrGen(
		.IN_allOnes(IN_branch[0] && IN_branch[6]),
		.IN_enable(IN_branch[0] && !($signed(IN_branch[13-:7] - lastBaseIndex) >= NUM_ENTRIES)),
		.IN_startIdx(IN_branch[6 + $clog2(NUM_ENTRIES):7]),
		.IN_endIdx(baseIndex[$clog2(NUM_ENTRIES) - 1:0]),
		.OUT_range(invalMaskBr)
	);
	always_ff @(posedge clk) begin
		OUT_comLimit[7-:7] <= 'x;
		OUT_comLimit[0] <= 0;
		if (rst)
			;
		else begin
			OUT_comLimit[0] <= loadRsv[0];
			if (loadRsv[0])
				OUT_comLimit[7-:7] <= GetLoadSqN(loadRsv[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))]);
		end
	end
	always_comb begin : sv2v_autoblock_17
		reg prevStoreConflict;
		logic [6:0] prevStoreConflictSqN;
		prevStoreConflict = 0;
		prevStoreConflictSqN = 'x;
		OUT_branch = 'x;
		OUT_branch[0] = 0;
		begin : sv2v_autoblock_18
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				if ((IN_uop[i * 82] && IN_uop[(i * 82) + 42]) && (!IN_branch[0] || ($signed(IN_uop[(i * 82) + 31-:7] - IN_branch[27-:7]) <= 0)))
					if ((storeIsConflict[i] || (IN_uop[(i * 82) + 40] && !storeHasRsv[i])) && (!prevStoreConflict || ($signed(IN_uop[(i * 82) + 31-:7] - prevStoreConflictSqN) < 0))) begin
						OUT_branch[0] = 1;
						OUT_branch[59-:32] = 'x;
						OUT_branch[27-:7] = IN_uop[(i * 82) + 31-:7];
						OUT_branch[13-:7] = IN_uop[(i * 82) + 17-:7] + (IN_uop[(i * 82) + 41] && IN_uop[(i * 82) + 42] ? 1 : 0);
						OUT_branch[20-:7] = IN_uop[(i * 82) + 24-:7];
						OUT_branch[5-:5] = IN_uop[(i * 82) + 7-:5];
						OUT_branch[67-:3] = IN_uop[(i * 82) + 10-:3];
						OUT_branch[6] = 0;
						OUT_branch[62-:3] = 3'd0;
						OUT_branch[64-:2] = 2'd0;
						OUT_branch[68] = 0;
						OUT_branch[70-:2] = 2'd1;
						OUT_branch[73-:3] = 3'd5;
						if (IN_uop[(i * 82) + 40] && !storeHasRsv[i]) begin
							OUT_branch[27-:7] = IN_uop[(i * 82) + 31-:7] - 1;
							OUT_branch[20-:7] = IN_uop[(i * 82) + 24-:7] - 1;
							OUT_branch[68] = 1;
							OUT_branch[70-:2] = (IN_uop[(i * 82) + 1] ? 2'd2 : 2'd3);
						end
						prevStoreConflict = 1;
						prevStoreConflictSqN = IN_uop[(i * 82) + 31-:7];
					end
		end
	end
	always_ff @(posedge clk) OUT_maxLoadSqN <= (baseIndex + NUM_ENTRIES[6:0]) - 1;
	logic [37:0] specRsv;
	function automatic logic [61:0] sv2v_cast_62;
		input logic [61:0] inp;
		sv2v_cast_62 = inp;
	endfunction
	function automatic logic [37:0] sv2v_cast_38;
		input logic [37:0] inp;
		sv2v_cast_38 = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst) begin
			begin : sv2v_autoblock_19
				integer i;
				for (i = 0; i < NUM_ENTRIES; i = i + 1)
					entries[i] <= sv2v_cast_62(62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx10);
			end
			begin : sv2v_autoblock_20
				integer i;
				for (i = 0; i < NUM_AGUS; i = i + 1)
					begin
						lateLoadUOp[i] <= 'x;
						lateLoadUOp[i][0] <= 0;
					end
			end
			lastBaseIndex <= 0;
			specRsv <= sv2v_cast_38(38'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			comRsv <= sv2v_cast_38(38'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		end
		else begin : sv2v_autoblock_21
			reg [1:0] lateLoadPassthru;
			lateLoadPassthru = 0;
			lastBaseIndex <= baseIndex;
			begin : sv2v_autoblock_22
				integer i;
				for (i = 0; i < NUM_AGUS; i = i + 1)
					if (!IN_stall[i]) begin
						lateLoadUOp[i] <= 'x;
						lateLoadUOp[i][0] <= 0;
					end
			end
			begin : sv2v_autoblock_23
				integer i;
				for (i = 0; i < NUM_AGUS; i = i + 1)
					if ((IN_ldAck[i * 43] && IN_ldAck[(i * 43) + 3]) && !IN_ldAck[(i * 43) + 1]) begin : sv2v_autoblock_24
						reg [$clog2(NUM_ENTRIES) - 1:0] index;
						index = IN_ldAck[(i * 43) + (($clog2(NUM_ENTRIES) + 3) >= 4 ? $clog2(NUM_ENTRIES) + 3 : (($clog2(NUM_ENTRIES) + 3) + (($clog2(NUM_ENTRIES) + 3) >= 4 ? $clog2(NUM_ENTRIES) + 0 : 5 - ($clog2(NUM_ENTRIES) + 3))) - 1)-:(($clog2(NUM_ENTRIES) + 3) >= 4 ? $clog2(NUM_ENTRIES) + 0 : 5 - ($clog2(NUM_ENTRIES) + 3))];
						entries[index][2] <= 0;
					end
			end
			begin : sv2v_autoblock_25
				integer i;
				for (i = 0; i < NUM_AGUS; i = i + 1)
					if (((IN_uop[i * 82] && (!IN_branch[0] || ($signed(IN_uop[(i * 82) + 31-:7] - IN_branch[27-:7]) <= 0))) && IN_uop[(i * 82) + 42]) && IN_uop[(i * 82) + 40])
						comRsv <= sv2v_cast_38(38'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			end
			if ((specRsv[0] && (!IN_branch[0] || ($signed(specRsv[37-:7] - IN_branch[27-:7]) < 0))) && ($signed(specRsv[37-:7] - IN_comSqN) < 0)) begin
				comRsv <= specRsv;
				specRsv <= sv2v_cast_38(38'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			end
			begin : sv2v_autoblock_26
				integer i;
				for (i = 0; i < NUM_ENTRIES; i = i + 1)
					if (invalMaskBr[i] || invalMask[i])
						entries[i] <= sv2v_cast_62(62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx10);
			end
			if (IN_branch[0]) begin
				begin : sv2v_autoblock_27
					integer i;
					for (i = 0; i < NUM_AGUS; i = i + 1)
						if (($signed(lateLoadUOp[i][11-:7] - IN_branch[27-:7]) > 0) || IN_branch[6]) begin
							lateLoadUOp[i] <= 'x;
							lateLoadUOp[i][0] <= 0;
						end
				end
				if (specRsv[0] && ($signed(specRsv[37-:7] - IN_branch[27-:7]) >= 0))
					specRsv <= sv2v_cast_38(38'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			end
			else begin : sv2v_autoblock_28
				integer i;
				for (i = 0; i < NUM_AGUS; i = i + 1)
					if ((!lateLoadUOp[i][0] || !IN_stall[i]) || (ltIssue[i][0] && ltIssue[i][1])) begin
						if (IN_stall[i] && lateLoadUOp[i][0])
							entries[lateLoadUOp[i][18 + $clog2(NUM_ENTRIES):19]][2] <= 0;
						if (ltIssue[i][0]) begin : sv2v_autoblock_29
							logic [61:0] e;
							e = entries[ltIssue[i][$clog2(NUM_ENTRIES) + 1-:(($clog2(NUM_ENTRIES) + 1) >= 2 ? $clog2(NUM_ENTRIES) + 0 : 3 - ($clog2(NUM_ENTRIES) + 1))]];
							entries[ltIssue[i][$clog2(NUM_ENTRIES) + 1-:(($clog2(NUM_ENTRIES) + 1) >= 2 ? $clog2(NUM_ENTRIES) + 0 : 3 - ($clog2(NUM_ENTRIES) + 1))]][2] <= 1;
							lateLoadUOp[i][100-:32] <= 'x;
							lateLoadUOp[i][68] <= 0;
							lateLoadUOp[i][67-:32] <= e[38-:32];
							lateLoadUOp[i][35] <= e[5];
							lateLoadUOp[i][34-:2] <= e[40-:2];
							lateLoadUOp[i][32-:7] <= e[61-:7];
							lateLoadUOp[i][25-:7] <= GetLoadSqN(ltIssue[i][$clog2(NUM_ENTRIES) + 1-:(($clog2(NUM_ENTRIES) + 1) >= 2 ? $clog2(NUM_ENTRIES) + 0 : 3 - ($clog2(NUM_ENTRIES) + 1))]);
							lateLoadUOp[i][18-:7] <= e[47-:7];
							lateLoadUOp[i][11-:7] <= e[54-:7];
							lateLoadUOp[i][4] <= e[6];
							lateLoadUOp[i][3] <= e[4];
							lateLoadUOp[i][2] <= 0;
							lateLoadUOp[i][1] <= e[38-:32] < 32'h80000000;
							lateLoadUOp[i][0] <= 1;
						end
						else begin
							if (((i == 0) && !specRsv[0]) && loadRsv[0]) begin
								entries[loadRsv[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))]][1] <= 0;
								specRsv[0] <= 1;
								specRsv[37-:7] <= entries[loadRsv[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))]][54-:7];
								specRsv[30-:30] <= entries[loadRsv[$clog2(NUM_ENTRIES) + 0-:(($clog2(NUM_ENTRIES) + 0) >= 1 ? $clog2(NUM_ENTRIES) + 0 : 2 - ($clog2(NUM_ENTRIES) + 0))]][38:9];
							end
							if (((IN_uop[i * 82] && IN_uop[(i * 82) + 41]) && delayLoad[i]) && !nonSpeculative[i]) begin
								lateLoadUOp[i][100-:32] <= 'x;
								lateLoadUOp[i][68] <= 0;
								lateLoadUOp[i][67-:32] <= IN_uop[(i * 82) + 81-:32];
								lateLoadUOp[i][35] <= IN_uop[(i * 82) + 45];
								lateLoadUOp[i][34-:2] <= IN_uop[(i * 82) + 44-:2];
								lateLoadUOp[i][32-:7] <= IN_uop[(i * 82) + 24-:7];
								lateLoadUOp[i][25-:7] <= IN_uop[(i * 82) + 17-:7];
								lateLoadUOp[i][18-:7] <= IN_uop[(i * 82) + 38-:7];
								lateLoadUOp[i][11-:7] <= IN_uop[(i * 82) + 31-:7];
								lateLoadUOp[i][4] <= IN_uop[(i * 82) + 41] && IN_uop[(i * 82) + 42];
								lateLoadUOp[i][3] <= IN_uop[(i * 82) + 2];
								lateLoadUOp[i][2] <= 0;
								lateLoadUOp[i][1] <= IN_uop[(i * 82) + 81-:32] < 32'h80000000;
								lateLoadUOp[i][0] <= 1;
								lateLoadPassthru[i] = 1;
							end
						end
					end
			end
			begin : sv2v_autoblock_30
				integer i;
				for (i = 0; i < NUM_AGUS; i = i + 1)
					if ((IN_uop[i * 82] && IN_uop[(i * 82) + 41]) && (!IN_branch[0] || ($signed(IN_uop[(i * 82) + 31-:7] - IN_branch[27-:7]) <= 0))) begin : sv2v_autoblock_31
						reg [$clog2(NUM_ENTRIES) - 1:0] index;
						index = IN_uop[(i * 82) + ((10 + $clog2(NUM_ENTRIES)) >= 11 ? 10 + $clog2(NUM_ENTRIES) : ((10 + $clog2(NUM_ENTRIES)) + ((10 + $clog2(NUM_ENTRIES)) >= 11 ? (10 + $clog2(NUM_ENTRIES)) - 10 : 12 - (10 + $clog2(NUM_ENTRIES)))) - 1)-:((10 + $clog2(NUM_ENTRIES)) >= 11 ? (10 + $clog2(NUM_ENTRIES)) - 10 : 12 - (10 + $clog2(NUM_ENTRIES)))];
						entries[index][61-:7] <= IN_uop[(i * 82) + 24-:7];
						entries[index][54-:7] <= IN_uop[(i * 82) + 31-:7];
						entries[index][47-:7] <= IN_uop[(i * 82) + 38-:7];
						entries[index][6] <= IN_uop[(i * 82) + 41] && IN_uop[(i * 82) + 42];
						entries[index][5] <= IN_uop[(i * 82) + 45];
						entries[index][38-:32] <= IN_uop[(i * 82) + 81-:32];
						entries[index][40-:2] <= IN_uop[(i * 82) + 44-:2];
						entries[index][1] <= IN_uop[(i * 82) + 40];
						entries[index][4] <= IN_uop[(i * 82) + 2];
						entries[index][2] <= !delayLoad[i] || lateLoadPassthru[i];
						entries[index][3] <= nonSpeculative[i];
						entries[index][0] <= 1;
					end
			end
		end
endmodule
module LoadResultBuffer (
	clk,
	rst,
	IN_branch,
	IN_memc,
	IN_uop,
	OUT_ready,
	IN_ready,
	OUT_resultUOp,
	OUT_flagsUOp
);
	parameter SIZE = 8;
	input wire clk;
	input wire rst;
	input logic [73:0] IN_branch;
	input logic [558:0] IN_memc;
	input logic [88:0] IN_uop;
	output wire OUT_ready;
	input wire IN_ready;
	output logic [40:0] OUT_resultUOp;
	output logic [19:0] OUT_flagsUOp;
	logic [88:0] entries [SIZE - 1:0];
	logic [88:0] outLMQ_c;
	logic [88:0] enqLMQ_c;
	logic [$clog2(SIZE) + 0:0] deq_c;
	logic [SIZE - 1:0] entryReady;
	always_comb begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < SIZE; i = i + 1)
			entryReady[i] = entries[i][0] && entries[i][17];
	end
	PriorityEncoder #(
		.BITS(SIZE),
		.N(1)
	) deqEnc(
		.IN_data(entryReady),
		.OUT_idx({deq_c[$clog2(SIZE) + 0-:(($clog2(SIZE) + 0) >= 1 ? $clog2(SIZE) + 0 : 2 - ($clog2(SIZE) + 0))]}),
		.OUT_idxValid({deq_c[0]})
	);
	function automatic logic [88:0] sv2v_cast_89;
		input logic [88:0] inp;
		sv2v_cast_89 = inp;
	endfunction
	always_comb begin
		outLMQ_c = sv2v_cast_89(89'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		enqLMQ_c = IN_uop;
		if (IN_ready)
			if (deq_c[0])
				outLMQ_c = entries[deq_c[$clog2(SIZE) + 0-:(($clog2(SIZE) + 0) >= 1 ? $clog2(SIZE) + 0 : 2 - ($clog2(SIZE) + 0))]];
			else if (IN_uop[0] && IN_uop[17]) begin
				outLMQ_c = IN_uop;
				enqLMQ_c = sv2v_cast_89(89'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			end
	end
	logic [$clog2(SIZE) + 0:0] enq;
	assign OUT_ready = enq[0];
	logic [SIZE - 1:0] entryFree;
	always_comb begin : sv2v_autoblock_2
		integer i;
		for (i = 0; i < SIZE; i = i + 1)
			entryFree[i] = !entries[i][0];
	end
	PriorityEncoder #(
		.BITS(SIZE),
		.N(1)
	) freeEnc(
		.IN_data(entryFree),
		.OUT_idx({enq[$clog2(SIZE) + 0-:(($clog2(SIZE) + 0) >= 1 ? $clog2(SIZE) + 0 : 2 - ($clog2(SIZE) + 0))]}),
		.OUT_idxValid({enq[0]})
	);
	always_ff @(posedge clk)
		if (rst) begin : sv2v_autoblock_3
			integer i;
			for (i = 0; i < SIZE; i = i + 1)
				entries[i] <= sv2v_cast_89(89'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		end
		else begin
			begin : sv2v_autoblock_4
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					if (((entries[i][0] && !entries[i][17]) && IN_memc[398]) && (entries[i][52:25] == IN_memc[430:403])) begin
						entries[i][17] <= 1;
						begin : sv2v_autoblock_5
							integer j;
							for (j = 0; j < 4; j = j + 1)
								if (!entries[i][53 + j])
									entries[i][57 + (8 * j)+:8] <= IN_memc[431 + ({entries[i][24:23], j[1:0]} * 8)+:8];
						end
					end
			end
			if (deq_c[0])
				entries[deq_c[$clog2(SIZE) + 0-:(($clog2(SIZE) + 0) >= 1 ? $clog2(SIZE) + 0 : 2 - ($clog2(SIZE) + 0))]] <= sv2v_cast_89(89'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			if ((enqLMQ_c[0] && enq[0]) && ((!IN_branch[0] || enqLMQ_c[2]) || ($signed(enqLMQ_c[9-:7] - IN_branch[27-:7]) <= 0)))
				entries[enq[$clog2(SIZE) + 0-:(($clog2(SIZE) + 0) >= 1 ? $clog2(SIZE) + 0 : 2 - ($clog2(SIZE) + 0))]] <= enqLMQ_c;
			if (IN_branch[0]) begin : sv2v_autoblock_6
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					if ((entries[i][0] && !entries[i][2]) && ($signed(entries[i][9-:7] - IN_branch[27-:7]) > 0))
						entries[i] <= sv2v_cast_89(89'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			end
		end
	logic [40:0] resultUOp_c;
	function automatic logic [40:0] sv2v_cast_41;
		input logic [40:0] inp;
		sv2v_cast_41 = inp;
	endfunction
	function automatic logic [19:0] sv2v_cast_20;
		input logic [19:0] inp;
		sv2v_cast_20 = inp;
	endfunction
	always_comb begin
		resultUOp_c = sv2v_cast_41(41'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		OUT_flagsUOp = sv2v_cast_20(20'bxxxxxxxxxxxxxxxxxxx0);
		if (outLMQ_c[0]) begin
			OUT_flagsUOp[0] = 1;
			OUT_flagsUOp[5-:4] = 4'd0;
			OUT_flagsUOp[1] = outLMQ_c[1];
			OUT_flagsUOp[19-:7] = outLMQ_c[16-:7];
			OUT_flagsUOp[12-:7] = outLMQ_c[9-:7];
			resultUOp_c[0] = 1;
			resultUOp_c[1] = outLMQ_c[1];
			resultUOp_c[8-:7] = outLMQ_c[16-:7];
			case (outLMQ_c[20-:2])
				0: resultUOp_c[40-:32] = {{24 {(outLMQ_c[18] ? outLMQ_c[57 + ((8 * outLMQ_c[22:21]) + 7)] : 1'b0)}}, outLMQ_c[57 + (8 * outLMQ_c[22:21])+:8]};
				1: resultUOp_c[40-:32] = {{16 {(outLMQ_c[18] ? outLMQ_c[57 + ((16 * outLMQ_c[22]) + 15)] : 1'b0)}}, outLMQ_c[57 + (16 * outLMQ_c[22])+:16]};
				2: resultUOp_c[40-:32] = outLMQ_c[88-:32];
				default:
					;
			endcase
		end
	end
	always_ff @(posedge clk)
		if (rst)
			OUT_resultUOp <= sv2v_cast_41(41'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		else
			OUT_resultUOp <= resultUOp_c;
endmodule
module LoadSelector (
	IN_aguLd,
	OUT_aguLdStall,
	IN_pwLd,
	OUT_pwLdStall,
	IN_ldUOpStall,
	OUT_ldUOp
);
	localparam NUM_AGUS = 2;
	input logic [201:0] IN_aguLd;
	output reg [1:0] OUT_aguLdStall;
	input logic [65:0] IN_pwLd;
	output reg [1:0] OUT_pwLdStall;
	input wire [1:0] IN_ldUOpStall;
	output logic [201:0] OUT_ldUOp;
	always_comb begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < NUM_AGUS; i = i + 1)
			begin
				OUT_pwLdStall[i] = 0;
				OUT_aguLdStall[i] = 0;
				if (IN_aguLd[i * 101])
					OUT_aguLdStall[i] = IN_pwLd[i * 33] || IN_ldUOpStall[i];
				if (IN_pwLd[i * 33])
					OUT_pwLdStall[i] = IN_ldUOpStall[i];
			end
	end
	localparam logic [6:0] TAG_ZERO = 7'b1000000;
	always_comb begin : sv2v_autoblock_2
		integer i;
		for (i = 0; i < NUM_AGUS; i = i + 1)
			begin
				OUT_ldUOp[i * 101+:101] = 'x;
				OUT_ldUOp[i * 101] = 0;
				if (IN_aguLd[i * 101])
					OUT_ldUOp[i * 101+:101] = IN_aguLd[i * 101+:101];
				if (IN_pwLd[i * 33]) begin
					OUT_ldUOp[(i * 101) + 100-:32] = 'x;
					OUT_ldUOp[(i * 101) + 68] = 0;
					OUT_ldUOp[(i * 101) + 67-:32] = IN_pwLd[(i * 33) + 32-:32];
					OUT_ldUOp[(i * 101) + 35] = 0;
					OUT_ldUOp[(i * 101) + 34-:2] = 2;
					OUT_ldUOp[(i * 101) + 11-:7] = 0;
					OUT_ldUOp[(i * 101) + 18-:7] = TAG_ZERO;
					OUT_ldUOp[(i * 101) + 25-:7] = 0;
					OUT_ldUOp[(i * 101) + 32-:7] = 0;
					OUT_ldUOp[(i * 101) + 3] = 1;
					OUT_ldUOp[(i * 101) + 4] = 0;
					OUT_ldUOp[(i * 101) + 2] = 1;
					OUT_ldUOp[(i * 101) + 1] = 0;
					OUT_ldUOp[i * 101] = IN_pwLd[i * 33];
				end
			end
	end
endmodule
module LoadStoreUnit (
	clk,
	rst,
	IN_flush,
	IN_storeBusy,
	OUT_busy,
	IN_branch,
	OUT_ldAGUStall,
	OUT_ldStall,
	OUT_stStall,
	IN_uopELd,
	IN_aguLd,
	IN_uopLd,
	OUT_uopLdSq,
	OUT_ldAck,
	IN_uopSt,
	IF_cache,
	IF_mmio,
	IF_ct,
	IN_sqStFwd,
	IN_sqbStFwd,
	OUT_stAck,
	OUT_memc,
	OUT_BLSU_memc,
	IN_memc,
	IN_ready,
	OUT_resultUOp,
	OUT_flagsUOp
);
	parameter SIZE = 256;
	input wire clk;
	input wire rst;
	input wire IN_flush;
	input wire IN_storeBusy;
	output wire OUT_busy;
	input logic [73:0] IN_branch;
	localparam NUM_AGUS = 2;
	output reg [1:0] OUT_ldAGUStall;
	output reg [1:0] OUT_ldStall;
	output wire OUT_stStall;
	input logic [25:0] IN_uopELd;
	input logic [201:0] IN_aguLd;
	input logic [201:0] IN_uopLd;
	output logic [201:0] OUT_uopLdSq;
	output logic [85:0] OUT_ldAck;
	input logic [183:0] IN_uopSt;
	IF_Cache.HOST IF_cache;
	IF_MMIO.HOST IF_mmio;
	IF_CTable.HOST IF_ct;
	input logic [75:0] IN_sqStFwd;
	input logic [75:0] IN_sqbStFwd;
	output logic [182:0] OUT_stAck;
	output logic [224:0] OUT_memc;
	output logic [224:0] OUT_BLSU_memc;
	input logic [558:0] IN_memc;
	input wire [1:0] IN_ready;
	output logic [81:0] OUT_resultUOp;
	output logic [39:0] OUT_flagsUOp;
	localparam PORT_IDX_BITS = 1;
	logic [88:0] ldResUOp [1:0];
	logic [224:0] BLSU_memc;
	logic [224:0] LSU_memc;
	assign OUT_memc = LSU_memc;
	assign OUT_BLSU_memc = BLSU_memc;
	logic [1:0] isCacheBypassLdUOp;
	logic [100:0] ldOps_0 [1:0];
	always_comb begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < NUM_AGUS; i = i + 1)
			isCacheBypassLdUOp[i] = (((1 && ldOps_0[i][0]) && ldOps_0[i][1]) && (ldOps_0[i][67-:32] >= 32'h10000000)) && (ldOps_0[i][67-:32] < 32'h11000000);
	end
	wire isCacheBypassStUOp = (((1 && IN_uopSt[0]) && IN_uopSt[7]) && (IN_uopSt[183-:32] >= 32'h10000000)) && (IN_uopSt[183-:32] < 32'h11000000);
	wire ignoreSt = isCacheBypassStUOp;
	logic [0:0] blsuLdIdx;
	wire blsuLdIdxValid;
	OHEncoder #(
		.LEN(NUM_AGUS),
		.ALLOW_NULL(1)
	) ohEnc(
		.IN_idxOH(isCacheBypassLdUOp),
		.OUT_idx(blsuLdIdx),
		.OUT_valid(blsuLdIdxValid)
	);
	wire BLSU_stStall;
	wire BLSU_ldStall;
	logic [100:0] BLSU_uopLd;
	wire [31:0] BLSU_ldResult;
	reg blsuLoadHandled;
	BypassLSU bypassLSU(
		.clk(clk),
		.rst(rst),
		.IN_branch(IN_branch),
		.IN_uopLdEn(blsuLdIdxValid),
		.OUT_ldStall(BLSU_ldStall),
		.IN_uopLd(ldOps_0[blsuLdIdx]),
		.IN_uopStEn(isCacheBypassStUOp && !OUT_stStall),
		.OUT_stStall(BLSU_stStall),
		.IN_uopSt(IN_uopSt),
		.IN_ldStall(!blsuLoadHandled),
		.OUT_uopLd(BLSU_uopLd),
		.OUT_ldData(BLSU_ldResult),
		.OUT_memc(BLSU_memc),
		.IN_memc(IN_memc)
	);
	logic [37:0] stFwd [1:0];
	always_comb begin : sv2v_autoblock_2
		integer i;
		for (i = 0; i < NUM_AGUS; i = i + 1)
			begin
				stFwd[i] = IN_sqbStFwd[i * 38+:38];
				stFwd[i][5-:4] = stFwd[i][5-:4] | IN_sqStFwd[(i * 38) + 5-:4];
				stFwd[i][1] = stFwd[i][1] | IN_sqStFwd[(i * 38) + 1];
				begin : sv2v_autoblock_3
					integer j;
					for (j = 0; j < 4; j = j + 1)
						if (IN_sqStFwd[(i * 38) + (2 + j)])
							stFwd[i][6 + (8 * j)+:8] = IN_sqStFwd[(i * 38) + (6 + (8 * j))+:8];
				end
			end
	end
	reg cacheTableWrite;
	logic [3:0] state;
	wire flushActive = ((((state == 4'd1) || (state == 4'd4)) || (state == 4'd2)) || (state == 4'd3)) || (state == 4'd5);
	reg uopStPortValid;
	assign OUT_stStall = ((isCacheBypassStUOp ? BLSU_stStall : cacheTableWrite || flushActive) || !uopStPortValid) && IN_uopSt[0];
	logic [0:0] uopStPort;
	logic [100:0] selLd [1:0];
	always_comb begin
		uopStPort = 0;
		uopStPortValid = 0;
		if (!selLd[0][0])
			uopStPortValid = 1;
	end
	always_comb begin : sv2v_autoblock_4
		integer i;
		for (i = 0; i < NUM_AGUS; i = i + 1)
			OUT_uopLdSq[i * 101+:101] = ldOps_0[i];
	end
	logic [183:0] uopSt;
	assign uopSt = IN_uopSt;
	reg [5:0] flushIdx;
	always_comb begin
		begin : sv2v_autoblock_5
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				begin
					IF_ct.re[i] = selLd[i][0] && !selLd[i][1];
					IF_ct.raddr[i] = selLd[i][47:36];
				end
		end
		if (uopStPortValid) begin
			IF_ct.re[uopStPort] = ((uopSt[0] && !uopSt[7]) && !(isCacheBypassStUOp || OUT_stStall)) && !ignoreSt;
			IF_ct.raddr[uopStPort] = uopSt[163:152];
		end
		if (state == 4'd2) begin
			IF_ct.re[0] = 1;
			IF_ct.raddr[0] = {flushIdx, {6 {1'b0}}};
		end
	end
	logic [1:0] idxs_c;
	logic [1:0] idxs_r;
	always_ff @(posedge clk) idxs_r <= idxs_c;
	function automatic logic [0:0] sv2v_cast_43962;
		input logic [0:0] inp;
		sv2v_cast_43962 = inp;
	endfunction
	generate
		if (1) begin : genblk1
			logic [0:0] startIdx;
			always_ff @(posedge clk)
				if (rst)
					startIdx <= 0;
				else
					startIdx <= startIdx + 1;
			always_comb begin : sv2v_autoblock_6
				integer i;
				for (i = 0; i < NUM_AGUS; i = i + 1)
					idxs_c[i * PORT_IDX_BITS+:PORT_IDX_BITS] = startIdx + sv2v_cast_43962(i);
			end
		end
	endgenerate
	logic [1:0] selLdSrc_c;
	logic [1:0] selLdSrc_r;
	always_ff @(posedge clk) selLdSrc_r <= selLdSrc_c;
	logic [0:0] stOpPort [1:0];
	logic [183:0] stOps [1:0];
	function automatic logic [100:0] sv2v_cast_101;
		input logic [100:0] inp;
		sv2v_cast_101 = inp;
	endfunction
	always_comb begin : sv2v_autoblock_7
		integer i;
		for (i = 1; i >= 0; i = i - 1)
			begin : sv2v_autoblock_8
				logic [0:0] idx;
				idx = idxs_c[i * PORT_IDX_BITS+:PORT_IDX_BITS];
				selLdSrc_c[i+:1] = 'x;
				selLd[i] = sv2v_cast_101(101'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				if (flushActive)
					;
				else if ((sv2v_cast_43962(i) == stOpPort[1]) && stOps[1][0])
					;
				else if (cacheTableWrite)
					;
				else if (IN_uopLd[idx * 101] && ((!IN_branch[0] || IN_uopLd[(idx * 101) + 2]) || ($signed(IN_uopLd[(idx * 101) + 11-:7] - IN_branch[27-:7]) <= 0))) begin
					selLd[i] = IN_uopLd[idx * 101+:101];
					selLdSrc_c[i+:1] = 1'd1;
				end
				else if (IN_uopELd[idx * 13]) begin
					selLd[i][0] = 1;
					selLd[i][2] = 0;
					selLd[i][47:36] = IN_uopELd[(idx * 13) + 12-:12];
					selLd[i][1] = 0;
					selLdSrc_c[i+:1] = 1'd0;
				end
			end
	end
	logic [100:0] uopLd [1:0];
	always_comb begin
		begin : sv2v_autoblock_9
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				begin
					OUT_ldStall[i] = 1;
					OUT_ldAGUStall[i] = 1;
				end
		end
		begin : sv2v_autoblock_10
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				begin
					uopLd[i] = sv2v_cast_101(101'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
					if (selLd[i][0] && (!IF_cache.busy[i] || selLd[i][1])) begin
						case (selLdSrc_c[i+:1])
							1'd0: OUT_ldAGUStall[idxs_c[i * PORT_IDX_BITS+:PORT_IDX_BITS]] = 0;
							1'd1: OUT_ldStall[idxs_c[i * PORT_IDX_BITS+:PORT_IDX_BITS]] = 0;
						endcase
						uopLd[i] = selLd[i];
					end
				end
		end
	end
	logic [100:0] ldOps [1:0][1:0];
	always_comb begin : sv2v_autoblock_11
		integer i;
		for (i = 0; i < NUM_AGUS; i = i + 1)
			begin : sv2v_autoblock_12
				logic [0:0] idx;
				idx = idxs_r[i * PORT_IDX_BITS+:PORT_IDX_BITS];
				ldOps_0[i] = ldOps[i][0];
				if (ldOps_0[i][0] && (selLdSrc_r[i+:1] == 1'd0)) begin
					ldOps_0[i] = 'x;
					ldOps_0[i][0] = 0;
					if (IN_aguLd[idx * 101])
						ldOps_0[i] = IN_aguLd[idx * 101+:101];
				end
			end
	end
	always_comb begin
		IF_mmio.re = 1;
		IF_mmio.raddr = 'x;
		IF_mmio.rsize = 'x;
		begin : sv2v_autoblock_13
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				if ((ldOps_0[i][0] && ldOps_0[i][1]) && !isCacheBypassLdUOp[i]) begin
					IF_mmio.re = 0;
					IF_mmio.raddr = ldOps_0[i][67-:32];
					IF_mmio.rsize = ldOps_0[i][34-:2];
				end
		end
	end
	always_comb begin
		IF_mmio.we = 1;
		IF_mmio.waddr = 'x;
		IF_mmio.wdata = 'x;
		IF_mmio.wmask = 'x;
		if (uopSt[0] && uopSt[7]) begin
			IF_mmio.we = 0;
			IF_mmio.waddr = uopSt[183-:32];
			IF_mmio.wdata = uopSt[55:24];
			IF_mmio.wmask = uopSt[11:8];
		end
	end
	reg loadWasExtIOBusy [1:0];
	reg [1:0] loadCacheAccessFailed [1:0];
	always_ff @(posedge clk) begin
		begin : sv2v_autoblock_14
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				begin
					begin : sv2v_autoblock_15
						integer j;
						for (j = 0; j < 2; j = j + 1)
							begin
								ldOps[i][j] <= 'x;
								ldOps[i][j][0] <= 0;
							end
					end
					loadWasExtIOBusy[i] <= 'x;
					loadCacheAccessFailed[i] <= 'x;
				end
		end
		if (rst)
			;
		else begin : sv2v_autoblock_16
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				begin
					if (uopLd[i][0]) begin
						ldOps[i][0] <= uopLd[i];
						loadCacheAccessFailed[i][0] <= IF_cache.busy[i];
					end
					if ((ldOps_0[i][0] && ((!IN_branch[0] || ldOps_0[i][2]) || ($signed(ldOps_0[i][11-:7] - IN_branch[27-:7]) <= 0))) && (!isCacheBypassLdUOp[i] || BLSU_ldStall)) begin
						ldOps[i][1] <= ldOps_0[i];
						loadWasExtIOBusy[i] <= isCacheBypassLdUOp[i];
						loadCacheAccessFailed[i][1] <= loadCacheAccessFailed[i][0];
					end
				end
		end
	end
	reg [1:0] storeWriteAssoc;
	reg storeWriteToCache;
	always_comb begin
		begin : sv2v_autoblock_17
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				begin
					IF_cache.addr[i] = 'x;
					IF_cache.wdata[i] = 'x;
					IF_cache.wmask[i] = 'x;
					IF_cache.wassoc[i] = 'x;
					IF_cache.we[i] = 1;
					IF_cache.re[i] = 1;
					IF_cache.re[i] = !(selLd[i][0] && !selLd[i][1]);
					IF_cache.addr[i] = selLd[i][47:36];
				end
		end
		if (storeWriteToCache) begin
			IF_cache.we[stOpPort[1]] = 0;
			IF_cache.re[stOpPort[1]] = 0;
			IF_cache.addr[stOpPort[1]] = stOps[1][163:152];
			IF_cache.wassoc[stOpPort[1]] = storeWriteAssoc;
			IF_cache.wdata[stOpPort[1]] = stOps[1][151-:128];
			IF_cache.wmask[stOpPort[1]] = stOps[1][23-:16];
		end
	end
	logic [2:0] ldAssocHit_c [1:0];
	logic [2:0] stAssocHit_c;
	genvar i;
	generate
		for (i = 0; i < NUM_AGUS; i = i + 1) begin : genblk2
			logic [3:0] ldAssocHitUnary_c;
			always_comb begin : sv2v_autoblock_18
				integer j;
				for (j = 0; j < 4; j = j + 1)
					ldAssocHitUnary_c[j] = IF_ct.rdata[i][j].valid && (IF_ct.rdata[i][j].addr == ldOps[i][1][67:48]);
			end
			OHEncoder #(
				.LEN(4),
				.ALLOW_NULL(1)
			) ohEncLd(
				.IN_idxOH(ldAssocHitUnary_c),
				.OUT_idx(ldAssocHit_c[i][2-:2]),
				.OUT_valid(ldAssocHit_c[i][0])
			);
		end
	endgenerate
	logic [3:0] stAssocHitUnary_c;
	always_comb begin : sv2v_autoblock_19
		integer j;
		for (j = 0; j < 4; j = j + 1)
			stAssocHitUnary_c[j] = IF_ct.rdata[0][j].valid && (IF_ct.rdata[0][j].addr == stOps[1][183:164]);
	end
	OHEncoder #(
		.LEN(4),
		.ALLOW_NULL(1)
	) ohEncSt(
		.IN_idxOH(stAssocHitUnary_c),
		.OUT_idx(stAssocHit_c[2-:2]),
		.OUT_valid(stAssocHit_c[0])
	);
	logic [70:0] miss [1:0];
	reg setDirty;
	reg [$clog2(SIZE) - 1:0] setDirtyIdx;
	logic [100:0] curLd [1:0];
	reg [1:0] assocCnt;
	function automatic logic [1:0] CheckTransfers;
		input logic [224:0] memcReq;
		input logic [558:0] memcRes;
		input logic [0:0] cacheID;
		input logic [31:0] addr;
		input logic isStore;
		logic [1:0] rv;
		begin
			rv = 0;
			begin : sv2v_autoblock_20
				integer i;
				for (i = 0; i < 4; i = i + 1)
					if ((memcRes[62 + (i * 84)] && (memcRes[62 + ((i * 84) + 2)] == cacheID)) && (memcRes[62 + ((i * 84) + 51)-:26] == addr[31:6])) begin
						rv[0] = 1;
						rv[1] = memcRes[62 + ((i * 84) + 7)-:5] > ({1'b0, addr[5:2]} - {1'b0, memcRes[62 + ((i * 84) + 25)-:4]});
					end
			end
			if ((((memcReq[3-:4] == 4'd1) || (memcReq[3-:4] == 4'd3)) && (memcReq[68:43] == addr[31:6])) && (memcReq[4] == cacheID))
				rv = 2'b01;
			CheckTransfers = rv;
		end
	endfunction
	function automatic logic [88:0] sv2v_cast_89;
		input logic [88:0] inp;
		sv2v_cast_89 = inp;
	endfunction
	function automatic logic [183:0] sv2v_cast_184;
		input logic [183:0] inp;
		sv2v_cast_184 = inp;
	endfunction
	always_comb begin
		blsuLoadHandled = 0;
		setDirty = 0;
		setDirtyIdx = 'x;
		storeWriteToCache = 0;
		storeWriteAssoc = 'x;
		begin : sv2v_autoblock_21
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				ldResUOp[i] = sv2v_cast_89(89'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		end
		begin : sv2v_autoblock_22
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				begin
					miss[i] = 'x;
					miss[i][0] = 0;
				end
		end
		begin : sv2v_autoblock_23
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				begin : sv2v_autoblock_24
					logic [100:0] ld;
					logic [183:0] st;
					ld = ldOps[i][1];
					st = (sv2v_cast_43962(i) == stOpPort[1] ? stOps[1] : sv2v_cast_184(184'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0));
					if ((!ld[0] && !st[0]) && !blsuLoadHandled)
						ld = BLSU_uopLd;
					curLd[i] = ld;
					if (rst)
						;
					else if (st[0]) begin : sv2v_autoblock_25
						reg cacheHit;
						reg cacheTableHit;
						reg doCacheLoad;
						reg [1:0] cacheHitAssoc;
						reg noEvict;
						cacheHit = 0;
						cacheTableHit = 1;
						doCacheLoad = 1;
						cacheHitAssoc = 'x;
						noEvict = !IF_ct.rdata[i][assocCnt].valid;
						if (stAssocHit_c[0]) begin
							doCacheLoad = 0;
							cacheHit = 1;
							cacheHitAssoc = stAssocHit_c[2-:2];
							cacheTableHit = 1;
						end
						begin : sv2v_autoblock_26
							reg transferExists;
							reg allowPassThru;
							{allowPassThru, transferExists} = CheckTransfers(LSU_memc, IN_memc, 0, st[183-:32], 1);
							if (transferExists) begin
								doCacheLoad = 0;
								cacheHit = cacheHit & allowPassThru;
							end
						end
						if ((cacheHit && (LSU_memc[3-:4] != 4'd0)) && (LSU_memc[80:73] == {cacheHitAssoc, st[163:158]})) begin
							cacheHit = 0;
							cacheHitAssoc = 'x;
							cacheTableHit = 1;
							doCacheLoad = 0;
						end
						if (st[7])
							;
						else if (st[6]) begin
							if (cacheTableHit) begin
								miss[i][0] = 1;
								miss[i][70-:32] = st[183-:32];
								miss[i][38-:32] = st[183-:32];
								miss[i][6-:2] = cacheHitAssoc;
								case (st[25:24])
									0: miss[i][4-:4] = 4'd3;
									1: miss[i][4-:4] = 4'd4;
									2: miss[i][4-:4] = 4'd5;
									default:
										;
								endcase
							end
						end
						else if (cacheHit) begin
							storeWriteToCache = 1;
							storeWriteAssoc = cacheHitAssoc;
							setDirty = 1;
							setDirtyIdx = {cacheHitAssoc, st[163:158]};
						end
						else begin
							miss[i][0] = 1;
							miss[i][4-:4] = (doCacheLoad ? (noEvict ? 4'd1 : 4'd0) : 4'd2);
							miss[i][70-:32] = {IF_ct.rdata[i][assocCnt].addr, st[163:152]};
							miss[i][38-:32] = st[183-:32];
							miss[i][6-:2] = assocCnt;
						end
					end
					else if (ld[0]) begin : sv2v_autoblock_27
						reg isExtMMIO;
						reg isIntMMIO;
						reg isMMIO;
						reg isCache;
						reg noEvict;
						reg doCacheLoad;
						reg cacheHit;
						reg [31:0] readData;
						isExtMMIO = !ldOps[i][1][0];
						isIntMMIO = ld[0] && ld[1];
						isMMIO = isExtMMIO || isIntMMIO;
						isCache = !isExtMMIO && !isIntMMIO;
						noEvict = !IF_ct.rdata[i][assocCnt].valid;
						doCacheLoad = 1;
						cacheHit = 0;
						readData = 'x;
						if (ld[68]) begin
							readData = ld[100-:32];
							doCacheLoad = 0;
						end
						else if (isExtMMIO) begin
							readData = BLSU_ldResult;
							blsuLoadHandled = 1;
							doCacheLoad = 0;
						end
						else if (isIntMMIO) begin
							readData = IF_mmio.rdata;
							doCacheLoad = 0;
						end
						else begin
							if (ldAssocHit_c[i][0]) begin
								cacheHit = 1;
								doCacheLoad = 0;
								readData = IF_cache.rdata[i][ldAssocHit_c[i][2-:2]];
							end
							begin : sv2v_autoblock_28
								reg transferExists;
								reg allowPassThru;
								{allowPassThru, transferExists} = CheckTransfers(LSU_memc, IN_memc, 0, ld[67-:32], 0);
								if (transferExists) begin
									doCacheLoad = 0;
									cacheHit = cacheHit & allowPassThru;
								end
							end
							if (!(isExtMMIO || isIntMMIO) && (stFwd[i][5-:4] == 4'b1111)) begin
								cacheHit = 1;
								doCacheLoad = 0;
							end
						end
						ldResUOp[i][1] = ld[3];
						ldResUOp[i][2] = ld[2];
						ldResUOp[i][9-:7] = ld[11-:7];
						ldResUOp[i][16-:7] = ld[18-:7];
						ldResUOp[i][18] = ld[35];
						ldResUOp[i][20-:2] = ld[34-:2];
						ldResUOp[i][52-:32] = ld[67-:32];
						miss[i][70-:32] = {IF_ct.rdata[i][assocCnt].addr, ld[47:36]};
						miss[i][38-:32] = ld[67-:32];
						miss[i][6-:2] = assocCnt;
						if (!isExtMMIO && loadWasExtIOBusy[i]) begin
							miss[i][4-:4] = 4'd6;
							miss[i][0] = 1;
						end
						else if (!isMMIO && stFwd[i][1]) begin
							miss[i][4-:4] = 4'd7;
							miss[i][0] = 1;
						end
						else if ((!isMMIO && !ld[68]) && loadCacheAccessFailed[i][1]) begin
							miss[i][4-:4] = 4'd6;
							miss[i][0] = 1;
						end
						else if (doCacheLoad) begin
							miss[i][4-:4] = (noEvict ? 4'd1 : 4'd0);
							miss[i][0] = 1;
							ldResUOp[i][0] = 1;
							ldResUOp[i][17] = 0;
							ldResUOp[i][56-:4] = stFwd[i][5-:4];
							ldResUOp[i][88-:32] = stFwd[i][37-:32];
						end
						else if (!isMMIO) begin
							if (cacheHit || ld[68]) begin
								begin : sv2v_autoblock_29
									integer j;
									for (j = 0; j < 4; j = j + 1)
										if (stFwd[i][2 + j])
											readData[j * 8+:8] = stFwd[i][6 + (j * 8)+:8];
								end
								ldResUOp[i][0] = 1;
								ldResUOp[i][17] = 1;
								ldResUOp[i][56-:4] = 4'b1111;
								ldResUOp[i][88-:32] = readData;
							end
							else begin
								miss[i][4-:4] = 4'd2;
								miss[i][0] = 1;
								ldResUOp[i][0] = 1;
								ldResUOp[i][17] = 0;
								ldResUOp[i][56-:4] = stFwd[i][5-:4];
								ldResUOp[i][88-:32] = stFwd[i][37-:32];
							end
						end
						else if (isMMIO) begin
							ldResUOp[i][0] = 1;
							ldResUOp[i][17] = 1;
							ldResUOp[i][56-:4] = 4'b1111;
							ldResUOp[i][88-:32] = readData;
						end
					end
				end
		end
	end
	wire [1:0] LRB_ready;
	logic [177:0] LRB_uop;
	LoadResultBuffer #(.SIZE(4)) loadResBuf[1:0](
		.clk(clk),
		.rst(rst),
		.IN_memc(IN_memc),
		.IN_branch(IN_branch),
		.IN_uop(LRB_uop),
		.OUT_ready(LRB_ready),
		.IN_ready(IN_ready),
		.OUT_resultUOp(OUT_resultUOp),
		.OUT_flagsUOp(OUT_flagsUOp)
	);
	always_ff @(posedge clk)
		if (rst) begin : sv2v_autoblock_30
			integer i;
			for (i = 0; i < 2; i = i + 1)
				stOps[i] <= sv2v_cast_184(184'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		end
		else begin
			stOps[0] <= 'x;
			stOps[0][0] <= 0;
			stOps[1] <= 'x;
			stOps[1][0] <= 0;
			if (uopSt[0] && !OUT_stStall) begin
				stOps[0] <= uopSt;
				stOpPort[0] <= uopStPort;
			end
			if (stOps[0][0]) begin
				stOps[1] <= stOps[0];
				stOpPort[1] <= stOpPort[0];
			end
		end
	reg [1:0] forwardMiss;
	logic [1:0] missEvictConflict;
	function automatic logic [42:0] sv2v_cast_43;
		input logic [42:0] inp;
		sv2v_cast_43 = inp;
	endfunction
	generate
		for (i = 0; i < NUM_AGUS; i = i + 1) begin : genblk3
			always_comb begin
				OUT_ldAck[i * 43+:43] = sv2v_cast_43(43'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				LRB_uop[i * 89+:89] = sv2v_cast_89(89'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				if ((ldResUOp[i][0] && LRB_ready[i]) && (!miss[i][0] || forwardMiss[i]))
					LRB_uop[i * 89+:89] = ldResUOp[i];
				else if (curLd[i][0]) begin
					OUT_ldAck[i * 43] = 1;
					OUT_ldAck[(i * 43) + 3] = 1;
					OUT_ldAck[(i * 43) + 1] = curLd[i][2];
					OUT_ldAck[(i * 43) + 10-:7] = curLd[i][25-:7];
					OUT_ldAck[(i * 43) + 42-:32] = curLd[i][67-:32];
					OUT_ldAck[(i * 43) + 2] = 0;
					if (miss[i][0] && (!stOps[1][0] || (stOpPort[1] != i)))
						if (miss[i][4-:4] == 4'd2)
							OUT_ldAck[(i * 43) + 2] = 1;
						else if ((miss[i][4-:4] == 4'd0) || (miss[i][4-:4] == 4'd1))
							OUT_ldAck[(i * 43) + 2] = forwardMiss[i] && !missEvictConflict[i];
				end
			end
		end
	endgenerate
	wire redoStore = stOps[1][0] && (miss[stOpPort[1]][0] ? ((((miss[stOpPort[1]][4-:4] == 4'd0) || (miss[stOpPort[1]][4-:4] == 4'd1)) || (miss[stOpPort[1]][4-:4] == 4'd6)) || (miss[stOpPort[1]][4-:4] == 4'd2)) || ((((miss[stOpPort[1]][4-:4] == 4'd3) || (miss[stOpPort[1]][4-:4] == 4'd5)) || (miss[stOpPort[1]][4-:4] == 4'd4)) && (!forwardMiss[stOpPort[1]] || missEvictConflict[stOpPort[1]])) : !stOps[1][7] && IF_cache.busy[stOpPort[1]]);
	wire fuseStoreMiss = ((!missEvictConflict[stOpPort[1]] && ((miss[stOpPort[1]][4-:4] == 4'd0) || (miss[stOpPort[1]][4-:4] == 4'd1))) && forwardMiss[stOpPort[1]]) && miss[stOpPort[1]][0];
	assign OUT_stAck[182-:32] = stOps[1][183-:32];
	assign OUT_stAck[150-:128] = stOps[1][151-:128];
	assign OUT_stAck[22-:16] = stOps[1][23-:16];
	assign OUT_stAck[6-:3] = stOps[1][5-:3];
	assign OUT_stAck[3-:2] = stOps[1][2-:2];
	assign OUT_stAck[0] = stOps[1][0];
	assign OUT_stAck[1] = redoStore && !fuseStoreMiss;
	always_comb begin : sv2v_autoblock_31
		integer i;
		for (i = 0; i < NUM_AGUS; i = i + 1)
			begin
				missEvictConflict[i] = 0;
				begin : sv2v_autoblock_32
					integer j;
					for (j = 0; j < 4; j = j + 1)
						if ((miss[i][0] && IN_memc[62 + (j * 84)]) && (IN_memc[62 + ((j * 84) + 83)-:26] == miss[i][38:13]))
							missEvictConflict[i] = 1;
				end
				if ((((LSU_memc[3-:4] == 4'd1) || (LSU_memc[3-:4] == 4'd2)) && miss[i][0]) && (LSU_memc[36:11] == miss[i][38:13]))
					missEvictConflict[i] = 1;
				begin : sv2v_autoblock_33
					integer j;
					for (j = 0; j < 4; j = j + 1)
						if ((miss[i][0] && IN_memc[62 + (j * 84)]) && (IN_memc[62 + ((j * 84) + 51)-:26] == miss[i][70:45]))
							missEvictConflict[i] = 1;
				end
				begin : sv2v_autoblock_34
					integer j;
					for (j = 0; j < 4; j = j + 1)
						if (((miss[i][0] && IN_memc[62 + (j * 84)]) && (IN_memc[62 + ((j * 84) + 2)] == 0)) && (IN_memc[62 + ((j * 84) + 19)-:8] == {miss[i][6-:2], miss[i][18:13]}))
							missEvictConflict[i] = 1;
				end
				if ((((LSU_memc[3-:4] == 4'd1) || (LSU_memc[3-:4] == 4'd3)) && miss[i][0]) && (LSU_memc[68:43] == miss[i][70:45]))
					missEvictConflict[i] = 1;
				if (((((LSU_memc[3-:4] == 4'd1) || (LSU_memc[3-:4] == 4'd3)) || (LSU_memc[3-:4] == 4'd2)) && miss[i][0]) && (LSU_memc[80:73] == {miss[i][6-:2], miss[i][18:13]}))
					missEvictConflict[i] = 1;
			end
	end
	reg newMiss;
	reg [1:0] flushAssocIdx;
	reg flushDone;
	always_comb begin
		cacheTableWrite = 0;
		IF_ct.we = 0;
		IF_ct.waddr = 'x;
		IF_ct.wdata = 'x;
		IF_ct.wassoc = 'x;
		newMiss = 0;
		if (state == 4'd0) begin : sv2v_autoblock_35
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				if (forwardMiss[i]) begin
					newMiss = 1;
					case (miss[i][4-:4])
						4'd1, 4'd0: begin
							IF_ct.we = 1;
							IF_ct.waddr = miss[i][18:7];
							IF_ct.wassoc = miss[i][6-:2];
							IF_ct.wdata.addr = miss[i][38:19];
							IF_ct.wdata.valid = 1;
							cacheTableWrite = 1;
						end
						4'd4, 4'd5: begin
							IF_ct.we = 1;
							IF_ct.waddr = miss[i][18:7];
							IF_ct.wassoc = miss[i][6-:2];
							IF_ct.wdata.addr = 0;
							IF_ct.wdata.valid = 0;
							cacheTableWrite = 1;
						end
						default:
							;
					endcase
				end
		end
		else if (state == 4'd1)
			if (!flushDone) begin
				IF_ct.we = 1;
				IF_ct.waddr = {flushIdx, {6 {1'b0}}};
				IF_ct.wassoc = flushAssocIdx;
				IF_ct.wdata.addr = 0;
				IF_ct.wdata.valid = 0;
				cacheTableWrite = 1;
			end
	end
	reg [SIZE - 1:0] dirty;
	reg initialFlush;
	reg flushQueued;
	wire flushReady = !IN_storeBusy;
	assign OUT_busy = flushQueued || flushActive;
	wire canOutputMiss = (LSU_memc[3-:4] == 4'd0) || !IN_memc[2];
	always_comb begin : sv2v_autoblock_36
		reg temp;
		temp = 0;
		forwardMiss = '0;
		begin : sv2v_autoblock_37
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				if ((((((!temp && canOutputMiss) && miss[i][0]) && !missEvictConflict[i]) && (miss[i][4-:4] != 4'd6)) && (miss[i][4-:4] != 4'd7)) && (miss[i][4-:4] != 4'd2)) begin
					temp = 1;
					forwardMiss[i] = 1;
				end
		end
	end
	always_ff @(posedge clk)
		if (rst) begin
			state <= 4'd0;
			flushQueued <= 1;
			initialFlush <= 1;
			LSU_memc <= 'x;
			LSU_memc[3-:4] <= 4'd0;
			assocCnt <= 0;
			flushIdx <= 'x;
			flushAssocIdx <= 'x;
			flushDone <= 'x;
		end
		else begin
			if (canOutputMiss) begin
				LSU_memc <= 'x;
				LSU_memc[3-:4] <= 4'd0;
			end
			if (IN_flush)
				flushQueued <= 1;
			if (setDirty)
				dirty[setDirtyIdx] <= 1;
			case (state)
				4'd0: begin
					begin : sv2v_autoblock_38
						integer i;
						for (i = 0; i < NUM_AGUS; i = i + 1)
							begin : sv2v_autoblock_39
								reg [$clog2(SIZE) - 1:0] missIdx;
								logic [3:0] missType;
								missIdx = {miss[i][6-:2], miss[i][18:13]};
								missType = miss[i][4-:4];
								if (forwardMiss[i]) begin
									assocCnt <= assocCnt + 1;
									if (((missType == 4'd0) && !dirty[missIdx]) && (!setDirty || (setDirtyIdx != missIdx)))
										missType = 4'd1;
									case (missType)
										4'd0: begin
											LSU_memc[3-:4] <= 4'd1;
											LSU_memc[80-:12] <= {miss[i][6-:2], miss[i][18:9]};
											LSU_memc[36-:32] <= {miss[i][70:51], miss[i][18:9], 2'b00};
											LSU_memc[68-:32] <= {miss[i][38:9], 2'b00};
											LSU_memc[4] <= 0;
											LSU_memc[224-:16] <= 0;
										end
										4'd1: begin
											LSU_memc[3-:4] <= 4'd3;
											LSU_memc[80-:12] <= {miss[i][6-:2], miss[i][18:9]};
											LSU_memc[36-:32] <= 'x;
											LSU_memc[68-:32] <= {miss[i][38:9], 2'b00};
											LSU_memc[4] <= 0;
											LSU_memc[224-:16] <= 0;
										end
										4'd3, 4'd5: begin
											LSU_memc[3-:4] <= 4'd2;
											LSU_memc[80-:12] <= {miss[i][6-:2], miss[i][18:9]};
											LSU_memc[36-:32] <= {miss[i][70:51], miss[i][18:9], 2'b00};
											LSU_memc[68-:32] <= 'x;
											LSU_memc[4] <= 0;
											LSU_memc[224-:16] <= 0;
										end
										default:
											;
									endcase
									if ((((missType == 4'd0) || (missType == 4'd1)) && stOps[1][0]) && fuseStoreMiss) begin
										LSU_memc[224-:16] <= stOps[1][23-:16];
										LSU_memc[208-:128] <= stOps[1][151-:128];
										dirty[missIdx] <= 1;
									end
									else
										dirty[missIdx] <= 0;
								end
							end
					end
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
					if ((LSU_memc[3-:4] != 4'd0) || (BLSU_memc[3-:4] != 4'd0))
						state <= 4'd4;
					begin : sv2v_autoblock_40
						integer i;
						for (i = 0; i < 4; i = i + 1)
							if (IN_memc[62 + (i * 84)])
								state <= 4'd4;
					end
				end
				4'd2: state <= 4'd3;
				4'd3: state <= 4'd1;
				4'd1:
					if (flushDone) begin
						state <= 4'd5;
						initialFlush <= 0;
					end
					else if ((LSU_memc[3-:4] == 4'd0) || !IN_memc[2]) begin : sv2v_autoblock_41
						logic [20:0] entry;
						entry = IF_ct.rdata[0][flushAssocIdx];
						if ((entry[0] && dirty[{flushAssocIdx, flushIdx}]) && !initialFlush) begin
							LSU_memc[3-:4] <= 4'd2;
							LSU_memc[80-:12] <= {flushAssocIdx, flushIdx, {4 {1'b0}}};
							LSU_memc[36-:32] <= {entry[20-:20], flushIdx, {6 {1'b0}}};
							LSU_memc[68-:32] <= 'x;
							LSU_memc[4] <= 0;
							LSU_memc[224-:16] <= 0;
						end
						{flushDone, flushIdx, flushAssocIdx} <= {flushIdx, flushAssocIdx} + 1;
						if (flushAssocIdx == 2'sd3)
							state <= 4'd2;
					end
				4'd5: begin
					state <= 4'd0;
					begin : sv2v_autoblock_42
						integer i;
						for (i = 0; i < 4; i = i + 1)
							if (IN_memc[62 + (i * 84)])
								state <= 4'd5;
					end
				end
				default: state <= 4'd0;
			endcase
		end
endmodule
module Load (
	clk,
	rst,
	IN_uop,
	IN_resultUOps,
	IN_branch,
	IN_stall,
	IN_zcFwd,
	OUT_pcRead,
	IN_pcReadData,
	OUT_rfReadReq,
	IN_rfReadData,
	OUT_uop
);
	parameter NUM_UOPS = 4;
	parameter NUM_WBS = 4;
	parameter NUM_ZC_FWDS = 2;
	parameter NUM_PC_READS = 2;
	input wire clk;
	input wire rst;
	input logic [(NUM_UOPS * 109) - 1:0] IN_uop;
	input logic [(NUM_WBS * 41) - 1:0] IN_resultUOps;
	input logic [73:0] IN_branch;
	input wire [NUM_UOPS - 1:0] IN_stall;
	input logic [(NUM_ZC_FWDS * 40) - 1:0] IN_zcFwd;
	output logic [(NUM_PC_READS * 6) - 1:0] OUT_pcRead;
	input logic [(NUM_PC_READS * 35) - 1:0] IN_pcReadData;
	localparam NUM_AGUS = 2;
	localparam NUM_ALUS = 3;
	output logic [55:0] OUT_rfReadReq;
	input wire [255:0] IN_rfReadData;
	output logic [(NUM_UOPS * 183) - 1:0] OUT_uop;
	localparam NUM_FWD = NUM_ZC_FWDS + NUM_WBS;
	localparam NUM_LOOKUP = 8;
	logic [39:0] forwards [NUM_FWD - 1:0];
	always_comb begin
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_ZC_FWDS; i = i + 1)
				forwards[i] = IN_zcFwd[i * 40+:40];
		end
		begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < NUM_WBS; i = i + 1)
				begin
					forwards[i + NUM_ZC_FWDS][0] = IN_resultUOps[i * 41] && !IN_resultUOps[(i * 41) + 8];
					forwards[i + NUM_ZC_FWDS][7-:7] = IN_resultUOps[(i * 41) + 8-:7];
					forwards[i + NUM_ZC_FWDS][39-:32] = IN_resultUOps[(i * 41) + 40-:32];
				end
		end
	end
	logic [(8 * NUM_FWD) - 1:0] match;
	always_comb begin : sv2v_autoblock_3
		logic [6:0] lookups [7:0];
		begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < NUM_UOPS; i = i + 1)
				begin
					lookups[i] = IN_uop[(i * 109) + 63-:7];
					if (i < NUM_ALUS)
						lookups[i + NUM_UOPS] = IN_uop[(i * 109) + 55-:7];
				end
		end
		begin : sv2v_autoblock_5
			integer i;
			for (i = 0; i < NUM_LOOKUP; i = i + 1)
				begin : sv2v_autoblock_6
					integer j;
					for (j = 0; j < NUM_FWD; j = j + 1)
						match[(i * NUM_FWD) + j] = forwards[j][0] && (forwards[j][7-:7] == lookups[i]);
				end
		end
	end
	logic [(8 * $clog2(NUM_FWD)) - 1:0] matchIdx;
	logic [7:0] matchValid;
	OHEncoder #(
		.LEN(NUM_FWD),
		.ALLOW_NULL(1)
	) lookupEnc[7:0](
		.IN_idxOH(match),
		.OUT_idx(matchIdx),
		.OUT_valid(matchValid)
	);
	function automatic logic [5:0] sv2v_cast_6;
		input logic [5:0] inp;
		sv2v_cast_6 = inp;
	endfunction
	always_comb begin : sv2v_autoblock_7
		integer i;
		for (i = 0; i < NUM_UOPS; i = i + 1)
			begin
				OUT_rfReadReq[(i * 7) + 6-:6] = sv2v_cast_6(IN_uop[(i * 109) + 63-:7]);
				OUT_rfReadReq[i * 7] = IN_uop[i * 109] && !IN_uop[(i * 109) + 63];
				if (i < NUM_ALUS) begin
					OUT_rfReadReq[((i + NUM_UOPS) * 7) + 6-:6] = sv2v_cast_6(IN_uop[(i * 109) + 55-:7]);
					OUT_rfReadReq[(i + NUM_UOPS) * 7] = IN_uop[i * 109] && !IN_uop[(i * 109) + 55];
				end
				if (i < NUM_PC_READS) begin
					OUT_pcRead[i * 6] = IN_uop[i * 109];
					OUT_pcRead[(i * 6) + 5-:5] = IN_uop[(i * 109) + 27-:5];
				end
			end
	end
	logic [3:0] outFU [NUM_UOPS - 1:0];
	logic [182:0] outUOpReg [NUM_UOPS - 1:0];
	reg [1:0] operandIsReg [NUM_UOPS - 1:0];
	function automatic logic [182:0] sv2v_cast_183;
		input logic [182:0] inp;
		sv2v_cast_183 = inp;
	endfunction
	always_comb begin : sv2v_autoblock_8
		integer i;
		for (i = 0; i < NUM_UOPS; i = i + 1)
			begin
				OUT_uop[i * 183+:183] = sv2v_cast_183(183'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				if (outUOpReg[i][0]) begin
					OUT_uop[i * 183+:183] = outUOpReg[i];
					if (operandIsReg[i][0])
						OUT_uop[(i * 183) + 182-:32] = IN_rfReadData[i * 32+:32];
					if (i < NUM_ALUS)
						if (operandIsReg[i][1])
							OUT_uop[(i * 183) + 150-:32] = IN_rfReadData[(i + NUM_UOPS) * 32+:32];
					OUT_uop[(i * 183) + 20] = '0;
					if (i < NUM_PC_READS) begin
						OUT_uop[(i * 183) + 118-:32] = {IN_pcReadData[(i * 35) + 34-:28], outUOpReg[i][86-:3], 1'b0};
						OUT_uop[(i * 183) + 83-:3] = IN_pcReadData[(i * 35) + 6-:3];
						OUT_uop[(i * 183) + 80-:3] = IN_pcReadData[(i * 35) + 3-:3];
						if (outUOpReg[i][86-:3] == IN_pcReadData[(i * 35) + 3-:3])
							OUT_uop[(i * 183) + 20] = IN_pcReadData[i * 35];
					end
				end
			end
	end
	always_ff @(posedge clk)
		if (rst) begin : sv2v_autoblock_9
			integer i;
			for (i = 0; i < NUM_UOPS; i = i + 1)
				begin
					operandIsReg[i] <= 'x;
					outUOpReg[i] <= sv2v_cast_183(183'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				end
		end
		else begin : sv2v_autoblock_10
			integer i;
			for (i = 0; i < NUM_UOPS; i = i + 1)
				if ((!IN_stall[i] && IN_uop[i * 109]) && (!IN_branch[0] || ($signed(IN_uop[(i * 109) + 47-:7] - IN_branch[27-:7]) <= 0))) begin
					outUOpReg[i][77-:32] <= IN_uop[(i * 109) + 108-:32];
					if ((((i == 0) || (i == 1)) && (IN_uop[(i * 109) + 5-:4] == 4'd1)) && (((IN_uop[(i * 109) + 33-:6] == 6'd9) || (IN_uop[(i * 109) + 33-:6] == 6'd10)) || (IN_uop[(i * 109) + 33-:6] == 6'd8))) begin
						outUOpReg[i][77-:32] <= 'x;
						outUOpReg[i][57:46] <= IN_uop[(i * 109) + 76-:12];
					end
					outUOpReg[i][86-:3] <= IN_uop[(i * 109) + 22-:3];
					outUOpReg[i][32-:7] <= IN_uop[(i * 109) + 47-:7];
					outUOpReg[i][39-:7] <= IN_uop[(i * 109) + 40-:7];
					outUOpReg[i][25-:5] <= IN_uop[(i * 109) + 27-:5];
					outUOpReg[i][12-:7] <= IN_uop[(i * 109) + 12-:7];
					outUOpReg[i][19-:7] <= IN_uop[(i * 109) + 19-:7];
					outUOpReg[i][1] <= IN_uop[(i * 109) + 1];
					outUOpReg[i][45-:6] <= IN_uop[(i * 109) + 33-:6];
					outUOpReg[i][5-:4] <= IN_uop[(i * 109) + 5-:4];
					outUOpReg[i][0] <= 1;
					operandIsReg[i] <= 2'b00;
					outUOpReg[i][182-:32] <= 'x;
					if (IN_uop[(i * 109) + 63])
						outUOpReg[i][182-:32] <= {{26 {IN_uop[(i * 109) + 62]}}, IN_uop[(i * 109) + 62-:6]};
					else if (matchValid[i])
						outUOpReg[i][182-:32] <= forwards[matchIdx[i * $clog2(NUM_FWD)+:$clog2(NUM_FWD)]][39-:32];
					else
						operandIsReg[i][0] <= 1;
					outUOpReg[i][150-:32] <= 'x;
					if (IN_uop[(i * 109) + 48] || (i >= NUM_ALUS))
						outUOpReg[i][150-:32] <= IN_uop[(i * 109) + 108-:32];
					else if (IN_uop[(i * 109) + 55])
						outUOpReg[i][150-:32] <= {{26 {IN_uop[(i * 109) + 54]}}, IN_uop[(i * 109) + 54-:6]};
					else if (matchValid[NUM_UOPS + i])
						outUOpReg[i][150-:32] <= forwards[matchIdx[(NUM_UOPS + i) * $clog2(NUM_FWD)+:$clog2(NUM_FWD)]][39-:32];
					else
						operandIsReg[i][1] <= 1;
				end
				else if (!IN_stall[i] || ((outUOpReg[i][0] && IN_branch[0]) && ($signed(outUOpReg[i][32-:7] - IN_branch[27-:7]) > 0))) begin
					outUOpReg[i] <= 'x;
					outUOpReg[i][0] <= 0;
				end
				else if (IN_stall[i]) begin
					if (operandIsReg[i][0])
						outUOpReg[i][182-:32] <= IN_rfReadData[i * 32+:32];
					if (operandIsReg[i][1] && (i < NUM_ALUS))
						outUOpReg[i][150-:32] <= IN_rfReadData[(i + NUM_UOPS) * 32+:32];
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
	always_comb begin
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
	IN_dcacheRReady,
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
	input logic [(NUM_TFS_IN * 225) - 1:0] IN_ctrl;
	output logic [558:0] OUT_stat;
	localparam FETCH_BITS = 128;
	output logic [142:0] OUT_icacheW;
	output logic [157:0] OUT_dcacheW;
	input logic IN_dcacheRReady;
	output logic [157:0] OUT_dcacheR;
	input wire [127:0] IN_dcacheR;
	output logic [1:0] s_axi_awid;
	output logic [ADDR_LEN - 1:0] s_axi_awaddr;
	output logic [7:0] s_axi_awlen;
	output logic [2:0] s_axi_awsize;
	output logic [1:0] s_axi_awburst;
	output logic [0:0] s_axi_awlock;
	output logic [3:0] s_axi_awcache;
	output logic s_axi_awvalid;
	input logic s_axi_awready;
	output logic [WIDTH - 1:0] s_axi_wdata;
	output logic [(WIDTH / 8) - 1:0] s_axi_wstrb;
	output logic s_axi_wlast;
	output logic s_axi_wvalid;
	input logic s_axi_wready;
	output logic s_axi_bready;
	input logic [1:0] s_axi_bid;
	input logic s_axi_bvalid;
	output logic [1:0] s_axi_arid;
	output logic [ADDR_LEN - 1:0] s_axi_araddr;
	output logic [7:0] s_axi_arlen;
	output logic [2:0] s_axi_arsize;
	output logic [1:0] s_axi_arburst;
	output logic [0:0] s_axi_arlock;
	output logic [3:0] s_axi_arcache;
	output logic s_axi_arvalid;
	input logic s_axi_arready;
	output logic s_axi_rready;
	input logic [1:0] s_axi_rid;
	input logic [WIDTH - 1:0] s_axi_rdata;
	input logic s_axi_rlast;
	input logic s_axi_rvalid;
	output logic [15:0] OUT_dbg;
	localparam WIDTH_W_ = WIDTH / 32;
	localparam WIDTH_W = WIDTH_W_[4:0];
	logic [250:0] transfers [3:0];
	logic [3:0] isMMIO;
	always_comb begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < 4; i = i + 1)
			case (transfers[i][4-:4])
				4'd4, 4'd5, 4'd6, 4'd7, 4'd8, 4'd9: isMMIO[i] = transfers[i][0];
				default: isMMIO[i] = 0;
			endcase
	end
	logic [44:0] sglLdRes;
	logic [12:0] sglStRes;
	logic [160:0] ldDataFwd;
	logic [1:0] enqIdx;
	logic enqIdxValid;
	always_comb begin
		enqIdx = 'x;
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
	function logic IsCacheOp;
		input logic [3:0] cmd;
		IsCacheOp = ((cmd == 4'd1) || (cmd == 4'd2)) || (cmd == 4'd3);
	endfunction
	logic [224:0] selReq;
	always_comb begin : sv2v_autoblock_3
		reg cacheAddrColl;
		cacheAddrColl = 'x;
		OUT_stat[3-:3] = {NUM_TFS_IN {1'b1}};
		selReq = 'x;
		selReq[3-:4] = 4'd0;
		if (enqIdxValid) begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < NUM_TFS_IN; i = i + 1)
				if ((selReq[3-:4] == 4'd0) && (IN_ctrl[(i * 225) + 3-:4] != 4'd0)) begin
					cacheAddrColl = 0;
					begin : sv2v_autoblock_5
						integer j;
						for (j = 0; j < 4; j = j + 1)
							cacheAddrColl = cacheAddrColl | ((((transfers[j][0] && IsCacheOp(IN_ctrl[(i * 225) + 3-:4])) && IsCacheOp(transfers[j][4-:4])) && (IN_ctrl[(i * 225) + 4] == transfers[j][5])) && (IN_ctrl[(i * 225) + 80-:8] == transfers[j][86:79]));
					end
					if (!cacheAddrColl) begin
						selReq = IN_ctrl[i * 225+:225];
						OUT_stat[3-:3] = ~(1 << i);
					end
				end
		end
	end
	logic [(2 + ADDR_LEN) + 18:0] axiAR;
	logic arFIFO_outValid;
	logic arFIFO_ready;
	assign s_axi_arvalid = arFIFO_outValid;
	FIFO #(
		.WIDTH((((2 + ADDR_LEN) + 18) >= 0 ? (2 + ADDR_LEN) + 19 : 1 - ((2 + ADDR_LEN) + 18)) - 1),
		.NUM(2),
		.FORWARD1(1),
		.FORWARD0(0)
	) arFIFO(
		.clk(clk),
		.rst(rst),
		.IN_valid(axiAR[0]),
		.IN_data(axiAR[1+:(((2 + ADDR_LEN) + 18) >= 0 ? (2 + ADDR_LEN) + 19 : 1 - ((2 + ADDR_LEN) + 18)) - 1]),
		.OUT_ready(arFIFO_ready),
		.OUT_valid(arFIFO_outValid),
		.IN_ready(s_axi_arready),
		.OUT_data({s_axi_arid, s_axi_araddr, s_axi_arlen, s_axi_arsize, s_axi_arburst, s_axi_arlock, s_axi_arcache})
	);
	reg [1:0] arIdx;
	reg arIdxValid;
	wire readReqSuccess = axiAR[0] && arFIFO_ready;
	function automatic logic signed [2:0] sv2v_cast_3_signed;
		input logic signed [2:0] inp;
		sv2v_cast_3_signed = inp;
	endfunction
	always_comb begin
		axiAR = 'x;
		axiAR[0] = 0;
		arIdx = 'x;
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
			axiAR[18-:8] = (isMMIO[arIdx] ? 0 : (1 << (6 - $clog2(WIDTH / 8))) - 1);
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
	always_comb begin
		OUT_stat[0] = 1;
		begin : sv2v_autoblock_7
			integer i;
			for (i = 0; i < 4; i = i + 1)
				begin
					OUT_stat[62 + (i * 84)+:84] = 'x;
					OUT_stat[62 + (i * 84)] = 0;
					if (transfers[i][0] && !isMMIO[i]) begin
						OUT_stat[62 + (i * 84)] = 1;
						OUT_stat[62 + ((i * 84) + 2)] = transfers[i][5];
						OUT_stat[62 + ((i * 84) + 7)-:5] = transfers[i][101:97];
						OUT_stat[62 + ((i * 84) + 19)-:12] = transfers[i][86-:12];
						OUT_stat[62 + ((i * 84) + 83)-:32] = transfers[i][42-:32];
						OUT_stat[62 + ((i * 84) + 51)-:32] = transfers[i][74-:32];
						OUT_stat[62 + ((i * 84) + 1)] = ((transfers[i][10] == 0) && (transfers[i][9-:2] == 0)) && (transfers[i][106-:5] != 0);
					end
				end
		end
		OUT_stat[558-:161] = ldDataFwd;
		OUT_stat[61-:45] = sglLdRes;
		OUT_stat[16-:13] = sglStRes;
	end
	always_comb begin : sv2v_autoblock_8
		integer i;
		for (i = 0; i < 4; i = i + 1)
			begin
				OUT_dbg[12 + i] = transfers[i][0];
				OUT_dbg[8 + i] = transfers[i][101];
				OUT_dbg[4 + i] = transfers[i][106];
				OUT_dbg[0 + i] = isMMIO[i];
			end
	end
	logic ICW_ready;
	logic ICW_valid;
	logic [11:0] ICW_addr;
	logic [WIDTH - 1:0] ICW_data;
	logic [1:0] ICW_id;
	logic ICW_ackValid;
	logic [1:0] ICW_ackId;
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
		.OUT_CACHE_ce(OUT_icacheW[142]),
		.OUT_CACHE_we(OUT_icacheW[141]),
		.OUT_CACHE_wm(OUT_icacheW[140-:1]),
		.OUT_CACHE_addr(OUT_icacheW[139-:12]),
		.OUT_CACHE_data(OUT_icacheW[127-:FETCH_BITS])
	);
	logic DCW_ready;
	logic DCW_valid;
	logic [11:0] DCW_addr;
	logic [WIDTH - 1:0] DCW_data;
	logic [1:0] DCW_id;
	logic DCW_ackValid;
	logic [1:0] DCW_ackId;
	logic DCW_CACHE_ready;
	logic DCW_CACHE_ce;
	logic DCW_CACHE_we;
	logic [11:0] DCW_CACHE_addr;
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
	assign OUT_dcacheW[155-:16] = '1;
	assign OUT_dcacheR[155-:16] = '0;
	assign OUT_dcacheR[127-:128] = 'x;
	function logic [11:0] GetCacheRdAddr;
		input logic [250:0] t;
		case (t[4-:4])
			4'd1, 4'd3: GetCacheRdAddr = {t[86:79], t[78:75] + t[95:92]};
			default: GetCacheRdAddr = t[86-:12];
		endcase
	endfunction
	localparam R_LEN = (2 + WIDTH) + 1;
	logic [1:0] buf_rid;
	logic [WIDTH - 1:0] buf_rdata;
	logic buf_rlast;
	logic buf_rvalid;
	logic buf_rready;
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
	always_comb begin
		buf_rready = 0;
		ICW_valid = 0;
		ICW_addr = 'x;
		ICW_data = 'x;
		ICW_id = 'x;
		DCW_valid = 0;
		DCW_addr = 'x;
		DCW_data = 'x;
		DCW_id = 'x;
		if (buf_rvalid)
			if (isMMIO[buf_rid])
				buf_rready = 1;
			else begin : sv2v_autoblock_9
				logic [0:0] cID;
				cID = transfers[buf_rid][5];
				case (cID)
					0:
						if (DCW_ready && (transfers[buf_rid][106-:5] > transfers[buf_rid][96-:5])) begin
							buf_rready = 1;
							DCW_valid = 1;
							DCW_addr = GetCacheRdAddr(transfers[buf_rid]);
							DCW_data = buf_rdata;
							DCW_id = buf_rid;
							if (transfers[buf_rid][96-:5] == 0) begin : sv2v_autoblock_10
								integer i;
								for (i = 0; i < 16; i = i + 1)
									if (transfers[buf_rid][107 + i])
										DCW_data[i * 8+:8] = transfers[buf_rid][123 + (i * 8)+:8];
							end
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
	logic DCR_reqReady;
	logic DCR_reqValid;
	logic [1:0] DCR_reqTId;
	logic [7:0] DCR_reqLen;
	logic [11:0] DCR_reqAddr;
	logic DCR_reqMMIO;
	logic [31:0] DCR_reqMMIOData;
	logic DCR_dataReady;
	logic DCR_dataValid;
	logic [WIDTH - 1:0] DCR_data;
	logic DCR_dataLast;
	logic [1:0] DCR_dataTId;
	logic DCR_CACHE_ready;
	logic DCR_CACHE_ce;
	logic DCR_CACHE_we;
	logic [11:0] DCR_CACHE_addr;
	logic DCR_cacheReadValid;
	logic [1:0] DCR_cacheReadId;
	CacheReadInterface #(
		.ADDR_BITS(12),
		.LEN_BITS(8),
		.IWIDTH(WIDTH),
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
		.IN_CACHE_ready(IN_dcacheRReady),
		.OUT_CACHE_ce(OUT_dcacheR[157]),
		.OUT_CACHE_we(OUT_dcacheR[156]),
		.OUT_CACHE_addr(OUT_dcacheR[139-:12]),
		.IN_CACHE_data(IN_dcacheR),
		.OUT_cacheReadValid(DCR_cacheReadValid),
		.OUT_cacheReadId(DCR_cacheReadId)
	);
	logic [(2 + ADDR_LEN) + 18:0] axiAW;
	logic awFIFO_outValid;
	logic awFIFO_ready;
	assign s_axi_awvalid = awFIFO_outValid;
	FIFO #(
		.WIDTH((((2 + ADDR_LEN) + 18) >= 0 ? (2 + ADDR_LEN) + 19 : 1 - ((2 + ADDR_LEN) + 18)) - 1),
		.NUM(4),
		.FORWARD1(1),
		.FORWARD0(1)
	) awFIFO(
		.clk(clk),
		.rst(rst),
		.IN_valid(axiAW[0]),
		.IN_data(axiAW[1+:(((2 + ADDR_LEN) + 18) >= 0 ? (2 + ADDR_LEN) + 19 : 1 - ((2 + ADDR_LEN) + 18)) - 1]),
		.OUT_ready(awFIFO_ready),
		.OUT_valid(awFIFO_outValid),
		.IN_ready(s_axi_awready),
		.OUT_data({s_axi_awid, s_axi_awaddr, s_axi_awlen, s_axi_awsize, s_axi_awburst, s_axi_awlock, s_axi_awcache})
	);
	logic [1:0] awIdx;
	logic awIdxValid;
	always_comb begin : sv2v_autoblock_11
		reg isExclusive;
		isExclusive = 0;
		axiAW = 'x;
		axiAW[0] = 0;
		DCR_reqAddr = 'x;
		DCR_reqLen = 'x;
		DCR_reqTId = 'x;
		DCR_reqMMIOData = 'x;
		DCR_reqMMIO = 0;
		DCR_reqValid = 0;
		awIdx = 'x;
		awIdxValid = 0;
		begin : sv2v_autoblock_12
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
			DCR_reqAddr = (isMMIO[awIdx] ? 'x : transfers[awIdx][86-:12]);
			DCR_reqMMIO = isMMIO[awIdx];
			DCR_reqMMIOData = (isMMIO[awIdx] ? transfers[awIdx][154:123] : 'x);
		end
	end
	always_comb begin
		s_axi_wdata = 'x;
		s_axi_wstrb = 'x;
		s_axi_wlast = 'x;
		s_axi_wvalid = 0;
		if (DCR_dataValid) begin
			s_axi_wvalid = 1;
			s_axi_wlast = DCR_dataLast;
			s_axi_wstrb = '1;
			s_axi_wdata = DCR_data;
		end
	end
	assign DCR_dataReady = s_axi_wready;
	assign s_axi_bready = 1;
	function automatic logic [12:0] sv2v_cast_13;
		input logic [12:0] inp;
		sv2v_cast_13 = inp;
	endfunction
	function automatic logic [44:0] sv2v_cast_45;
		input logic [44:0] inp;
		sv2v_cast_45 = inp;
	endfunction
	function automatic logic [160:0] sv2v_cast_161;
		input logic [160:0] inp;
		sv2v_cast_161 = inp;
	endfunction
	function automatic logic [250:0] sv2v_cast_251;
		input logic [250:0] inp;
		sv2v_cast_251 = inp;
	endfunction
	function automatic logic [127:0] sv2v_cast_128;
		input logic [127:0] inp;
		sv2v_cast_128 = inp;
	endfunction
	always_ff @(posedge clk) begin
		sglStRes <= sv2v_cast_13(13'bxxxxxxxxxxxx0);
		sglLdRes <= sv2v_cast_45(45'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		ldDataFwd <= sv2v_cast_161(161'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		if (rst) begin : sv2v_autoblock_13
			integer i;
			for (i = 0; i < 4; i = i + 1)
				transfers[i] <= sv2v_cast_251(251'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		end
		else begin
			begin : sv2v_autoblock_14
				integer i;
				for (i = 0; i < 4; i = i + 1)
					if ((transfers[i][0] && transfers[i][7]) && transfers[i][6])
						transfers[i] <= sv2v_cast_251(251'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			end
			if (selReq[3-:4] != 4'd0) begin
				transfers[enqIdx][0] <= 1;
				transfers[enqIdx][4-:4] <= selReq[3-:4];
				transfers[enqIdx][10] <= '0;
				transfers[enqIdx][9-:2] <= '0;
				transfers[enqIdx][101-:5] <= 0;
				transfers[enqIdx][96-:5] <= 0;
				transfers[enqIdx][91-:5] <= 0;
				transfers[enqIdx][106-:5] <= 16;
				transfers[enqIdx][5] <= selReq[4];
				transfers[enqIdx][7] <= 1;
				transfers[enqIdx][6] <= 1;
				if (((selReq[3-:4] == 4'd1) || (selReq[3-:4] == 4'd2)) || (selReq[3-:4] == 4'd3)) begin
					transfers[enqIdx][42-:32] <= selReq[36-:32] & ~((WIDTH / 8) - 1);
					transfers[enqIdx][74-:32] <= selReq[68-:32] & ~((WIDTH / 8) - 1);
					transfers[enqIdx][86-:12] <= selReq[80-:12] & ~(((WIDTH / 8) - 1) >> 2);
					transfers[enqIdx][250-:128] <= selReq[208-:128];
					transfers[enqIdx][122-:16] <= selReq[224-:16];
				end
				else begin
					transfers[enqIdx][42-:32] <= selReq[36-:32];
					transfers[enqIdx][74-:32] <= selReq[68-:32];
					transfers[enqIdx][86-:12] <= selReq[80-:12];
					transfers[enqIdx][250-:128] <= sv2v_cast_128(selReq[208-:128]);
					transfers[enqIdx][122-:16] <= '1;
				end
				case (selReq[3-:4])
					4'd1: begin
						transfers[enqIdx][10] <= '1;
						transfers[enqIdx][9-:2] <= 2'b11;
						transfers[enqIdx][106-:5] <= 0;
						transfers[enqIdx][7] <= 0;
						transfers[enqIdx][6] <= 0;
					end
					4'd3: begin
						transfers[enqIdx][10] <= '1;
						transfers[enqIdx][7] <= 0;
					end
					4'd2: begin
						transfers[enqIdx][9-:2] <= 2'b11;
						transfers[enqIdx][6] <= 0;
						transfers[enqIdx][106-:5] <= 0;
					end
					4'd4, 4'd5, 4'd6: begin
						transfers[enqIdx][10] <= '1;
						transfers[enqIdx][7] <= 0;
					end
					4'd7, 4'd8, 4'd9: begin
						transfers[enqIdx][9-:2] <= 2'b11;
						transfers[enqIdx][6] <= 0;
					end
					default:
						;
				endcase
			end
			if (readReqSuccess)
				transfers[arIdx][10] <= 0;
			if (buf_rvalid && buf_rready) begin
				transfers[buf_rid][96-:5] <= transfers[buf_rid][96-:5] + WIDTH_W;
				if (isMMIO[buf_rid]) begin
					transfers[buf_rid] <= sv2v_cast_251(251'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
					sglLdRes[0] <= 1;
					sglLdRes[12-:12] <= transfers[buf_rid][86-:12];
					sglLdRes[44-:32] <= buf_rdata[31:0];
				end
			end
			if (s_axi_rvalid && s_axi_rready)
				if (transfers[s_axi_rid][5] == 0) begin
					transfers[s_axi_rid][91-:5] <= transfers[s_axi_rid][91-:5] + WIDTH_W;
					ldDataFwd[160-:128] <= s_axi_rdata;
					if (transfers[s_axi_rid][91-:5] == 0) begin : sv2v_autoblock_15
						integer i;
						for (i = 0; i < 16; i = i + 1)
							if (transfers[s_axi_rid][107 + i])
								ldDataFwd[33 + (i * 8)+:8] <= transfers[s_axi_rid][123 + (8 * i)+:8];
					end
					ldDataFwd[32-:32] <= {transfers[s_axi_rid][74:49], transfers[s_axi_rid][48:45] + transfers[s_axi_rid][90:87], 2'b00};
					ldDataFwd[0] <= 1;
				end
			if (DCW_ackValid) begin
				transfers[DCW_ackId][101-:5] <= transfers[DCW_ackId][101-:5] + WIDTH_W;
				if ((transfers[DCW_ackId][101-:5] >> $clog2(WIDTH_W)) == ((1 << (4 - $clog2(WIDTH_W))) - 1)) begin
					transfers[DCW_ackId][7] <= 1;
					if (transfers[DCW_ackId][6])
						transfers[DCW_ackId] <= sv2v_cast_251(251'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				end
			end
			if (ICW_ackValid) begin
				transfers[ICW_ackId][101-:5] <= transfers[ICW_ackId][101-:5] + WIDTH_W;
				if ((transfers[ICW_ackId][101-:5] >> $clog2(WIDTH_W)) == ((1 << (4 - $clog2(WIDTH_W))) - 1)) begin
					transfers[ICW_ackId][7] <= 1;
					if (transfers[ICW_ackId][6])
						transfers[ICW_ackId] <= sv2v_cast_251(251'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				end
			end
			if (awIdxValid) begin
				if (DCR_reqValid && DCR_reqReady)
					transfers[awIdx][8] <= 0;
				if (axiAW[0] && awFIFO_ready)
					transfers[awIdx][9] <= 0;
			end
			if (DCR_cacheReadValid)
				transfers[DCR_cacheReadId][106-:5] <= transfers[DCR_cacheReadId][106-:5] + WIDTH_W;
			if (s_axi_bvalid) begin
				if (isMMIO[s_axi_bid]) begin
					sglStRes[0] <= 1;
					sglStRes[12-:12] <= transfers[s_axi_bid][86-:12];
				end
				transfers[s_axi_bid][6] <= 1;
				if (transfers[s_axi_bid][7])
					transfers[s_axi_bid] <= sv2v_cast_251(251'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			end
		end
	end
endmodule
module MemRTL2W (
	clk,
	IN_nce,
	IN_nwe,
	IN_addr,
	IN_data,
	IN_wm,
	OUT_data,
	IN_nce1,
	IN_nwe1,
	IN_addr1,
	IN_data1,
	IN_wm1,
	OUT_data1
);
	parameter WORD_SIZE = 256;
	parameter NUM_WORDS = 512;
	parameter WRITE_SIZE = 8;
	input wire clk;
	input wire IN_nce;
	input wire IN_nwe;
	input wire [$clog2(NUM_WORDS) - 1:0] IN_addr;
	input wire [WORD_SIZE - 1:0] IN_data;
	input wire [(WORD_SIZE / WRITE_SIZE) - 1:0] IN_wm;
	output reg [WORD_SIZE - 1:0] OUT_data;
	input wire IN_nce1;
	input wire IN_nwe1;
	input wire [$clog2(NUM_WORDS) - 1:0] IN_addr1;
	input wire [WORD_SIZE - 1:0] IN_data1;
	input wire [(WORD_SIZE / WRITE_SIZE) - 1:0] IN_wm1;
	output reg [WORD_SIZE - 1:0] OUT_data1;
	(* ram_style = "block" *) reg [WORD_SIZE - 1:0] mem [NUM_WORDS - 1:0];
	reg ce_reg = 1;
	reg ce1_reg = 1;
	reg we_reg;
	reg we1_reg;
	reg [$clog2(NUM_WORDS) - 1:0] addr_reg;
	reg [$clog2(NUM_WORDS) - 1:0] addr1_reg;
	reg [WORD_SIZE - 1:0] data_reg;
	reg [WORD_SIZE - 1:0] data1_reg;
	reg [(WORD_SIZE / WRITE_SIZE) - 1:0] wm_reg;
	reg [(WORD_SIZE / WRITE_SIZE) - 1:0] wm1_reg;
	reg dbgMultiple;
	initial begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < NUM_WORDS; i = i + 1)
			mem[i] = 0;
	end
	always @(posedge clk) begin
		dbgMultiple <= 0;
		ce_reg <= IN_nce;
		we_reg <= IN_nwe;
		addr_reg <= IN_addr;
		data_reg <= IN_data;
		wm_reg <= IN_wm;
		if (!ce_reg) begin
			if (!we_reg) begin : sv2v_autoblock_2
				integer i;
				for (i = 0; i < (WORD_SIZE / WRITE_SIZE); i = i + 1)
					if (wm_reg[i])
						mem[addr_reg][WRITE_SIZE * i+:WRITE_SIZE] <= data_reg[WRITE_SIZE * i+:WRITE_SIZE];
			end
			OUT_data <= mem[addr_reg];
		end
		if ((((!ce1_reg && !ce_reg) && (addr1_reg == addr_reg)) && we_reg) && !we1_reg) begin : sv2v_autoblock_3
			integer i;
			for (i = 0; i < (WORD_SIZE / WRITE_SIZE); i = i + 1)
				if (wm1_reg[i])
					OUT_data[WRITE_SIZE * i+:WRITE_SIZE] <= data1_reg[WRITE_SIZE * i+:WRITE_SIZE];
		end
	end
	always @(posedge clk) begin
		ce1_reg <= IN_nce1;
		we1_reg <= IN_nwe1;
		addr1_reg <= IN_addr1;
		data1_reg <= IN_data1;
		wm1_reg <= IN_wm1;
		if (!ce1_reg) begin
			if (!we1_reg) begin : sv2v_autoblock_4
				integer i;
				for (i = 0; i < (WORD_SIZE / WRITE_SIZE); i = i + 1)
					if (wm1_reg[i])
						mem[addr1_reg][WRITE_SIZE * i+:WRITE_SIZE] <= data1_reg[WRITE_SIZE * i+:WRITE_SIZE];
			end
			OUT_data1 <= mem[addr1_reg];
		end
		if (((!ce1_reg && !ce_reg) && (addr1_reg == addr_reg)) && !we_reg) begin : sv2v_autoblock_5
			integer i;
			for (i = 0; i < (WORD_SIZE / WRITE_SIZE); i = i + 1)
				if (wm_reg[i])
					OUT_data1[WRITE_SIZE * i+:WRITE_SIZE] <= data_reg[WRITE_SIZE * i+:WRITE_SIZE];
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
	initial begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < NUM_WORDS; i = i + 1)
			mem[i] = 0;
	end
	always @(posedge clk) begin
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
module MMIO (
	clk,
	rst,
	IF_mem,
	OUT_powerOff,
	OUT_reboot,
	OUT_csrIf
);
	input wire clk;
	input wire rst;
	IF_MMIO.MEM IF_mem;
	output reg OUT_powerOff;
	output reg OUT_reboot;
	IF_CSR_MMIO.MMIO OUT_csrIf;
	assign IF_mem.rbusy = 0;
	wire aclintBusy;
	wire sysConBusy;
	assign IF_mem.wbusy = (aclintBusy || sysConBusy) || !IF_mem.we;
	wire [31:0] aclintData;
	wire aclintRValid;
	ACLINT aclint(
		.clk(clk),
		.rst(rst),
		.IN_re(!IF_mem.re),
		.IN_raddr(IF_mem.raddr[31:2]),
		.OUT_rdata(aclintData),
		.OUT_rbusy(aclintBusy),
		.OUT_rvalid(aclintRValid),
		.IN_we(!IF_mem.we),
		.IN_wmask(IF_mem.wmask),
		.IN_waddr(IF_mem.waddr[31:2]),
		.IN_wdata(IF_mem.wdata),
		.OUT_mtime(OUT_csrIf.mtime),
		.OUT_mtimecmp(OUT_csrIf.mtimecmp)
	);
	wire [31:0] sysConData;
	wire sysConRValid;
	SysCon #(.ADDR(32'h11100000)) sysCon(
		.clk(clk),
		.rst(rst),
		.IN_re(!IF_mem.re),
		.IN_raddr(IF_mem.raddr[31:2]),
		.OUT_rdata(sysConData),
		.OUT_rbusy(sysConBusy),
		.OUT_rvalid(sysConRValid),
		.IN_we(!IF_mem.we),
		.IN_wmask(IF_mem.wmask),
		.IN_waddr(IF_mem.waddr[31:2]),
		.IN_wdata(IF_mem.wdata),
		.OUT_powerOff(OUT_powerOff),
		.OUT_reboot(OUT_reboot)
	);
	always_comb begin
		IF_mem.rdata = 'x;
		if (aclintRValid)
			IF_mem.rdata = aclintData;
		if (sysConRValid)
			IF_mem.rdata = sysConData;
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
	input logic [73:0] IN_branch;
	input logic [182:0] IN_uop;
	output logic [51:0] OUT_uop;
	logic [149:0] pl [NUM_STAGES:0];
	assign OUT_busy = 0;
	always_ff @(posedge clk) begin
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < (NUM_STAGES + 1); i = i + 1)
				begin
					pl[i] <= 'x;
					pl[i][0] <= 0;
				end
		end
		OUT_uop <= 'x;
		OUT_uop[0] <= 0;
		if (rst)
			;
		else begin
			if ((en && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[32-:7] - IN_branch[27-:7]) <= 0))) begin
				pl[0][0] <= 1;
				pl[0][19-:7] <= IN_uop[39-:7];
				pl[0][7-:7] <= IN_uop[32-:7];
				pl[0][85-:64] <= 0;
				case (IN_uop[45-:6])
					6'd1: begin
						pl[0][21] <= IN_uop[182] ^ IN_uop[150];
						pl[0][149-:32] <= (IN_uop[182] ? -IN_uop[182-:32] : IN_uop[182-:32]);
						pl[0][117-:32] <= (IN_uop[150] ? -IN_uop[150-:32] : IN_uop[150-:32]);
					end
					6'd2: begin
						pl[0][21] <= IN_uop[182];
						pl[0][149-:32] <= (IN_uop[182] ? -IN_uop[182-:32] : IN_uop[182-:32]);
						pl[0][117-:32] <= IN_uop[150-:32];
					end
					6'd0, 6'd3: begin
						pl[0][21] <= 0;
						pl[0][149-:32] <= IN_uop[182-:32];
						pl[0][117-:32] <= IN_uop[150-:32];
					end
					default:
						;
				endcase
				pl[0][20] <= IN_uop[45-:6] != 6'd0;
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
				OUT_uop[19-:7] <= pl[NUM_STAGES][19-:7];
				OUT_uop[12-:7] <= pl[NUM_STAGES][7-:7];
				OUT_uop[5-:4] <= 4'd0;
				OUT_uop[1] <= 0;
				if (pl[NUM_STAGES][20])
					OUT_uop[51-:32] <= (pl[NUM_STAGES][21] ? ~pl[NUM_STAGES][85:54] + (pl[NUM_STAGES][53:22] == 0 ? 1 : 0) : pl[NUM_STAGES][85:54]);
				else
					OUT_uop[51-:32] <= pl[NUM_STAGES][53:22];
			end
		end
	end
endmodule
module OHEncoder (
	IN_idxOH,
	OUT_idx,
	OUT_valid
);
	parameter LEN = 32;
	parameter ALLOW_NULL = 0;
	input wire [LEN - 1:0] IN_idxOH;
	output reg [(LEN == 1 ? 0 : $clog2(LEN) - 1):0] OUT_idx;
	output reg OUT_valid;
	generate
		if (LEN > 1) begin : genblk1
			always_comb begin
				OUT_valid = 0;
				begin : sv2v_autoblock_1
					integer i;
					for (i = 0; i < LEN; i = i + 1)
						OUT_valid = OUT_valid | IN_idxOH[i];
				end
				begin : sv2v_autoblock_2
					integer i;
					for (i = 0; i < $clog2(LEN); i = i + 1)
						begin
							OUT_idx[i] = 1'b0;
							begin : sv2v_autoblock_3
								integer j;
								for (j = 0; j < LEN; j = j + 1)
									if ((j & (1 << i)) != 0)
										OUT_idx[i] = OUT_idx[i] | IN_idxOH[j];
							end
						end
				end
			end
		end
		else begin : genblk1
			always_comb begin
				OUT_idx = 0;
				OUT_valid = IN_idxOH[0];
			end
		end
	endgenerate
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
	input logic [(NUM_RQS * 55) - 1:0] IN_rqs;
	output logic [52:0] OUT_res;
	input wire IN_ldStall;
	output logic [32:0] OUT_ldUOp;
	localparam NUM_AGUS = 2;
	input logic [85:0] IN_ldAck;
	input logic [81:0] IN_ldResUOp;
	reg [0:0] pageWalkIter;
	reg [31:0] pageWalkAddr;
	reg [1:0] rqID;
	logic [1:0] state;
	logic [40:0] pwLdRes;
	localparam logic [6:0] TAG_ZERO = 7'b1000000;
	function automatic logic [40:0] sv2v_cast_41;
		input logic [40:0] inp;
		sv2v_cast_41 = inp;
	endfunction
	always_comb begin
		pwLdRes = sv2v_cast_41(41'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				if ((IN_ldResUOp[i * 41] && IN_ldResUOp[(i * 41) + 1]) && (IN_ldResUOp[(i * 41) + 8-:7] == TAG_ZERO))
					pwLdRes = IN_ldResUOp[i * 41+:41];
		end
	end
	wire [31:0] nextLookup = {pwLdRes[38:19], pageWalkAddr[21:12], 2'b00};
	reg pageFault_c;
	reg isSuperPage_c;
	reg [21:0] ppn_c;
	reg [2:0] rwx_c;
	reg [3:0] dagu_c;
	always_comb begin : sv2v_autoblock_2
		reg [31:0] pte;
		pte = pwLdRes[40-:32];
		isSuperPage_c = pageWalkIter;
		pageFault_c = 0;
		ppn_c = pte[31:10];
		rwx_c = 'x;
		dagu_c = 'x;
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
	function automatic logic [32:0] sv2v_cast_33;
		input logic [32:0] inp;
		sv2v_cast_33 = inp;
	endfunction
	function automatic logic [52:0] sv2v_cast_53;
		input logic [52:0] inp;
		sv2v_cast_53 = inp;
	endfunction
	always_ff @(posedge clk) begin
		OUT_res[0] <= 0;
		if (rst) begin
			OUT_ldUOp <= sv2v_cast_33(33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			state <= 2'd0;
			OUT_res <= sv2v_cast_53(53'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx00);
			pageWalkIter <= 'x;
			pageWalkAddr <= 'x;
			rqID <= 'x;
		end
		else
			case (state)
				default: begin
					OUT_res[1] <= 0;
					begin : sv2v_autoblock_3
						integer i;
						for (i = 0; i < NUM_RQS; i = i + 1)
							if (IN_rqs[i * 55]) begin
								state <= 2'd1;
								pageWalkIter <= 1;
								pageWalkAddr <= IN_rqs[(i * 55) + 54-:32];
								rqID <= i[1:0];
								OUT_ldUOp[0] <= 1;
								OUT_ldUOp[32-:32] <= {IN_rqs[(i * 55) + 20-:20], IN_rqs[(i * 55) + 54-:10], 2'b00};
								OUT_res <= 'x;
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
					else if (pwLdRes[0]) begin
						if ((((pwLdRes[12:9] == 4'b0001) && (pwLdRes[40:39] == 0)) && (pageWalkIter == 1)) && (((nextLookup >= 32'h80000000) && (nextLookup < 32'h90000000)) || ((nextLookup < 32'h80000000) && (nextLookup >= 32'h10000000)))) begin
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
					else begin : sv2v_autoblock_4
						integer i;
						for (i = 0; i < NUM_AGUS; i = i + 1)
							if ((IN_ldAck[i * 43] && IN_ldAck[(i * 43) + 1]) && IN_ldAck[(i * 43) + 3])
								OUT_ldUOp[0] <= 1;
					end
			endcase
	end
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
	always_ff @(posedge clk) begin
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
	assign OUT_rdata = 0;
	assign OUT_rvalid = 0;
	always_ff @(posedge clk) begin
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
	in,
	res
);
	parameter SIZE = 32;
	input wire [SIZE - 1:0] in;
	output wire [$clog2(SIZE):0] res;
	localparam SIZE_POW2 = 1 << $clog2(SIZE);
	localparam NUM_STAGES = $clog2(SIZE_POW2);
	wire [SIZE_POW2 - 1:0] inPadded = {{SIZE_POW2 - SIZE {1'b0}}, in};
	genvar i;
	generate
		for (i = 0; i <= NUM_STAGES; i = i + 1) begin : tree
			logic [((SIZE_POW2 >> i) * (i + 1)) - 1:0] iSums;
			if (i == 0) begin : genblk1
				assign iSums = inPadded;
			end
			else begin : genblk1
				genvar j;
				for (j = 0; j < (SIZE_POW2 >> i); j = j + 1) begin : genblk1
					assign iSums[j * (i + 1)+:i + 1] = tree[i - 1].iSums[(2 * j) * i+:i] + tree[i - 1].iSums[((2 * j) + 1) * i+:i];
				end
			end
		end
	endgenerate
	assign res = tree[NUM_STAGES].iSums;
endmodule
module PriorityEncoder (
	IN_data,
	OUT_idx,
	OUT_idxValid
);
	parameter BITS = 32;
	parameter N = 1;
	input logic [BITS - 1:0] IN_data;
	output logic [(N * $clog2(BITS)) - 1:0] OUT_idx;
	output logic [N - 1:0] OUT_idxValid;
	localparam BITS_POW2 = 1 << $clog2(BITS);
	wire [BITS_POW2 - 1:0] freePadded = {{BITS_POW2 - BITS {1'b0}}, IN_data};
	localparam NUM_STAGES = $clog2(BITS_POW2);
	genvar g;
	generate
		for (g = 0; g < (NUM_STAGES + 1); g = g + 1) begin : gen
			logic [(g >= 0 ? (N * (g + 1)) - 1 : (N * (1 - g)) + (g - 1)):(g >= 0 ? 0 : g + 0)] s [(BITS_POW2 >> g) - 1:0];
			if (g == 0) begin : genblk1
				always_comb begin : sv2v_autoblock_1
					integer i;
					for (i = 0; i < BITS_POW2; i = i + 1)
						begin
							begin : sv2v_autoblock_2
								integer j;
								for (j = 0; j < N; j = j + 1)
									s[i][(g >= 0 ? 0 : g) + (j * (g >= 0 ? g + 1 : 1 - g))+:(g >= 0 ? g + 1 : 1 - g)] = 1;
							end
							s[i][(g >= 0 ? 0 : g) + 0+:(g >= 0 ? g + 1 : 1 - g)] = !freePadded[i];
						end
				end
			end
			else begin : genblk1
				genvar i;
				for (i = 0; i < (BITS_POW2 >> g); i = i + 1) begin : genblk1
					wire [(N * g) - 1:0] a = gen[g - 1].s[(2 * i) + 0];
					wire [(N * g) - 1:0] b = gen[g - 1].s[(2 * i) + 1];
					genvar j;
					for (j = 0; j < N; j = j + 1) begin : gen2
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
						assign s[i][(g >= 0 ? 0 : g) + (j * (g >= 0 ? g + 1 : 1 - g))+:(g >= 0 ? g + 1 : 1 - g)] = {a[j * g], mux[redSum]};
					end
				end
			end
		end
	endgenerate
	always_comb begin : sv2v_autoblock_3
		logic [($clog2(BITS) >= 0 ? (N * ($clog2(BITS) + 1)) - 1 : (N * (1 - $clog2(BITS))) + ($clog2(BITS) - 1)):($clog2(BITS) >= 0 ? 0 : $clog2(BITS) + 0)] packedIdcs;
		packedIdcs = gen[NUM_STAGES].s[0];
		begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < N; i = i + 1)
				begin
					OUT_idx[i * $clog2(BITS)+:$clog2(BITS)] = packedIdcs[($clog2(BITS) >= 0 ? (i * ($clog2(BITS) >= 0 ? $clog2(BITS) + 1 : 1 - $clog2(BITS))) + ($clog2(BITS) >= 0 ? ($clog2(BITS) >= 1 ? $clog2(BITS) : ($clog2(BITS) + ($clog2(BITS) >= 1 ? $clog2(BITS) : 2 - $clog2(BITS))) - 1) : $clog2(BITS) - ($clog2(BITS) >= 1 ? $clog2(BITS) : ($clog2(BITS) + ($clog2(BITS) >= 1 ? $clog2(BITS) : 2 - $clog2(BITS))) - 1)) : (((i * ($clog2(BITS) >= 0 ? $clog2(BITS) + 1 : 1 - $clog2(BITS))) + ($clog2(BITS) >= 0 ? ($clog2(BITS) >= 1 ? $clog2(BITS) : ($clog2(BITS) + ($clog2(BITS) >= 1 ? $clog2(BITS) : 2 - $clog2(BITS))) - 1) : $clog2(BITS) - ($clog2(BITS) >= 1 ? $clog2(BITS) : ($clog2(BITS) + ($clog2(BITS) >= 1 ? $clog2(BITS) : 2 - $clog2(BITS))) - 1))) + ($clog2(BITS) >= 1 ? $clog2(BITS) : 2 - $clog2(BITS))) - 1)-:($clog2(BITS) >= 1 ? $clog2(BITS) : 2 - $clog2(BITS))];
					OUT_idxValid[i] = !packedIdcs[(i * ($clog2(BITS) >= 0 ? $clog2(BITS) + 1 : 1 - $clog2(BITS))) + ($clog2(BITS) >= 0 ? 0 : $clog2(BITS))];
				end
		end
	end
endmodule
module RangeMaskGen (
	IN_allOnes,
	IN_enable,
	IN_startIdx,
	IN_endIdx,
	OUT_range
);
	parameter LENGTH = 16;
	parameter OUTPUT_ON_EQUAL = 0;
	parameter START_SHIFT = 0;
	parameter END_SHIFT = 0;
	input wire IN_allOnes;
	input wire IN_enable;
	input wire [$clog2(LENGTH) - 1:0] IN_startIdx;
	input wire [$clog2(LENGTH) - 1:0] IN_endIdx;
	output logic [LENGTH - 1:0] OUT_range;
	wire [LENGTH - 1:0] startIdxOH = 1 << IN_startIdx;
	wire [LENGTH - 1:0] endIdxOH = 1 << IN_endIdx;
	wire [$clog2(LENGTH) - 1:0] startIdxSh = IN_startIdx + START_SHIFT;
	wire [$clog2(LENGTH) - 1:0] endIdxSh = IN_endIdx + END_SHIFT;
	always_comb begin : sv2v_autoblock_1
		logic active;
		active = (OUTPUT_ON_EQUAL ? startIdxSh >= endIdxSh : startIdxSh > endIdxSh);
		begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < LENGTH; i = i + 1)
				begin : sv2v_autoblock_3
					logic doEnd;
					logic doStart;
					doEnd = endIdxOH[$unsigned(i - END_SHIFT) % LENGTH];
					doStart = startIdxOH[$unsigned(i - START_SHIFT) % LENGTH];
					if (doStart && doEnd)
						active = OUTPUT_ON_EQUAL;
					else if (doStart)
						active = 1;
					else if (doEnd)
						active = 0;
					OUT_range[i] = (active && IN_enable) || IN_allOnes;
				end
		end
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
	parameter ALLOW_COLLISION = 0;
	input wire clk;
	input wire [NUM_READ - 1:0] IN_re;
	input wire [(NUM_READ * $clog2(SIZE)) - 1:0] IN_raddr;
	output reg [(NUM_READ * WIDTH) - 1:0] OUT_rdata;
	input wire [NUM_WRITE - 1:0] IN_we;
	input wire [(NUM_WRITE * $clog2(SIZE)) - 1:0] IN_waddr;
	input wire [(NUM_WRITE * WIDTH) - 1:0] IN_wdata;
	reg [WIDTH - 1:0] mem [SIZE - 1:0];
	always_ff @(posedge clk) begin
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_READ; i = i + 1)
				if (IN_re[i])
					OUT_rdata[i * WIDTH+:WIDTH] <= mem[IN_raddr[i * $clog2(SIZE)+:$clog2(SIZE)]];
				else
					OUT_rdata[i * WIDTH+:WIDTH] <= 'x;
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
	IN_flagsUOps,
	IN_branch,
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
	localparam NUM_AGUS = 2;
	localparam NUM_ALUS = 3;
	localparam NUM_PORTS_TOTAL = 7;
	input wire [(7 * WIDTH_ISSUE) - 1:0] IN_stalls;
	output reg OUT_stall;
	input logic [(WIDTH_ISSUE * 80) - 1:0] IN_uop;
	input logic [(WIDTH_COMMIT * 23) - 1:0] IN_comUOp;
	input logic [(WIDTH_WR * 20) - 1:0] IN_flagsUOps;
	input logic [73:0] IN_branch;
	input wire IN_mispredFlush;
	output logic [(WIDTH_ISSUE * 129) - 1:0] OUT_uop;
	output logic [(WIDTH_ISSUE * 2) - 1:0] OUT_uopOrdering;
	output logic [6:0] OUT_nextSqN;
	output logic [6:0] OUT_nextLoadSqN;
	output logic [6:0] OUT_nextStoreSqN;
	reg [WIDTH_ISSUE - 1:0] portStall;
	always_comb begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < WIDTH_ISSUE; i = i + 1)
			begin
				portStall[i] = 0;
				begin : sv2v_autoblock_2
					integer j;
					for (j = 0; j < NUM_PORTS_TOTAL; j = j + 1)
						portStall[i] = portStall[i] | IN_stalls[(j * WIDTH_ISSUE) + i];
				end
			end
	end
	wire [(2 * WIDTH_ISSUE) - 1:0] RAT_lookupAvail;
	logic [((2 * WIDTH_ISSUE) * 7) - 1:0] RAT_lookupSpecTag;
	reg [((2 * WIDTH_ISSUE) * 5) - 1:0] RAT_lookupIDs;
	reg [(WIDTH_ISSUE * 5) - 1:0] RAT_issueIDs;
	reg [WIDTH_ISSUE - 1:0] RAT_issueValid;
	reg [WIDTH_ISSUE - 1:0] RAT_issueAvail;
	logic [(WIDTH_ISSUE * 7) - 1:0] RAT_issueSqNs;
	reg [WIDTH_ISSUE - 1:0] TB_issueValid;
	reg TB_tagNeeded [WIDTH_ISSUE - 1:0];
	reg [WIDTH_COMMIT - 1:0] RAT_commitValid;
	reg [WIDTH_COMMIT - 1:0] TB_commitValid;
	reg [(WIDTH_COMMIT * 5) - 1:0] RAT_commitIDs;
	logic [(WIDTH_COMMIT * 7) - 1:0] RAT_commitTags;
	logic [(WIDTH_COMMIT * 7) - 1:0] RAT_commitPrevTags;
	reg [WIDTH_WR - 1:0] RAT_wbValid;
	logic [(WIDTH_WR * 7) - 1:0] RAT_wbTags;
	logic [6:0] nextCounterSqN;
	reg isSc [WIDTH_ISSUE - 1:0];
	reg scSuccessful [WIDTH_ISSUE - 1:0];
	reg [WIDTH_ISSUE - 1:0] TB_tagsValid;
	logic [6:0] counterSqN;
	reg failSc;
	always_comb begin
		OUT_stall = |portStall;
		nextCounterSqN = counterSqN;
		begin : sv2v_autoblock_3
			integer i;
			for (i = 0; i < WIDTH_ISSUE; i = i + 1)
				begin
					if (IN_mispredFlush && IN_uop[i * 80])
						OUT_stall = 1;
					isSc[i] = (IN_uop[(i * 80) + 13-:4] == 4'd3) && (IN_uop[(i * 80) + 19-:6] == 6'd6);
					scSuccessful[i] = !((i == 0) && failSc);
					TB_tagNeeded[i] = ((((IN_uop[(i * 80) + 24-:5] != 0) || (IN_uop[(i * 80) + 13-:4] == 4'd10)) && (IN_uop[(i * 80) + 13-:4] != 4'd9)) && (IN_uop[(i * 80) + 13-:4] != 4'd12)) && !isSc[i];
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
					RAT_issueSqNs[i * 7+:7] = nextCounterSqN;
					RAT_issueValid[i] = (((!rst && !IN_branch[0]) && frontEn) && !OUT_stall) && IN_uop[i * 80];
					RAT_issueAvail[i] = (IN_uop[(i * 80) + 13-:4] == 4'd9) || isSc[i];
					TB_issueValid[i] = RAT_issueValid[i] && TB_tagNeeded[i];
					if (RAT_issueValid[i])
						nextCounterSqN = nextCounterSqN + 1;
				end
		end
		begin : sv2v_autoblock_5
			integer i;
			for (i = 0; i < WIDTH_WR; i = i + 1)
				begin
					RAT_wbValid[i] = IN_flagsUOps[i * 20] && !IN_flagsUOps[(i * 20) + 19];
					RAT_wbTags[i * 7+:7] = IN_flagsUOps[(i * 20) + 19-:7];
				end
		end
		begin : sv2v_autoblock_6
			integer i;
			for (i = 0; i < WIDTH_COMMIT; i = i + 1)
				begin
					RAT_commitValid[i] = IN_comUOp[i * 23] && (IN_comUOp[(i * 23) + 22-:5] != 0);
					TB_commitValid[i] = IN_comUOp[i * 23];
					RAT_commitIDs[i * 5+:5] = IN_comUOp[(i * 23) + 22-:5];
					RAT_commitTags[i * 7+:7] = IN_comUOp[(i * 23) + 17-:7];
				end
		end
	end
	logic [(WIDTH_ISSUE * 7) - 1:0] newTags;
	RenameTable #(
		.NUM_LOOKUP(WIDTH_ISSUE * 2),
		.NUM_ISSUE(WIDTH_ISSUE),
		.NUM_COMMIT(WIDTH_COMMIT),
		.NUM_WB(WIDTH_WR)
	) rt(
		.clk(clk),
		.rst(rst),
		.IN_mispred(IN_branch[0]),
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
		.OUT_commitPrevTags(RAT_commitPrevTags),
		.IN_wbValid(RAT_wbValid),
		.IN_wbTag(RAT_wbTags)
	);
	logic [(WIDTH_ISSUE * 6) - 1:0] TB_tags;
	localparam logic [6:0] TAG_ZERO = 7'b1000000;
	function automatic logic [5:0] sv2v_cast_6;
		input logic [5:0] inp;
		sv2v_cast_6 = inp;
	endfunction
	always_comb begin : sv2v_autoblock_7
		integer i;
		for (i = 0; i < WIDTH_ISSUE; i = i + 1)
			if (TB_issueValid[i])
				newTags[i * 7+:7] = {1'b0, TB_tags[i * 6+:6]};
			else if (IN_uop[(i * 80) + 13-:4] == 4'd9)
				newTags[i * 7+:7] = {1'b1, sv2v_cast_6(IN_uop[(i * 80) + 79-:32])};
			else if (isSc[i])
				newTags[i * 7+:7] = {1'b1, {5 {1'b0}}, !scSuccessful[i]};
			else
				newTags[i * 7+:7] = TAG_ZERO;
	end
	reg [WIDTH_COMMIT - 1:0] isNewestCommit;
	TagBuffer #(
		.NUM_ISSUE(WIDTH_ISSUE),
		.NUM_COMMIT(WIDTH_COMMIT)
	) tb(
		.clk(clk),
		.rst(rst),
		.IN_mispr(IN_branch[0]),
		.IN_mispredFlush(IN_mispredFlush),
		.IN_issueValid(TB_issueValid),
		.OUT_issueTags(TB_tags),
		.OUT_issueTagsValid(TB_tagsValid),
		.IN_commitValid(TB_commitValid),
		.IN_commitNewest(isNewestCommit),
		.IN_RAT_commitPrevTags(RAT_commitPrevTags),
		.IN_commitTagDst(RAT_commitTags)
	);
	always_comb begin : sv2v_autoblock_8
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
	wire cycleValid = (!IN_branch[0] && frontEn) && !OUT_stall;
	logic [6:0] counterStoreSqN;
	logic [6:0] counterLoadSqN;
	assign OUT_nextSqN = counterSqN;
	logic [(WIDTH_ISSUE >= 0 ? ((WIDTH_ISSUE + 1) * 7) - 1 : ((1 - WIDTH_ISSUE) * 7) + ((WIDTH_ISSUE * 7) - 1)):(WIDTH_ISSUE >= 0 ? 0 : WIDTH_ISSUE * 7)] loadSqNs;
	logic [(WIDTH_ISSUE >= 0 ? ((WIDTH_ISSUE + 1) * 7) - 1 : ((1 - WIDTH_ISSUE) * 7) + ((WIDTH_ISSUE * 7) - 1)):(WIDTH_ISSUE >= 0 ? 0 : WIDTH_ISSUE * 7)] storeSqNs;
	always_comb begin
		loadSqNs[(WIDTH_ISSUE >= 0 ? 0 : WIDTH_ISSUE) * 7+:7] = counterLoadSqN;
		storeSqNs[(WIDTH_ISSUE >= 0 ? 0 : WIDTH_ISSUE) * 7+:7] = counterStoreSqN;
		begin : sv2v_autoblock_10
			integer i;
			for (i = 0; i < WIDTH_ISSUE; i = i + 1)
				begin
					loadSqNs[(WIDTH_ISSUE >= 0 ? i + 1 : WIDTH_ISSUE - (i + 1)) * 7+:7] = loadSqNs[(WIDTH_ISSUE >= 0 ? i : WIDTH_ISSUE - i) * 7+:7];
					storeSqNs[(WIDTH_ISSUE >= 0 ? i + 1 : WIDTH_ISSUE - (i + 1)) * 7+:7] = storeSqNs[(WIDTH_ISSUE >= 0 ? i : WIDTH_ISSUE - i) * 7+:7];
					if ((cycleValid && IN_uop[i * 80]) && !(isSc[i] && !scSuccessful[i])) begin
						if ((IN_uop[(i * 80) + 13-:4] == 4'd10) || ((IN_uop[(i * 80) + 13-:4] == 4'd3) && (IN_uop[(i * 80) + 19-:6] < 6'd6)))
							loadSqNs[(WIDTH_ISSUE >= 0 ? i + 1 : WIDTH_ISSUE - (i + 1)) * 7+:7] = loadSqNs[(WIDTH_ISSUE >= 0 ? i : WIDTH_ISSUE - i) * 7+:7] + 1;
						if ((IN_uop[(i * 80) + 13-:4] == 4'd10) || ((IN_uop[(i * 80) + 13-:4] == 4'd3) && (IN_uop[(i * 80) + 19-:6] >= 6'd6)))
							storeSqNs[(WIDTH_ISSUE >= 0 ? i + 1 : WIDTH_ISSUE - (i + 1)) * 7+:7] = storeSqNs[(WIDTH_ISSUE >= 0 ? i : WIDTH_ISSUE - i) * 7+:7] + 1;
					end
				end
		end
	end
	logic [(WIDTH_ISSUE * 2) - 1:0] SCHED_uopOrder;
	Scheduler scheduler(
		.clk(clk),
		.rst(rst),
		.IN_valid(cycleValid),
		.IN_uopSqN(RAT_issueSqNs),
		.IN_uopLoadSqN(loadSqNs[7 * (WIDTH_ISSUE >= 0 ? (WIDTH_ISSUE >= 0 ? (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : (WIDTH_ISSUE + (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : 2 - WIDTH_ISSUE)) - 1) - ((WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : 2 - WIDTH_ISSUE) - 1) : (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : (WIDTH_ISSUE + (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : 2 - WIDTH_ISSUE)) - 1)) : WIDTH_ISSUE - (WIDTH_ISSUE >= 0 ? (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : (WIDTH_ISSUE + (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : 2 - WIDTH_ISSUE)) - 1) - ((WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : 2 - WIDTH_ISSUE) - 1) : (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : (WIDTH_ISSUE + (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : 2 - WIDTH_ISSUE)) - 1)))+:7 * (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : 2 - WIDTH_ISSUE)]),
		.IN_uopStoreSqN(storeSqNs[7 * (WIDTH_ISSUE >= 0 ? (WIDTH_ISSUE >= 0 ? (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : (WIDTH_ISSUE + (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : 2 - WIDTH_ISSUE)) - 1) - ((WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : 2 - WIDTH_ISSUE) - 1) : (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : (WIDTH_ISSUE + (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : 2 - WIDTH_ISSUE)) - 1)) : WIDTH_ISSUE - (WIDTH_ISSUE >= 0 ? (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : (WIDTH_ISSUE + (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : 2 - WIDTH_ISSUE)) - 1) - ((WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : 2 - WIDTH_ISSUE) - 1) : (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : (WIDTH_ISSUE + (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : 2 - WIDTH_ISSUE)) - 1)))+:7 * (WIDTH_ISSUE >= 1 ? WIDTH_ISSUE : 2 - WIDTH_ISSUE)]),
		.IN_uop(IN_uop),
		.OUT_order(SCHED_uopOrder)
	);
	function automatic logic [6:0] sv2v_cast_49D34;
		input logic [6:0] inp;
		sv2v_cast_49D34 = inp;
	endfunction
	function automatic logic [128:0] sv2v_cast_FC9A6;
		input logic [128:0] inp;
		sv2v_cast_FC9A6 = inp;
	endfunction
	function automatic logic [31:0] sv2v_cast_32;
		input logic [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	function automatic logic [11:0] sv2v_cast_12;
		input logic [11:0] inp;
		sv2v_cast_12 = inp;
	endfunction
	function automatic logic [4:0] sv2v_cast_5;
		input logic [4:0] inp;
		sv2v_cast_5 = inp;
	endfunction
	function automatic logic [2:0] sv2v_cast_3;
		input logic [2:0] inp;
		sv2v_cast_3 = inp;
	endfunction
	function automatic logic [3:0] sv2v_cast_4;
		input logic [3:0] inp;
		sv2v_cast_4 = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst) begin
			counterSqN <= 0;
			counterStoreSqN <= -1;
			counterLoadSqN <= 0;
			OUT_nextStoreSqN <= 0;
			OUT_nextLoadSqN <= 0;
			failSc <= 0;
			begin : sv2v_autoblock_11
				integer i;
				for (i = 0; i < WIDTH_ISSUE; i = i + 1)
					begin
						OUT_uop[0 + (i * 129)+:129] <= sv2v_cast_FC9A6({121'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_49D34(0), 1'd0});
						OUT_uopOrdering[i * 2+:2] <= 'x;
					end
			end
		end
		else begin
			if (IN_branch[0]) begin
				counterSqN <= IN_branch[27-:7] + 1;
				counterLoadSqN <= IN_branch[13-:7];
				counterStoreSqN <= IN_branch[20-:7];
				OUT_nextLoadSqN <= IN_branch[13-:7];
				OUT_nextStoreSqN <= IN_branch[20-:7] + 1;
				failSc <= IN_branch[68];
				begin : sv2v_autoblock_12
					integer i;
					for (i = 0; i < WIDTH_ISSUE; i = i + 1)
						if ($signed(OUT_uop[(i * 129) + 59-:7] - IN_branch[27-:7]) > 0)
							OUT_uop[0 + (i * 129)+:129] <= sv2v_cast_FC9A6({121'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_49D34(0), 1'd0});
				end
			end
			else begin
				counterLoadSqN <= loadSqNs[(WIDTH_ISSUE >= 0 ? WIDTH_ISSUE : WIDTH_ISSUE - WIDTH_ISSUE) * 7+:7];
				counterStoreSqN <= storeSqNs[(WIDTH_ISSUE >= 0 ? WIDTH_ISSUE : WIDTH_ISSUE - WIDTH_ISSUE) * 7+:7];
				OUT_nextLoadSqN <= loadSqNs[(WIDTH_ISSUE >= 0 ? WIDTH_ISSUE : WIDTH_ISSUE - WIDTH_ISSUE) * 7+:7];
				OUT_nextStoreSqN <= storeSqNs[(WIDTH_ISSUE >= 0 ? WIDTH_ISSUE : WIDTH_ISSUE - WIDTH_ISSUE) * 7+:7] + 1;
			end
			if (|portStall) begin : sv2v_autoblock_13
				integer i;
				for (i = 0; i < WIDTH_WR; i = i + 1)
					if (IN_flagsUOps[i * 20] && !IN_flagsUOps[(i * 20) + 19]) begin : sv2v_autoblock_14
						integer j;
						for (j = 0; j < WIDTH_ISSUE; j = j + 1)
							if (|OUT_uop[(j * 129) + 7-:7]) begin
								if (OUT_uop[(j * 129) + 83-:7] == IN_flagsUOps[(i * 20) + 19-:7])
									OUT_uop[(j * 129) + 84] <= 1;
								if (OUT_uop[(j * 129) + 75-:7] == IN_flagsUOps[(i * 20) + 19-:7])
									OUT_uop[(j * 129) + 76] <= 1;
								if (OUT_uop[(j * 129) + 66-:7] == IN_flagsUOps[(i * 20) + 19-:7])
									OUT_uop[(j * 129) + 67] <= 1;
							end
					end
			end
			if (cycleValid) begin
				begin : sv2v_autoblock_15
					integer i;
					for (i = 0; i < WIDTH_ISSUE; i = i + 1)
						begin
							OUT_uop[0 + (i * 129)+:129] <= sv2v_cast_FC9A6({121'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_49D34(0), 1'd0});
							if (IN_uop[i * 80]) begin
								failSc <= 0;
								OUT_uop[0 + (i * 129)+:129] <= sv2v_cast_FC9A6({sv2v_cast_32(IN_uop[(i * 80) + 79-:32]), sv2v_cast_12(IN_uop[(i * 80) + 47-:12]), RAT_lookupAvail[(2 * i) + 0], RAT_lookupSpecTag[((2 * i) + 0) * 7+:7], RAT_lookupAvail[(2 * i) + 1], RAT_lookupSpecTag[((2 * i) + 1) * 7+:7], IN_uop[(i * 80) + 25], 1'b1, TAG_ZERO, RAT_issueSqNs[i * 7+:7], newTags[i * 7+:7], sv2v_cast_5(IN_uop[(i * 80) + 24-:5]), sv2v_cast_6(IN_uop[(i * 80) + 19-:6]), sv2v_cast_5(IN_uop[(i * 80) + 9-:5]), sv2v_cast_3(IN_uop[(i * 80) + 4-:3]), storeSqNs[(WIDTH_ISSUE >= 0 ? i + 1 : WIDTH_ISSUE - (i + 1)) * 7+:7], loadSqNs[(WIDTH_ISSUE >= 0 ? i : WIDTH_ISSUE - i) * 7+:7], sv2v_cast_4(IN_uop[(i * 80) + 13-:4]), IN_uop[(i * 80) + 1], sv2v_cast_49D34({NUM_PORTS_TOTAL {1'b1}}), 1'b1});
								if (IN_uop[(i * 80) + 13-:4] == 4'd12)
									OUT_uop[(i * 129) + 45-:5] <= IN_uop[(i * 80) + 18-:5];
								if (isSc[i] && !scSuccessful[i])
									OUT_uop[(i * 129) + 12-:4] <= 4'd9;
								if (IN_uop[(i * 80) + 13-:4] == 4'd10) begin
									OUT_uop[(i * 129) + 66-:7] <= newTags[i * 7+:7];
									OUT_uop[(i * 129) + 67] <= 0;
								end
								OUT_uopOrdering[i * 2+:2] <= SCHED_uopOrder[i * 2+:2];
							end
						end
				end
				counterSqN <= nextCounterSqN;
			end
			else begin : sv2v_autoblock_16
				integer i;
				for (i = 0; i < WIDTH_ISSUE; i = i + 1)
					begin
						OUT_uop[(i * 129) + 0] <= 0;
						begin : sv2v_autoblock_17
							integer j;
							for (j = 0; j < NUM_PORTS_TOTAL; j = j + 1)
								if (!IN_stalls[(j * WIDTH_ISSUE) + i])
									OUT_uop[(i * 129) + (1 + j)] <= 0;
						end
					end
			end
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
	output reg [(NUM_COMMIT * TAG_SIZE) - 1:0] OUT_commitPrevTags;
	input wire [NUM_WB - 1:0] IN_wbValid;
	input wire [(NUM_WB * TAG_SIZE) - 1:0] IN_wbTag;
	localparam NUM_TAGS = 1 << (TAG_SIZE - 1);
	logic [TAG_SIZE - 1:0] comTag [NUM_REGS - 1:0];
	logic [TAG_SIZE - 1:0] specTag [NUM_REGS - 1:0];
	reg [NUM_TAGS - 1:0] tagAvail;
	always_comb begin
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
	localparam logic [6:0] TAG_ZERO = 7'b1000000;
	always_ff @(posedge clk)
		if (rst) begin
			begin : sv2v_autoblock_5
				integer i;
				for (i = 0; i < NUM_REGS; i = i + 1)
					begin
						comTag[i] <= TAG_ZERO;
						specTag[i] <= TAG_ZERO;
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
	IN_recoveryIdx,
	IN_mispr,
	OUT_curIdx,
	OUT_predBr,
	IN_returnUpd
);
	parameter SIZE = 32;
	parameter RQSIZE = 8;
	input wire clk;
	input wire rst;
	output wire OUT_stall;
	input wire IN_valid;
	input wire [30:0] IN_pc;
	input logic [4:0] IN_fetchID;
	input logic [4:0] IN_comFetchID;
	input wire [30:0] IN_lastPC;
	input logic [40:0] IN_branch;
	output reg [30:0] OUT_curRetAddr;
	output wire [30:0] OUT_lateRetAddr;
	input logic [4:0] IN_recoveryIdx;
	input logic [48:0] IN_mispr;
	output logic [4:0] OUT_curIdx;
	output logic [40:0] OUT_predBr;
	input logic [36:0] IN_returnUpd;
	reg [30:0] rstack [SIZE - 1:0];
	reg [31:0] rstack_dbg [SIZE - 1:0];
	always_comb begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < SIZE; i = i + 1)
			rstack_dbg[i] = {rstack[i], 1'b0};
	end
	reg [$clog2(RQSIZE):0] qindex_r;
	reg [$clog2(RQSIZE):0] qindexEnd_r;
	wire [$clog2(RQSIZE) - 1:0] qindex = qindex_r[$clog2(RQSIZE) - 1:0];
	wire [$clog2(RQSIZE) - 1:0] qindexEnd = qindexEnd_r[$clog2(RQSIZE) - 1:0];
	logic [43:0] rrqueue [RQSIZE - 1:0];
	reg forwardRindex;
	wire [30:0] addrToPush = {IN_lastPC[30:3], IN_branch[9-:3]} + 1;
	logic [4:0] rindexReg;
	logic [4:0] rindex;
	reg lastValid;
	always_comb begin
		rindex = rindexReg;
		if (forwardRindex)
			rindex = IN_recoveryIdx;
		else if ((IN_branch[0] && (IN_branch[5-:2] == 2'd1)) && lastValid)
			rindex = rindex + 1;
		else if ((IN_branch[0] && (IN_branch[5-:2] == 2'd3)) && lastValid)
			rindex = rindex - 1;
	end
	always_ff @(posedge clk)
		if (IN_valid) begin
			OUT_curIdx <= rindex;
			if (IN_mispr[0]) begin
				OUT_curRetAddr <= 'x;
				OUT_predBr[40-:31] <= 'x;
			end
			else if (IN_branch[0] && (IN_branch[5-:2] == 2'd1)) begin
				OUT_curRetAddr <= addrToPush;
				OUT_predBr[40-:31] <= addrToPush;
			end
			else begin
				OUT_curRetAddr <= rstack[rindex];
				OUT_predBr[40-:31] <= rstack[rindex];
			end
			OUT_predBr[0] <= 1;
			OUT_predBr[2] <= 1;
			OUT_predBr[1] <= 0;
			OUT_predBr[5-:2] <= 2'd3;
			OUT_predBr[9-:3] <= 'x;
			OUT_predBr[6] <= 'x;
			OUT_predBr[3] <= 'x;
		end
	assign OUT_lateRetAddr = OUT_curRetAddr;
	reg recoveryInProgress;
	logic [44:0] postRecSave;
	logic recoveryContinue_c;
	assign OUT_stall = recoveryInProgress && (recoveryContinue_c || postRecSave[0]);
	logic [4:0] recoveryID;
	logic [4:0] recoveryBase;
	logic [2:0] recoveryOffs;
	logic [4:0] lastInvalComFetchID;
	logic recoveryOverwOwn;
	wire queueEmpty = qindex_r == qindexEnd_r;
	function automatic logic signed [($clog2(RQSIZE) >= 0 ? $clog2(RQSIZE) + 1 : 1 - $clog2(RQSIZE)) - 1:0] sv2v_cast_4EB98_signed;
		input logic signed [($clog2(RQSIZE) >= 0 ? $clog2(RQSIZE) + 1 : 1 - $clog2(RQSIZE)) - 1:0] inp;
		sv2v_cast_4EB98_signed = inp;
	endfunction
	wire queueFull = qindex_r == (qindexEnd_r + sv2v_cast_4EB98_signed(RQSIZE));
	always_comb begin : sv2v_autoblock_2
		logic [4:0] queueRel;
		logic [4:0] recRel;
		queueRel = rrqueue[qindex - 1][4-:5] - recoveryBase;
		recRel = recoveryID - recoveryBase;
		recoveryContinue_c = !queueEmpty && ((queueRel > recRel) || ((queueRel == recRel) && (recoveryOverwOwn ? rrqueue[qindex - 1][7-:3] >= recoveryOffs : rrqueue[qindex - 1][7-:3] > recoveryOffs)));
	end
	function automatic logic [44:0] sv2v_cast_45;
		input logic [44:0] inp;
		sv2v_cast_45 = inp;
	endfunction
	always_ff @(posedge clk) begin
		forwardRindex <= 0;
		if (rst) begin
			qindex_r <= 0;
			qindexEnd_r <= 0;
			recoveryInProgress <= 0;
			lastInvalComFetchID <= 0;
			lastValid <= 0;
			postRecSave <= sv2v_cast_45(45'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			rindexReg <= 0;
			begin : sv2v_autoblock_3
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					rstack[i] <= 0;
			end
			recoveryID <= 'x;
			recoveryBase <= 'x;
			recoveryOffs <= 'x;
			recoveryOverwOwn <= 'x;
		end
		else begin
			lastValid <= IN_valid;
			if (IN_mispr[0]) begin : sv2v_autoblock_4
				reg doPostRecSave;
				reg startRecovery;
				doPostRecSave = IN_mispr[48] && IN_returnUpd[0];
				startRecovery = !queueEmpty || doPostRecSave;
				forwardRindex <= 1;
				recoveryInProgress <= startRecovery;
				recoveryID <= IN_mispr[6-:5];
				recoveryBase <= IN_comFetchID;
				recoveryOffs <= IN_mispr[45-:3];
				recoveryOverwOwn <= IN_mispr[48] && !IN_returnUpd[0];
				lastValid <= 0;
				postRecSave <= sv2v_cast_45(45'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				if (doPostRecSave) begin
					postRecSave[0] <= 1;
					postRecSave[8-:5] <= IN_mispr[6-:5];
					postRecSave[3-:3] <= IN_mispr[45-:3];
					postRecSave[13-:5] <= IN_returnUpd[5-:5] + 5'd1;
					postRecSave[44-:31] <= IN_returnUpd[36-:31] + 1;
				end
			end
			else begin
				rindexReg <= rindex;
				if (recoveryInProgress) begin
					if (recoveryContinue_c) begin
						rstack[rrqueue[qindex - 1][12-:5]] <= rrqueue[qindex - 1][43-:31];
						rrqueue[qindex - 1] <= 'x;
						qindex_r <= qindex_r - 1;
					end
					else begin
						recoveryInProgress <= 0;
						if (postRecSave[0]) begin
							postRecSave <= sv2v_cast_45(45'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
							if (!queueFull) begin
								rrqueue[qindex][4-:5] <= postRecSave[8-:5];
								rrqueue[qindex][7-:3] <= postRecSave[3-:3];
								rrqueue[qindex][12-:5] <= postRecSave[13-:5];
								rrqueue[qindex][43-:31] <= rstack[postRecSave[13-:5]];
								rstack[postRecSave[13-:5]] <= postRecSave[44-:31];
								qindex_r <= qindex_r + 1;
							end
						end
					end
				end
				else if (lastValid)
					if (IN_branch[0] && (IN_branch[5-:2] == 2'd3))
						;
					else if (IN_branch[0] && (IN_branch[5-:2] == 2'd1)) begin
						rstack[rindex] <= addrToPush;
						if (!queueFull) begin
							rrqueue[qindex][4-:5] <= IN_fetchID;
							rrqueue[qindex][7-:3] <= IN_branch[9-:3];
							rrqueue[qindex][12-:5] <= rindex;
							rrqueue[qindex][43-:31] <= rstack[rindex];
							qindex_r <= qindex_r + 1;
						end
					end
			end
			if (lastInvalComFetchID != IN_comFetchID)
				if (!queueEmpty && ((rrqueue[qindexEnd][4-:5] - lastInvalComFetchID) < (IN_comFetchID - lastInvalComFetchID))) begin
					lastInvalComFetchID <= rrqueue[qindexEnd][4-:5];
					rrqueue[qindexEnd] <= 'x;
					qindexEnd_r <= qindexEnd_r + 1;
				end
				else
					lastInvalComFetchID <= IN_comFetchID;
		end
	end
endmodule
module ROB (
	clk,
	rst,
	IN_uop,
	IN_flagUOps,
	IN_interruptPending,
	OUT_perfcInfo,
	IN_branch,
	IN_stComLimit,
	IN_ldComLimit,
	OUT_maxSqN,
	OUT_curSqN,
	OUT_lastLoadSqN,
	OUT_lastStoreSqN,
	OUT_comUOp,
	OUT_fpNewFlags,
	OUT_curFetchID,
	OUT_trapUOp,
	OUT_bpUpdate,
	OUT_mispredFlush
);
	parameter ID_LEN = 6;
	parameter WIDTH_RN = 4;
	parameter WIDTH = 4;
	localparam NUM_AGUS = 2;
	localparam NUM_ALUS = 3;
	localparam NUM_PORTS_TOTAL = 7;
	parameter NUM_FLAG_UOPS = NUM_PORTS_TOTAL;
	input wire clk;
	input wire rst;
	input logic [(WIDTH_RN * 129) - 1:0] IN_uop;
	input logic [(NUM_FLAG_UOPS * 20) - 1:0] IN_flagUOps;
	input wire IN_interruptPending;
	output logic [12:0] OUT_perfcInfo;
	input logic [73:0] IN_branch;
	input logic [15:0] IN_stComLimit;
	input logic [7:0] IN_ldComLimit;
	output logic [6:0] OUT_maxSqN;
	output logic [6:0] OUT_curSqN;
	output logic [6:0] OUT_lastLoadSqN;
	output logic [6:0] OUT_lastStoreSqN;
	output logic [(WIDTH * 23) - 1:0] OUT_comUOp;
	output reg [4:0] OUT_fpNewFlags;
	output logic [4:0] OUT_curFetchID;
	output logic [47:0] OUT_trapUOp;
	output logic [9:0] OUT_bpUpdate;
	output reg OUT_mispredFlush;
	localparam LENGTH = 1 << ID_LEN;
	logic [6:0] baseIndex;
	function automatic logic [6:0] GetSqN;
		input logic [ID_LEN - 1:0] idx;
		logic [0:0] hiBits;
		logic [6:0] rv;
		begin
			hiBits = baseIndex[ID_LEN+:1];
			rv = {(idx >= baseIndex[0+:ID_LEN] ? hiBits : hiBits + 1'b1), idx};
			GetSqN = rv;
		end
	endfunction
	logic [128:0] rnUOpSorted [WIDTH_RN - 1:0];
	always_comb begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < WIDTH_RN; i = i + 1)
			begin
				rnUOpSorted[i] = 'x;
				rnUOpSorted[i][0] = 0;
				begin : sv2v_autoblock_2
					integer j;
					for (j = 0; j < WIDTH_RN; j = j + 1)
						if (IN_uop[(j * 129) + 0] && (IN_uop[(j * 129) + ((52 + $clog2(WIDTH_RN)) >= 53 ? 52 + $clog2(WIDTH_RN) : ((52 + $clog2(WIDTH_RN)) + ((52 + $clog2(WIDTH_RN)) >= 53 ? (52 + $clog2(WIDTH_RN)) - 52 : 54 - (52 + $clog2(WIDTH_RN)))) - 1)-:((52 + $clog2(WIDTH_RN)) >= 53 ? (52 + $clog2(WIDTH_RN)) - 52 : 54 - (52 + $clog2(WIDTH_RN)))] == i[$clog2(WIDTH_RN) - 1:0]))
							rnUOpSorted[i] = IN_uop[0 + (j * 129)+:129];
				end
			end
	end
	genvar i;
	generate
		for (i = 0; i < 4; i = i + 1) begin : gen
			(* ram_style = "distributed" *) logic [23:0] entries [(LENGTH / 4) - 1:0];
		end
	endgenerate
	logic [3:0] flags [LENGTH - 1:0];
	logic [6:0] lastIndex;
	assign OUT_maxSqN = (baseIndex + LENGTH) - 1;
	assign OUT_curSqN = baseIndex;
	logic [23:0] deqEntries [WIDTH - 1:0];
	logic [3:0] deqFlags [WIDTH - 1:0];
	reg [ID_LEN - 1:0] deqAddrs [WIDTH - 1:0];
	reg [(ID_LEN - 1) - $clog2(WIDTH):0] deqAddrsSorted [WIDTH - 1:0];
	logic [23:0] deqPorts [WIDTH - 1:0];
	logic [3:0] deqFlagPorts [WIDTH - 1:0];
	logic [14:0] misprReplay_c;
	function automatic logic [$clog2(WIDTH_RN) - 1:0] sv2v_cast_FB228;
		input logic [$clog2(WIDTH_RN) - 1:0] inp;
		sv2v_cast_FB228 = inp;
	endfunction
	always_comb begin : sv2v_autoblock_3
		reg [ID_LEN - 1:0] deqBase;
		deqBase = (misprReplay_c[0] ? misprReplay_c[0 + ID_LEN:1] : baseIndex[ID_LEN - 1:0]);
		begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < WIDTH; i = i + 1)
				deqAddrs[i] = deqBase + i[ID_LEN - 1:0];
		end
		begin : sv2v_autoblock_5
			integer i;
			for (i = 0; i < WIDTH; i = i + 1)
				deqAddrsSorted[i] = 'x;
		end
		begin : sv2v_autoblock_6
			integer i;
			for (i = 0; i < WIDTH; i = i + 1)
				deqAddrsSorted[sv2v_cast_FB228(deqAddrs[i])] = deqAddrs[i][ID_LEN - 1:$clog2(WIDTH)];
		end
	end
	always_comb begin : sv2v_autoblock_7
		integer i;
		for (i = 0; i < WIDTH; i = i + 1)
			deqFlagPorts[i] = flags[{deqAddrsSorted[i], sv2v_cast_FB228(i)}];
	end
	generate
		for (i = 0; i < WIDTH; i = i + 1) begin : genblk2
			always_comb deqPorts[i] = gen[i].entries[{deqAddrsSorted[i]}];
		end
	endgenerate
	always_comb begin : sv2v_autoblock_8
		integer i;
		for (i = 0; i < WIDTH; i = i + 1)
			begin
				deqEntries[i] = deqPorts[sv2v_cast_FB228(deqAddrs[i])];
				deqFlags[i] = deqFlagPorts[sv2v_cast_FB228(deqAddrs[i])];
			end
	end
	logic [6:0] storeSqN_r;
	logic [6:0] loadSqN_r;
	logic [6:0] storeSqNs_c [WIDTH:0];
	logic [6:0] loadSqNs_c [WIDTH:0];
	function automatic logic [6:0] sv2v_cast_7;
		input logic [6:0] inp;
		sv2v_cast_7 = inp;
	endfunction
	always_comb begin
		storeSqNs_c[0] = storeSqN_r;
		loadSqNs_c[0] = loadSqN_r;
		begin : sv2v_autoblock_9
			integer i;
			for (i = 0; i < WIDTH; i = i + 1)
				begin
					storeSqNs_c[i + 1] = storeSqNs_c[i] + sv2v_cast_7((deqEntries[i][0] ? 1 : 0));
					loadSqNs_c[i + 1] = loadSqNs_c[i] + sv2v_cast_7((deqEntries[i][1] ? 1 : 0));
				end
		end
	end
	logic [14:0] misprReplay_r;
	function automatic logic [14:0] sv2v_cast_15;
		input logic [14:0] inp;
		sv2v_cast_15 = inp;
	endfunction
	always_comb begin
		misprReplay_c = misprReplay_r;
		if (IN_branch[0])
			misprReplay_c = sv2v_cast_15({sv2v_cast_7(IN_branch[27-:7]), baseIndex, 1'd1});
	end
	reg misprReplayEnd;
	always_ff @(posedge clk)
		if (rst)
			misprReplay_r <= sv2v_cast_15(15'bxxxxxxxxxxxxxx0);
		else if (misprReplay_c[0])
			if (misprReplayEnd)
				misprReplay_r <= sv2v_cast_15(15'bxxxxxxxxxxxxxx0);
			else begin
				misprReplay_r <= misprReplay_c;
				misprReplay_r[7-:7] <= misprReplay_c[7-:7] + WIDTH;
			end
	reg [WIDTH - 1:0] misprReplayFwdMask;
	always_comb begin : sv2v_autoblock_10
		integer i;
		for (i = 0; i < WIDTH; i = i + 1)
			begin : sv2v_autoblock_11
				logic [6:0] curSqN;
				curSqN = misprReplay_c[7-:7] + sv2v_cast_7(i);
				misprReplayFwdMask[i] = $signed(curSqN - misprReplay_c[14-:7]) <= 0;
				if (i == (WIDTH - 1))
					misprReplayEnd = !misprReplayFwdMask[i] || ($signed(curSqN - misprReplay_c[14-:7]) == 0);
			end
	end
	always_ff @(posedge clk)
		if (rst)
			OUT_mispredFlush <= 0;
		else
			OUT_mispredFlush <= misprReplay_c[0] && |misprReplayFwdMask;
	reg stop;
	reg didCommit;
	logic hangDetected;
	localparam logic [6:0] TAG_ZERO = 7'b1000000;
	always_ff @(posedge clk) begin
		OUT_fpNewFlags <= 0;
		OUT_perfcInfo[3-:4] <= 0;
		OUT_perfcInfo[7-:4] <= 0;
		OUT_perfcInfo[12-:2] <= 3;
		OUT_perfcInfo[10-:3] <= 3'd1;
		OUT_trapUOp <= 'x;
		OUT_trapUOp[0] <= 0;
		OUT_bpUpdate <= 'x;
		OUT_bpUpdate[0] <= 0;
		didCommit <= 0;
		begin : sv2v_autoblock_12
			integer i;
			for (i = 0; i < WIDTH; i = i + 1)
				begin
					OUT_comUOp[i * 23+:23] <= 'x;
					OUT_comUOp[i * 23] <= 0;
				end
		end
		if (rst) begin
			baseIndex <= 0;
			OUT_curFetchID <= -1;
			stop <= 0;
			lastIndex <= 0;
			OUT_lastLoadSqN <= 0;
			OUT_lastStoreSqN <= 0;
			loadSqN_r <= 0;
			storeSqN_r <= -1;
		end
		else begin
			stop <= 0;
			if (IN_branch[0]) begin
				if (IN_branch[6])
					OUT_curFetchID <= IN_branch[5-:5];
				lastIndex <= IN_branch[27-:7] + 1;
			end
			if (misprReplay_c[0]) begin : sv2v_autoblock_13
				integer i;
				for (i = 0; i < WIDTH; i = i + 1)
					if (misprReplayFwdMask[i]) begin
						OUT_comUOp[i * 23] <= 1;
						OUT_comUOp[(i * 23) + 10-:7] <= 'x;
						OUT_comUOp[(i * 23) + 22-:5] <= (deqFlags[i] == 4'd7 ? 5'b00000 : deqEntries[i][16-:5]);
						OUT_comUOp[(i * 23) + 17-:7] <= deqEntries[i][23-:7];
						OUT_comUOp[(i * 23) + 1] <= 'x;
					end
			end
			else if (!stop) begin : sv2v_autoblock_14
				reg temp;
				reg temp2;
				reg pred;
				reg [ID_LEN - 1:0] cnt;
				temp = 0;
				temp2 = 0;
				pred = 0;
				cnt = 0;
				OUT_perfcInfo[10-:3] <= 3'd0;
				begin : sv2v_autoblock_15
					integer i;
					for (i = 0; i < WIDTH; i = i + 1)
						begin : sv2v_autoblock_16
							reg [ID_LEN - 1:0] id;
							logic [6:0] loadSqN;
							logic [6:0] storeSqN;
							reg timeoutCommit;
							reg isRenamed;
							reg isExecuted;
							reg noFlagConflict;
							reg lbAllowsCommit;
							reg sqAllowsCommit;
							id = baseIndex[ID_LEN - 1:0] + i[ID_LEN - 1:0];
							loadSqN = loadSqNs_c[i];
							storeSqN = storeSqNs_c[i + 1];
							timeoutCommit = (i == 0) && hangDetected;
							isRenamed = i[$clog2(LENGTH):0] < $signed(lastIndex - baseIndex);
							isExecuted = deqFlags[i] != 4'b1111;
							noFlagConflict = !pred || (deqFlags[i] == 4'd0);
							lbAllowsCommit = !IN_ldComLimit[0] || ($signed(loadSqN - IN_ldComLimit[7-:7]) < 0);
							sqAllowsCommit = 1;
							begin : sv2v_autoblock_17
								integer j;
								for (j = 0; j < NUM_AGUS; j = j + 1)
									sqAllowsCommit = sqAllowsCommit & (!IN_stComLimit[j * 8] || ($signed(storeSqN - IN_stComLimit[(j * 8) + 7-:7]) < 0));
							end
							if ((!temp && isRenamed) && ((((isExecuted && noFlagConflict) && sqAllowsCommit) && lbAllowsCommit) || timeoutCommit)) begin : sv2v_autoblock_18
								reg isBranch;
								reg minstretRetire;
								reg isException;
								reg sendTrapUOp;
								logic [6:0] sqN;
								isBranch = ((deqFlags[i] == 4'd1) || (deqFlags[i] == 4'd2)) || (deqFlags[i] == 4'd3);
								minstretRetire = (((deqFlags[i] <= 4'd5) || (deqFlags[i] == 4'd14)) || (deqEntries[i][3] && (deqFlags[i] != 4'd6))) || ((deqFlags[i] == 4'd7) && (deqEntries[i][16-:5] == 5'd15));
								isException = timeoutCommit || ((deqFlags[i] >= 4'd6) && (deqFlags[i] <= 4'd13));
								sendTrapUOp = timeoutCommit || ((deqFlags[i] >= 4'd4) && (!deqEntries[i][3] || (deqFlags[i] == 4'd6)));
								sqN = GetSqN(id);
								OUT_comUOp[(i * 23) + 22-:5] <= deqEntries[i][16-:5];
								OUT_comUOp[(i * 23) + 17-:7] <= deqEntries[i][23-:7];
								OUT_comUOp[(i * 23) + 10-:7] <= sqN;
								OUT_comUOp[(i * 23) + 3] <= isBranch;
								OUT_comUOp[(i * 23) + 1] <= deqEntries[i][2];
								OUT_comUOp[i * 23] <= 1;
								OUT_perfcInfo[0 + i] <= minstretRetire && !timeoutCommit;
								OUT_perfcInfo[4 + i] <= (minstretRetire && isBranch) && !timeoutCommit;
								OUT_curFetchID <= deqEntries[i][8-:5];
								if (!isException) begin
									if (deqEntries[i][1])
										OUT_lastLoadSqN <= loadSqN + 1;
									if (deqEntries[i][0])
										OUT_lastStoreSqN <= storeSqN + 1;
									storeSqN_r <= storeSqN;
									loadSqN_r <= loadSqNs_c[i + 1];
								end
								if ((deqFlags[i] == 4'd2) || (deqFlags[i] == 4'd3)) begin
									OUT_bpUpdate[0] <= 1;
									OUT_bpUpdate[1] <= deqFlags[i] == 4'd2;
									OUT_bpUpdate[6-:5] <= deqEntries[i][8-:5];
									OUT_bpUpdate[9-:3] <= deqEntries[i][11-:3];
									pred = 1;
								end
								if (sendTrapUOp) begin
									OUT_trapUOp[47] <= timeoutCommit;
									OUT_trapUOp[46-:4] <= deqFlags[i];
									OUT_trapUOp[42-:7] <= deqEntries[i][23-:7];
									OUT_trapUOp[35-:7] <= sqN;
									OUT_trapUOp[28-:7] <= loadSqN;
									OUT_trapUOp[21-:7] <= storeSqN;
									OUT_trapUOp[14-:5] <= deqEntries[i][16-:5];
									OUT_trapUOp[9-:3] <= deqEntries[i][11-:3];
									OUT_trapUOp[6-:5] <= deqEntries[i][8-:5];
									OUT_trapUOp[1] <= deqEntries[i][2];
									OUT_trapUOp[0] <= 1;
									if (isException) begin
										OUT_comUOp[(i * 23) + 22-:5] <= 0;
										OUT_comUOp[(i * 23) + 17-:7] <= TAG_ZERO;
									end
									stop <= 1;
									temp = 1;
								end
								else if (deqEntries[i][3] && ((deqFlags[i] >= 4'd8) && (deqFlags[i] <= 4'd12))) begin
									OUT_fpNewFlags[deqFlags[i][2:0] - 3'd0] <= 1;
									if ((deqFlags[i] == 4'd9) || (deqFlags[i] == 4'd10))
										OUT_fpNewFlags[3'd0] <= 1;
								end
								didCommit <= 1;
								cnt = cnt + 1;
							end
							else begin
								if ((i == 0) && (i[$clog2(LENGTH):0] < $signed(lastIndex - baseIndex))) begin
									OUT_trapUOp[47] <= 0;
									OUT_trapUOp[9-:3] <= deqEntries[i][11-:3];
									OUT_trapUOp[6-:5] <= deqEntries[i][8-:5];
									OUT_trapUOp[1] <= deqEntries[i][2];
									OUT_trapUOp[46-:4] <= 4'b1111;
									OUT_trapUOp[0] <= 1;
								end
								if (!temp2) begin
									OUT_perfcInfo[12-:2] <= 3 - i[1:0];
									if (!isRenamed || temp)
										OUT_perfcInfo[10-:3] <= 3'd1;
									else if (!isExecuted) begin
										if (deqPorts[i][0])
											OUT_perfcInfo[10-:3] <= 3'd3;
										else if (deqPorts[i][1])
											OUT_perfcInfo[10-:3] <= 3'd4;
										else
											OUT_perfcInfo[10-:3] <= 3'd2;
									end
									else if (!sqAllowsCommit)
										OUT_perfcInfo[10-:3] <= 3'd3;
									else if (!lbAllowsCommit)
										OUT_perfcInfo[10-:3] <= 3'd4;
									else if (!noFlagConflict)
										OUT_perfcInfo[10-:3] <= 3'd5;
									temp2 = 1;
								end
								temp = 1;
							end
						end
				end
				baseIndex <= baseIndex + cnt;
			end
			begin : sv2v_autoblock_19
				integer i;
				for (i = 0; i < WIDTH_RN; i = i + 1)
					if (rnUOpSorted[i][0] && !IN_branch[0]) begin : sv2v_autoblock_20
						reg [ID_LEN - 1:0] id;
						reg [$clog2(LENGTH / WIDTH_RN) - 1:0] id1;
						reg [$clog2(WIDTH_RN) - 1:0] id0;
						logic [23:0] entry;
						id = {rnUOpSorted[i][52 + ID_LEN:55], i[1:0]};
						id1 = {rnUOpSorted[i][52 + ID_LEN:55]};
						id0 = {i[1:0]};
						entry = 'x;
						entry[23-:7] = rnUOpSorted[i][52-:7];
						entry[16-:5] = rnUOpSorted[i][45-:5];
						entry[2] = rnUOpSorted[i][8];
						entry[8-:5] = rnUOpSorted[i][34-:5];
						entry[3] = ((rnUOpSorted[i][12-:4] == 4'd6) || (rnUOpSorted[i][12-:4] == 4'd8)) || (rnUOpSorted[i][12-:4] == 4'd7);
						entry[11-:3] = rnUOpSorted[i][29-:3];
						entry[1] = ((rnUOpSorted[i][12-:4] == 4'd3) && (rnUOpSorted[i][40-:6] < 6'd6)) || (rnUOpSorted[i][12-:4] == 4'd10);
						entry[0] = ((rnUOpSorted[i][12-:4] == 4'd3) && (rnUOpSorted[i][40-:6] >= 6'd6)) || (rnUOpSorted[i][12-:4] == 4'd10);
						case (id0)
							0: gen[0].entries[id1] <= entry;
							1: gen[1].entries[id1] <= entry;
							2: gen[2].entries[id1] <= entry;
							3: gen[3].entries[id1] <= entry;
						endcase
						if (rnUOpSorted[i][12-:4] == 4'd9)
							flags[id] <= 4'd0;
						else if (rnUOpSorted[i][12-:4] == 4'd12)
							flags[id] <= 4'd7;
						else
							flags[id] <= 4'b1111;
					end
			end
			begin : sv2v_autoblock_21
				integer i;
				for (i = 0; i < WIDTH_RN; i = i + 1)
					if (IN_uop[(i * 129) + 0] && !IN_branch[0])
						lastIndex <= IN_uop[(i * 129) + 59-:7] + 1;
			end
			begin : sv2v_autoblock_22
				integer i;
				for (i = 0; i < NUM_FLAG_UOPS; i = i + 1)
					if ((IN_flagUOps[i * 20] && (!IN_branch[0] || ($signed(IN_flagUOps[(i * 20) + 12-:7] - IN_branch[27-:7]) <= 0))) && !IN_flagUOps[(i * 20) + 1]) begin : sv2v_autoblock_23
						reg [$clog2(LENGTH) - 1:0] id;
						id = IN_flagUOps[(i * 20) + ((5 + ID_LEN) >= 6 ? 5 + ID_LEN : ((5 + ID_LEN) + ((5 + ID_LEN) >= 6 ? (5 + ID_LEN) - 5 : 7 - (5 + ID_LEN))) - 1)-:((5 + ID_LEN) >= 6 ? (5 + ID_LEN) - 5 : 7 - (5 + ID_LEN))];
						flags[id] <= IN_flagUOps[(i * 20) + 5-:4];
					end
			end
		end
	end
	localparam HANG_COUNTER_LEN = 16;
	logic [15:0] hangCounter;
	always_ff @(posedge clk)
		if (rst) begin
			hangCounter <= 0;
			hangDetected <= 0;
		end
		else if (didCommit) begin
			hangCounter <= 0;
			hangDetected <= 0;
		end
		else if (!hangDetected)
			{hangDetected, hangCounter} <= hangCounter + 1;
endmodule
module SoC (
	clk,
    clkx5,
	rst,
	en,
	IN_irq,
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
	input wire clkx5;
	input wire rst;
	input wire en;
	input wire IN_irq;
	output wire OUT_powerOff;
	output wire OUT_reboot;
	output logic [1:0] s_axi_awid;
	output logic [ADDR_LEN - 1:0] s_axi_awaddr;
	output logic [7:0] s_axi_awlen;
	output logic [2:0] s_axi_awsize;
	output logic [1:0] s_axi_awburst;
	output logic [0:0] s_axi_awlock;
	output logic [3:0] s_axi_awcache;
	output logic s_axi_awvalid;
	input s_axi_awready;
	output logic [WIDTH - 1:0] s_axi_wdata;
	output logic [(WIDTH / 8) - 1:0] s_axi_wstrb;
	output logic s_axi_wlast;
	output logic s_axi_wvalid;
	input s_axi_wready;
	output logic s_axi_bready;
	input [1:0] s_axi_bid;
	input s_axi_bvalid;
	output logic [1:0] s_axi_arid;
	output logic [ADDR_LEN - 1:0] s_axi_araddr;
	output logic [7:0] s_axi_arlen;
	output logic [2:0] s_axi_arsize;
	output logic [1:0] s_axi_arburst;
	output logic [0:0] s_axi_arlock;
	output logic [3:0] s_axi_arcache;
	output logic s_axi_arvalid;
	input s_axi_arready;
	output logic s_axi_rready;
	input [1:0] s_axi_rid;
	input [WIDTH - 1:0] s_axi_rdata;
	input s_axi_rlast;
	input s_axi_rvalid;
	output logic [39:0] OUT_dbg;
	output logic [15:0] OUT_dbgMemC;
	localparam FETCH_BITS = 128;
	logic [142:0] MC_IC_wr;
	logic [157:0] MC_DC_rd;
	logic [157:0] MC_DC_wr;
	logic MC_DC_rd_ready;
	logic [674:0] MemC_ctrl;
	logic [558:0] MemC_stat;
	logic [23:0] MEMC_raddr;
	localparam NUM_AGUS = 2;
	localparam IN_READS = 3;
	logic [1535:0] cacheRData;
	wire logic [127:0] DC_dataOut = cacheRData[32 * ((0 + MEMC_raddr[23-:2]) * 4)+:128];
	MemoryController memc(
		.clk(clk),
		.rst(rst),
		.IN_ctrl(MemC_ctrl),
		.OUT_stat(MemC_stat),
		.OUT_icacheW(MC_IC_wr),
		.OUT_dcacheW(MC_DC_wr),
		.IN_dcacheRReady(MC_DC_rd_ready),
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
	IF_Cache IF_cache();
	IF_CTable IF_ct();
	IF_MMIO IF_mmio();
	IF_CSR_MMIO IF_csr_mmio();
	IF_ICache IF_icache();
	IF_ICTable IF_ict();
	Core core(
		.clk(clk),
        .clkx5(clkx5),
		.rst(rst),
		.en(en),
		.IN_irq(IN_irq),
		.IF_cache(IF_cache),
		.IF_ct(IF_ct),
		.IF_mmio(IF_mmio),
		.IF_csr_mmio(IF_csr_mmio),
		.IF_icache(IF_icache),
		.IF_ict(IF_ict),
		.OUT_memc(MemC_ctrl),
		.IN_memc(MemC_stat),
		.OUT_dbg(OUT_dbg)
	);
	localparam NUM_CACHE_PORTS = 2;
	localparam IN_WRITES = 2;
	logic [473:0] cacheReadIFs;
	logic [315:0] cacheWriteIFs;
	function automatic logic [0:0] sv2v_cast_1;
		input logic [0:0] inp;
		sv2v_cast_1 = inp;
	endfunction
	function automatic logic [15:0] sv2v_cast_16;
		input logic [15:0] inp;
		sv2v_cast_16 = inp;
	endfunction
	function automatic logic [11:0] sv2v_cast_12;
		input logic [11:0] inp;
		sv2v_cast_12 = inp;
	endfunction
	function automatic logic [127:0] sv2v_cast_128;
		input logic [127:0] inp;
		sv2v_cast_128 = inp;
	endfunction
	function automatic logic [157:0] sv2v_cast_158;
		input logic [157:0] inp;
		sv2v_cast_158 = inp;
	endfunction
	always_comb begin
		cacheWriteIFs[0+:158] = MC_DC_wr;
		cacheWriteIFs[158+:158] = sv2v_cast_158({!(!IF_cache.re[0] && !IF_cache.we[0]), sv2v_cast_1(IF_cache.we[0]), sv2v_cast_16(IF_cache.wmask[0]), sv2v_cast_12({IF_cache.wassoc[0], IF_cache.addr[0][11:2]}), sv2v_cast_128({IF_cache.wdata[0]})});
	end
	always_comb begin
		cacheReadIFs[0+:158] = MC_DC_rd;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				cacheReadIFs[(1 + i) * 158+:158] = sv2v_cast_158({sv2v_cast_1(IF_cache.re[i]), sv2v_cast_1(IF_cache.we[i]), sv2v_cast_16(IF_cache.wmask[i]), sv2v_cast_12({IF_cache.wassoc[i], IF_cache.addr[i][11:2]}), sv2v_cast_128({IF_cache.wdata[i]})});
		end
	end
	logic [2:0] cacheReadReady;
	logic [1:0] cacheWriteReady;
	always_comb begin
		MC_DC_rd_ready = cacheReadReady[0];
		begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				IF_cache.busy[i] = !cacheReadReady[1 + i];
		end
		if (!IF_cache.we[0])
			IF_cache.busy[0] = !cacheWriteReady[1];
	end
	logic [1263:0] bankIFs;
	logic [4095:0] bankRData;
	CacheArbiter_691BB #(
		.INPUT_READS(IN_READS),
		.INPUT_WRITES(IN_WRITES),
		.OUTPUT_PORTS(NUM_CACHE_PORTS),
		.OUTPUT_BANKS(4),
		.BANK_OFFSET(2),
		.DATA_WIDTH(512)
	) dcacheArb(
		.clk(clk),
		.IN_reads(cacheReadIFs),
		.IN_writes(cacheWriteIFs),
		.OUT_readReady(cacheReadReady),
		.OUT_writeReady(cacheWriteReady),
		.OUT_portRData(cacheRData),
		.OUT_ports(bankIFs),
		.IN_portRData(bankRData)
	);
	genvar i;
	function automatic logic [63:0] sv2v_cast_64;
		input logic [63:0] inp;
		sv2v_cast_64 = inp;
	endfunction
	generate
		for (i = 0; i < 4; i = i + 1) begin : genblk1
			MemRTL #(
				.WORD_SIZE(512),
				.NUM_WORDS(64)
			) dcache(
				.clk(clk),
				.IN_nce(bankIFs[(((i * 2) + 1) * 158) + 157]),
				.IN_nwe(bankIFs[(((i * 2) + 1) * 158) + 156]),
				.IN_addr(bankIFs[(((i * 2) + 1) * 158) + 137-:6]),
				.IN_data({4 {bankIFs[(((i * 2) + 1) * 158) + 127-:128]}}),
				.IN_wm(sv2v_cast_64(bankIFs[(((i * 2) + 1) * 158) + 155-:16]) << ((bankIFs[(((i * 2) + 1) * 158) + 139-:2] * 4) * 4)),
				.OUT_data(bankRData[32 * (4 * (((i * 2) + 1) * 4))+:512]),
				.IN_nce1(bankIFs[((i * 2) * 158) + 157]),
				.IN_addr1(bankIFs[((i * 2) * 158) + 137-:6]),
				.OUT_data1(bankRData[32 * (4 * ((i * 2) * 4))+:512])
			);
		end
	endgenerate
	logic [19:0] CORE_raddr [1:0];
	always_ff @(posedge clk) begin
		begin : sv2v_autoblock_3
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				CORE_raddr[i] <= {CORE_raddr[i][0+:10], IF_cache.addr[i][11:2]};
		end
		MEMC_raddr <= {MEMC_raddr[0+:12], MC_DC_rd[139-:12]};
	end
	logic [511:0] cacheRData_t [2:0];
	always_comb begin : sv2v_autoblock_4
		integer p;
		for (p = 0; p < IN_READS; p = p + 1)
			begin : sv2v_autoblock_5
				integer a;
				for (a = 0; a < 4; a = a + 1)
					begin : sv2v_autoblock_6
						integer w;
						for (w = 0; w < 4; w = w + 1)
							cacheRData_t[p][((w * 4) + a) * 32+:32] = cacheRData[((((p * 4) + a) * 4) + w) * 32+:32];
					end
			end
	end
	generate
		for (i = 0; i < NUM_AGUS; i = i + 1) begin : genblk2
			if (1) begin : genblk1
				assign IF_cache.rdata[i] = cacheRData_t[1 + i][32 * (CORE_raddr[i][10+:2] * 4)+:128];
			end
		end
		for (i = 0; i < NUM_AGUS; i = i + 1) begin : genblk3
			wire [11:0] dctAddr = (IF_ct.we ? IF_ct.waddr : IF_ct.raddr[i]);
			MemRTL1RW #(
				.WORD_SIZE(84),
				.NUM_WORDS(64),
				.WRITE_SIZE(21)
			) dctable0(
				.clk(clk),
				.IN_nce(!(IF_ct.re[i] || IF_ct.we)),
				.IN_nwe(!IF_ct.we),
				.IN_addr(dctAddr[11-:6]),
				.IN_data({4 {IF_ct.wdata}}),
				.IN_wm(1 << IF_ct.wassoc),
				.OUT_data(IF_ct.rdata[i])
			);
		end
	endgenerate
	wire [11:0] ictAddr = (IF_ict.we ? IF_ict.waddr : IF_ict.raddr);
	MemRTL1RW #(
		.WORD_SIZE(84),
		.NUM_WORDS(64),
		.WRITE_SIZE(21)
	) ictable(
		.clk(clk),
		.IN_nce(!(IF_ict.we || IF_ict.re)),
		.IN_nwe(!IF_ict.we),
		.IN_addr(ictAddr[11-:6]),
		.IN_data({4 {IF_ict.wdata}}),
		.IN_wm(1 << IF_ict.wassoc),
		.OUT_data(IF_ict.rdata)
	);
	localparam IC_BANKS = 1;
	logic [142:0] IC_cacheIFs [1:0];
	function automatic logic [0:0] sv2v_cast_1CEF2;
		input logic [0:0] inp;
		sv2v_cast_1CEF2 = inp;
	endfunction
	function automatic logic [127:0] sv2v_cast_62118;
		input logic [127:0] inp;
		sv2v_cast_62118 = inp;
	endfunction
	function automatic logic [142:0] sv2v_cast_EC04D;
		input logic [142:0] inp;
		sv2v_cast_EC04D = inp;
	endfunction
	always_comb begin
		IC_cacheIFs[0] = MC_IC_wr;
		IC_cacheIFs[1] = sv2v_cast_EC04D({!IF_icache.re, 1'b1, sv2v_cast_1CEF2('x), sv2v_cast_12({{2 {1'b0}}, IF_icache.raddr[11:2]}), sv2v_cast_62118('x)});
	end
	MemRTL #(
		.WORD_SIZE(512),
		.NUM_WORDS(256),
		.WRITE_SIZE(128)
	) icache(
		.clk(clk),
		.IN_nce(MC_IC_wr[142]),
		.IN_nwe(MC_IC_wr[141]),
		.IN_addr(MC_IC_wr[137:130]),
		.IN_data({4 {MC_IC_wr[127-:FETCH_BITS]}}),
		.IN_wm(1 << MC_IC_wr[139-:2]),
		.IN_nce1(!IF_icache.re),
		.IN_addr1(IF_icache.raddr[11:4]),
		.OUT_data1(IF_icache.rdata)
	);
	assign IF_icache.busy = 0;
	MMIO mmio(
		.clk(clk),
		.rst(rst),
		.IF_mem(IF_mmio),
		.OUT_powerOff(OUT_powerOff),
		.OUT_reboot(OUT_reboot),
		.OUT_csrIf(IF_csr_mmio.MMIO)
	);
endmodule
module StoreDataIQ (
	clk,
	rst,
	OUT_stall,
	IN_uop,
	IN_flagUOp,
	IN_branch,
	IN_issueUOps,
	IN_aguUOps,
	IN_maxStoreSqN,
	OUT_comLimit,
	IN_ready,
	OUT_uop
);
	parameter SIZE = 8;
	parameter NUM_ENQUEUE = 2;
	parameter PORT_IDX = 0;
	parameter NUM_UOPS = 4;
	parameter RESULT_BUS_COUNT = 4;
	input wire clk;
	input wire rst;
	output reg [NUM_UOPS - 1:0] OUT_stall;
	localparam NUM_AGUS = 2;
	localparam NUM_ALUS = 3;
	localparam NUM_PORTS_TOTAL = 7;
	input logic [(NUM_UOPS * 129) - 1:0] IN_uop;
	input logic [(RESULT_BUS_COUNT * 20) - 1:0] IN_flagUOp;
	input logic [73:0] IN_branch;
	input logic [(RESULT_BUS_COUNT * 109) - 1:0] IN_issueUOps;
	input logic [365:0] IN_aguUOps;
	input logic [6:0] IN_maxStoreSqN;
	output logic [7:0] OUT_comLimit;
	input wire IN_ready;
	output logic [16:0] OUT_uop;
	localparam ID_LEN = $clog2(SIZE);
	localparam NUM_OPERANDS = 1;
	logic [17:0] queue [SIZE - 1:0];
	reg [$clog2(SIZE):0] insertIndex;
	reg [NUM_OPERANDS:0] newAvail [SIZE - 1:0];
	reg [NUM_OPERANDS:0] newAvail_dl [SIZE - 1:0];
	logic [1:0] newOffs [SIZE - 1:0];
	function automatic logic [7:0] sv2v_cast_8;
		input logic [7:0] inp;
		sv2v_cast_8 = inp;
	endfunction
	always_ff @(posedge clk) begin
		OUT_comLimit <= sv2v_cast_8(8'bxxxxxxx0);
		if (insertIndex != 0)
			OUT_comLimit <= sv2v_cast_8({queue[0][6-:7], 1'd1});
	end
	function automatic logic [1:0] sv2v_cast_2;
		input logic [1:0] inp;
		sv2v_cast_2 = inp;
	endfunction
	always_comb begin
		begin : sv2v_autoblock_1
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
									if ((IN_flagUOp[j * 20] && !IN_flagUOp[(j * 20) + 19]) && (queue[i][7 + (k * 7)+:7] == IN_flagUOp[(j * 20) + 19-:7]))
										newAvail_dl[i][k] = 1;
							end
					end
				end
		end
		begin : sv2v_autoblock_5
			integer i;
			for (i = 0; i < SIZE; i = i + 1)
				begin
					newOffs[i] = queue[i][17-:2];
					newAvail[i][1] = 0;
					newAvail_dl[i][1] = 0;
					begin : sv2v_autoblock_6
						integer j;
						for (j = 0; j < NUM_AGUS; j = j + 1)
							if ((IN_aguUOps[j * 183] && (IN_aguUOps[(j * 183) + 5-:4] == 4'd3)) && ((IN_aguUOps[(j * 183) + 45-:6] == 6'd7) || (IN_aguUOps[(j * 183) + 45-:6] == 6'd8)))
								if (queue[i][6-:7] == IN_aguUOps[(j * 183) + 19-:7]) begin
									newAvail_dl[i][1] = 1;
									newOffs[i] = sv2v_cast_2(IN_aguUOps[(j * 183) + 182-:32] + IN_aguUOps[(j * 183) + 150-:32]);
								end
					end
				end
		end
	end
	logic [128:0] enqCandidates [NUM_ENQUEUE - 1:0];
	localparam NUM_PORTS = 5;
	function automatic logic [6:0] sv2v_cast_EE1AC;
		input logic [6:0] inp;
		sv2v_cast_EE1AC = inp;
	endfunction
	function automatic logic [128:0] sv2v_cast_6E6EE;
		input logic [128:0] inp;
		sv2v_cast_6E6EE = inp;
	endfunction
	always_comb begin : sv2v_autoblock_7
		logic [$clog2(NUM_ENQUEUE) - 1:0] idx;
		logic [$clog2(SIZE):0] qIdx;
		logic limit;
		idx = 0;
		qIdx = insertIndex;
		limit = 0;
		begin : sv2v_autoblock_8
			integer i;
			for (i = 0; i < NUM_ENQUEUE; i = i + 1)
				enqCandidates[i] = sv2v_cast_6E6EE({121'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_EE1AC(0), 1'd0});
		end
		begin : sv2v_autoblock_9
			integer i;
			for (i = 0; i < NUM_UOPS; i = i + 1)
				begin
					OUT_stall[i] = 0;
					if ((IN_uop[(i * 129) + (1 + (NUM_PORTS + PORT_IDX))] && (IN_uop[(i * 129) + 20] == PORT_IDX[0])) && (((IN_uop[(i * 129) + 12-:4] == 4'd3) && (IN_uop[(i * 129) + 40-:6] >= 6'd6)) || ((IN_uop[(i * 129) + 12-:4] == 4'd10) && (IN_uop[(i * 129) + 40-:6] == 6'd55))))
						if ((!limit && (qIdx != SIZE)) && !IN_branch[0]) begin
							if (NUM_ENQUEUE == NUM_UOPS)
								enqCandidates[i] = IN_uop[0 + (i * 129)+:129];
							else begin
								enqCandidates[idx] = IN_uop[0 + (i * 129)+:129];
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
	reg [SIZE - 1:0] deqCandidate_c;
	always_comb begin : sv2v_autoblock_10
		integer i;
		for (i = 0; i < SIZE; i = i + 1)
			deqCandidate_c[i] = ((i < insertIndex) && &(queue[i][15-:2] | newAvail[i])) && ($signed(queue[i][6-:7] - IN_maxStoreSqN) <= 0);
	end
	logic [$clog2(SIZE) + 0:0] deq;
	PriorityEncoder #(.BITS(SIZE)) penc(
		.IN_data(deqCandidate_c),
		.OUT_idx({deq[$clog2(SIZE) + 0-:(($clog2(SIZE) + 0) >= 1 ? $clog2(SIZE) + 0 : 2 - ($clog2(SIZE) + 0))]}),
		.OUT_idxValid({deq[0]})
	);
	localparam logic [6:0] TAG_ZERO = 7'b1000000;
	function automatic logic [16:0] sv2v_cast_17;
		input logic [16:0] inp;
		sv2v_cast_17 = inp;
	endfunction
	function automatic logic [6:0] sv2v_cast_7;
		input logic [6:0] inp;
		sv2v_cast_7 = inp;
	endfunction
	function automatic logic [1:0] sv2v_cast_51F96;
		input logic [1:0] inp;
		sv2v_cast_51F96 = inp;
	endfunction
	function automatic logic [6:0] sv2v_cast_1449F;
		input logic [6:0] inp;
		sv2v_cast_1449F = inp;
	endfunction
	function automatic logic [17:0] sv2v_cast_77EC7;
		input logic [17:0] inp;
		sv2v_cast_77EC7 = inp;
	endfunction
	always_ff @(posedge clk) begin : sv2v_autoblock_11
		reg [ID_LEN:0] newInsertIndex;
		newInsertIndex = 'x;
		begin : sv2v_autoblock_12
			integer i;
			for (i = 0; i < SIZE; i = i + 1)
				begin
					queue[i][15-:2] <= (queue[i][15-:2] | newAvail[i]) | newAvail_dl[i];
					queue[i][17-:2] <= newOffs[i];
				end
		end
		if (rst) begin
			insertIndex <= 0;
			OUT_uop <= sv2v_cast_17(17'bxxxxxxxxxxxxxxxx0);
			begin : sv2v_autoblock_13
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					queue[i] <= sv2v_cast_77EC7({2'd0, sv2v_cast_51F96(0), sv2v_cast_1449F('x), 7'bxxxxxxx});
			end
		end
		else if (IN_branch[0]) begin
			newInsertIndex = 0;
			begin : sv2v_autoblock_14
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					if (((i < insertIndex) && ($signed(queue[i][6-:7] - IN_branch[20-:7]) <= 0)) && !IN_branch[6])
						newInsertIndex = i[$clog2(SIZE):0] + 1;
			end
			insertIndex <= newInsertIndex;
			if ((IN_ready || ($signed(OUT_uop[7-:7] - IN_branch[20-:7]) > 0)) || IN_branch[6])
				OUT_uop <= sv2v_cast_17(17'bxxxxxxxxxxxxxxxx0);
		end
		else begin
			newInsertIndex = insertIndex;
			if (IN_ready || !OUT_uop[0]) begin
				OUT_uop <= sv2v_cast_17(17'bxxxxxxxxxxxxxxxx0);
				if (deq[0]) begin : sv2v_autoblock_15
					logic [17:0] deqEntry;
					deqEntry = queue[deq[$clog2(SIZE) + 0-:(($clog2(SIZE) + 0) >= 1 ? $clog2(SIZE) + 0 : 2 - ($clog2(SIZE) + 0))]];
					OUT_uop[0] <= 1;
					OUT_uop[14-:7] <= deqEntry[7+:7];
					OUT_uop[7-:7] <= deqEntry[6-:7];
					OUT_uop[16-:2] <= deqEntry[17-:2];
					newInsertIndex = newInsertIndex - 1;
					begin : sv2v_autoblock_16
						integer i;
						for (i = 0; i < (SIZE - 1); i = i + 1)
							if (i >= deq[$clog2(SIZE) + 0-:(($clog2(SIZE) + 0) >= 1 ? $clog2(SIZE) + 0 : 2 - ($clog2(SIZE) + 0))]) begin
								queue[i] <= queue[i + 1];
								queue[i][15-:2] <= (queue[i + 1][15-:2] | newAvail[i + 1]) | newAvail_dl[i + 1];
								queue[i][17-:2] <= newOffs[i + 1];
							end
					end
				end
			end
			begin : sv2v_autoblock_17
				integer i;
				for (i = 0; i < NUM_ENQUEUE; i = i + 1)
					if (enqCandidates[i][1 + (NUM_PORTS + PORT_IDX)]) begin : sv2v_autoblock_18
						logic [17:0] temp;
						temp[14] = enqCandidates[i][76];
						temp[7+:7] = enqCandidates[i][75-:7];
						temp[6-:7] = enqCandidates[i][26-:7];
						temp[15] = !((enqCandidates[i][40-:6] == 6'd7) || (enqCandidates[i][40-:6] == 6'd8));
						temp[17-:2] = (temp[15] ? '0 : 'x);
						if (((enqCandidates[i][12-:4] == 4'd3) && (enqCandidates[i][40-:6] >= 6'd10)) && (enqCandidates[i][40-:6] <= 6'd12)) begin
							temp[14] = 1;
							temp[7+:7] = (TAG_ZERO + sv2v_cast_7(enqCandidates[i][40-:6])) - 7'd10;
						end
						begin : sv2v_autoblock_19
							integer j;
							for (j = 0; j < RESULT_BUS_COUNT; j = j + 1)
								if (IN_flagUOp[j * 20] && !IN_flagUOp[(j * 20) + 19]) begin : sv2v_autoblock_20
									integer k;
									for (k = 0; k < NUM_OPERANDS; k = k + 1)
										if (temp[7 + (k * 7)+:7] == IN_flagUOp[(j * 20) + 19-:7])
											temp[15 - (NUM_OPERANDS - k)] = 1;
								end
						end
						queue[newInsertIndex[ID_LEN - 1:0]] <= temp;
						newInsertIndex = newInsertIndex + 1;
					end
			end
			insertIndex <= newInsertIndex;
		end
	end
endmodule
module StoreDataLoad (
	clk,
	rst,
	IN_branch,
	IN_uop,
	OUT_ready,
	IN_atomicUOp,
	OUT_readReq,
	IN_readReady,
	IN_readData,
	OUT_uop
);
	parameter WIDTH = 2;
	input wire clk;
	input wire rst;
	input logic [73:0] IN_branch;
	input logic [(WIDTH * 17) - 1:0] IN_uop;
	output logic [WIDTH - 1:0] OUT_ready;
	input logic [(WIDTH * 47) - 1:0] IN_atomicUOp;
	output logic [(WIDTH * 7) - 1:0] OUT_readReq;
	input logic [WIDTH - 1:0] IN_readReady;
	input logic [(WIDTH * 32) - 1:0] IN_readData;
	output logic [(WIDTH * 40) - 1:0] OUT_uop;
	function automatic logic [31:0] ShiftData;
		input logic [31:0] raw;
		input logic [1:0] offs;
		logic [31:0] shifted;
		begin
			shifted = 'x;
			case (offs)
				0: shifted = raw;
				1: shifted[8+:8] = raw[0+:8];
				2: shifted[16+:16] = raw[0+:16];
				3: shifted[24+:8] = raw[0+:8];
			endcase
			ShiftData = shifted;
		end
	endfunction
	function automatic logic [5:0] sv2v_cast_6;
		input logic [5:0] inp;
		sv2v_cast_6 = inp;
	endfunction
	always_comb begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < WIDTH; i = i + 1)
			begin
				OUT_readReq[(i * 7) + 6-:6] = sv2v_cast_6(IN_uop[(i * 17) + 14-:7]);
				OUT_readReq[i * 7] = IN_uop[i * 17] && !IN_uop[(i * 17) + 14];
			end
	end
	genvar i;
	function automatic logic [39:0] sv2v_cast_40;
		input logic [39:0] inp;
		sv2v_cast_40 = inp;
	endfunction
	generate
		for (i = 0; i < WIDTH; i = i + 1) begin : genblk1
			logic [39:0] uopATO;
			logic [39:0] uopIQ;
			assign OUT_ready[i] = !(uopATO[0] && uopIQ[0]) && (!OUT_readReq[i * 7] || IN_readReady[i]);
			logic [1:0] offs;
			wire logic [31:0] readDataShifted = ShiftData(IN_readData[i * 32+:32], offs);
			always_comb begin
				uopATO[0] = IN_atomicUOp[i * 47];
				uopATO[7-:7] = IN_atomicUOp[(i * 47) + 14-:7];
				uopATO[39-:32] = IN_atomicUOp[(i * 47) + 46-:32];
			end
			logic regFileLookup;
			always_ff @(posedge clk) begin
				regFileLookup <= 0;
				offs <= 'x;
				if (rst)
					uopIQ <= sv2v_cast_40(40'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				else begin
					if (regFileLookup)
						uopIQ[39-:32] <= readDataShifted;
					if (!uopATO[0] || (IN_branch[0] && (IN_branch[6] || ($signed(uopIQ[7-:7] - IN_branch[20-:7]) > 0))))
						uopIQ <= sv2v_cast_40(40'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
					if ((IN_uop[i * 17] && OUT_ready[i]) && (!IN_branch[0] || (!IN_branch[6] && ($signed(IN_uop[(i * 17) + 7-:7] - IN_branch[20-:7]) <= 0)))) begin
						uopIQ[0] <= 1;
						uopIQ[7-:7] <= IN_uop[(i * 17) + 7-:7];
						if (IN_uop[(i * 17) + 14])
							uopIQ[39-:32] <= ShiftData({{26 {IN_uop[(i * 17) + 13]}}, IN_uop[(i * 17) + 13-:6]}, IN_uop[(i * 17) + 16-:2]);
						else begin
							regFileLookup <= 1;
							offs <= IN_uop[(i * 17) + 16-:2];
						end
					end
				end
			end
			logic [39:0] outUOp;
			always_comb begin
				outUOp = sv2v_cast_40(40'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				if (uopATO[0])
					outUOp = uopATO;
				else if (uopIQ[0]) begin
					outUOp = uopIQ;
					if (regFileLookup)
						outUOp[39-:32] = readDataShifted;
				end
			end
			assign OUT_uop[i * 40+:40] = outUOp;
		end
	endgenerate
endmodule
module StoreQueueBackend (
	clk,
	rst,
	OUT_busy,
	IN_uopLd,
	OUT_fwd,
	IN_uop,
	OUT_stall,
	IN_stallSt,
	OUT_uopSt,
	IN_stAck
);
	parameter NUM_IN = 2;
	parameter NUM_EVICTED = 4;
	input wire clk;
	input wire rst;
	output reg OUT_busy;
	localparam NUM_AGUS = 2;
	input logic [201:0] IN_uopLd;
	output logic [75:0] OUT_fwd;
	input logic [(NUM_IN * 70) - 1:0] IN_uop;
	output logic [NUM_IN - 1:0] OUT_stall;
	input wire IN_stallSt;
	output logic [183:0] OUT_uopSt;
	input logic [182:0] IN_stAck;
	localparam AXI_BWIDTH = 16;
	localparam AXI_WWIDTH = 4;
	localparam AXI_BWIDTH_E = 4;
	localparam AXI_WWIDTH_E = 2;
	logic [179:0] evicted [NUM_EVICTED - 1:0];
	logic [179:0] fusedUOp_r;
	always_comb begin
		OUT_busy = 0;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_EVICTED; i = i + 1)
				if (evicted[i][0])
					OUT_busy = 1;
		end
		if (fusedUOp_r[0])
			OUT_busy = 1;
		begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < NUM_IN; i = i + 1)
				if (IN_uop[i * 70])
					OUT_busy = 1;
		end
	end
	logic [179:0] fusedUOp_c;
	function automatic logic [179:0] sv2v_cast_180;
		input logic [179:0] inp;
		sv2v_cast_180 = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst)
			fusedUOp_r <= sv2v_cast_180(180'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		else
			fusedUOp_r <= fusedUOp_c;
	logic [2:0] evInsert;
	function automatic logic [15:0] sv2v_cast_16;
		input logic [15:0] inp;
		sv2v_cast_16 = inp;
	endfunction
	function automatic logic [127:0] sv2v_cast_128;
		input logic [127:0] inp;
		sv2v_cast_128 = inp;
	endfunction
	always_comb begin
		fusedUOp_c = fusedUOp_r;
		if (evInsert[0])
			fusedUOp_c = sv2v_cast_180(180'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		begin : sv2v_autoblock_3
			integer i;
			for (i = 0; i < NUM_IN; i = i + 1)
				OUT_stall[i] = 1;
		end
		if ((!fusedUOp_r[0] || evInsert[0]) && IN_uop[0]) begin
			OUT_stall[0] = 0;
			fusedUOp_c[0] = 1;
			fusedUOp_c[3-:3] = 0;
			fusedUOp_c[4] = 0;
			fusedUOp_c[5] = 0;
			if ((IN_uop[37-:32] < 32'h80000000) || IN_uop[1]) begin
				fusedUOp_c[21-:16] = sv2v_cast_16(IN_uop[5-:4]);
				fusedUOp_c[51-:30] = IN_uop[37-:30];
				fusedUOp_c[179-:128] = sv2v_cast_128(IN_uop[69-:32]);
				fusedUOp_c[5] = IN_uop[1];
			end
			else begin
				fusedUOp_c[21-:16] = sv2v_cast_16(IN_uop[5-:4]) << (IN_uop[9-:2] * 4);
				fusedUOp_c[51-:30] = {IN_uop[37-:28], {AXI_WWIDTH_E {1'b0}}};
				fusedUOp_c[179-:128] = sv2v_cast_128(IN_uop[69-:32]) << (IN_uop[9-:2] * 32);
				begin : sv2v_autoblock_4
					integer i;
					for (i = 1; i < NUM_IN; i = i + 1)
						if ((IN_uop[i * 70] && (IN_uop[(i * 70) + 37-:28] == fusedUOp_c[51:24])) && !(IN_uop[(i * 70) + 37-:32] < 32'h80000000)) begin
							OUT_stall[i] = 0;
							begin : sv2v_autoblock_5
								integer j;
								for (j = 0; j < AXI_BWIDTH; j = j + 1)
									if ((IN_uop[(i * 70) + 9-:2] == j[3:2]) && IN_uop[(i * 70) + (2 + j[1:0])]) begin
										fusedUOp_c[52 + (j * 8)+:8] = IN_uop[(i * 70) + (38 + (j[1:0] * 8))+:8];
										fusedUOp_c[6 + j] = 1;
									end
							end
						end
				end
			end
		end
	end
	logic [179:0] evictedV [NUM_EVICTED:0];
	always_comb begin
		begin : sv2v_autoblock_6
			integer i;
			for (i = 0; i < NUM_EVICTED; i = i + 1)
				evictedV[i] = evicted[i];
		end
		evictedV[NUM_EVICTED] = fusedUOp_r;
	end
	reg [3:0] lookupMask [1:0];
	reg [31:0] lookupData [1:0];
	genvar h;
	generate
		for (h = 0; h < NUM_AGUS; h = h + 1) begin : genblk1
			always_comb begin : sv2v_autoblock_7
				reg [1:0] shift;
				reg [31:0] data;
				reg [3:0] mask;
				shift = IN_uopLd[(h * 101) + 38+:2];
				data = 'x;
				mask = 'x;
				lookupMask[h] = 0;
				lookupData[h] = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
				begin : sv2v_autoblock_8
					integer i;
					for (i = 0; i < (NUM_EVICTED + 1); i = i + 1)
						begin
							data = evictedV[i][52 + (32 * shift)+:32];
							mask = evictedV[i][6 + (4 * shift)+:4];
							if ((evictedV[i][0] && (evictedV[i][51:24] == IN_uopLd[(h * 101) + 67-:28])) && !({evictedV[i][51-:30], 2'b00} < 32'h80000000)) begin
								begin : sv2v_autoblock_9
									integer j;
									for (j = 0; j < 4; j = j + 1)
										if (mask[j])
											lookupData[h][j * 8+:8] = data[j * 8+:8];
								end
								lookupMask[h] = lookupMask[h] | mask;
							end
						end
				end
			end
		end
	endgenerate
	logic mmioOpInEv;
	logic mgmtOpInEv;
	logic anyInEv;
	always_comb begin
		mmioOpInEv = 0;
		mgmtOpInEv = 0;
		anyInEv = 0;
		begin : sv2v_autoblock_10
			integer i;
			for (i = 0; i < NUM_EVICTED; i = i + 1)
				if (evicted[i][0]) begin
					anyInEv = 1;
					if ({evicted[i][51-:30], 2'b00} < 32'h80000000)
						mmioOpInEv = 1;
					if (evicted[i][5])
						mgmtOpInEv = 1;
				end
		end
	end
	function automatic logic [2:0] sv2v_cast_3;
		input logic [2:0] inp;
		sv2v_cast_3 = inp;
	endfunction
	always_comb begin
		evInsert = sv2v_cast_3(3'bxx0);
		if (!(mmioOpInEv && ({fusedUOp_r[51-:30], 2'b00} < 32'h80000000)) && !mgmtOpInEv) begin : sv2v_autoblock_11
			integer i;
			for (i = 0; i < NUM_EVICTED; i = i + 1)
				if ((evicted[i][0] && (evicted[i][51:24] == fusedUOp_r[51:24])) || (!evicted[i][0] && !evInsert[0])) begin
					evInsert[0] = 1;
					evInsert[2-:2] = i[1:0];
				end
		end
	end
	logic [2:0] reIssue;
	always_comb begin
		reIssue = sv2v_cast_3(3'bxx0);
		begin : sv2v_autoblock_12
			integer i;
			for (i = NUM_EVICTED - 1; i >= 0; i = i - 1)
				if (evicted[i][0] && !evicted[i][4]) begin
					reIssue[0] = 1;
					reIssue[2-:2] = i[$clog2(NUM_EVICTED) - 1:0];
				end
		end
	end
	logic [182:0] stAck_r;
	function automatic logic [182:0] sv2v_cast_183;
		input logic [182:0] inp;
		sv2v_cast_183 = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst)
			stAck_r <= sv2v_cast_183(183'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		else
			stAck_r <= IN_stAck;
	function automatic logic [37:0] sv2v_cast_38;
		input logic [37:0] inp;
		sv2v_cast_38 = inp;
	endfunction
	function automatic logic [183:0] sv2v_cast_184;
		input logic [183:0] inp;
		sv2v_cast_184 = inp;
	endfunction
	always_ff @(posedge clk) begin
		begin : sv2v_autoblock_13
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				OUT_fwd[i * 38+:38] <= sv2v_cast_38(38'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		end
		if (rst) begin
			begin : sv2v_autoblock_14
				integer i;
				for (i = 0; i < NUM_EVICTED; i = i + 1)
					evicted[i] <= sv2v_cast_180(180'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000000000000000xx0000);
			end
			OUT_uopSt <= sv2v_cast_184(184'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
		end
		else begin
			if (OUT_uopSt[0]) begin
				OUT_uopSt <= sv2v_cast_184(184'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				if (IN_stallSt)
					evicted[OUT_uopSt[2-:2]][4] <= 0;
			end
			if (stAck_r[0] && (stAck_r[6-:3] == evicted[stAck_r[3-:2]][3-:3]))
				if (evicted[stAck_r[3-:2]][3-:3] == stAck_r[6-:3]) begin
					evicted[stAck_r[3-:2]][4] <= 0;
					if (!stAck_r[1]) begin
						evicted[stAck_r[3-:2]][21-:16] <= 0;
						evicted[stAck_r[3-:2]][0] <= 0;
					end
				end
			if (reIssue[0]) begin
				evicted[reIssue[2-:2]][4] <= 1;
				OUT_uopSt[0] <= 1;
				OUT_uopSt[2-:2] <= reIssue[2-:2];
				OUT_uopSt[5-:3] <= evicted[reIssue[2-:2]][3-:3];
				OUT_uopSt[183-:32] <= {evicted[reIssue[2-:2]][51-:30], 2'b00};
				OUT_uopSt[151-:128] <= evicted[reIssue[2-:2]][179-:128];
				OUT_uopSt[23-:16] <= evicted[reIssue[2-:2]][21-:16];
				OUT_uopSt[6] <= evicted[reIssue[2-:2]][5];
				OUT_uopSt[7] <= {evicted[reIssue[2-:2]][51-:30], 2'b00} < 32'h80000000;
			end
			if (fusedUOp_r[0] && evInsert[0]) begin : sv2v_autoblock_15
				reg [127:0] data;
				reg [15:0] mask;
				logic [2:0] newNonce;
				data = 'x;
				mask = 'x;
				newNonce = evicted[evInsert[2-:2]][3-:3] + 1;
				mask = evicted[evInsert[2-:2]][21-:16] | fusedUOp_r[21-:16];
				data = evicted[evInsert[2-:2]][179-:128];
				begin : sv2v_autoblock_16
					integer i;
					for (i = 0; i < AXI_BWIDTH; i = i + 1)
						if (fusedUOp_r[6 + i] || (fusedUOp_r[21-:16] == 0))
							data[i * 8+:8] = fusedUOp_r[52 + (i * 8)+:8];
				end
				evicted[evInsert[2-:2]][179-:128] <= data;
				evicted[evInsert[2-:2]][21-:16] <= mask;
				evicted[evInsert[2-:2]][51-:30] <= fusedUOp_r[51-:30];
				evicted[evInsert[2-:2]][4] <= 0;
				evicted[evInsert[2-:2]][3-:3] <= newNonce;
				evicted[evInsert[2-:2]][5] <= fusedUOp_r[5];
				evicted[evInsert[2-:2]][0] <= 1;
				if (!reIssue[0]) begin
					evicted[evInsert[2-:2]][4] <= 1;
					OUT_uopSt[0] <= 1;
					OUT_uopSt[2-:2] <= evInsert[2-:2];
					OUT_uopSt[5-:3] <= newNonce;
					OUT_uopSt[183-:32] <= {fusedUOp_r[51-:30], 2'b00};
					OUT_uopSt[151-:128] <= data;
					OUT_uopSt[23-:16] <= mask;
					OUT_uopSt[6] <= fusedUOp_r[5];
					OUT_uopSt[7] <= {fusedUOp_r[51-:30], 2'b00} < 32'h80000000;
				end
			end
			begin : sv2v_autoblock_17
				integer i;
				for (i = 0; i < NUM_AGUS; i = i + 1)
					if (IN_uopLd[i * 101]) begin
						OUT_fwd[i * 38] <= 1;
						OUT_fwd[(i * 38) + 37-:32] <= lookupData[i];
						OUT_fwd[(i * 38) + 5-:4] <= lookupMask[i];
						OUT_fwd[(i * 38) + 1] <= 0;
					end
			end
		end
	end
endmodule
module StoreQueue (
	clk,
	rst,
	OUT_empty,
	OUT_done,
	IN_uopLd,
	OUT_fwd,
	IN_uopSt,
	IN_rnUOp,
	IN_stDataUOp,
	IN_curSqN,
	IN_comStSqN,
	IN_branch,
	OUT_uop,
	IN_stall,
	OUT_flush,
	OUT_maxStoreSqN
);
	parameter NUM_ENTRIES = 16;
	parameter WIDTH_RN = 4;
	parameter NUM_OUT = 2;
	input wire clk;
	input wire rst;
	output reg OUT_empty;
	output wire OUT_done;
	localparam NUM_AGUS = 2;
	input logic [201:0] IN_uopLd;
	output logic [75:0] OUT_fwd;
	input logic [163:0] IN_uopSt;
	localparam NUM_ALUS = 3;
	localparam NUM_PORTS_TOTAL = 7;
	input logic [(WIDTH_RN * 129) - 1:0] IN_rnUOp;
	input logic [79:0] IN_stDataUOp;
	input logic [6:0] IN_curSqN;
	input logic [6:0] IN_comStSqN;
	input logic [73:0] IN_branch;
	output logic [(NUM_OUT * 70) - 1:0] OUT_uop;
	input wire [NUM_OUT - 1:0] IN_stall;
	output wire OUT_flush;
	output logic [6:0] OUT_maxStoreSqN;
	localparam AXI_BWIDTH_E = 4;
	localparam IDX_LEN = $clog2(NUM_ENTRIES);
	reg [NUM_ENTRIES - 1:0] entryReady_r;
	wire [NUM_ENTRIES - 1:0] entryReady_c;
	always_ff @(posedge clk)
		if (rst)
			entryReady_r <= 0;
		else
			entryReady_r <= entryReady_c;
	logic [6:0] baseIndex;
	function automatic logic [6:0] sv2v_cast_7;
		input logic [6:0] inp;
		sv2v_cast_7 = inp;
	endfunction
	RangeMaskGen #(
		.LENGTH(NUM_ENTRIES),
		.OUTPUT_ON_EQUAL(0)
	) readyRangeGen(
		.IN_allOnes((baseIndex + sv2v_cast_7(NUM_ENTRIES)) == IN_comStSqN),
		.IN_enable(1'b1),
		.IN_startIdx(baseIndex[IDX_LEN - 1:0]),
		.IN_endIdx(IN_comStSqN[IDX_LEN - 1:0]),
		.OUT_range(entryReady_c)
	);
	wire [NUM_ENTRIES - 1:0] invalRange_c;
	RangeMaskGen #(
		.LENGTH(NUM_ENTRIES),
		.OUTPUT_ON_EQUAL(1),
		.START_SHIFT(1),
		.END_SHIFT(0)
	) invalRangeGen(
		.IN_allOnes(1'b0),
		.IN_enable($signed(IN_branch[20-:7] - baseIndex) < (NUM_ENTRIES - 1)),
		.IN_startIdx(IN_branch[IDX_LEN + 13:14]),
		.IN_endIdx(baseIndex[IDX_LEN - 1:0]),
		.OUT_range(invalRange_c)
	);
	wire [(2 * NUM_ENTRIES) - 1:0] forwardRange_c [1:0];
	genvar i;
	function automatic logic [IDX_LEN - 1:0] sv2v_cast_48864;
		input logic [IDX_LEN - 1:0] inp;
		sv2v_cast_48864 = inp;
	endfunction
	function automatic logic signed [NUM_ENTRIES - 1:0] sv2v_cast_D08B4_signed;
		input logic signed [NUM_ENTRIES - 1:0] inp;
		sv2v_cast_D08B4_signed = inp;
	endfunction
	generate
		for (i = 0; i < NUM_AGUS; i = i + 1) begin : genblk1
			wire logic [6:0] endSqN = IN_uopLd[(i * 101) + 32-:7] + (IN_uopLd[(i * 101) + 4] ? 0 : 1);
			wire [NUM_ENTRIES - 1:0] mask = ($signed(endSqN - baseIndex) >= NUM_ENTRIES ? {NUM_ENTRIES {1'b1}} : (1 << sv2v_cast_48864(endSqN - baseIndex)) - 1);
			assign forwardRange_c[i] = {sv2v_cast_D08B4_signed(0), mask} << baseIndex[IDX_LEN - 1:0];
		end
	endgenerate
	logic [67:0] entries [NUM_ENTRIES - 1:0];
	reg empty;
	always_comb begin
		empty = 1;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_ENTRIES; i = i + 1)
				if (entries[i][0])
					empty = 0;
		end
	end
	reg [31:0] lookupAddr [1:0];
	always_comb begin : sv2v_autoblock_2
		integer h;
		for (h = 0; h < NUM_AGUS; h = h + 1)
			lookupAddr[h] = IN_uopLd[(h * 101) + 67-:32];
	end
	reg [3:0] readMask [1:0];
	always_comb begin : sv2v_autoblock_3
		integer i;
		for (i = 0; i < NUM_AGUS; i = i + 1)
			begin
				readMask[i] = 4'b1111;
				if (IN_uopLd[i * 101])
					case (IN_uopLd[(i * 101) + 34-:2])
						0: readMask[i] = 4'b0001 << IN_uopLd[(i * 101) + 37-:2];
						1: readMask[i] = (IN_uopLd[(i * 101) + 37-:2] == 2 ? 4'b1100 : 4'b0011);
						default: readMask[i] = 4'b1111;
					endcase
			end
	end
	reg [3:0] lookupMask [1:0];
	reg [31:0] lookupData [1:0];
	reg lookupConflict [1:0];
	genvar h;
	generate
		for (h = 0; h < NUM_AGUS; h = h + 1) begin : genblk2
			always_comb begin : sv2v_autoblock_4
				reg [31:0] data;
				reg [3:0] mask;
				data = 'x;
				mask = 'x;
				lookupMask[h] = ~readMask[h];
				lookupData[h] = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
				lookupConflict[h] = 0;
				begin : sv2v_autoblock_5
					integer i;
					for (i = 0; i < NUM_OUT; i = i + 1)
						if ((OUT_uop[i * 70] && (OUT_uop[(i * 70) + 37-:30] == lookupAddr[h][31:2])) && !(OUT_uop[(i * 70) + 37-:32] < 32'h80000000)) begin
							begin : sv2v_autoblock_6
								integer j;
								for (j = 0; j < 4; j = j + 1)
									if (OUT_uop[(i * 70) + (2 + j)])
										lookupData[h][j * 8+:8] = OUT_uop[(i * 70) + (38 + (j * 8))+:8];
							end
							lookupMask[h] = lookupMask[h] | OUT_uop[(i * 70) + 5-:4];
						end
				end
				begin : sv2v_autoblock_7
					integer i;
					for (i = 0; i < (2 * NUM_ENTRIES); i = i + 1)
						begin : sv2v_autoblock_8
							integer ii;
							ii = i % NUM_ENTRIES;
							if (((entries[ii][0] && (entries[ii][35-:30] == lookupAddr[h][31:2])) && (forwardRange_c[h][i] || ((i < NUM_ENTRIES) && entryReady_r[ii]))) && !({entries[ii][35-:30], 2'b00} < 32'h80000000))
								if (entries[ii][1]) begin : sv2v_autoblock_9
									integer j;
									for (j = 0; j < 4; j = j + 1)
										if (entries[ii][2 + j]) begin
											lookupData[h][j * 8+:8] = entries[ii][36 + (j * 8)+:8];
											lookupMask[h][j] = 1;
										end
								end
								else if ((entries[ii][5-:4] & readMask[h]) != 0)
									lookupConflict[h] = 1;
						end
				end
			end
		end
	endgenerate
	wire [IDX_LEN - 1:0] baseIndexI = baseIndex[IDX_LEN - 1:0];
	wire [IDX_LEN - 1:0] comStSqNI = IN_comStSqN[IDX_LEN - 1:0];
	assign OUT_done = baseIndex == IN_comStSqN;
	logic [128:0] rnUOpSorted [3:0];
	always_comb begin : sv2v_autoblock_10
		integer i;
		for (i = 0; i < 4; i = i + 1)
			begin
				rnUOpSorted[i] = 'x;
				rnUOpSorted[i][0] = 0;
				begin : sv2v_autoblock_11
					integer j;
					for (j = 0; j < 4; j = j + 1)
						if ((IN_rnUOp[(j * 129) + 0] && (IN_rnUOp[(j * 129) + 21-:2] == i[1:0])) && (((IN_rnUOp[(j * 129) + 12-:4] == 4'd3) && (IN_rnUOp[(j * 129) + 40-:6] >= 6'd6)) || (IN_rnUOp[(j * 129) + 12-:4] == 4'd10)))
							rnUOpSorted[i] = IN_rnUOp[0 + (j * 129)+:129];
				end
			end
	end
	logic [IDX_LEN - 1:0] deqAddrsSorted [NUM_OUT - 1:0];
	logic [IDX_LEN - 1:0] deqAddrs [NUM_OUT - 1:0];
	always_comb begin
		begin : sv2v_autoblock_12
			integer i;
			for (i = 0; i < NUM_OUT; i = i + 1)
				deqAddrs[i] = baseIndexI + i[IDX_LEN - 1:0];
		end
		begin : sv2v_autoblock_13
			integer i;
			for (i = 0; i < NUM_OUT; i = i + 1)
				deqAddrsSorted[i] = 'x;
		end
		begin : sv2v_autoblock_14
			integer i;
			for (i = 0; i < NUM_OUT; i = i + 1)
				deqAddrsSorted[deqAddrs[i][$clog2(NUM_OUT) - 1:0]] = deqAddrs[i];
		end
	end
	logic [69:0] deqPorts [NUM_OUT - 1:0];
	function automatic logic [69:0] sv2v_cast_70;
		input logic [69:0] inp;
		sv2v_cast_70 = inp;
	endfunction
	always_comb begin : sv2v_autoblock_15
		integer i;
		for (i = 0; i < NUM_OUT; i = i + 1)
			begin : sv2v_autoblock_16
				logic [IDX_LEN - 1:0] addr;
				logic [67:0] entry;
				logic ready;
				addr = {deqAddrsSorted[i][IDX_LEN - 1:$clog2(NUM_OUT)], i[$clog2(NUM_OUT) - 1:0]};
				entry = entries[addr];
				ready = entryReady_r[addr] && entry[1];
				deqPorts[i] = sv2v_cast_70(70'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				if (ready) begin
					deqPorts[i][69-:32] = entry[67-:32];
					deqPorts[i][37-:32] = {entry[35-:30], 2'b00};
					deqPorts[i][5-:4] = entry[5-:4];
					deqPorts[i][1] = entry[5-:4] == 0;
					deqPorts[i][0] = 1;
				end
			end
	end
	logic [69:0] deqEntries [NUM_OUT - 1:0];
	always_comb begin : sv2v_autoblock_17
		logic prevValid;
		prevValid = 1;
		begin : sv2v_autoblock_18
			integer i;
			for (i = 0; i < NUM_OUT; i = i + 1)
				begin
					deqEntries[i] = (prevValid ? deqPorts[deqAddrs[i][$clog2(NUM_OUT) - 1:0]] : sv2v_cast_70(70'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0));
					prevValid = deqEntries[i][0];
				end
		end
	end
	logic [69:0] outDeqView [(NUM_OUT * 2) - 1:0];
	always_comb begin
		begin : sv2v_autoblock_19
			integer i;
			for (i = 0; i < NUM_OUT; i = i + 1)
				outDeqView[i] = OUT_uop[i * 70+:70];
		end
		begin : sv2v_autoblock_20
			integer i;
			for (i = 0; i < NUM_OUT; i = i + 1)
				outDeqView[i + NUM_OUT] = deqEntries[i];
		end
	end
	logic [(NUM_OUT * 2) - 1:0] unhandled;
	always_comb begin
		begin : sv2v_autoblock_21
			integer i;
			for (i = 0; i < NUM_OUT; i = i + 1)
				unhandled[i] = OUT_uop[i * 70] && IN_stall[i];
		end
		begin : sv2v_autoblock_22
			integer i;
			for (i = NUM_OUT; i < (NUM_OUT * 2); i = i + 1)
				unhandled[i] = 1;
		end
	end
	logic [($clog2(NUM_OUT) >= 0 ? (NUM_OUT * ($clog2(NUM_OUT) + 1)) - 1 : (NUM_OUT * (1 - $clog2(NUM_OUT))) + ($clog2(NUM_OUT) - 1)):($clog2(NUM_OUT) >= 0 ? 0 : $clog2(NUM_OUT) + 0)] srcIdx;
	PriorityEncoder #(
		.BITS(2 * NUM_OUT),
		.N(NUM_OUT)
	) penc(
		.IN_data(unhandled),
		.OUT_idx(srcIdx)
	);
	logic [NUM_OUT - 1:0] entryWasDeqd;
	logic [NUM_OUT - 1:0] deqCountUnary;
	function automatic logic [$clog2(NUM_ENTRIES) - 1:0] sv2v_cast_899FE;
		input logic [$clog2(NUM_ENTRIES) - 1:0] inp;
		sv2v_cast_899FE = inp;
	endfunction
	function automatic logic signed [$clog2(NUM_ENTRIES) - 1:0] sv2v_cast_899FE_signed;
		input logic signed [$clog2(NUM_ENTRIES) - 1:0] inp;
		sv2v_cast_899FE_signed = inp;
	endfunction
	always_comb begin
		entryWasDeqd = '0;
		begin : sv2v_autoblock_23
			integer i;
			for (i = 0; i < NUM_OUT; i = i + 1)
				begin : sv2v_autoblock_24
					reg [$clog2(NUM_OUT):0] idx;
					reg [$clog2(NUM_ENTRIES) - 1:0] idxSQ;
					idx = srcIdx[($clog2(NUM_OUT) >= 0 ? 0 : $clog2(NUM_OUT)) + (i * ($clog2(NUM_OUT) >= 0 ? $clog2(NUM_OUT) + 1 : 1 - $clog2(NUM_OUT)))+:($clog2(NUM_OUT) >= 0 ? $clog2(NUM_OUT) + 1 : 1 - $clog2(NUM_OUT))];
					idxSQ = (baseIndexI + sv2v_cast_899FE(idx)) - sv2v_cast_899FE_signed(NUM_OUT);
					deqCountUnary[i] = 0;
					if (outDeqView[idx][0] && (idx >= NUM_OUT)) begin
						entryWasDeqd[idxSQ[$clog2(NUM_OUT) - 1:0]] = 1;
						deqCountUnary[i] = 1;
					end
				end
		end
	end
	logic [$clog2(NUM_OUT):0] deqCount;
	PopCnt #(.SIZE(NUM_OUT)) popc(
		.in(deqCountUnary),
		.res(deqCount)
	);
	wire logic [6:0] nextBaseIndex = baseIndex + sv2v_cast_7(deqCount);
	reg flushing;
	assign OUT_flush = flushing;
	function automatic logic [67:0] sv2v_cast_68;
		input logic [67:0] inp;
		sv2v_cast_68 = inp;
	endfunction
	always_ff @(posedge clk) begin
		begin : sv2v_autoblock_25
			integer i;
			for (i = 0; i < NUM_AGUS; i = i + 1)
				begin
					OUT_fwd[i * 38+:38] <= 'x;
					OUT_fwd[i * 38] <= 0;
				end
		end
		if (rst) begin
			baseIndex <= 0;
			OUT_maxStoreSqN <= NUM_ENTRIES[6:0] - 1;
			OUT_empty <= 1;
			flushing <= 0;
			begin : sv2v_autoblock_26
				integer i;
				for (i = 0; i < NUM_OUT; i = i + 1)
					OUT_uop[i * 70+:70] <= sv2v_cast_70(70'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			end
			begin : sv2v_autoblock_27
				integer i;
				for (i = 0; i < NUM_ENTRIES; i = i + 1)
					entries[i] <= sv2v_cast_68(68'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx00);
			end
		end
		else begin : sv2v_autoblock_28
			reg modified;
			modified = 0;
			begin : sv2v_autoblock_29
				integer i;
				for (i = 0; i < NUM_OUT; i = i + 1)
					begin : sv2v_autoblock_30
						reg [$clog2(NUM_OUT):0] idx;
						idx = srcIdx[($clog2(NUM_OUT) >= 0 ? 0 : $clog2(NUM_OUT)) + (i * ($clog2(NUM_OUT) >= 0 ? $clog2(NUM_OUT) + 1 : 1 - $clog2(NUM_OUT)))+:($clog2(NUM_OUT) >= 0 ? $clog2(NUM_OUT) + 1 : 1 - $clog2(NUM_OUT))];
						OUT_uop[i * 70+:70] <= outDeqView[idx];
					end
			end
			begin : sv2v_autoblock_31
				integer i;
				for (i = 0; i < NUM_OUT; i = i + 1)
					begin : sv2v_autoblock_32
						reg [$clog2(NUM_OUT) - 1:0] offs;
						reg [$clog2(NUM_ENTRIES) - 1:0] addr;
						offs = i[$clog2(NUM_OUT) - 1:0];
						addr = {deqAddrsSorted[offs][$clog2(NUM_ENTRIES) - 1:$clog2(NUM_OUT)], offs};
						if (entryWasDeqd[i]) begin
							entries[addr][1] <= 0;
							entries[addr][0] <= 0;
						end
					end
			end
			begin : sv2v_autoblock_33
				integer i;
				for (i = 0; i < NUM_AGUS; i = i + 1)
					if (IN_stDataUOp[i * 40] && (!IN_branch[0] || (!IN_branch[6] && ($signed(IN_stDataUOp[(i * 40) + 7-:7] - IN_branch[20-:7]) <= 0)))) begin : sv2v_autoblock_34
						logic [IDX_LEN - 1:0] idx;
						idx = IN_stDataUOp[(i * 40) + ((0 + IDX_LEN) >= 1 ? 0 + IDX_LEN : ((0 + IDX_LEN) + ((0 + IDX_LEN) >= 1 ? 0 + IDX_LEN : 2 - (0 + IDX_LEN))) - 1)-:((0 + IDX_LEN) >= 1 ? 0 + IDX_LEN : 2 - (0 + IDX_LEN))];
						idx[0] = i[0];
						entries[idx][1] <= 1;
						entries[idx][67-:32] <= IN_stDataUOp[(i * 40) + 39-:32];
					end
			end
			if (IN_branch[0]) begin
				flushing <= IN_branch[6];
				begin : sv2v_autoblock_35
					integer i;
					for (i = 0; i < NUM_ENTRIES; i = i + 1)
						if (invalRange_c[i] || (IN_branch[6] && !entryReady_r[i]))
							entries[i] <= sv2v_cast_68(68'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx00);
				end
			end
			begin : sv2v_autoblock_36
				integer i;
				for (i = 0; i < NUM_AGUS; i = i + 1)
					if ((IN_uopSt[i * 82] && IN_uopSt[(i * 82) + 42]) && (!IN_branch[0] || (($signed(IN_uopSt[(i * 82) + 31-:7] - IN_branch[27-:7]) <= 0) && !IN_branch[6]))) begin : sv2v_autoblock_37
						reg [IDX_LEN - 1:0] index;
						index = IN_uopSt[(i * 82) + ((IDX_LEN + 17) >= 18 ? IDX_LEN + 17 : ((IDX_LEN + 17) + ((IDX_LEN + 17) >= 18 ? IDX_LEN + 0 : 19 - (IDX_LEN + 17))) - 1)-:((IDX_LEN + 17) >= 18 ? IDX_LEN + 0 : 19 - (IDX_LEN + 17))];
						index[0] = i[0];
						entries[index][35-:30] <= IN_uopSt[(i * 82) + 81-:30];
						entries[index][5-:4] <= IN_uopSt[(i * 82) + 49-:4];
						entries[index][0] <= 1;
						modified = 1;
					end
			end
			OUT_empty <= empty && !modified;
			if (OUT_empty && flushing)
				flushing <= 0;
			OUT_maxStoreSqN <= (nextBaseIndex + NUM_ENTRIES[6:0]) - 1;
			begin : sv2v_autoblock_38
				integer i;
				for (i = 0; i < NUM_AGUS; i = i + 1)
					if (IN_uopLd[i * 101]) begin
						OUT_fwd[i * 38] <= 1;
						OUT_fwd[(i * 38) + 37-:32] <= lookupData[i];
						OUT_fwd[(i * 38) + 5-:4] <= lookupMask[i];
						OUT_fwd[(i * 38) + 1] <= lookupConflict[i];
					end
			end
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
	output logic [(NUM_ISSUE * 6) - 1:0] OUT_issueTags;
	output reg [NUM_ISSUE - 1:0] OUT_issueTagsValid;
	input wire [NUM_COMMIT - 1:0] IN_commitValid;
	input wire [NUM_COMMIT - 1:0] IN_commitNewest;
	input logic [(NUM_COMMIT * 7) - 1:0] IN_RAT_commitPrevTags;
	input logic [(NUM_COMMIT * 7) - 1:0] IN_commitTagDst;
	localparam PTAG_LEN = 6;
	localparam NUM_TAGS = 64;
	logic [63:0] free;
	logic [63:0] freeCom;
	reg mispredWait;
	reg [NUM_ISSUE - 1:0] issueTagsValid;
	logic [(NUM_ISSUE * 6) - 1:0] issueTags;
	PriorityEncoder #(
		.BITS(NUM_TAGS),
		.N(NUM_ISSUE)
	) penc(
		.IN_data(free),
		.OUT_idx(issueTags),
		.OUT_idxValid(issueTagsValid)
	);
	function automatic logic [5:0] sv2v_cast_6;
		input logic [5:0] inp;
		sv2v_cast_6 = inp;
	endfunction
	always_ff @(posedge clk) begin
		mispredWait <= 0;
		if (rst) begin
			begin : sv2v_autoblock_1
				integer i;
				for (i = 0; i < NUM_TAGS; i = i + 1)
					begin
						free[i] <= 1'b1;
						freeCom[i] <= 1'b1;
					end
			end
			begin : sv2v_autoblock_2
				integer i;
				for (i = 0; i < NUM_ISSUE; i = i + 1)
					OUT_issueTagsValid[i] <= 0;
			end
		end
		else begin
			if (IN_mispr) begin
				mispredWait <= 1;
				begin : sv2v_autoblock_3
					integer i;
					for (i = 0; i < NUM_TAGS; i = i + 1)
						if (freeCom[i])
							free[i] <= 1;
				end
				begin : sv2v_autoblock_4
					integer i;
					for (i = 0; i < NUM_ISSUE; i = i + 1)
						begin
							OUT_issueTagsValid[i] <= 0;
							OUT_issueTags[i * 6+:6] <= 'x;
						end
				end
			end
			else begin
				begin : sv2v_autoblock_5
					integer i;
					for (i = 0; i < NUM_ISSUE; i = i + 1)
						if (IN_issueValid[i]) begin
							OUT_issueTagsValid[i] <= 0;
							OUT_issueTags[i * 6+:6] <= 'x;
						end
				end
				begin : sv2v_autoblock_6
					integer i;
					for (i = 0; i < NUM_ISSUE; i = i + 1)
						if (((!OUT_issueTagsValid[i] || IN_issueValid[i]) && issueTagsValid[i]) && !(mispredWait || IN_mispredFlush)) begin
							OUT_issueTagsValid[i] <= 1;
							OUT_issueTags[i * 6+:6] <= issueTags[i * 6+:6];
							free[issueTags[i * 6+:6]] <= 0;
						end
				end
			end
			begin : sv2v_autoblock_7
				integer i;
				for (i = 0; i < NUM_COMMIT; i = i + 1)
					if (IN_commitValid[i])
						if (IN_mispredFlush) begin
							if (!IN_mispr && !IN_commitTagDst[(i * 7) + 6])
								free[sv2v_cast_6(IN_commitTagDst[i * 7+:7])] <= 0;
						end
						else if (IN_commitNewest[i]) begin
							if (!IN_RAT_commitPrevTags[(i * 7) + 6]) begin
								freeCom[sv2v_cast_6(IN_RAT_commitPrevTags[i * 7+:7])] <= 1;
								free[sv2v_cast_6(IN_RAT_commitPrevTags[i * 7+:7])] <= 1;
							end
							if (!IN_commitTagDst[(i * 7) + 6]) begin
								freeCom[sv2v_cast_6(IN_commitTagDst[i * 7+:7])] <= 0;
								free[sv2v_cast_6(IN_commitTagDst[i * 7+:7])] <= 0;
							end
						end
						else if (!IN_commitTagDst[(i * 7) + 6]) begin
							freeCom[sv2v_cast_6(IN_commitTagDst[i * 7+:7])] <= 1;
							free[sv2v_cast_6(IN_commitTagDst[i * 7+:7])] <= 1;
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
	parameter NUM_STAGES = 6;
	parameter FACTOR = 2;
	parameter BASE = 4;
	parameter TABLE_SIZE = 256;
	parameter TAG_SIZE = 9;
	input wire clk;
	input wire rst;
	input wire IN_predValid;
	input wire [30:0] IN_predAddr;
	input logic [63:0] IN_predHistory;
	output logic [3:0] OUT_predTageID;
	output reg OUT_altPred;
	output reg OUT_predTaken;
	input wire IN_writeValid;
	input wire [30:0] IN_writeAddr;
	input logic [63:0] IN_writeHistory;
	input logic [3:0] IN_writeTageID;
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
		.IN_readAddr(IN_predAddr[11:0]),
		.OUT_taken(predictions[0]),
		.IN_writeEn(IN_writeValid),
		.IN_writeAddr(IN_writeAddr[11:0]),
		.IN_writeInit(1'b0),
		.IN_writeTaken(IN_writeTaken)
	);
	assign valid[0] = 1;
	reg [HASH_SIZE - 1:0] predHashes [NUM_STAGES - 2:0];
	reg [HASH_SIZE - 1:0] writeHashes [NUM_STAGES - 2:0];
	reg [TAG_SIZE - 1:0] predTags [NUM_STAGES - 2:0];
	reg [TAG_SIZE - 1:0] writeTags [NUM_STAGES - 2:0];
	always_comb begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < (NUM_STAGES - 1); i = i + 1)
			begin : sv2v_autoblock_2
				integer hist_bits;
				hist_bits = BASE * (FACTOR ** i);
				predTags[i] = IN_predAddr[TAG_SIZE - 1:0];
				writeTags[i] = IN_writeAddr[TAG_SIZE - 1:0];
				predHashes[i] = 0;
				writeHashes[i] = 0;
				begin : sv2v_autoblock_3
					integer j;
					for (j = 0; j < (31 / HASH_SIZE); j = j + 1)
						begin
							predHashes[i] = predHashes[i] ^ IN_predAddr[j * HASH_SIZE+:HASH_SIZE];
							writeHashes[i] = writeHashes[i] ^ IN_writeAddr[j * HASH_SIZE+:HASH_SIZE];
						end
				end
				begin : sv2v_autoblock_4
					integer j;
					for (j = 0; j < (BASE * (FACTOR ** i)); j = j + 1)
						begin
							predHashes[i][j % HASH_SIZE] = predHashes[i][j % HASH_SIZE] ^ IN_predHistory[j];
							writeHashes[i][j % HASH_SIZE] = writeHashes[i][j % HASH_SIZE] ^ IN_writeHistory[j];
							predTags[i][j % TAG_SIZE] = predTags[i][j % TAG_SIZE] ^ (IN_predHistory[j] ^ IN_predHistory[(j + 1) % hist_bits]);
							writeTags[i][j % TAG_SIZE] = writeTags[i][j % TAG_SIZE] ^ (IN_writeHistory[j] ^ IN_writeHistory[(j + 1) % hist_bits]);
						end
				end
			end
	end
	reg [7:0] random;
	always_ff @(posedge clk)
		if (rst)
			random <= 1;
		else
			random <= {random[6:0], ((random[7] ^ random[5]) ^ random[4]) ^ random[3]};
	wire [NUM_STAGES - 1:0] avail;
	assign avail[0] = 0;
	reg [NUM_STAGES - 1:0] doAlloc;
	reg allocFailed;
	always_comb begin : sv2v_autoblock_5
		reg [NUM_STAGES - 1:0] followingAllocAvail;
		reg temp;
		followingAllocAvail = '0;
		temp = 0;
		doAlloc = '0;
		allocFailed = 0;
		if (IN_writeTaken != IN_writePred) begin
			begin : sv2v_autoblock_6
				integer i;
				for (i = 0; i < NUM_STAGES; i = i + 1)
					begin : sv2v_autoblock_7
						integer j;
						for (j = i + 1; j < NUM_STAGES; j = j + 1)
							followingAllocAvail[i] = followingAllocAvail[i] | avail[j];
					end
			end
			begin : sv2v_autoblock_8
				integer i;
				for (i = 0; i < NUM_STAGES; i = i + 1)
					if ((((i > IN_writeTageID) && avail[i]) && (temp == 0)) && (!followingAllocAvail[i] || (random[(i % 4) * 2+:2] != 2'b00))) begin
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
	always_comb begin
		OUT_altPred = predictions[0];
		OUT_predTaken = predictions[0];
		OUT_predTageID = 0;
		begin : sv2v_autoblock_9
			integer i;
			for (i = 0; i < NUM_STAGES; i = i + 1)
				if (valid[i]) begin
					OUT_predTageID = i[3:0];
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
	logic [USF_SIZE - 1:0] useful [SIZE - 1:0];
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
	logic [TAG_SIZE - 1:0] tag [SIZE - 1:0];
	reg [TAG_SIZE - 1:0] tagRegA;
	reg [TAG_SIZE - 1:0] tagRegB;
	always_ff @(posedge clk)
		if (IN_readValid) begin
			tagRegA <= tag[IN_readAddr];
			tagRegB <= IN_readTag;
		end
	always_comb OUT_readValid = tagRegA == tagRegB;
	always_comb OUT_allocAvail = useful[IN_writeAddr] == 0;
	reg [INTERVAL - 1:0] decrCnt;
	reg decrBit;
	reg [$clog2(SIZE):0] resetIdx;
	always_ff @(posedge clk)
		if (rst) begin
			decrCnt <= 0;
			resetIdx <= 0;
			decrBit <= 0;
		end
		else begin
			if (!resetIdx[$clog2(SIZE)]) begin
				tag[resetIdx[$clog2(SIZE) - 1:0]] <= 0;
				useful[resetIdx[$clog2(SIZE) - 1:0]] <= 0;
				resetIdx <= resetIdx + 1;
			end
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
			if (decrCnt == 0) begin
				begin : sv2v_autoblock_1
					integer i;
					for (i = 0; i < SIZE; i = i + 1)
						useful[i][decrBit] <= 0;
				end
				decrBit <= !decrBit;
			end
			decrCnt <= decrCnt - 1;
		end
endmodule
module TLBMissQueue (
	clk,
	rst,
	OUT_free,
	OUT_ready,
	IN_branch,
	IN_vmem,
	IN_pw,
	IN_pwActive,
	IN_enqueue,
	IN_uopReady,
	IN_uop,
	IN_dequeue,
	OUT_uop
);
	parameter SIZE = 4;
	input wire clk;
	input wire rst;
	output reg [$clog2(SIZE):0] OUT_free;
	output wire OUT_ready;
	input logic [73:0] IN_branch;
	input logic [30:0] IN_vmem;
	input logic [52:0] IN_pw;
	input wire IN_pwActive;
	input wire IN_enqueue;
	input wire IN_uopReady;
	input logic [81:0] IN_uop;
	input wire IN_dequeue;
	output logic [81:0] OUT_uop;
	localparam ID_LEN = $clog2(SIZE);
	logic [81:0] queue [SIZE - 1:0];
	reg [SIZE - 1:0] ready;
	reg [ID_LEN - 1:0] idxIn;
	reg idxInValid;
	always_comb begin
		idxInValid = 0;
		idxIn = 'x;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < SIZE; i = i + 1)
				if (!queue[i][0]) begin
					idxIn = i[ID_LEN - 1:0];
					idxInValid = 1;
				end
		end
	end
	assign OUT_ready = idxInValid;
	function automatic logic [$clog2(SIZE) - 1:0] sv2v_cast_A6CF1;
		input logic [$clog2(SIZE) - 1:0] inp;
		sv2v_cast_A6CF1 = inp;
	endfunction
	always_comb begin : sv2v_autoblock_2
		reg [1:0] stage0 [1:0];
		stage0[0] = !queue[0][0] + !queue[1][0];
		stage0[1] = !queue[2][0] + !queue[3][0];
		OUT_free = stage0[0] + stage0[1];
		if (OUT_free != 0)
			OUT_free = OUT_free - sv2v_cast_A6CF1(OUT_uop[0]);
	end
	reg [ID_LEN - 1:0] idxOut;
	reg idxOutValid;
	always_comb begin
		idxOutValid = 0;
		idxOut = 'x;
		begin : sv2v_autoblock_3
			integer i;
			for (i = 0; i < SIZE; i = i + 1)
				if (queue[i][0] && (ready[i] || !IN_pwActive)) begin
					idxOut = i[ID_LEN - 1:0];
					idxOutValid = 1;
				end
		end
	end
	function automatic logic [81:0] sv2v_cast_82;
		input logic [81:0] inp;
		sv2v_cast_82 = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst) begin
			begin : sv2v_autoblock_4
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					queue[i] <= sv2v_cast_82(82'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			end
			OUT_uop <= sv2v_cast_82(82'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
			ready <= 'x;
		end
		else begin
			if (IN_pw[0]) begin : sv2v_autoblock_5
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					if ((queue[i][0] && !ready[i]) && (IN_pw[9] ? IN_pw[52:43] == queue[i][81:72] : IN_pw[52-:20] == queue[i][81:62]))
						ready[i] <= 1;
			end
			if (IN_branch[0]) begin : sv2v_autoblock_6
				integer i;
				for (i = 0; i < SIZE; i = i + 1)
					if (queue[i][0] && ($signed(queue[i][31-:7] - IN_branch[27-:7]) > 0)) begin
						ready[i] <= 'x;
						queue[i] <= 'x;
						queue[i][0] <= 0;
					end
			end
			if ((IN_enqueue && IN_uop[0]) && (!IN_branch[0] || ($signed(IN_uop[31-:7] - IN_branch[27-:7]) <= 0))) begin
				ready[idxIn] <= !IN_vmem[30] || IN_uopReady;
				queue[idxIn] <= IN_uop;
			end
			if (IN_dequeue || (IN_branch[0] && ($signed(OUT_uop[31-:7] - IN_branch[27-:7]) > 0))) begin
				OUT_uop <= 'x;
				OUT_uop[0] <= 0;
			end
			if ((!OUT_uop[0] || IN_dequeue) && idxOutValid)
				if (queue[idxOut][0] && (!IN_branch[0] || ($signed(queue[idxOut][31-:7] - IN_branch[27-:7]) <= 0))) begin
					OUT_uop <= queue[idxOut];
					ready[idxOut] <= 'x;
					queue[idxOut] <= 'x;
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
	input logic [52:0] IN_pw;
	input logic [(NUM_RQ * 21) - 1:0] IN_rqs;
	output logic [(NUM_RQ * 28) - 1:0] OUT_res;
	localparam LEN = SIZE / ASSOC;
	localparam VIRT_LEN = 20 - $clog2(LEN);
	logic [VIRT_LEN + 28:0] tlb [LEN - 1:0][ASSOC - 1:0];
	reg [$clog2(ASSOC) - 1:0] counters [LEN - 1:0];
	reg [LEN - 1:0] inc;
	always_comb begin
		inc = '0;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_RQ; i = i + 1)
				begin : sv2v_autoblock_2
					reg [$clog2(LEN) - 1:0] idx;
					idx = IN_rqs[(i * 21) + ((0 + $clog2(LEN)) >= 1 ? 0 + $clog2(LEN) : ((0 + $clog2(LEN)) + ((0 + $clog2(LEN)) >= 1 ? 0 + $clog2(LEN) : 2 - (0 + $clog2(LEN)))) - 1)-:((0 + $clog2(LEN)) >= 1 ? 0 + $clog2(LEN) : 2 - (0 + $clog2(LEN)))];
					OUT_res[i * 28+:28] = 'x;
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
	function automatic logic [VIRT_LEN - 1:0] sv2v_cast_759E7;
		input logic [VIRT_LEN - 1:0] inp;
		sv2v_cast_759E7 = inp;
	endfunction
	function automatic logic [((VIRT_LEN + 28) >= 0 ? VIRT_LEN + 29 : 1 - (VIRT_LEN + 28)) - 1:0] sv2v_cast_CCA5C;
		input logic [((VIRT_LEN + 28) >= 0 ? VIRT_LEN + 29 : 1 - (VIRT_LEN + 28)) - 1:0] inp;
		sv2v_cast_CCA5C = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst) begin
			begin : sv2v_autoblock_4
				integer i;
				for (i = 0; i < LEN; i = i + 1)
					begin
						counters[i] <= 0;
						begin : sv2v_autoblock_5
							integer j;
							for (j = 0; j < ASSOC; j = j + 1)
								tlb[i][j] <= sv2v_cast_CCA5C({sv2v_cast_759E7('x), 20'bxxxxxxxxxxxxxxxxxxxx, 1'bx, 1'bx, 1'bx, 3'bxxx, 1'bx, 1'bx, 1'd0});
						end
					end
			end
			ignoreCur <= 0;
		end
		else if (clear) begin
			begin : sv2v_autoblock_6
				integer i;
				for (i = 0; i < LEN; i = i + 1)
					begin : sv2v_autoblock_7
						integer j;
						for (j = 0; j < ASSOC; j = j + 1)
							tlb[i][j] <= sv2v_cast_CCA5C({sv2v_cast_759E7('x), 20'bxxxxxxxxxxxxxxxxxxxx, 1'bx, 1'bx, 1'bx, 3'bxxx, 1'bx, 1'bx, 1'd0});
					end
			end
			ignoreCur <= 1;
		end
		else begin
			if (ignoreCur && !IN_pw[1])
				ignoreCur <= 0;
			if ((IN_pw[0] && !ignoreCur) && (IS_IFETCH ? IN_pw[3-:2] == 0 : IN_pw[3-:2] != 0)) begin : sv2v_autoblock_8
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
			begin : sv2v_autoblock_9
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
	OUT_pcRead,
	IN_pcReadData,
	IN_trapControl,
	OUT_trapInfo,
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
	input logic [47:0] IN_trapInstr;
	output logic [6:0] OUT_pcRead;
	input logic [34:0] IN_pcReadData;
	input logic [133:0] IN_trapControl;
	output logic [71:0] OUT_trapInfo;
	output logic [73:0] OUT_branch;
	input wire IN_MEM_busy;
	output reg OUT_flushTLB;
	output reg OUT_fence;
	output reg OUT_clearICache;
	output wire OUT_disableIFetch;
	output reg [31:0] OUT_dbgStallPC;
	reg memoryWait;
	assign OUT_disableIFetch = memoryWait;
	assign OUT_pcRead[6] = IN_trapInstr[47] || (IN_trapInstr[46-:4] != 4'b1111);
	assign OUT_pcRead[5-:5] = IN_trapInstr[6-:5];
	assign OUT_pcRead[0] = IN_trapInstr[0];
	logic [2:0] fetchOffs;
	always_ff @(posedge clk) fetchOffs <= IN_trapInstr[9-:3];
	wire [30:0] finalHalfwPC = {IN_pcReadData[34:7], fetchOffs};
	logic [71:0] trapInfo_r;
	logic [1:0] trapPCSpec_r;
	always_comb begin
		OUT_trapInfo = trapInfo_r;
		OUT_trapInfo[39-:32] = {finalHalfwPC, 1'b0};
		case (trapPCSpec_r)
			2'd0:
				;
			2'd1: OUT_trapInfo[71-:32] = {finalHalfwPC, 1'b0} + 2;
			2'd2: OUT_trapInfo[71-:32] = {finalHalfwPC, 1'b0};
			2'd3: OUT_trapInfo[71-:32] = {finalHalfwPC, 1'b0} - 2;
		endcase
	end
	logic [31:0] OUT_dbgStallPC_c;
	logic OUT_fence_c;
	logic OUT_clearICache_c;
	logic [73:0] OUT_branch_c;
	logic [71:0] trapInfo_c;
	logic [1:0] trapPCSpec_c;
	logic OUT_flushTLB_c;
	logic setMemoryWait;
	always_ff @(posedge clk) begin
		OUT_fence <= OUT_fence_c;
		OUT_clearICache <= OUT_clearICache_c;
		trapInfo_r <= trapInfo_c;
		trapPCSpec_r <= trapPCSpec_c;
		OUT_flushTLB <= OUT_flushTLB_c;
		OUT_dbgStallPC <= OUT_dbgStallPC_c;
	end
	always_ff @(posedge clk)
		if (rst)
			memoryWait <= 0;
		else if (setMemoryWait)
			memoryWait <= 1;
		else if (memoryWait && !IN_MEM_busy)
			memoryWait <= 0;
	assign OUT_branch = OUT_branch_c;
	always_comb begin
		OUT_fence_c = 0;
		OUT_clearICache_c = 0;
		OUT_branch_c = 'x;
		OUT_branch_c[0] = 0;
		trapInfo_c = 'x;
		trapInfo_c[0] = 0;
		trapPCSpec_c = '0;
		OUT_flushTLB_c = 0;
		setMemoryWait = 0;
		OUT_dbgStallPC_c = OUT_dbgStallPC;
		if (rst)
			;
		else if (IN_trapInstr[0])
			if (!IN_trapInstr[47] && ((((IN_trapInstr[46-:4] == 4'd4) || (IN_trapInstr[46-:4] == 4'd5)) || (IN_trapInstr[46-:4] == 4'd14)) || ((IN_trapInstr[46-:4] == 4'd7) && (IN_trapInstr[14-:5] == 5'd15)))) begin
				case (IN_trapInstr[46-:4])
					4'd5: OUT_branch_c[70-:2] = 2'd1;
					4'd4: begin
						OUT_clearICache_c = 1;
						setMemoryWait = 1;
						OUT_fence_c = 1;
						OUT_branch_c[70-:2] = 2'd1;
					end
					4'd14: begin
						OUT_branch_c[70-:2] = 2'd0;
						OUT_branch_c[59-:32] = {IN_trapControl[133-:31], 1'b0};
					end
					4'd7: begin
						OUT_flushTLB_c = 1;
						OUT_branch_c[70-:2] = 2'd1;
					end
					default:
						;
				endcase
				if ((IN_trapInstr[46-:4] == 4'd14) || (IN_trapInstr[46-:4] == 4'd5))
					if (IN_trapControl[6]) begin
						trapInfo_c[0] = 1;
						trapInfo_c[39-:32] = 'x;
						if (IN_trapInstr[46-:4] == 4'd14) begin
							trapInfo_c[71-:32] = {IN_trapControl[133-:31], 1'b0};
							trapPCSpec_c = 2'd0;
						end
						else begin
							trapInfo_c[71-:32] = 'x;
							trapPCSpec_c = 2'd1;
						end
						trapInfo_c[6-:5] = IN_trapControl[5-:5];
						trapInfo_c[1] = IN_trapControl[0];
						trapInfo_c[7] = 1;
						OUT_branch_c[70-:2] = 2'd0;
						OUT_branch_c[59-:32] = {(IN_trapControl[0] ? IN_trapControl[71-:30] : IN_trapControl[102-:30]), 2'b00};
					end
				OUT_branch_c[0] = 1;
				OUT_branch_c[27-:7] = IN_trapInstr[35-:7];
				OUT_branch_c[6] = 1;
				OUT_branch_c[20-:7] = IN_trapInstr[21-:7];
				OUT_branch_c[13-:7] = IN_trapInstr[28-:7];
				OUT_branch_c[5-:5] = IN_trapInstr[6-:5];
				OUT_branch_c[67-:3] = IN_trapInstr[9-:3];
				OUT_branch_c[62-:3] = 3'd0;
				OUT_branch_c[64-:2] = 2'd0;
				OUT_branch_c[68] = 0;
				OUT_branch_c[73-:3] = 3'd0;
			end
			else if (IN_trapInstr[47] || ((IN_trapInstr[46-:4] >= 4'd6) && (IN_trapInstr[46-:4] <= 4'd13))) begin : sv2v_autoblock_1
				logic [4:0] trapCause;
				reg delegate;
				reg isInterrupt;
				trapCause = 5'd2;
				delegate = 'x;
				isInterrupt = !IN_trapInstr[47] && ((IN_trapInstr[46-:4] == 4'd7) && (IN_trapInstr[14-:5] == 5'd16));
				if (IN_trapInstr[47])
					trapCause = 5'd24;
				else if (isInterrupt)
					trapCause = IN_trapControl[5-:5];
				else begin
					case (IN_trapInstr[46-:4])
						4'd7: trapCause = IN_trapInstr[14-:5];
						4'd8: trapCause = 5'd4;
						4'd9: trapCause = 5'd5;
						4'd10: trapCause = 5'd13;
						4'd11: trapCause = 5'd6;
						4'd12: trapCause = 5'd7;
						4'd13: trapCause = 5'd15;
						4'd6: trapCause = 5'd2;
						default:
							;
					endcase
					if (trapCause == 5'd11)
						case (IN_trapControl[8-:2])
							2'd1: trapCause = 5'd9;
							2'd0: trapCause = 5'd8;
							default:
								;
						endcase
				end
				delegate = ((trapCause <= 5'd15) && (IN_trapControl[8-:2] != 2'd3)) && (isInterrupt ? IN_trapControl[9 + trapCause[3:0]] : IN_trapControl[25 + trapCause[3:0]]);
				trapInfo_c[0] = 1;
				trapInfo_c[71-:32] = 'x;
				trapInfo_c[39-:32] = 'x;
				trapPCSpec_c = (IN_trapInstr[1] ? 2'd2 : 2'd3);
				trapInfo_c[6-:5] = trapCause;
				trapInfo_c[1] = delegate;
				trapInfo_c[7] = isInterrupt;
				OUT_branch_c[0] = 1;
				OUT_branch_c[59-:32] = {(delegate ? IN_trapControl[71-:30] : IN_trapControl[102-:30]), 2'b00};
				OUT_branch_c[27-:7] = IN_trapInstr[35-:7];
				OUT_branch_c[6] = 1;
				OUT_branch_c[20-:7] = IN_trapInstr[21-:7];
				OUT_branch_c[13-:7] = IN_trapInstr[28-:7];
				if (((IN_trapInstr[46-:4] == 4'd11) || (IN_trapInstr[46-:4] == 4'd12)) || (IN_trapInstr[46-:4] == 4'd13))
					OUT_branch_c[20-:7] = IN_trapInstr[21-:7] - 1;
				OUT_branch_c[5-:5] = IN_trapInstr[6-:5];
				OUT_branch_c[67-:3] = IN_trapInstr[9-:3];
				OUT_branch_c[62-:3] = 3'd0;
				OUT_branch_c[64-:2] = 2'd0;
				OUT_branch_c[68] = 0;
				OUT_branch_c[70-:2] = 2'd0;
				OUT_branch_c[73-:3] = 3'd0;
			end
			else
				OUT_dbgStallPC_c = {finalHalfwPC, 1'b0};
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
	input logic [73:0] IN_branch;
	input logic [6:0] IN_commitSqN;
	input logic [(NUM_TVAL_PROVS * 40) - 1:0] IN_tvalProvs;
	output logic [31:0] OUT_tvalState;
	logic [39:0] curTVal;
	wire invalidateCurTVal_c = curTVal[0] && (($signed(IN_commitSqN - curTVal[7-:7]) > 0) || (IN_branch[0] && ($signed(curTVal[7-:7] - IN_branch[27-:7]) > 0)));
	reg invalidateCurTVal;
	assign OUT_tvalState[31-:32] = curTVal[39-:32];
	logic [39:0] earliest;
	always_comb begin
		earliest = 'x;
		earliest[0] = 0;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_TVAL_PROVS; i = i + 1)
				if (IN_tvalProvs[i * 40] && (!earliest[0] || ($signed(earliest[7-:7] - IN_tvalProvs[(i * 40) + 7-:7]) > 0)))
					earliest = IN_tvalProvs[i * 40+:40];
		end
	end
	always_ff @(posedge clk)
		if (rst) begin
			curTVal <= 'x;
			curTVal[0] <= 0;
			invalidateCurTVal <= 0;
		end
		else begin
			invalidateCurTVal <= invalidateCurTVal_c;
			if (invalidateCurTVal) begin
				curTVal[7-:7] <= 'x;
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
module Scheduler (
	clk,
	rst,
	IN_valid,
	IN_uopSqN,
	IN_uopLoadSqN,
	IN_uopStoreSqN,
	IN_uop,
	OUT_order
);
	input wire clk;
	input wire rst;
	input wire IN_valid;
	input logic [27:0] IN_uopSqN;
	input logic [27:0] IN_uopLoadSqN;
	input logic [27:0] IN_uopStoreSqN;
	input logic [319:0] IN_uop;
	localparam NUM_ALUS = 3;
	output logic [7:0] OUT_order;
	localparam NUM_AGUS = 2;
	localparam [15:0] FU_AGU_OH = 1 << 4'd3;
	localparam [15:0] FU_ATOMIC_OH = 1 << 4'd10;
	localparam [15:0] FU_BITMANIP_OH = 1 << 4'd2;
	localparam [15:0] FU_BRANCH_OH = 1 << 4'd1;
	localparam [15:0] FU_CSR_OH = 1 << 4'd11;
	localparam [15:0] FU_DIV_OH = 1 << 4'd5;
	localparam [15:0] FU_INT_OH = 1 << 4'd0;
	localparam [15:0] FU_MUL_OH = 1 << 4'd4;
	localparam NUM_PORTS = 5;
	localparam logic [79:0] PORT_FUS = {FU_AGU_OH | FU_ATOMIC_OH, FU_AGU_OH | FU_ATOMIC_OH, (FU_INT_OH | FU_MUL_OH) | FU_BITMANIP_OH, ((FU_INT_OH | FU_BRANCH_OH) | FU_MUL_OH) | FU_ATOMIC_OH, (((FU_INT_OH | FU_BRANCH_OH) | FU_DIV_OH) | FU_CSR_OH) | FU_ATOMIC_OH};
	function automatic logic [2:0] GetCandidates;
		input logic [3:0] fu;
		input logic [6:0] sqN;
		input logic [6:0] loadSqN;
		input logic [6:0] storeSqN;
		logic [2:0] retval;
		begin
			retval = '0;
			case (fu)
				default: begin : sv2v_autoblock_1
					integer i;
					for (i = 0; i < 4; i = i + 1)
						if (PORT_FUS[(i * 16) + fu] != 0)
							retval = retval | (1 << i);
				end
				4'd10: retval = 1 << (storeSqN % NUM_AGUS);
				4'd9, 4'd3, 4'd12:
					;
			endcase
			GetCandidates = retval;
		end
	endfunction
	localparam PAD = 3;
	localparam MOD_TABLE_LEN = 8;
	reg [1:0] modTable [7:0];
	initial begin : sv2v_autoblock_2
		integer i;
		for (i = 0; i < MOD_TABLE_LEN; i = i + 1)
			modTable[i] = i % NUM_ALUS;
	end
	logic [2:0] candidates [3:0];
	always_comb begin : sv2v_autoblock_3
		integer i;
		for (i = 0; i < 4; i = i + 1)
			candidates[i] = GetCandidates(IN_uop[(i * 80) + 13-:4], IN_uopSqN[i * 7+:7], IN_uopLoadSqN[i * 7+:7], IN_uopStoreSqN[i * 7+:7]);
	end
	logic [1:0] prio_r;
	function automatic logic [2:0] sv2v_cast_3;
		input logic [2:0] inp;
		sv2v_cast_3 = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst)
			prio_r <= 0;
		else begin : sv2v_autoblock_4
			integer i;
			for (i = 0; i < 4; i = i + 1)
				if (IN_valid && IN_uop[i * 80])
					prio_r <= modTable[sv2v_cast_3(OUT_order[i * 2+:2]) + 3'sd1];
		end
	logic [1:0] prios_c [3:0];
	always_comb begin
		prios_c[0] = prio_r;
		begin : sv2v_autoblock_5
			integer i;
			for (i = 1; i < 4; i = i + 1)
				prios_c[i] = modTable[sv2v_cast_3(OUT_order[(i - 1) * 2+:2]) + 3'sd1];
		end
	end
	logic [1:0] outOrderRaw [3:0];
	genvar i;
	generate
		for (i = 0; i < 4; i = i + 1) begin : genblk1
			PriorityEncoder #(.BITS(NUM_ALUS)) penc(
				.IN_data((candidates[i] >> prios_c[i]) | (candidates[i] << (NUM_ALUS - prios_c[i]))),
				.OUT_idx({outOrderRaw[i]})
			);
		end
	endgenerate
	always_comb begin : sv2v_autoblock_6
		integer i;
		for (i = 0; i < 4; i = i + 1)
			OUT_order[i * 2+:2] = modTable[sv2v_cast_3(outOrderRaw[i]) + sv2v_cast_3(prios_c[i])];
	end
endmodule
module ResultFlagsSplit (
	IN_uop,
	OUT_flagsUOp,
	OUT_resultUOp
);
	parameter WIDTH = 1;
	input logic [(WIDTH * 52) - 1:0] IN_uop;
	output logic [(WIDTH * 20) - 1:0] OUT_flagsUOp;
	output logic [(WIDTH * 41) - 1:0] OUT_resultUOp;
	function automatic logic [6:0] sv2v_cast_7;
		input logic [6:0] inp;
		sv2v_cast_7 = inp;
	endfunction
	function automatic logic [3:0] sv2v_cast_4;
		input logic [3:0] inp;
		sv2v_cast_4 = inp;
	endfunction
	function automatic logic [19:0] sv2v_cast_20;
		input logic [19:0] inp;
		sv2v_cast_20 = inp;
	endfunction
	function automatic logic [31:0] sv2v_cast_32;
		input logic [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	function automatic logic [40:0] sv2v_cast_41;
		input logic [40:0] inp;
		sv2v_cast_41 = inp;
	endfunction
	always_comb begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < WIDTH; i = i + 1)
			begin
				OUT_flagsUOp[i * 20+:20] = sv2v_cast_20({sv2v_cast_7(IN_uop[(i * 52) + 19-:7]), sv2v_cast_7(IN_uop[(i * 52) + 12-:7]), sv2v_cast_4(IN_uop[(i * 52) + 5-:4]), IN_uop[(i * 52) + 1], IN_uop[i * 52] && !IN_uop[(i * 52) + 1]});
				OUT_resultUOp[i * 41+:41] = sv2v_cast_41({sv2v_cast_32(IN_uop[(i * 52) + 51-:32]), sv2v_cast_7(IN_uop[(i * 52) + 19-:7]), IN_uop[(i * 52) + 1], IN_uop[i * 52]});
			end
	end
endmodule
module InstrAligner (
	clk,
	rst,
	IN_clear,
	IN_accept,
	OUT_ready,
	IN_op,
	IN_ready,
	OUT_instr
);
	parameter NUM_PACKETS = 8;
	parameter NUM_INSTRS = 4;
	parameter BUF_SIZE = 2;
	parameter FF_OUTPUT = 1;
	input wire clk;
	input wire rst;
	input wire IN_clear;
	input wire IN_accept;
	output wire OUT_ready;
	localparam FETCH_WORDS = 8;
	input logic [204:0] IN_op;
	input wire IN_ready;
	output logic [(NUM_INSTRS * 110) - 1:0] OUT_instr;
	localparam WINDOW_SIZE = (BUF_SIZE + 1) * NUM_PACKETS;
	logic [WINDOW_SIZE - 1:0] unhandled_c;
	logic [WINDOW_SIZE - 1:0] windowStart_c;
	wire canShift = !(|(unhandled_c[0+:NUM_PACKETS] & windowStart_c[0+:NUM_PACKETS]));
	wire validCycle = (IN_accept && IN_op[0]) && canShift;
	assign OUT_ready = validCycle;
	logic [NUM_PACKETS - 1:0] isInstrStart_c;
	logic [NUM_PACKETS - 1:0] isInstrStart32_c;
	logic validInstrStart_c;
	logic is32bit;
	logic [(BUF_SIZE * ((205 + NUM_PACKETS) + NUM_PACKETS)) - 1:0] prev_r;
	function automatic logic [2:0] sv2v_cast_3;
		input logic [2:0] inp;
		sv2v_cast_3 = inp;
	endfunction
	always_comb begin
		is32bit = 'x;
		validInstrStart_c = !(prev_r[((BUF_SIZE - 1) * ((205 + NUM_PACKETS) + NUM_PACKETS)) + ((NUM_PACKETS + (NUM_PACKETS - 1)) - ((NUM_PACKETS - 1) - (NUM_PACKETS - 1)))] && prev_r[((BUF_SIZE - 1) * ((205 + NUM_PACKETS) + NUM_PACKETS)) + ((NUM_PACKETS - 1) - ((NUM_PACKETS - 1) - (NUM_PACKETS - 1)))]);
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < NUM_PACKETS; i = i + 1)
				begin
					if ((sv2v_cast_3(i) < IN_op[169-:3]) || !IN_op[0])
						validInstrStart_c = 0;
					if (sv2v_cast_3(i) > IN_op[166-:3])
						validInstrStart_c = 0;
					if (validInstrStart_c) begin
						is32bit = IN_op[1 + ((i * 16) + 1)-:2] == 2'b11;
						isInstrStart_c[i] = 1;
						isInstrStart32_c[i] = is32bit;
						validInstrStart_c = !is32bit;
					end
					else begin
						isInstrStart_c[i] = 0;
						isInstrStart32_c[i] = 0;
						validInstrStart_c = 1;
					end
				end
		end
	end
	function automatic logic [204:0] sv2v_cast_0D16D;
		input logic [204:0] inp;
		sv2v_cast_0D16D = inp;
	endfunction
	function automatic logic [((205 + NUM_PACKETS) + NUM_PACKETS) - 1:0] sv2v_cast_90238;
		input logic [((205 + NUM_PACKETS) + NUM_PACKETS) - 1:0] inp;
		sv2v_cast_90238 = inp;
	endfunction
	wire logic [((205 + NUM_PACKETS) + NUM_PACKETS) - 1:0] cur_c = sv2v_cast_90238({sv2v_cast_0D16D(IN_op), isInstrStart_c, isInstrStart32_c});
	wire logic [(BUF_SIZE >= 0 ? ((BUF_SIZE + 1) * ((205 + NUM_PACKETS) + NUM_PACKETS)) - 1 : ((1 - BUF_SIZE) * ((205 + NUM_PACKETS) + NUM_PACKETS)) + ((BUF_SIZE * ((205 + NUM_PACKETS) + NUM_PACKETS)) - 1)):(BUF_SIZE >= 0 ? 0 : BUF_SIZE * ((205 + NUM_PACKETS) + NUM_PACKETS))] cycles_c = {cur_c, prev_r};
	function automatic logic [127:0] sv2v_cast_F31AC;
		input logic [127:0] inp;
		sv2v_cast_F31AC = inp;
	endfunction
	always_ff @(posedge clk)
		if (rst) begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < BUF_SIZE; i = i + 1)
				begin
					prev_r[(i * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (NUM_PACKETS + (NUM_PACKETS - 1))-:((NUM_PACKETS + (NUM_PACKETS - 1)) >= (NUM_PACKETS + 0) ? ((NUM_PACKETS + (NUM_PACKETS - 1)) - (NUM_PACKETS + 0)) + 1 : ((NUM_PACKETS + 0) - (NUM_PACKETS + (NUM_PACKETS - 1))) + 1)] <= 0;
					prev_r[(i * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (NUM_PACKETS - 1)-:NUM_PACKETS] <= 0;
					prev_r[(i * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (205 + (NUM_PACKETS + (NUM_PACKETS - 1)))-:((205 + (NUM_PACKETS + (NUM_PACKETS - 1))) >= (NUM_PACKETS + (NUM_PACKETS + 0)) ? ((205 + (NUM_PACKETS + (NUM_PACKETS - 1))) - (NUM_PACKETS + (NUM_PACKETS + 0))) + 1 : ((NUM_PACKETS + (NUM_PACKETS + 0)) - (205 + (NUM_PACKETS + (NUM_PACKETS - 1)))) + 1)] <= sv2v_cast_0D16D({76'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_F31AC('x), 1'd0});
				end
		end
		else begin
			if (validCycle) begin : sv2v_autoblock_3
				integer i;
				for (i = 0; i < BUF_SIZE; i = i + 1)
					begin
						prev_r[(i * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (NUM_PACKETS + (NUM_PACKETS - 1))-:((NUM_PACKETS + (NUM_PACKETS - 1)) >= (NUM_PACKETS + 0) ? ((NUM_PACKETS + (NUM_PACKETS - 1)) - (NUM_PACKETS + 0)) + 1 : ((NUM_PACKETS + 0) - (NUM_PACKETS + (NUM_PACKETS - 1))) + 1)] <= cycles_c[((BUF_SIZE >= 0 ? i + 1 : BUF_SIZE - (i + 1)) * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (NUM_PACKETS + (NUM_PACKETS - 1))-:((NUM_PACKETS + (NUM_PACKETS - 1)) >= (NUM_PACKETS + 0) ? ((NUM_PACKETS + (NUM_PACKETS - 1)) - (NUM_PACKETS + 0)) + 1 : ((NUM_PACKETS + 0) - (NUM_PACKETS + (NUM_PACKETS - 1))) + 1)] & unhandled_c[(i + 1) * NUM_PACKETS+:NUM_PACKETS];
						prev_r[(i * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (NUM_PACKETS - 1)-:NUM_PACKETS] <= cycles_c[((BUF_SIZE >= 0 ? i + 1 : BUF_SIZE - (i + 1)) * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (NUM_PACKETS - 1)-:NUM_PACKETS];
						prev_r[(i * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (205 + (NUM_PACKETS + (NUM_PACKETS - 1)))-:((205 + (NUM_PACKETS + (NUM_PACKETS - 1))) >= (NUM_PACKETS + (NUM_PACKETS + 0)) ? ((205 + (NUM_PACKETS + (NUM_PACKETS - 1))) - (NUM_PACKETS + (NUM_PACKETS + 0))) + 1 : ((NUM_PACKETS + (NUM_PACKETS + 0)) - (205 + (NUM_PACKETS + (NUM_PACKETS - 1)))) + 1)] <= cycles_c[((BUF_SIZE >= 0 ? i + 1 : BUF_SIZE - (i + 1)) * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (205 + (NUM_PACKETS + (NUM_PACKETS - 1)))-:((205 + (NUM_PACKETS + (NUM_PACKETS - 1))) >= (NUM_PACKETS + (NUM_PACKETS + 0)) ? ((205 + (NUM_PACKETS + (NUM_PACKETS - 1))) - (NUM_PACKETS + (NUM_PACKETS + 0))) + 1 : ((NUM_PACKETS + (NUM_PACKETS + 0)) - (205 + (NUM_PACKETS + (NUM_PACKETS - 1)))) + 1)];
					end
			end
			else begin : sv2v_autoblock_4
				integer i;
				for (i = 0; i < BUF_SIZE; i = i + 1)
					prev_r[(i * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (NUM_PACKETS + (NUM_PACKETS - 1))-:((NUM_PACKETS + (NUM_PACKETS - 1)) >= (NUM_PACKETS + 0) ? ((NUM_PACKETS + (NUM_PACKETS - 1)) - (NUM_PACKETS + 0)) + 1 : ((NUM_PACKETS + 0) - (NUM_PACKETS + (NUM_PACKETS - 1))) + 1)] <= prev_r[(i * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (NUM_PACKETS + (NUM_PACKETS - 1))-:((NUM_PACKETS + (NUM_PACKETS - 1)) >= (NUM_PACKETS + 0) ? ((NUM_PACKETS + (NUM_PACKETS - 1)) - (NUM_PACKETS + 0)) + 1 : ((NUM_PACKETS + 0) - (NUM_PACKETS + (NUM_PACKETS - 1))) + 1)] & unhandled_c[i * NUM_PACKETS+:NUM_PACKETS];
			end
			if (IN_clear) begin : sv2v_autoblock_5
				integer i;
				for (i = 0; i < BUF_SIZE; i = i + 1)
					begin
						prev_r[(i * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (NUM_PACKETS + (NUM_PACKETS - 1))-:((NUM_PACKETS + (NUM_PACKETS - 1)) >= (NUM_PACKETS + 0) ? ((NUM_PACKETS + (NUM_PACKETS - 1)) - (NUM_PACKETS + 0)) + 1 : ((NUM_PACKETS + 0) - (NUM_PACKETS + (NUM_PACKETS - 1))) + 1)] <= 0;
						prev_r[(i * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (NUM_PACKETS - 1)-:NUM_PACKETS] <= 0;
						prev_r[(i * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (205 + (NUM_PACKETS + (NUM_PACKETS - 1)))-:((205 + (NUM_PACKETS + (NUM_PACKETS - 1))) >= (NUM_PACKETS + (NUM_PACKETS + 0)) ? ((205 + (NUM_PACKETS + (NUM_PACKETS - 1))) - (NUM_PACKETS + (NUM_PACKETS + 0))) + 1 : ((NUM_PACKETS + (NUM_PACKETS + 0)) - (205 + (NUM_PACKETS + (NUM_PACKETS - 1)))) + 1)] <= sv2v_cast_0D16D({76'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, sv2v_cast_F31AC('x), 1'd0});
					end
			end
		end
	logic [(WINDOW_SIZE * 16) - 1:0] window_c;
	logic [WINDOW_SIZE - 1:0] windowStart32_c;
	wire lastIsSplit32 = isInstrStart32_c[NUM_PACKETS - 1];
	wire middleIsSplit32 = prev_r[((BUF_SIZE - 1) * ((205 + NUM_PACKETS) + NUM_PACKETS)) + ((NUM_PACKETS - 1) - ((NUM_PACKETS - 1) - (NUM_PACKETS - 1)))] && !IN_op[0];
	always_comb begin
		begin : sv2v_autoblock_6
			integer i;
			for (i = 0; i <= BUF_SIZE; i = i + 1)
				begin : sv2v_autoblock_7
					integer j;
					for (j = 0; j < NUM_PACKETS; j = j + 1)
						begin
							window_c[((i * NUM_PACKETS) + j) * 16+:16] = cycles_c[((BUF_SIZE >= 0 ? i : BUF_SIZE - i) * ((205 + NUM_PACKETS) + NUM_PACKETS)) + ((205 + (NUM_PACKETS + (NUM_PACKETS - 1))) - (204 - (1 + (j * 16))))+:16];
							windowStart_c[(i * NUM_PACKETS) + j] = cycles_c[((BUF_SIZE >= 0 ? i : BUF_SIZE - i) * ((205 + NUM_PACKETS) + NUM_PACKETS)) + ((NUM_PACKETS + (NUM_PACKETS - 1)) - ((NUM_PACKETS - 1) - j))];
							windowStart32_c[(i * NUM_PACKETS) + j] = cycles_c[((BUF_SIZE >= 0 ? i : BUF_SIZE - i) * ((205 + NUM_PACKETS) + NUM_PACKETS)) + ((NUM_PACKETS - 1) - ((NUM_PACKETS - 1) - j))];
						end
				end
		end
		windowStart_c[(BUF_SIZE * NUM_PACKETS) - 1] = windowStart_c[(BUF_SIZE * NUM_PACKETS) - 1] & !middleIsSplit32;
		windowStart_c[WINDOW_SIZE - 1] = windowStart_c[WINDOW_SIZE - 1] & !lastIsSplit32;
	end
	wire [(NUM_INSTRS * $clog2(WINDOW_SIZE)) - 1:0] pencIdx;
	wire [NUM_INSTRS - 1:0] pencIdxValid;
	PriorityEncoder #(
		.BITS(WINDOW_SIZE),
		.N(NUM_INSTRS)
	) penc(
		.IN_data(windowStart_c),
		.OUT_idx(pencIdx),
		.OUT_idxValid(pencIdxValid)
	);
	logic [109:0] instr_c [NUM_INSTRS - 1:0];
	function automatic logic [109:0] sv2v_cast_110;
		input logic [109:0] inp;
		sv2v_cast_110 = inp;
	endfunction
	function automatic logic [$clog2(WINDOW_SIZE) - 1:0] sv2v_cast_9FA2B;
		input logic [$clog2(WINDOW_SIZE) - 1:0] inp;
		sv2v_cast_9FA2B = inp;
	endfunction
	function automatic logic [31:0] sv2v_cast_32;
		input logic [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	function automatic logic [30:0] sv2v_cast_31;
		input logic [30:0] inp;
		sv2v_cast_31 = inp;
	endfunction
	always_comb begin : sv2v_autoblock_8
		integer i;
		for (i = 0; i < NUM_INSTRS; i = i + 1)
			begin : sv2v_autoblock_9
				logic [204:0] ifetchOpFirst;
				logic [204:0] ifetchOp;
				reg is32bit_c;
				reg [$clog2(WINDOW_SIZE) - 1:0] idxLastWord_c;
				ifetchOpFirst = 'x;
				ifetchOp = 'x;
				is32bit_c = 'x;
				idxLastWord_c = 'x;
				instr_c[i] = sv2v_cast_110(110'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				if (pencIdxValid[i]) begin
					is32bit_c = windowStart32_c[pencIdx[i * $clog2(WINDOW_SIZE)+:$clog2(WINDOW_SIZE)]];
					idxLastWord_c = pencIdx[i * $clog2(WINDOW_SIZE)+:$clog2(WINDOW_SIZE)] + sv2v_cast_9FA2B(is32bit_c);
					ifetchOp = cycles_c[((BUF_SIZE >= 0 ? idxLastWord_c / NUM_PACKETS : BUF_SIZE - (idxLastWord_c / NUM_PACKETS)) * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (205 + (NUM_PACKETS + (NUM_PACKETS - 1)))-:((205 + (NUM_PACKETS + (NUM_PACKETS - 1))) >= (NUM_PACKETS + (NUM_PACKETS + 0)) ? ((205 + (NUM_PACKETS + (NUM_PACKETS - 1))) - (NUM_PACKETS + (NUM_PACKETS + 0))) + 1 : ((NUM_PACKETS + (NUM_PACKETS + 0)) - (205 + (NUM_PACKETS + (NUM_PACKETS - 1)))) + 1)];
					ifetchOpFirst = cycles_c[((BUF_SIZE >= 0 ? pencIdx[i * $clog2(WINDOW_SIZE)+:$clog2(WINDOW_SIZE)] / NUM_PACKETS : BUF_SIZE - (pencIdx[i * $clog2(WINDOW_SIZE)+:$clog2(WINDOW_SIZE)] / NUM_PACKETS)) * ((205 + NUM_PACKETS) + NUM_PACKETS)) + (205 + (NUM_PACKETS + (NUM_PACKETS - 1)))-:((205 + (NUM_PACKETS + (NUM_PACKETS - 1))) >= (NUM_PACKETS + (NUM_PACKETS + 0)) ? ((205 + (NUM_PACKETS + (NUM_PACKETS - 1))) - (NUM_PACKETS + (NUM_PACKETS + 0))) + 1 : ((NUM_PACKETS + (NUM_PACKETS + 0)) - (205 + (NUM_PACKETS + (NUM_PACKETS - 1)))) + 1)];
					instr_c[i] = sv2v_cast_110({sv2v_cast_32({window_c[(pencIdx[i * $clog2(WINDOW_SIZE)+:$clog2(WINDOW_SIZE)] + 1) * 16+:16], window_c[pencIdx[i * $clog2(WINDOW_SIZE)+:$clog2(WINDOW_SIZE)] * 16+:16]}), sv2v_cast_31({ifetchOpFirst[204-:28], pencIdx[i * $clog2(WINDOW_SIZE)+:3]}), sv2v_cast_3(ifetchOp[178+:3]), ifetchOp[163-:3], ifetchOp[159-:31], ifetchOp[160] && (ifetchOp[163-:3] == sv2v_cast_3(idxLastWord_c)), ifetchOp[176-:5], ifetchOp[171-:2], !windowStart32_c[pencIdx[i * $clog2(WINDOW_SIZE)+:$clog2(WINDOW_SIZE)]], 1'd1});
				end
			end
	end
	wire outputReady;
	generate
		if (FF_OUTPUT) begin : genblk1
			always_ff @(posedge clk)
				if (rst) begin : sv2v_autoblock_10
					integer i;
					for (i = 0; i < NUM_INSTRS; i = i + 1)
						OUT_instr[i * 110+:110] <= sv2v_cast_110(110'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				end
				else if (IN_clear) begin : sv2v_autoblock_11
					integer i;
					for (i = 0; i < NUM_INSTRS; i = i + 1)
						OUT_instr[i * 110+:110] <= sv2v_cast_110(110'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0);
				end
				else begin : sv2v_autoblock_12
					integer i;
					for (i = 0; i < NUM_INSTRS; i = i + 1)
						if (outputReady)
							OUT_instr[i * 110+:110] <= instr_c[i];
				end
			assign outputReady = !OUT_instr[0] || IN_ready;
		end
		else begin : genblk1
			always_comb begin : sv2v_autoblock_13
				integer i;
				for (i = 0; i < NUM_INSTRS; i = i + 1)
					OUT_instr[i * 110+:110] = instr_c[i];
			end
			assign outputReady = IN_ready;
		end
	endgenerate
	always_comb begin
		begin : sv2v_autoblock_14
			integer i;
			for (i = 0; i < WINDOW_SIZE; i = i + 1)
				unhandled_c[i] = !outputReady || (pencIdxValid[NUM_INSTRS - 1] && (windowStart32_c[pencIdx[(NUM_INSTRS - 1) * $clog2(WINDOW_SIZE)+:$clog2(WINDOW_SIZE)]] ? (i == 0 ? 0 : i - 1) > pencIdx[(NUM_INSTRS - 1) * $clog2(WINDOW_SIZE)+:$clog2(WINDOW_SIZE)] : i > pencIdx[(NUM_INSTRS - 1) * $clog2(WINDOW_SIZE)+:$clog2(WINDOW_SIZE)]));
		end
		unhandled_c[(BUF_SIZE * NUM_PACKETS) - 1] = unhandled_c[(BUF_SIZE * NUM_PACKETS) - 1] | middleIsSplit32;
		unhandled_c[WINDOW_SIZE - 1] = unhandled_c[WINDOW_SIZE - 1] | lastIsSplit32;
	end
endmodule
module RFReadMux (
	clk,
	IN_read,
	OUT_readReady,
	OUT_readData,
	OUT_readEnable,
	OUT_readAddress,
	IN_readData
);
	parameter VIRT_READS = 4;
	parameter PHY_READS = 3;
	input wire clk;
	input logic [(VIRT_READS * 7) - 1:0] IN_read;
	output logic [VIRT_READS - 1:0] OUT_readReady;
	output logic [(VIRT_READS * 32) - 1:0] OUT_readData;
	output logic [PHY_READS - 1:0] OUT_readEnable;
	output logic [(PHY_READS * 6) - 1:0] OUT_readAddress;
	input logic [(PHY_READS * 32) - 1:0] IN_readData;
	localparam COMP_READS = VIRT_READS - PHY_READS;
	logic [PHY_READS - 1:0] staticReadEnable;
	always_comb begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < PHY_READS; i = i + 1)
			staticReadEnable[i] = IN_read[i * 7];
	end
	generate
		if (COMP_READS > 0) begin : genblk1
			logic [(COMP_READS * $clog2(PHY_READS)) - 1:0] compReadIdx_r;
			always_comb begin
				begin : sv2v_autoblock_2
					integer i;
					for (i = 0; i < PHY_READS; i = i + 1)
						OUT_readData[i * 32+:32] = IN_readData[i * 32+:32];
				end
				begin : sv2v_autoblock_3
					integer i;
					for (i = 0; i < COMP_READS; i = i + 1)
						OUT_readData[(i + PHY_READS) * 32+:32] = IN_readData[compReadIdx_r[i * $clog2(PHY_READS)+:$clog2(PHY_READS)] * 32+:32];
				end
			end
			logic [(COMP_READS * $clog2(PHY_READS)) - 1:0] compReadIdx_c;
			logic [COMP_READS - 1:0] compReadValid_c;
			PriorityEncoder #(
				.BITS(PHY_READS),
				.N(COMP_READS)
			) penc(
				.IN_data(~staticReadEnable),
				.OUT_idx(compReadIdx_c),
				.OUT_idxValid(compReadValid_c)
			);
			always_ff @(posedge clk) compReadIdx_r <= compReadIdx_c;
			always_comb begin
				begin : sv2v_autoblock_4
					integer i;
					for (i = 0; i < PHY_READS; i = i + 1)
						begin
							OUT_readEnable[i] = staticReadEnable[i];
							OUT_readAddress[i * 6+:6] = IN_read[(i * 7) + 6-:6];
							OUT_readReady[i] = 1;
						end
				end
				begin : sv2v_autoblock_5
					integer i;
					for (i = 0; i < COMP_READS; i = i + 1)
						begin
							OUT_readReady[PHY_READS + i] = 0;
							if (compReadValid_c[i] && IN_read[(PHY_READS + i) * 7]) begin
								OUT_readReady[PHY_READS + i] = 1;
								OUT_readEnable[compReadIdx_c[i * $clog2(PHY_READS)+:$clog2(PHY_READS)]] = 1;
								OUT_readAddress[compReadIdx_c[i * $clog2(PHY_READS)+:$clog2(PHY_READS)] * 6+:6] = IN_read[((PHY_READS + i) * 7) + 6-:6];
							end
						end
				end
			end
		end
		else begin : genblk1
			always_comb begin : sv2v_autoblock_6
				integer i;
				for (i = 0; i < PHY_READS; i = i + 1)
					OUT_readData[i * 32+:32] = IN_readData[i * 32+:32];
			end
			always_comb begin : sv2v_autoblock_7
				integer i;
				for (i = 0; i < PHY_READS; i = i + 1)
					begin
						OUT_readEnable[i] = staticReadEnable[i];
						OUT_readAddress[i * 6+:6] = IN_read[(i * 7) + 6-:6];
						OUT_readReady[i] = 1;
					end
			end
		end
	endgenerate
endmodule
module CacheArbiter_691BB (
	clk,
	IN_reads,
	IN_writes,
	OUT_readReady,
	OUT_writeReady,
	OUT_portRData,
	OUT_ports,
	IN_portRData
);
	parameter INPUT_READS = 4;
	parameter INPUT_WRITES = 4;
	parameter OUTPUT_PORTS = 2;
	parameter OUTPUT_BANKS = 4;
	parameter BANK_OFFSET = 0;
	parameter DATA_WIDTH = 32;
	parameter OUTPUT_R = 1;
	parameter OUTPUT_RW = 1;
	parameter OUTPUT_W = (OUTPUT_PORTS - OUTPUT_R) - OUTPUT_RW;
	input wire clk;
	input logic [(INPUT_READS * 158) - 1:0] IN_reads;
	input logic [(INPUT_WRITES * 158) - 1:0] IN_writes;
	output logic [INPUT_READS - 1:0] OUT_readReady;
	output logic [INPUT_WRITES - 1:0] OUT_writeReady;
	output logic [(INPUT_READS * DATA_WIDTH) - 1:0] OUT_portRData;
	output logic [((OUTPUT_BANKS * OUTPUT_PORTS) * 158) - 1:0] OUT_ports;
	input logic [((OUTPUT_BANKS * OUTPUT_PORTS) * DATA_WIDTH) - 1:0] IN_portRData;
	localparam OUT_R_CANDIDATES = OUTPUT_R + OUTPUT_RW;
	localparam OUT_W_CANDIDATES = OUTPUT_W + OUTPUT_RW;
	logic [(OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1):0] outPortIdx [INPUT_READS - 1:0];
	logic [(OUT_R_CANDIDATES * $clog2(INPUT_READS)) - 1:0] reqIdx_r [OUTPUT_BANKS - 1:0];
	logic [OUT_R_CANDIDATES - 1:0] reqIdxValid_r [OUTPUT_BANKS - 1:0];
	logic [(OUT_W_CANDIDATES * $clog2(INPUT_WRITES)) - 1:0] reqIdx_w [OUTPUT_BANKS - 1:0];
	logic [OUT_W_CANDIDATES - 1:0] reqIdxValid_w [OUTPUT_BANKS - 1:0];
	genvar bank;
	function automatic logic [((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) - 1:0] sv2v_cast_28CBD;
		input logic [((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) - 1:0] inp;
		sv2v_cast_28CBD = inp;
	endfunction
	generate
		for (bank = 0; bank < OUTPUT_BANKS; bank = bank + 1) begin : gen_banks
			logic [INPUT_READS - 1:0] reqUnary_r;
			logic [INPUT_WRITES - 1:0] reqUnary_w;
			if (OUTPUT_BANKS > 1) begin : genblk1
				always_comb begin : sv2v_autoblock_1
					integer i;
					for (i = 0; i < INPUT_READS; i = i + 1)
						reqUnary_r[i] = !IN_reads[(i * 158) + 157] && (IN_reads[(i * 158) + (128 + BANK_OFFSET)+:$clog2(OUTPUT_BANKS)] == sv2v_cast_28CBD(bank));
				end
			end
			else begin : genblk1
				always_comb begin : sv2v_autoblock_2
					integer i;
					for (i = 0; i < INPUT_READS; i = i + 1)
						reqUnary_r[i] = !IN_reads[(i * 158) + 157];
				end
			end
			if (OUTPUT_BANKS > 1) begin : genblk2
				always_comb begin : sv2v_autoblock_3
					integer i;
					for (i = 0; i < INPUT_WRITES; i = i + 1)
						reqUnary_w[i] = !IN_writes[(i * 158) + 157] && (IN_writes[(i * 158) + (128 + BANK_OFFSET)+:$clog2(OUTPUT_BANKS)] == sv2v_cast_28CBD(bank));
				end
			end
			else begin : genblk2
				always_comb begin : sv2v_autoblock_4
					integer i;
					for (i = 0; i < INPUT_WRITES; i = i + 1)
						reqUnary_w[i] = !IN_writes[(i * 158) + 157];
				end
			end
			PriorityEncoder #(
				.BITS(INPUT_READS),
				.N(OUT_R_CANDIDATES)
			) penc_r(
				.IN_data(reqUnary_r),
				.OUT_idx(reqIdx_r[bank]),
				.OUT_idxValid(reqIdxValid_r[bank])
			);
			PriorityEncoder #(
				.BITS(INPUT_WRITES),
				.N(OUT_W_CANDIDATES)
			) penc_w(
				.IN_data(reqUnary_w),
				.OUT_idx(reqIdx_w[bank]),
				.OUT_idxValid(reqIdxValid_w[bank])
			);
		end
	endgenerate
	function automatic logic [((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) - 1:0] sv2v_cast_34361;
		input logic [((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) - 1:0] inp;
		sv2v_cast_34361 = inp;
	endfunction
	always_comb begin
		begin : sv2v_autoblock_5
			integer i;
			for (i = 0; i < INPUT_READS; i = i + 1)
				begin
					OUT_readReady[i] = 0;
					outPortIdx[i] = 'x;
				end
		end
		begin : sv2v_autoblock_6
			integer i;
			for (i = 0; i < INPUT_WRITES; i = i + 1)
				OUT_writeReady[i] = 0;
		end
		begin : sv2v_autoblock_7
			integer bank;
			for (bank = 0; bank < OUTPUT_BANKS; bank = bank + 1)
				begin
					begin : sv2v_autoblock_8
						integer i;
						for (i = 0; i < OUTPUT_R; i = i + 1)
							begin
								OUT_ports[((bank * OUTPUT_PORTS) + i) * 158+:158] = IN_reads[reqIdx_r[bank][i * $clog2(INPUT_READS)+:$clog2(INPUT_READS)] * 158+:158];
								OUT_ports[(((bank * OUTPUT_PORTS) + i) * 158) + 157] = !reqIdxValid_r[bank][i];
								OUT_readReady[reqIdx_r[bank][i * $clog2(INPUT_READS)+:$clog2(INPUT_READS)]] = OUT_readReady[reqIdx_r[bank][i * $clog2(INPUT_READS)+:$clog2(INPUT_READS)]] | reqIdxValid_r[bank][i];
								outPortIdx[reqIdx_r[bank][i * $clog2(INPUT_READS)+:$clog2(INPUT_READS)]] = sv2v_cast_34361(i);
							end
					end
					begin : sv2v_autoblock_9
						integer i;
						for (i = 0; i < OUTPUT_W; i = i + 1)
							begin : sv2v_autoblock_10
								integer idx;
								idx = i + OUTPUT_R;
								OUT_ports[((bank * OUTPUT_PORTS) + idx) * 158+:158] = IN_writes[reqIdx_w[bank][i * $clog2(INPUT_WRITES)+:$clog2(INPUT_WRITES)] * 158+:158];
								OUT_ports[(((bank * OUTPUT_PORTS) + idx) * 158) + 157] = !reqIdxValid_w[bank][i];
								OUT_writeReady[reqIdx_w[bank][i * $clog2(INPUT_WRITES)+:$clog2(INPUT_WRITES)]] = OUT_writeReady[reqIdx_w[bank][i * $clog2(INPUT_WRITES)+:$clog2(INPUT_WRITES)]] | reqIdxValid_w[bank][i];
							end
					end
					if (OUTPUT_RW == 1) begin : sv2v_autoblock_11
						integer idx;
						idx = OUTPUT_R + OUTPUT_W;
						if (reqIdxValid_w[bank][OUT_W_CANDIDATES - 1]) begin : sv2v_autoblock_12
							localparam i = OUT_W_CANDIDATES - 1;
							OUT_ports[((bank * OUTPUT_PORTS) + idx) * 158+:158] = IN_writes[reqIdx_w[bank][i * $clog2(INPUT_WRITES)+:$clog2(INPUT_WRITES)] * 158+:158];
							OUT_ports[(((bank * OUTPUT_PORTS) + idx) * 158) + 157] = !reqIdxValid_w[bank][i];
							OUT_writeReady[reqIdx_w[bank][i * $clog2(INPUT_WRITES)+:$clog2(INPUT_WRITES)]] = OUT_writeReady[reqIdx_w[bank][i * $clog2(INPUT_WRITES)+:$clog2(INPUT_WRITES)]] | reqIdxValid_w[bank][i];
						end
						else begin : sv2v_autoblock_13
							localparam i = OUT_R_CANDIDATES - 1;
							OUT_ports[((bank * OUTPUT_PORTS) + idx) * 158+:158] = IN_reads[reqIdx_r[bank][i * $clog2(INPUT_READS)+:$clog2(INPUT_READS)] * 158+:158];
							OUT_ports[(((bank * OUTPUT_PORTS) + idx) * 158) + 157] = !reqIdxValid_r[bank][i];
							OUT_readReady[reqIdx_r[bank][i * $clog2(INPUT_READS)+:$clog2(INPUT_READS)]] = OUT_readReady[reqIdx_r[bank][i * $clog2(INPUT_READS)+:$clog2(INPUT_READS)]] | reqIdxValid_r[bank][i];
							outPortIdx[reqIdx_r[bank][i * $clog2(INPUT_READS)+:$clog2(INPUT_READS)]] = sv2v_cast_34361(i);
						end
					end
				end
		end
	end
	logic [(INPUT_READS * (((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + ((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)))) - 1:0] readIdxs [1:0];
	function automatic logic [(((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + ((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1))) - 1:0] sv2v_cast_620A4;
		input logic [(((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + ((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1))) - 1:0] inp;
		sv2v_cast_620A4 = inp;
	endfunction
	always_ff @(posedge clk) begin
		begin : sv2v_autoblock_14
			integer i;
			for (i = 0; i < INPUT_READS; i = i + 1)
				begin
					readIdxs[0][i * (((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + ((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)))+:((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + ((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1))] <= sv2v_cast_620A4({sv2v_cast_28CBD(IN_reads[(i * 158) + (128 + BANK_OFFSET)+:(OUTPUT_BANKS == 1 ? 1 : $clog2(OUTPUT_BANKS))]), outPortIdx[i]});
					if (OUTPUT_BANKS == 1)
						readIdxs[0][(i * (((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + ((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)))) + (((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + (((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) - 1))-:((((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + (((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) - 1)) >= (((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) + 0) ? ((((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + (((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) - 1)) - (((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) + 0)) + 1 : ((((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) + 0) - (((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + (((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) - 1))) + 1)] <= 0;
					if (OUTPUT_PORTS == 1)
						readIdxs[0][(i * (((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + ((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)))) + (((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) - 1)-:((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1))] <= 0;
				end
		end
		readIdxs[1] <= readIdxs[0];
	end
	always_comb begin : sv2v_autoblock_15
		integer i;
		for (i = 0; i < INPUT_READS; i = i + 1)
			OUT_portRData[i * DATA_WIDTH+:DATA_WIDTH] = IN_portRData[((readIdxs[1][(i * (((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + ((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)))) + (((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + (((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) - 1))-:((((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + (((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) - 1)) >= (((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) + 0) ? ((((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + (((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) - 1)) - (((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) + 0)) + 1 : ((((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) + 0) - (((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + (((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) - 1))) + 1)] * OUTPUT_PORTS) + readIdxs[1][(i * (((OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) >= 0 ? (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1) + 1 : 1 - (OUTPUT_BANKS == 1 ? 0 : $clog2(OUTPUT_BANKS) - 1)) + ((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)))) + (((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1)) - 1)-:((OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) >= 0 ? (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1) + 1 : 1 - (OUTPUT_PORTS == 1 ? 0 : $clog2(OUTPUT_PORTS) - 1))]) * DATA_WIDTH+:DATA_WIDTH];
	end
endmodule
module MemRTL1RW (
	clk,
	IN_nce,
	IN_nwe,
	IN_addr,
	IN_data,
	IN_wm,
	OUT_data
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
	output logic [WORD_SIZE - 1:0] OUT_data;
	(* ram_style = "block" *) reg [WORD_SIZE - 1:0] mem [NUM_WORDS - 1:0];
	reg ce_reg = 1;
	reg we_reg;
	reg [$clog2(NUM_WORDS) - 1:0] addr_reg;
	reg [WORD_SIZE - 1:0] data_reg;
	reg [(WORD_SIZE / WRITE_SIZE) - 1:0] wm_reg;
	always @(posedge clk) begin
		ce_reg <= IN_nce;
		we_reg <= IN_nwe;
		addr_reg <= IN_addr;
		data_reg <= IN_data;
		wm_reg <= IN_wm;
	end
	initial begin : sv2v_autoblock_1
		integer i;
		for (i = 0; i < NUM_WORDS; i = i + 1)
			mem[i] = 0;
	end
	always @(posedge clk)
		if (!ce_reg)
			if (!we_reg) begin : sv2v_autoblock_2
				integer i;
				for (i = 0; i < (WORD_SIZE / WRITE_SIZE); i = i + 1)
					if (wm_reg[i])
						mem[addr_reg][WRITE_SIZE * i+:WRITE_SIZE] <= data_reg[WRITE_SIZE * i+:WRITE_SIZE];
			end
			else
				OUT_data <= mem[addr_reg];
endmodule
