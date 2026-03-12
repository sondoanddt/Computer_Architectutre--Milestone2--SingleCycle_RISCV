///----------------------------------------------------------------------//
//  Design Note
//----------------------------------------------------------------------//

//  1. Instruction Memory Depth (IMEM): At least 8 kB to run the "isa_1b.hex" or "isa_4b.hex"

//  2. Data        Memory Depth (DMEM): At least 2 kB (0x0000_0000 - 0x0000_07FF)

//  3. IMEM and DMEM are separate memory blocks (Harvard-like structure).

//Phep cong va tru

	module full_adder(

	input logic a,b,cin,

	output logic cout,s

	);

	assign s=a^b^cin;

	assign cout= (a&b) | ((a^b) & cin);

	endmodule

	//Module cho 32 bit

	module add_sub_bit(

	input logic [31:0]i_op_a,

	input logic [31:0]i_op_b,

	input logic[3:0]i_alu_op,

	output logic [31:0]o_alu_data,

	output logic o_cout_data,

	output logic over_flow

	);

	logic [0:0]cstart;

	logic [31:0]i_op_b_b; //Chu y

	logic [31:0]s;

	logic [31:0]cout;

	logic [31:0]o_adder;

	 assign cstart=(~i_alu_op[3] & ~i_alu_op[2] & ~i_alu_op[1] & i_alu_op[0]) | (~i_alu_op[3] & ~i_alu_op[2] & i_alu_op[1] & i_alu_op[0]) | (~i_alu_op[3] & i_alu_op[2] &~ i_alu_op[1] & ~i_alu_op[0]);

	 assign i_op_b_b = cstart ? ~i_op_b : i_op_b; //Chu y

		full_adder fa0( .a(i_op_a[0]), .b(i_op_b_b[0]), .cin(cstart), .s(s[0]), .cout(cout[0]));

		full_adder fa1( .a(i_op_a[1]), .b(i_op_b_b[1]), .cin(cout[0]), .s(s[1]), .cout(cout[1]));

		full_adder fa2( .a(i_op_a[2]), .b(i_op_b_b[2]), .cin(cout[1]), .s(s[2]), .cout(cout[2]));

		full_adder fa3( .a(i_op_a[3]), .b(i_op_b_b[3]), .cin(cout[2]), .s(s[3]), .cout(cout[3]));

		full_adder fa4( .a(i_op_a[4]), .b(i_op_b_b[4]), .cin(cout[3]), .s(s[4]), .cout(cout[4]));

		full_adder fa5( .a(i_op_a[5]), .b(i_op_b_b[5]), .cin(cout[4]), .s(s[5]), .cout(cout[5]));

		full_adder fa6( .a(i_op_a[6]), .b(i_op_b_b[6]), .cin(cout[5]), .s(s[6]), .cout(cout[6]));

		full_adder fa7( .a(i_op_a[7]), .b(i_op_b_b[7]), .cin(cout[6]), .s(s[7]), .cout(cout[7]));

		full_adder fa8( .a(i_op_a[8]), .b(i_op_b_b[8]), .cin(cout[7]), .s(s[8]), .cout(cout[8]));

		full_adder fa9( .a(i_op_a[9]), .b(i_op_b_b[9]), .cin(cout[8]), .s(s[9]), .cout(cout[9]));

		full_adder fa10( .a(i_op_a[10]), .b(i_op_b_b[10]), .cin(cout[9]), .s(s[10]), .cout(cout[10]));

		full_adder fa11( .a(i_op_a[11]), .b(i_op_b_b[11]), .cin(cout[10]), .s(s[11]), .cout(cout[11]));

		full_adder fa12( .a(i_op_a[12]), .b(i_op_b_b[12]), .cin(cout[11]), .s(s[12]), .cout(cout[12]));

		full_adder fa13( .a(i_op_a[13]), .b(i_op_b_b[13]), .cin(cout[12]), .s(s[13]), .cout(cout[13]));

		full_adder fa14( .a(i_op_a[14]), .b(i_op_b_b[14]), .cin(cout[13]), .s(s[14]), .cout(cout[14]));

		full_adder fa15( .a(i_op_a[15]), .b(i_op_b_b[15]), .cin(cout[14]), .s(s[15]), .cout(cout[15]));

		full_adder fa16( .a(i_op_a[16]), .b(i_op_b_b[16]), .cin(cout[15]), .s(s[16]), .cout(cout[16]));

		full_adder fa17( .a(i_op_a[17]), .b(i_op_b_b[17]), .cin(cout[16]), .s(s[17]), .cout(cout[17]));

		full_adder fa18( .a(i_op_a[18]), .b(i_op_b_b[18]), .cin(cout[17]), .s(s[18]), .cout(cout[18]));

		full_adder fa19( .a(i_op_a[19]), .b(i_op_b_b[19]), .cin(cout[18]), .s(s[19]), .cout(cout[19]));

		full_adder fa20( .a(i_op_a[20]), .b(i_op_b_b[20]), .cin(cout[19]), .s(s[20]), .cout(cout[20]));

		full_adder fa21( .a(i_op_a[21]), .b(i_op_b_b[21]), .cin(cout[20]), .s(s[21]), .cout(cout[21]));

		full_adder fa22( .a(i_op_a[22]), .b(i_op_b_b[22]), .cin(cout[21]), .s(s[22]), .cout(cout[22]));

		full_adder fa23( .a(i_op_a[23]), .b(i_op_b_b[23]), .cin(cout[22]), .s(s[23]), .cout(cout[23]));

		full_adder fa24( .a(i_op_a[24]), .b(i_op_b_b[24]), .cin(cout[23]), .s(s[24]), .cout(cout[24]));

		full_adder fa25( .a(i_op_a[25]), .b(i_op_b_b[25]), .cin(cout[24]), .s(s[25]), .cout(cout[25]));

		full_adder fa26( .a(i_op_a[26]), .b(i_op_b_b[26]), .cin(cout[25]), .s(s[26]), .cout(cout[26]));

		full_adder fa27( .a(i_op_a[27]), .b(i_op_b_b[27]), .cin(cout[26]), .s(s[27]), .cout(cout[27]));

		full_adder fa28( .a(i_op_a[28]), .b(i_op_b_b[28]), .cin(cout[27]), .s(s[28]), .cout(cout[28]));

		full_adder fa29( .a(i_op_a[29]), .b(i_op_b_b[29]), .cin(cout[28]), .s(s[29]), .cout(cout[29]));

		full_adder fa30( .a(i_op_a[30]), .b(i_op_b_b[30]), .cin(cout[29]), .s(s[30]), .cout(cout[30]));

		full_adder fa31( .a(i_op_a[31]), .b(i_op_b_b[31]), .cin(cout[30]), .s(s[31]), .cout(cout[31]));

		assign o_alu_data={s[31:0]};

		assign o_cout_data=~cout[31];   //Unsigned

        assign over_flow= ~s[31]&~cout[30]&cout[31] | ~s[31]&cout[30]&~cout[31] | s[31]&~cout[30]&~cout[31] | s[31]&cout[30]&cout[31];

		endmodule

	//module AND OR XOR

	module AND_ALU(

	input logic[31:0]i_op_a,

	input logic[31:0]i_op_b,

	input logic [3:0]i_alu_op,

	output logic[31:0]o_alu_data);

	assign o_alu_data= i_op_a & i_op_b;

	endmodule

	module OR_ALU(

	input logic[31:0]i_op_a,

	input logic[31:0]i_op_b,

	input logic [3:0]i_alu_op,

	output logic[31:0]o_alu_data);

	assign o_alu_data = i_op_a | i_op_b;

	endmodule

	module XOR_ALU(

	input logic[31:0]i_op_a,

	input logic[31:0]i_op_b,

	input logic [3:0]i_alu_op,
    output logic[31:0]o_alu_data);

	assign o_alu_data = (~i_op_a & i_op_b) | (i_op_a & ~i_op_b);

	endmodule

	//Mux 2 sang 1 ngo vao 32 bit

	module mux_32_bit(

	input logic [31:0]a,

	input logic [31:0]b,

	input logic sel,

	output logic [31:0]c);

	assign c = (sel)?  b:a;

	endmodule

	//Module SRL

	module srl(input logic[31:0]i_op_a,

	input logic[31:0]i_op_b,

	input logic [3:0]i_alu_op,

	output logic[31:0]o_alu_data);

	logic [4:0]sel;

	logic[31:0]o_srl_4;

	logic[31:0]o_srl_3;

	logic[31:0]o_srl_2;

	logic[31:0]o_srl_1;

	logic[31:0]o_srl_0;

	logic[31:0]i_srl_0;

	assign sel=i_op_b[4:0] ;

	assign i_srl_0 = {1'b0,i_op_a[31:1]};

	//Tao bo barrel shifter

	mux_32_bit mux4(.sel(sel[4]) , .a(o_srl_3), .b({16'b0,o_srl_3[31:16]}), .c(o_srl_4));

	mux_32_bit mux3(.sel(sel[3]) , .a(o_srl_2), .b({8'b0,o_srl_2[31:8]}), .c(o_srl_3));

	mux_32_bit mux2(.sel(sel[2]) , .a(o_srl_1), .b({4'b0,o_srl_1[31:4]}), .c(o_srl_2));

	mux_32_bit mux1(.sel(sel[1]) , .a(o_srl_0), .b({2'b0,o_srl_0[31:2]}), .c(o_srl_1));

	mux_32_bit mux0(.sel(sel[0]) , .a(i_op_a), .b(i_srl_0), .c(o_srl_0));

	assign o_alu_data=o_srl_4;

	endmodule

	//Module SLL

	module sll(input logic[31:0]i_op_a,

	input logic[31:0]i_op_b,

	input logic [3:0]i_alu_op,

	output logic[31:0]o_alu_data);

	logic [4:0]sel;

	logic[31:0]o_sll;

	logic[31:0]o_sll_4;

	logic[31:0]o_sll_3;

	logic[31:0]o_sll_2;

	logic[31:0]o_sll_1;

	logic[31:0]o_sll_0;

	logic[31:0]i_sll_0;

	assign sel = i_op_b[4:0] ;

	assign i_sll_0 = {i_op_a[30:0],1'b0};

	//Tao bo barrel shifter

	mux_32_bit mux4(.sel(sel[4]) , .a(o_sll_3), .b({o_sll_3[15:0],16'b0}), .c(o_sll_4));

	mux_32_bit mux3(.sel(sel[3]) , .a(o_sll_2), .b({o_sll_2[23:0],8'b0}), .c(o_sll_3));

	mux_32_bit mux2(.sel(sel[2]) , .a(o_sll_1), .b({o_sll_1[27:0],4'b0}), .c(o_sll_2));

	mux_32_bit mux1(.sel(sel[1]) , .a(o_sll_0), .b({o_sll_0[29:0],2'b0}), .c(o_sll_1));

	mux_32_bit mux0(.sel(sel[0]) , .a(i_op_a), .b(i_sll_0), .c(o_sll_0));

	assign o_alu_data=o_sll_4;

	endmodule

	//Module SRA

	module sra(input logic[31:0]i_op_a,

	input logic[31:0]i_op_b,

	input logic [3:0]i_alu_op,

	output logic[31:0]o_alu_data);

	logic [4:0]sel;

	logic[31:0]o_sra_4;

	logic[31:0]o_sra_3;

	logic[31:0]o_sra_2;

	logic[31:0]o_sra_1;

	logic[31:0]o_sra_0;

	logic[31:0]i_sra_0;

	assign sel= i_op_b[4:0] ;

	assign i_sra_0 = {i_op_a[31],i_op_a[31:1]};

	mux_32_bit mux4(.sel(sel[4]) , .a(o_sra_3), .b({{16{i_op_a[31]}}, o_sra_3[31:16]}), .c(o_sra_4));

	mux_32_bit mux3(.sel(sel[3]) , .a(o_sra_2), .b({{8{i_op_a[31]}}, o_sra_2[31:8]}), .c(o_sra_3));

	mux_32_bit mux2(.sel(sel[2]) , .a(o_sra_1), .b({{4{i_op_a[31]}}, o_sra_1[31:4]}), .c(o_sra_2));

	mux_32_bit mux1(.sel(sel[1]) , .a(o_sra_0), .b({{2{i_op_a[31]}}, o_sra_0[31:2]}), .c(o_sra_1));

	mux_32_bit mux0(.sel(sel[0]) , .a(i_op_a), .b(i_sra_0), .c(o_sra_0));

	assign o_alu_data=o_sra_4;

	endmodule

module alu_official(input logic[31:0]i_op_a,

	input logic[31:0]i_op_b,

	input logic [3:0]i_alu_op,

	output logic[31:0]o_alu_data

	);

	logic [31:0]s;

	logic slt;

	logic sltu;

	//add sub slt sltu

   add_sub_bit alu_official_1(.i_op_a(i_op_a),.i_op_b(i_op_b),.i_alu_op(i_alu_op), .o_alu_data(s),.o_cout_data(sltu),.over_flow(slt ));

//AND or xor

logic [31:0]o_and;

logic [31:0]o_or;

logic [31:0]o_xor;

	AND_ALU alu_official_5(.i_op_a(i_op_a),.i_op_b(i_op_b),.i_alu_op(i_alu_op), .o_alu_data(o_and) );

	OR_ALU alu_official_6(.i_op_a(i_op_a),.i_op_b(i_op_b),.i_alu_op(i_alu_op), .o_alu_data(o_or) );

	XOR_ALU alu_official_7(.i_op_a(i_op_a),.i_op_b(i_op_b),.i_alu_op(i_alu_op), .o_alu_data(o_xor) );

// SRL SLL SRA

	logic [31:0]o_srl;

	logic [31:0]o_sll;

	logic [31:0]o_sra;

	srl alu_official_8(.i_op_a(i_op_a),.i_op_b(i_op_b),.i_alu_op(i_alu_op), .o_alu_data(o_srl) );

	sll alu_official_9(.i_op_a(i_op_a),.i_op_b(i_op_b),.i_alu_op(i_alu_op), .o_alu_data(o_sll) );

	sra alu_official_10(.i_op_a(i_op_a),.i_op_b(i_op_b),.i_alu_op(i_alu_op), .o_alu_data(o_sra) );

//Khai bao mux 16_to_1

	logic[31:0]o_mux_0;

	logic[31:0]o_mux_1;

	logic[31:0]o_mux_2;

	logic[31:0]o_mux_3;

	logic[31:0]o_mux_4;

	logic[31:0]o_mux_5;

	logic[31:0]o_mux_6;

	logic[31:0]o_mux_7;

	logic[31:0]o_mux_8;

	logic[31:0]o_mux_9;

	logic[31:0]o_mux_10;

	logic[31:0]o_mux_11;

	logic[31:0]o_mux_12;

	logic[31:0]o_mux_13;

	logic[31:0]o_mux_14;

	//Tao mux 16-1

	//Tang 1

	mux_32_bit mux_0( .sel(i_alu_op[0]) , .a(s) , .b(s), .c(o_mux_0) );

	mux_32_bit mux_1( .sel(i_alu_op[0]) , .a(o_sll) , .b({31'b0,slt}), .c(o_mux_1) );

	mux_32_bit mux_2( .sel(i_alu_op[0]) , .a({31'b0,sltu}) , .b(o_xor), .c(o_mux_2) );

	mux_32_bit mux_3( .sel(i_alu_op[0]) , .a(o_srl) , .b(o_sra), .c(o_mux_3) );

	mux_32_bit mux_4( .sel(i_alu_op[0]) , .a(o_or) , .b(o_and), .c(o_mux_4) );

	mux_32_bit mux_5( .sel(i_alu_op[0]) , .a(i_op_b) , .b({32{1'b0}}), .c(o_mux_5) );  //LUI

	mux_32_bit mux_6( .sel(i_alu_op[0]) , .a({32{1'b0}}) , .b({32{1'b0}}), .c(o_mux_6) );

	mux_32_bit mux_7( .sel(i_alu_op[0]) , .a({32{1'b0}}) , .b({32{1'b0}}), .c(o_mux_7) );

	//Tang 2

	mux_32_bit mux_8( .sel(i_alu_op[1]) , .a(o_mux_0) , .b(o_mux_1), .c(o_mux_8) );

	mux_32_bit mux_9( .sel(i_alu_op[1]) , .a(o_mux_2) , .b(o_mux_3), .c(o_mux_9) );

	mux_32_bit mux_10( .sel(i_alu_op[1]) , .a(o_mux_4) , .b(o_mux_5), .c(o_mux_10) );

	mux_32_bit mux_11( .sel(i_alu_op[1]) , .a(o_mux_6) , .b(o_mux_7), .c(o_mux_11) );

	//Tang 3

	mux_32_bit mux_12( .sel(i_alu_op[2]) , .a(o_mux_8) , .b(o_mux_9), .c(o_mux_12) );

	mux_32_bit mux_13( .sel(i_alu_op[2]) , .a(o_mux_10) , .b(o_mux_11), .c(o_mux_13) );

	//Tang 4

	mux_32_bit mux_14( .sel(i_alu_op[3]) , .a(o_mux_12) , .b(o_mux_13), .c(o_mux_14) );

	assign o_alu_data=o_mux_14;

endmodule

module imem (
    input  logic [31:0]pc,
    output logic [31:0] instr

);

    logic [31:0] mem [0:8190];

   initial begin

    $readmemh("./../02_test/isa_4b.hex",mem);
  end
	assign instr = mem[pc[12:2]];
endmodule

module ControlUnit (

    input logic[31:0] instr,

    input logic o_br_less,

    input logic o_br_equal,

    output logic pc_sel, i_rd_wren, insn_vld, i_br_un, opa_sel, opb_sel,

    output logic[3:0] i_alu_op,

    output logic i_wren,

    output logic[1:0] wb_sel,

    output logic[2:0] i_funct3

);

    logic [6:0] opcode;

    logic [2:0] funct3;

    logic [6:0] funct7;

    assign funct3 = instr[14:12];

    assign funct7 = instr[31:25];

    assign opcode = instr[6:0];

    always_comb begin

			pc_sel=0;

			i_rd_wren=0;

			insn_vld=0;

			i_br_un=0;

			opa_sel=0;

			opb_sel=0;

			i_wren=0;

			wb_sel=2'b11;

			i_funct3=3'b111;

        case (opcode)

        //------------------------------------------------------------------------------------------------------------------

        7'b0110011: begin   // R-type

            case (funct3)

                3'b000: begin

                    if (funct7[5])

                        i_alu_op = 4'b0001; // SUB

                    else

                        i_alu_op = 4'b0000; // ADD

                end

                3'b100: i_alu_op = 4'b0101 ; // XOR

                3'b110: i_alu_op = 4'b1000 ; // OR

                3'b111: i_alu_op = 4'b1001 ; // AND

                3'b001: i_alu_op = 4'b0010 ; // SLL

                3'b101: begin

                    if (funct7[5])

                        i_alu_op = 4'b0111 ; // SRA

                    else

                        i_alu_op = 4'b0110 ; // SRL

                end

                3'b010: i_alu_op = 4'b0011 ; // SLT

                3'b011: i_alu_op = 4'b0100 ; // SLTU

	default:i_alu_op=4'b1111;

            endcase

            pc_sel = 1'b0;

            i_rd_wren = 1'b1;

            opa_sel = 1'b0;

            opb_sel = 1'b0;

            i_wren = 1'b0;

            wb_sel = 2'b01;

        end

        //---------------------------------------------------------------------------------------------------------------

        7'b0010011: begin  // I-type

            case (funct3)

                3'b000: i_alu_op = 4'b0000 ; // ADDI

                3'b100: i_alu_op = 4'b0101 ; // XORI

                3'b110: i_alu_op = 4'b1000 ; // ORI

                3'b111: i_alu_op = 4'b1001 ; // ANDI

                3'b001: i_alu_op = 4'b0010 ; // SLLI

                3'b101: begin

                    if (funct7[5])

                        i_alu_op = 4'b0111 ; // SRAI

                    else

                        i_alu_op = 4'b0110 ; // SRLI

                end

                3'b010: i_alu_op = 4'b0011 ; // SLTI

                3'b011: i_alu_op = 4'b0100 ; // SLTIU

                default:i_alu_op=4'b1111;

            endcase

            pc_sel = 1'b0;

            i_rd_wren = 1'b1;

            opa_sel = 1'b0;

            opb_sel = 1'b1;

            i_wren = 1'b0;

            wb_sel = 2'b01;

        end

//------------------------------------------------------------------------------------------------------------------

        7'b0000011: begin // LOAD

            pc_sel = 1'b0;

            i_rd_wren = 1'b1;

            opa_sel = 1'b0;

            opb_sel = 1'b1;

            i_alu_op = 4'b0000 ; // ADD for address calculation

            i_wren = 1'b0;

            wb_sel = 2'b00;

            case (funct3)

                3'b000: i_funct3 = 3'b000 ; // LB

                3'b001: i_funct3 = 3'b001 ; // LH

                3'b010: i_funct3 = 3'b010 ; // LW

                3'b100: i_funct3 = 3'b100 ; // LBU

                3'b101: i_funct3 = 3'b101 ; // LHU

		default:i_funct3=3'b111;

            endcase

        end

//------------------------------------------------------------------------------------------------------------------

        7'b0100011: begin // STORE

            pc_sel = 1'b0;

            i_rd_wren = 1'b0;

            opa_sel = 1'b0;

            opb_sel = 1'b1;

            i_alu_op = 4'b0000 ; // ADD for address calculation

            i_wren = 1'b1;

            wb_sel = 2'b11;

            case (funct3)

                3'b000: i_funct3 = 3'b000 ; // SB

                3'b001: i_funct3 = 3'b001 ; // SH

                3'b010: i_funct3 = 3'b010 ; // SW
                default:i_funct3=3'b111;

            endcase

        end

//------------------------------------------------------------------------------------------------------------------

        7'b1100011: begin // BRANCH

		i_br_un=funct3[1];

		i_alu_op=4'b0000;

		i_rd_wren=1'b0;

		opa_sel=1'b1;

		opb_sel=1'b1;

		i_wren=1'b0;

		wb_sel=2'b01;

            case (funct3)

                3'b000: pc_sel = o_br_equal; //beq

                3'b001: pc_sel = ~o_br_equal; //bne

                3'b100: pc_sel =o_br_less; //blt(sign)

                3'b101: pc_sel=~o_br_less; //bge(sign)

                3'b110: pc_sel=o_br_less; //gltu(unsign)

                3'b111: pc_sel=~o_br_less; //bgeu(unsign)

		default: pc_sel=1'b0;

            endcase

        end

//------------------------------------------------------------------------------------------------------------------

        7'b1101111: begin // JAL

            pc_sel = 1'b1;

            opa_sel = 1'b1;

            opb_sel = 1'b1;

            i_alu_op = 4'b0000 ; // ADD for address calculation

            i_rd_wren = 1'b1;

            i_wren = 1'b0;

            wb_sel = 2'b10;

        end

//------------------------------------------------------------------------------------------------------------------

        7'b1100111: begin // JALR

            pc_sel = 1'b1;

            opa_sel = 1'b0;

            opb_sel = 1'b1;

            i_alu_op = 4'b0000 ; // ADD for address calculation

            i_rd_wren = 1'b1;

            i_wren = 1'b0;

            wb_sel = 2'b10;

        end

//------------------------------------------------------------------------------------------------------------------

        7'b0010111: begin // AUIPC

            pc_sel = 1'b0;

            opa_sel = 1'b1;

            opb_sel = 1'b1;

            i_alu_op = 4'b0000 ; // ADD

            i_rd_wren = 1'b1;

            i_wren = 1'b0;

            wb_sel = 2'b01;

        end

//------------------------------------------------------------------------------------------------------------------

        7'b0110111: begin // LUI

            pc_sel = 1'b0;

            opa_sel = 1'b0;

            opb_sel = 1'b1;

            i_alu_op = 4'b1010 ;

            i_rd_wren = 1'b1;

            i_wren = 1'b0;

            wb_sel = 2'b01;

        end

        		default: begin

		  pc_sel   = 1'b0 ;

		  i_rd_wren  = 1'b0 ;

		  opa_sel  = 1'b0 ;

		  opb_sel  = 1'b0 ;

		  i_wren = 1'b0 ;

		 wb_sel   = 2'b01;

		  insn_vld = 1'b0 ;

		  end

        endcase

    end

endmodule

module mux_2_1_brc(
    input logic a,
    input logic b,
    input logic sel,
    output logic c
);
    assign c=(sel)? b:a;
endmodule

module brc

(

	input logic [31:0] i_rs1_data,

	input logic [31:0] i_rs2_data,

	input logic i_br_un,

	output logic o_br_less,

	output logic o_br_equal

);

//So sanh Bang

logic[31:0]equal;

logic tong_or;

assign equal=(~i_rs1_data & i_rs2_data) | (i_rs1_data & ~i_rs2_data);

assign tong_or= equal[0]|equal[1]|equal[2]|equal[3]|equal[4]|equal[5]|equal[6]|equal[7]|equal[8]|equal[9]|equal[10]|equal[11]|equal[12]|equal[13]|equal[14]|equal[15]|equal[16]|equal[17]|equal[18]|equal[19]|equal[20]|equal[21]|equal[22]|equal[23]|equal[24]|equal[25]|equal[26]|equal[27]|equal[28]|equal[29]|equal[30]|equal[31];

assign o_br_equal=~tong_or;

//So sanh nho hon

	logic cstart;

	assign cstart=1'b1;

	logic [31:0] s;

	logic [31:0] cout;

	logic signed_signal;

	logic unsign_singal;

full_adder fa_0  (.a(i_rs1_data[0]),  .b(~i_rs2_data[0]), .cin(cstart),    .s(s[0]),  .cout(cout[0]));

full_adder fa_1  (.a(i_rs1_data[1]),  .b(~i_rs2_data[1]), .cin(cout[0]),   .s(s[1]),  .cout(cout[1]));

full_adder fa_2  (.a(i_rs1_data[2]),  .b(~i_rs2_data[2]), .cin(cout[1]),   .s(s[2]),  .cout(cout[2]));

full_adder fa_3  (.a(i_rs1_data[3]),  .b(~i_rs2_data[3]), .cin(cout[2]),   .s(s[3]),  .cout(cout[3]));

full_adder fa_4  (.a(i_rs1_data[4]),  .b(~i_rs2_data[4]), .cin(cout[3]),   .s(s[4]),  .cout(cout[4]));

full_adder fa_5  (.a(i_rs1_data[5]),  .b(~i_rs2_data[5]), .cin(cout[4]),   .s(s[5]),  .cout(cout[5]));

full_adder fa_6  (.a(i_rs1_data[6]),  .b(~i_rs2_data[6]), .cin(cout[5]),   .s(s[6]),  .cout(cout[6]));

full_adder fa_7  (.a(i_rs1_data[7]),  .b(~i_rs2_data[7]), .cin(cout[6]),   .s(s[7]),  .cout(cout[7]));

full_adder fa_8  (.a(i_rs1_data[8]),  .b(~i_rs2_data[8]), .cin(cout[7]),   .s(s[8]),  .cout(cout[8]));

full_adder fa_9  (.a(i_rs1_data[9]),  .b(~i_rs2_data[9]), .cin(cout[8]),   .s(s[9]),  .cout(cout[9]));

full_adder fa_10 (.a(i_rs1_data[10]), .b(~i_rs2_data[10]), .cin(cout[9]),  .s(s[10]), .cout(cout[10]));

full_adder fa_11 (.a(i_rs1_data[11]), .b(~i_rs2_data[11]), .cin(cout[10]), .s(s[11]), .cout(cout[11]));

full_adder fa_12 (.a(i_rs1_data[12]), .b(~i_rs2_data[12]), .cin(cout[11]), .s(s[12]), .cout(cout[12]));

full_adder fa_13 (.a(i_rs1_data[13]), .b(~i_rs2_data[13]), .cin(cout[12]), .s(s[13]), .cout(cout[13]));

full_adder fa_14 (.a(i_rs1_data[14]), .b(~i_rs2_data[14]), .cin(cout[13]), .s(s[14]), .cout(cout[14]));

full_adder fa_15 (.a(i_rs1_data[15]), .b(~i_rs2_data[15]), .cin(cout[14]), .s(s[15]), .cout(cout[15]));

full_adder fa_16 (.a(i_rs1_data[16]), .b(~i_rs2_data[16]), .cin(cout[15]), .s(s[16]), .cout(cout[16]));

full_adder fa_17 (.a(i_rs1_data[17]), .b(~i_rs2_data[17]), .cin(cout[16]), .s(s[17]), .cout(cout[17]));

full_adder fa_18 (.a(i_rs1_data[18]), .b(~i_rs2_data[18]), .cin(cout[17]), .s(s[18]), .cout(cout[18]));

full_adder fa_19 (.a(i_rs1_data[19]), .b(~i_rs2_data[19]), .cin(cout[18]), .s(s[19]), .cout(cout[19]));

full_adder fa_20 (.a(i_rs1_data[20]), .b(~i_rs2_data[20]), .cin(cout[19]), .s(s[20]), .cout(cout[20]));

full_adder fa_21 (.a(i_rs1_data[21]), .b(~i_rs2_data[21]), .cin(cout[20]), .s(s[21]), .cout(cout[21]));

full_adder fa_22 (.a(i_rs1_data[22]), .b(~i_rs2_data[22]), .cin(cout[21]), .s(s[22]), .cout(cout[22]));

full_adder fa_23 (.a(i_rs1_data[23]), .b(~i_rs2_data[23]), .cin(cout[22]), .s(s[23]), .cout(cout[23]));

full_adder fa_24 (.a(i_rs1_data[24]), .b(~i_rs2_data[24]), .cin(cout[23]), .s(s[24]), .cout(cout[24]));

full_adder fa_25 (.a(i_rs1_data[25]), .b(~i_rs2_data[25]), .cin(cout[24]), .s(s[25]), .cout(cout[25]));

full_adder fa_26 (.a(i_rs1_data[26]), .b(~i_rs2_data[26]), .cin(cout[25]), .s(s[26]), .cout(cout[26]));

full_adder fa_27 (.a(i_rs1_data[27]), .b(~i_rs2_data[27]), .cin(cout[26]), .s(s[27]), .cout(cout[27]));

full_adder fa_28 (.a(i_rs1_data[28]), .b(~i_rs2_data[28]), .cin(cout[27]), .s(s[28]), .cout(cout[28]));

full_adder fa_29 (.a(i_rs1_data[29]), .b(~i_rs2_data[29]), .cin(cout[28]), .s(s[29]), .cout(cout[29]));

full_adder fa_30 (.a(i_rs1_data[30]), .b(~i_rs2_data[30]), .cin(cout[29]), .s(s[30]), .cout(cout[30]));

full_adder fa_31 (.a(i_rs1_data[31]), .b(~i_rs2_data[31]), .cin(cout[30]), .s(s[31]), .cout(cout[31]));

	assign unsign_singal=~cout[31];

	assign signed_signal=~s[31]&~cout[30]&cout[31] | ~s[31]&cout[30]&~cout[31] | s[31]&~cout[30]&~cout[31] | s[31]&cout[30]&cout[31];

	mux_2_1_brc mux_brc_less(.a(unsign_singal),.b(signed_signal),.sel(i_br_un),.c(o_br_less));

endmodule

module ImmGen (

    input logic[31:0] instr,

    output logic[31:0]o_ImmGen

);

logic [6:0] opcode;

assign opcode = instr[6:0];

always_comb begin

    case (opcode)

        7'b0010011  : o_ImmGen={{21{instr[31]}},instr[30:20]};   //I type

        7'b0000011  : o_ImmGen={{21{instr[31]}},instr[30:20]};   //Lenh Load

        7'b0100011  : o_ImmGen={{20{instr[31]}},instr[31:25],instr[11:7]};  //S type

        7'b1100011  : o_ImmGen={{20{instr[31]}},instr[7],instr[30:25],instr[11:8],1'b0}; //B type

        7'b1101111  : o_ImmGen={{12{instr[31]}},instr[19:12],instr[20],instr[30:21],1'b0}; //J type

        7'b0110111: o_ImmGen={instr[31:12],12'b0}; //U type

                   7'b0010111 : o_ImmGen={instr[31:12],12'b0}; //U type

        7'b1100111: o_ImmGen={{21{instr[31]}},instr[30:20]}; //JALR

        default: o_ImmGen=32'b0;

    endcase

end

endmodule

module o_insn_vld (

    input  logic  insn_vld,

    output logic  o_insn_vld,

    input  logic        i_clk,

    input  logic        i_reset

);

    always_ff @(posedge i_clk) begin

        if (i_reset)

            o_insn_vld <= 1'b0;

        else

            o_insn_vld <= insn_vld;

    end

endmodule

module o_pc_debug (

    input  logic [31:0] pc,

    output logic [31:0] o_pc_debug,

    input  logic        i_clk,

    input  logic        i_reset

);

    always_ff @(posedge i_clk) begin

        if (i_reset)

            o_pc_debug <= 32'd0;

        else

            o_pc_debug <= pc;

    end

endmodule

module operand_a (

    input logic[31:0]pc,

    input logic[31:0]o_rs1_data,

    input logic opa_sel,

    output logic [31:0]i_op_a

);

    assign i_op_a=(opa_sel)? pc : o_rs1_data; // 1: pc   0:o_rs1_data

endmodule

module operand_b (

    input logic[31:0]o_ImmGen,

    input logic[31:0]o_rs2_data,

    input logic opb_sel,

    output logic [31:0]i_op_b

);

    assign i_op_b=(opb_sel)? o_ImmGen : o_rs2_data; // 1: imm   0:o_rs2_data

endmodule

// Phep cong va tru (Full Adder 1 bit)

module full_adder_pc(

    input  logic a, b, cin,

    output logic cout, s

);

    assign s    = (~a & ~b & cin) | (~a & b & ~cin) | (a & ~b & ~cin) | (a & b & cin);

    assign cout = (a & b) | (cin & a) | (cin & b);

endmodule

// Module cong 32 bit: pc + 4

module add_pc(

    input  logic [31:0] pc,

    output logic [31:0] pc_four

);

    logic cstart;

    logic [31:0] s;

    logic [31:0] cout;

    logic[31:0] i_op_b=32'd4;

    assign cstart   = 1'b0;

    // Tạo chuỗi 32 full adder (ripple carry adder)

    full_adder_pc fa_pc0  (.a(pc[0]),  .b(i_op_b[0]),  .cin(cstart),   .s(s[0]),  .cout(cout[0]));

    full_adder_pc fa_pc1  (.a(pc[1]),  .b(i_op_b[1]),  .cin(cout[0]),  .s(s[1]),  .cout(cout[1]));

    full_adder_pc fa_pc2  (.a(pc[2]),  .b(i_op_b[2]),  .cin(cout[1]),  .s(s[2]),  .cout(cout[2]));

    full_adder_pc fa_pc3  (.a(pc[3]),  .b(i_op_b[3]),  .cin(cout[2]),  .s(s[3]),  .cout(cout[3]));

    full_adder_pc fa_pc4  (.a(pc[4]),  .b(i_op_b[4]),  .cin(cout[3]),  .s(s[4]),  .cout(cout[4]));

    full_adder_pc fa_pc5  (.a(pc[5]),  .b(i_op_b[5]),  .cin(cout[4]),  .s(s[5]),  .cout(cout[5]));

    full_adder_pc fa_pc6  (.a(pc[6]),  .b(i_op_b[6]),  .cin(cout[5]),  .s(s[6]),  .cout(cout[6]));

    full_adder_pc fa_pc7  (.a(pc[7]),  .b(i_op_b[7]),  .cin(cout[6]),  .s(s[7]),  .cout(cout[7]));

    full_adder_pc fa_pc8  (.a(pc[8]),  .b(i_op_b[8]),  .cin(cout[7]),  .s(s[8]),  .cout(cout[8]));

    full_adder_pc fa_pc9  (.a(pc[9]),  .b(i_op_b[9]),  .cin(cout[8]),  .s(s[9]),  .cout(cout[9]));

    full_adder_pc fa_pc10 (.a(pc[10]), .b(i_op_b[10]), .cin(cout[9]),  .s(s[10]), .cout(cout[10]));

    full_adder_pc fa_pc11 (.a(pc[11]), .b(i_op_b[11]), .cin(cout[10]), .s(s[11]), .cout(cout[11]));

    full_adder_pc fa_pc12 (.a(pc[12]), .b(i_op_b[12]), .cin(cout[11]), .s(s[12]), .cout(cout[12]));

    full_adder_pc fa_pc13 (.a(pc[13]), .b(i_op_b[13]), .cin(cout[12]), .s(s[13]), .cout(cout[13]));

    full_adder_pc fa_pc14 (.a(pc[14]), .b(i_op_b[14]), .cin(cout[13]), .s(s[14]), .cout(cout[14]));

    full_adder_pc fa_pc15 (.a(pc[15]), .b(i_op_b[15]), .cin(cout[14]), .s(s[15]), .cout(cout[15]));

    full_adder_pc fa_pc16 (.a(pc[16]), .b(i_op_b[16]), .cin(cout[15]), .s(s[16]), .cout(cout[16]));

    full_adder_pc fa_pc17 (.a(pc[17]), .b(i_op_b[17]), .cin(cout[16]), .s(s[17]), .cout(cout[17]));

    full_adder_pc fa_pc18 (.a(pc[18]), .b(i_op_b[18]), .cin(cout[17]), .s(s[18]), .cout(cout[18]));

    full_adder_pc fa_pc19 (.a(pc[19]), .b(i_op_b[19]), .cin(cout[18]), .s(s[19]), .cout(cout[19]));

    full_adder_pc fa_pc20 (.a(pc[20]), .b(i_op_b[20]), .cin(cout[19]), .s(s[20]), .cout(cout[20]));

    full_adder_pc fa_pc21 (.a(pc[21]), .b(i_op_b[21]), .cin(cout[20]), .s(s[21]), .cout(cout[21]));

    full_adder_pc fa_pc22 (.a(pc[22]), .b(i_op_b[22]), .cin(cout[21]), .s(s[22]), .cout(cout[22]));

    full_adder_pc fa_pc23 (.a(pc[23]), .b(i_op_b[23]), .cin(cout[22]), .s(s[23]), .cout(cout[23]));

    full_adder_pc fa_pc24 (.a(pc[24]), .b(i_op_b[24]), .cin(cout[23]), .s(s[24]), .cout(cout[24]));

    full_adder_pc fa_pc25 (.a(pc[25]), .b(i_op_b[25]), .cin(cout[24]), .s(s[25]), .cout(cout[25]));

    full_adder_pc fa_pc26 (.a(pc[26]), .b(i_op_b[26]), .cin(cout[25]), .s(s[26]), .cout(cout[26]));

    full_adder_pc fa_pc27 (.a(pc[27]), .b(i_op_b[27]), .cin(cout[26]), .s(s[27]), .cout(cout[27]));

    full_adder_pc fa_pc28 (.a(pc[28]), .b(i_op_b[28]), .cin(cout[27]), .s(s[28]), .cout(cout[28]));

    full_adder_pc fa_pc29 (.a(pc[29]), .b(i_op_b[29]), .cin(cout[28]), .s(s[29]), .cout(cout[29]));

    full_adder_pc fa_pc30 (.a(pc[30]), .b(i_op_b[30]), .cin(cout[29]), .s(s[30]), .cout(cout[30]));

    full_adder_pc fa_pc31 (.a(pc[31]), .b(i_op_b[31]), .cin(cout[30]), .s(s[31]), .cout(cout[31]));

    assign pc_four = s;

endmodule

module pc_plus_4 (

    input logic [31:0]pc,

    output logic[31:0]pc_four

);

add_pc pc_plus_4(.pc(pc),.pc_four(pc_four));

endmodule

module pc_reg (

    input logic i_clk,i_reset,

    input logic[31:0] pc_next,

    output logic[31:0] pc

);

    always_ff @(posedge i_clk) begin

        if(i_reset)begin

	 pc <= 32'b0;

		end

        else pc <= pc_next;

    end

endmodule

module mux_32_bit_pc(

input logic [31:0]a,

input logic [31:0]b,

input logic sel,

output logic [31:0]c);

	assign c=(sel) ? b : a;

endmodule

module pc_sel (

    input logic pc_sel,

    input logic[31:0]o_alu_data,

    input logic[31:0]pc_four,

    output logic[31:0]pc_next

);

    mux_32_bit_pc pc_sel_1(.sel(pc_sel), .a(pc_four) , .b(o_alu_data) , .c(pc_next)); //0: pc_four  1: o_alu_data

endmodule

//Mux 2 sang 1 ngo vao 32 bit

	module mux_32_bit_regfile(

	input logic [31:0]a,

	input logic [31:0]b,

	input logic sel,

	output logic [31:0]c);

	assign c = (sel)?  b:a;

    endmodule

//-------------------------DECODER 5 SANG 32--------------------------------------

module decoder_5_to_32 (

    input logic [4:0]sel,

    input en,

    output logic D[31:0]

    );

    assign D[0] = en & (~sel[0] & ~sel[1] & ~sel[2] & ~sel[3] & ~sel[4]);

    assign D[1] = en & (sel[0] & ~sel[1] & ~sel[2] & ~sel[3] & ~sel[4]);

    assign D[2] = en & (~sel[0] & sel[1] & ~sel[2] & ~sel[3] & ~sel[4]);

    assign D[3] = en & (sel[0] & sel[1] & ~sel[2] & ~sel[3] & ~sel[4]);

    assign D[4] = en & (~sel[0] & ~sel[1] & sel[2] & ~sel[3] & ~sel[4]);

    assign D[5] = en & (sel[0] & ~sel[1] & sel[2] & ~sel[3] & ~sel[4]);

    assign D[6] = en & (~sel[0] & sel[1] & sel[2] & ~sel[3] & ~sel[4]);

    assign D[7] = en & (sel[0] & sel[1] & sel[2] & ~sel[3] & ~sel[4]);

    assign D[8] = en & (~sel[0] & ~sel[1] & ~sel[2] & sel[3] & ~sel[4]);

    assign D[9] = en & (sel[0] & ~sel[1] & ~sel[2] & sel[3] & ~sel[4]);

    assign D[10] = en & (~sel[0] & sel[1] & ~sel[2] & sel[3] & ~sel[4]);

    assign D[11] = en & (sel[0] & sel[1] & ~sel[2] & sel[3] & ~sel[4]);

    assign D[12] = en & (~sel[0] & ~sel[1] & sel[2] & sel[3] & ~sel[4]);

    assign D[13] = en & (sel[0] & ~sel[1] & sel[2] & sel[3] & ~sel[4]);

    assign D[14] = en & (~sel[0] & sel[1] & sel[2] & sel[3] & ~sel[4]);

    assign D[15] = en & (sel[0] & sel[1] & sel[2] & sel[3] & ~sel[4]);

    assign D[16] = en & (~sel[0] & ~sel[1] & ~sel[2] & ~sel[3] & sel[4]);

    assign D[17] = en & (sel[0] & ~sel[1] & ~sel[2] & ~sel[3] & sel[4]);

    assign D[18] = en & (~sel[0] & sel[1] & ~sel[2] & ~sel[3] & sel[4]);

    assign D[19] = en & (sel[0] & sel[1] & ~sel[2] & ~sel[3] & sel[4]);

    assign D[20] = en & (~sel[0] & ~sel[1] & sel[2] & ~sel[3] & sel[4]);

    assign D[21] = en & (sel[0] & ~sel[1] & sel[2] & ~sel[3] & sel[4]);

    assign D[22] = en & (~sel[0] & sel[1] & sel[2] & ~sel[3] & sel[4]);

    assign D[23] = en & (sel[0] & sel[1] & sel[2] & ~sel[3] & sel[4]);

    assign D[24] = en & (~sel[0] & ~sel[1] & ~sel[2] & sel[3] & sel[4]);

    assign D[25] = en & (sel[0] & ~sel[1] & ~sel[2] & sel[3] & sel[4]);

    assign D[26] = en & (~sel[0] & sel[1] & ~sel[2] & sel[3] & sel[4]);

    assign D[27] = en & (sel[0] & sel[1] & ~sel[2] & sel[3] & sel[4]);

    assign D[28] = en & (~sel[0] & ~sel[1] & sel[2] & sel[3] & sel[4]);

    assign D[29] = en & (sel[0] & ~sel[1] & sel[2] & sel[3] & sel[4]);

    assign D[30] = en & (~sel[0] & sel[1] & sel[2] & sel[3] & sel[4]);

    assign D[31] = en & (sel[0] & sel[1] & sel[2] & sel[3] & sel[4]);

    endmodule

//-------------------------------------------------------------------------------

//----------------------Mux 32 sang 1---------------------------------------------

    module mux_32_to_1 (

        input logic [31:0] reg_array[31:0],

        input logic [4:0]sel,

        output logic[31:0] o_mux_32_to_1

     );

     logic[31:0] out_level_1[15:0];

     logic[31:0] out_level_2[7:0];

     logic[31:0] out_level_3[4:0];

     logic[31:0] out_level_4[1:0];

     //Tang 1

        genvar i;

    generate

        for (i =0 ;i<16 ;i++ ) begin : mux_level_1

            mux_32_bit_regfile mux_inst(.a(reg_array[i*2]),.b(reg_array[i*2+1]),.sel(sel[0]),.c(out_level_1[i]));

        end

    endgenerate

    //Tang 2

    generate

        for (i =0 ;i<8 ; i++) begin : mux_level_2

            mux_32_bit_regfile mux_inst(.a(out_level_1[i*2]),.b(out_level_1[2*i+1]),.sel(sel[1]),.c(out_level_2[i]));

        end

    endgenerate

    //Tang 3

    generate

        for (i =0 ;i<4 ;i++) begin: mux_level_3

           mux_32_bit_regfile mux_inst(.a(out_level_2[2*i]),.b(out_level_2[i*2+1]),.sel(sel[2]),.c(out_level_3[i]));

        end

    endgenerate

    //Tang 4

    generate

        for (i =0 ;i<2 ;i++ ) begin : mux_level_4

            mux_32_bit_regfile mux_inst(.a(out_level_3[2*i]),.b(out_level_3[2*i+1]),.sel(sel[3]),.c(out_level_4[i]));

        end

    endgenerate

    //Tang 5

        mux_32_bit_regfile mux_end(.a(out_level_4[0]),.b(out_level_4[1]),.sel(sel[4]),.c(o_mux_32_to_1));

    endmodule

//--------------------------------------------------------------------------------------------------------------------------------

//----------------------------------------------------Module regfile chinh------------------------------------------------------

module regfile(

    input logic i_clk,i_reset,i_rd_wren,

    input logic[4:0]i_rs1_addr,

    input logic[4:0]i_rs2_addr,

    output logic [31:0]o_rs1_data,

    output logic [31:0]o_rs2_data,

    input logic[4:0] i_rd_addr,

    input logic [31:0]i_rd_data

);

// storage registers chỉ cho 1..31

logic [31:0] reg_array_reg [31:1];

// external view: reg_array[0] luôn 0, others map tới reg_array_reg

wire  [31:0] reg_array [31:0];

assign reg_array[0] = 32'b0;

genvar gi;

generate

    for (gi = 1; gi < 32; gi = gi + 1) begin : reg_map

        assign reg_array[gi] = reg_array_reg[gi];

    end

endgenerate

logic D[31:0];

integer i;

//Doc rs1 va rs 2

mux_32_to_1 rs_1(.reg_array(reg_array),.sel(i_rs1_addr),.o_mux_32_to_1(o_rs1_data));

mux_32_to_1 rs_2(.reg_array(reg_array),.sel(i_rs2_addr),.o_mux_32_to_1(o_rs2_data));

//------------------------------------------

decoder_5_to_32 reg_file(.en(i_rd_wren),.D(D),.sel(i_rd_addr)); //D[i] la cac  enable duoc chuyen tu chan i_rd_wren

// always_ff chỉ cập nhật storage reg_array_reg[1..31]

always_ff @(posedge i_clk) begin

    if (i_reset) begin

        for (i = 1; i < 32; i = i + 1) begin

            reg_array_reg[i] <= 32'b0;

        end

    end else begin

        if (i_rd_wren) begin

            for (i = 1; i < 32; i = i + 1) begin

                if (D[i]) reg_array_reg[i] <= i_rd_data;

            end

        end

    end

end

endmodule

//================ MUX 2:1 ==================

module mux_wb_sel_2_to_1(

    input  logic [31:0] a,

    input  logic [31:0] b,

    input  logic        sel,

    output logic [31:0] c

);

    assign c = (sel) ? b : a;

endmodule

//================ MUX 4:1 ==================

module mux_wb_sel_4_to_1 (

    input  logic [31:0] a [3:0],

    input  logic [1:0]  sel,

    output logic [31:0] o_sel_mux

);

    logic [31:0] level1_out_0;

    logic [31:0] level1_out_1;

    // Tầng 1: chọn giữa (a0,a1) và (a2,a3)

    mux_wb_sel_2_to_1 MUX_A (

        .a(a[0]),

        .b(a[1]),

        .sel(sel[0]),

        .c(level1_out_0)

    );

    mux_wb_sel_2_to_1 MUX_B (

        .a(a[2]),

        .b(a[3]),

        .sel(sel[0]),

        .c(level1_out_1)

    );

    // Tầng 2: chọn giữa hai kết quả trung gian

    mux_wb_sel_2_to_1 MUX_C (

        .a(level1_out_0),

        .b(level1_out_1),

        .sel(sel[1]),

        .c(o_sel_mux)

    );

endmodule

//================ WB DATA ==================

module wb_data (

    input  logic [31:0] pc_four,

    input  logic [31:0] o_alu_data,

    input  logic [31:0] o_ld_data,

    output logic [31:0] o_wb_data,

    input  logic [1:0]  wb_sel

);

    logic [31:0] a [3:0];

    // Gán dữ liệu vào mảng a

    assign a[0] = o_ld_data;

    assign a[1] = o_alu_data;

    assign a[2] = pc_four;

    assign a[3] = 32'b0;

    // Gọi MUX 4:1

    mux_wb_sel_4_to_1 u_mux_wb4 (

        .a(a),

        .sel(wb_sel),

        .o_sel_mux(o_wb_data)

    );

endmodule

module lsu
(
	input logic i_clk,
	input logic i_reset,
	input logic [31:0] i_lsu_addr,
	input logic [31:0] i_st_data,
	input logic i_lsu_wren,
	input logic [31:0] i_io_sw,
	input logic [2:0] i_funct3,
	output logic [31:0] o_ld_data,
	output logic [31:0] o_io_ledr,
	output logic [31:0] o_io_ledg
);

	logic [31:0] input_buffer;
	logic [31:0] output_buffer_ledr;
	logic [31:0] output_buffer_ledg;

	logic mem, rser_1, led_r, led_g, switch, rser_2;

	assign o_io_ledr = output_buffer_ledr;
	assign o_io_ledg = output_buffer_ledg;

	assign mem = ~i_lsu_addr[28] & ~(|i_lsu_addr[27:16]) & ~(|i_lsu_addr[15:12]) & ~i_lsu_addr[11];
	assign rser_1 = ~i_lsu_addr[28] & ((|i_lsu_addr[27:16]) | (|i_lsu_addr[15:12]) | i_lsu_addr[11]);
	assign led_r = i_lsu_addr[28] & ~(|i_lsu_addr[27:12]);
	assign led_g = i_lsu_addr[28] & ~(|i_lsu_addr[27:13]) & i_lsu_addr[12];
	assign switch = i_lsu_addr[28] & ~(|i_lsu_addr[27:17]) & i_lsu_addr[16] & ~(|i_lsu_addr[15:12]);
	assign rser_2 = ~mem & ~rser_1 & ~led_r & ~led_g & ~switch;
	logic [5:0] select;
	assign select = {mem, rser_1, led_r, led_g, switch, rser_2};

	logic [31:0] read_data;
	logic [3:0] bmask;
	logic [31:0] data_write;
memory inst
(
	.i_clk(i_clk),
	.i_reset(i_reset),
	.addr(i_lsu_addr[10:2]),			    // 512 địa chỉ (0 đến 511)
	.i_wdata(data_write),		    // Dữ liệu ghi 32 bit
	.i_bmask(bmask),		    // Byte Mask (4 bit)
	.i_wren(i_lsu_wren),			    // Kích hoạt ghi
	.o_rdata(read_data)
);
	always_comb begin											//Hệ tổ hợp dùng để đọc ra load_data và tạo ra biến điều khiển cho hệ tuần tự ghi
		case(select)
			6'b100_000: begin									//MEM
				case(i_funct3)
					3'b010: begin								//LW
						o_ld_data = read_data;
					end
					3'b001: begin								//LH
						case(i_lsu_addr[1])
							1'b0: begin
								o_ld_data = {{16{read_data[15]}},read_data[15:0]};
							end
							1'b1: begin
								o_ld_data = {{16{read_data[31]}},read_data[31:16]};
							end
						endcase
					end
					3'b000: begin								//LB
						case(i_lsu_addr[1:0])
							2'b00: begin
								o_ld_data = {{24{read_data[7]}},read_data[7:0]};
							end
							2'b01: begin
								o_ld_data = {{24{read_data[15]}},read_data[15:8]};
							end
							2'b10: begin
								o_ld_data = {{24{read_data[23]}},read_data[23:16]};
							end
							2'b11: begin
								o_ld_data = {{24{read_data[31]}},read_data[31:24]};
							end
						endcase
					end
					3'b101: begin								//LHU
						case(i_lsu_addr[1])
							1'b0: begin
								o_ld_data = {16'd0,read_data[15:0]};
							end
							1'b1: begin
								o_ld_data = {16'd0,read_data[31:16]};
							end
						endcase
					end
					3'b100: begin								//LBU
						case(i_lsu_addr[1:0])
							2'b00: begin
								o_ld_data = {24'd0,read_data[7:0]};
							end
							2'b01: begin
								o_ld_data = {24'd0,read_data[15:8]};
							end
							2'b10: begin
								o_ld_data = {24'd0,read_data[23:16]};
							end
							2'b11: begin
								o_ld_data = {24'd0,read_data[31:24]};
							end
						endcase
					end
					default: begin
						o_ld_data = read_data;
					end
				endcase
			end
			6'b010_000: begin									//RESERVED1
				o_ld_data = 32'd0;
			end
			6'b001_000: begin									//LED_RED
				o_ld_data = output_buffer_ledr;
			end
			6'b000_100: begin									//LED_GREEN
				o_ld_data = output_buffer_ledg;
			end
			6'b000_010: begin									//SWITCHES
				o_ld_data = input_buffer;
			end
			6'b000_001: begin									//RESERVED2
				o_ld_data = 32'd0;
			end
			default: begin
				o_ld_data = 32'd0;
			end
		endcase
	end

	always_comb begin
		if(i_lsu_wren) begin
				if(mem) begin
					case(i_funct3)
						3'b000: begin										//SB
							case(i_lsu_addr[1:0])
								2'b00: begin
									data_write = {24'b0, i_st_data[7:0]};
									bmask = 4'b0001;
								end
								2'b01: begin
									data_write = {16'b0, i_st_data[7:0], 8'b0};
									bmask = 4'b0010;
								end
								2'b10: begin
									data_write = {8'b0, i_st_data[7:0], 16'b0};
									bmask = 4'b0100;
								end
								2'b11: begin
									data_write = {i_st_data[7:0], 24'b0};
									bmask = 4'b1000;
								end
							endcase
						end
						3'b001: begin										//SH
							case(i_lsu_addr[1])
								1'b0: begin
									data_write = {16'b0, i_st_data[15:0]};
									bmask = 4'b0011;
								end
								1'b1: begin
									data_write = {i_st_data[15:0], 16'b0};
									bmask = 4'b1100;
								end
							endcase
						end
						3'b010: begin										//SW
							data_write = i_st_data;
							bmask = 4'b1111;
						end
						default: begin
							data_write = i_st_data;
							bmask = 4'b1111;
						end
					endcase
				end
				else begin
					data_write = 32'b0;
					bmask = 4'b0000;
				end
			end
			else begin
				data_write = 32'b0;
				bmask = 4'b0000;
			end
	end

	always @ (posedge i_clk ) begin		//Hệ tuần tự dùng để ghi
		if(i_reset) begin
			output_buffer_ledr <= 32'd0;
			output_buffer_ledg <= 32'd0;
		end
		else begin
			input_buffer <= i_io_sw;
			if(i_lsu_wren) begin
				if(led_r) begin
					output_buffer_ledr <= i_st_data;
				end
				else if(led_g) begin
					output_buffer_ledg <= i_st_data;
				end
			end
		end
	end
endmodule

module memory
(
	input i_clk,
	input i_reset,
	input [8:0] addr,			    // 512 địa chỉ (0 đến 511)
	input [31:0] i_wdata,		    // Dữ liệu ghi 32 bit
	input [3:0] i_bmask,		    // Byte Mask (4 bit)
	input i_wren,			    // Kích hoạt ghi
	output [31:0] o_rdata
);
        reg [7:0] dmem0 [0:511];
        reg [7:0] dmem1 [0:511];
        reg [7:0] dmem2 [0:511];
        reg [7:0] dmem3 [0:511];

	assign o_rdata = {dmem3[addr], dmem2[addr], dmem1[addr], dmem0[addr]};

	always @ (posedge i_clk) begin
		if(i_reset) begin
			for (int i = 0; i < 512; i++) begin
				dmem0[i] <= 8'b0;
				dmem1[i] <= 8'b0;
				dmem2[i] <= 8'b0;
				dmem3[i] <= 8'b0;
			end
		end
		else begin
			if(i_wren) begin
				if(i_bmask[0]) begin
					dmem0[addr] <= i_wdata[7:0];
				end
				if(i_bmask[1]) begin
					dmem1[addr] <= i_wdata[15:8];
				end
				if(i_bmask[2]) begin
					dmem2[addr]<= i_wdata[23:16];
				end
				if(i_bmask[3]) begin
					dmem3[addr] <= i_wdata[31:24];
				end
			end
		end
	end

endmodule

module single_cycle (

    input  logic         i_clk     ,

    input  logic         i_reset   ,

    input  logic [31:0]  i_io_sw   ,

    output logic [31:0]  o_io_ledr ,

    output logic [31:0]  o_io_ledg ,

    output logic [31:0]  o_io_lcd  ,

    output logic [ 6:0]  o_io_hex0 ,

    output logic [ 6:0]  o_io_hex1 ,

    output logic [ 6:0]  o_io_hex2 ,

    output logic [ 6:0]  o_io_hex3 ,

    output logic [ 6:0]  o_io_hex4 ,

    output logic [ 6:0]  o_io_hex5 ,

    output logic [ 6:0]  o_io_hex6 ,

    output logic [ 6:0]  o_io_hex7 ,

    output logic [31:0]  o_pc_debug,

    output logic         o_insn_vld

);
  assign o_io_lcd = 32'b0;
  assign o_io_hex0 = 7'b0;
  assign o_io_hex1 = 7'b0;
  assign o_io_hex2 = 7'b0;
  assign o_io_hex3 = 7'b0;
  assign o_io_hex4 = 7'b0;
  assign o_io_hex5 = 7'b0;
  assign o_io_hex6 = 7'b0;
  assign o_io_hex7 = 7'b0;

logic [31:0] pc, pc_four, pc_next,o_alu_data,instr,o_rs1_data,o_rs2_data,o_wb_data,o_ImmGen,i_op_a,i_op_b,o_ld_data;

logic pc_sel,i_rd_wren,i_br_un,o_br_less,o_br_equal,opa_sel,opb_sel,i_wren,insn_vld;

logic [3:0] i_alu_op;

logic [2:0] i_funct3;

logic [1:0] wb_sel;

pc_sel pc_sel_0(

    .pc_sel(pc_sel),

    .o_alu_data(o_alu_data),

    .pc_four(pc_four),

    .pc_next(pc_next)

);

pc_plus_4 pc_plus_4_0(

    .pc(pc),

    .pc_four(pc_four)

);

pc_reg pc_reg_0(

    .i_clk(i_clk),

    .i_reset(~i_reset),

    .pc_next(pc_next),

    .pc(pc)

);

imem imem_0(

    .pc(pc),

    .instr(instr)

);

regfile regfile_0(

    .i_clk(i_clk),

    .i_reset(~i_reset),

    .i_rd_wren(i_rd_wren),

    .i_rs1_addr(instr[19:15]),

    .i_rs2_addr(instr[24:20]),

    .o_rs1_data(o_rs1_data),

    .o_rs2_data(o_rs2_data),

    .i_rd_addr(instr[11:7]),

    .i_rd_data(o_wb_data)

);

ImmGen ImmGen_0(

    .instr(instr),

    .o_ImmGen(o_ImmGen)

);

brc brc_0

(

	.i_rs1_data(o_rs1_data),

	.i_rs2_data(o_rs2_data),

	.i_br_un(i_br_un),

  .o_br_less(o_br_less),

    .o_br_equal(o_br_equal)

);

operand_a operand_a_0(

    .pc(pc),

    .o_rs1_data(o_rs1_data),

    .opa_sel(opa_sel),

    .i_op_a(i_op_a)

);

operand_b operand_b_0(

    .o_ImmGen(o_ImmGen),

    .o_rs2_data(o_rs2_data),

    .opb_sel(opb_sel),

    .i_op_b(i_op_b)

);

alu_official alu_official_0(

    .i_op_a(i_op_a),

    .i_op_b(i_op_b),

    .i_alu_op(i_alu_op),

    .o_alu_data(o_alu_data)

);

lsu lsu_0(
    .i_clk(i_clk),
    .i_reset(~i_reset),
    .i_lsu_addr(o_alu_data),
    .i_st_data(o_rs2_data),
    .i_lsu_wren(i_wren),
    .i_io_sw(i_io_sw),
    .o_ld_data(o_ld_data),
    .o_io_ledr(o_io_ledr),
    .o_io_ledg(o_io_ledg),
    .i_funct3(instr[14:12])
);

ControlUnit control_unit_0(

    .instr(instr),

    .o_br_less(o_br_less),

    .o_br_equal(o_br_equal),

    .pc_sel(pc_sel),

    .i_rd_wren(i_rd_wren),

    .insn_vld(insn_vld),

    .i_br_un(i_br_un),

    .opa_sel(opa_sel),

    .opb_sel(opb_sel),

    .i_alu_op(i_alu_op),

    .i_wren(i_wren),

    .wb_sel(wb_sel),

    .i_funct3(i_funct3)

);

wb_data wb_data_0(

    .pc_four(pc_four),

    .o_alu_data(o_alu_data),

    .o_ld_data(o_ld_data),

    .o_wb_data(o_wb_data),

    .wb_sel(wb_sel)

);

o_insn_vld o_insn_vld_0(

    .insn_vld(insn_vld),

    .o_insn_vld(o_insn_vld),

    .i_clk(i_clk),

    .i_reset(~i_reset)

);

o_pc_debug o_pc_debug_0(

    .pc(pc),

    .o_pc_debug(o_pc_debug),

    .i_clk(i_clk),

    .i_reset(~i_reset)

);

endmodule : single_cycle

