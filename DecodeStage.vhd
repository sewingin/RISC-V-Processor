library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE work.constants.all;

entity DecodeStage is
    Port ( 
			  ClearI : in std_logic;
			  PCNextI : in std_logic_vector(31 downto 0);
			  SetUpperI : in std_logic;
			  InsnI : in std_logic_vector(31 downto 0);	
			  InterlockI : in std_logic;
			  InsnO : out std_logic_vector(31 downto 0);
			  PCNextO : out std_logic_vector(31 downto 0);		  
			  InterlockO : out std_logic;
			  ClearO : out std_logic;
			  PCActO : out std_logic_vector(31 downto 0);	
			  SetRV32CO : out std_logic;
			  CLK : in std_logic;
			  nRst : in std_logic;
			  Stall : in std_logic);
end DecodeStage;

architecture RTL of DecodeStage is

--procedure converts 16 bit instructions to 32 bit
procedure convertTo32bitInsn(svis16bit : in std_logic; insn16: in std_logic_vector(15 downto 0); svInsn : out std_logic_vector(31 downto 0)) is

variable rs1rd5 : std_logic_vector(4 downto 0);
variable rs1rd3 : std_logic_vector(4 downto 0) := "00" & insn16(9 downto 7);
variable rs2rd3 : std_logic_vector(4 downto 0) := "00" & insn16(4 downto 2);
variable imm : std_logic_vector(10 downto 0);

begin
	--5 bit source/destination register
	rs1rd5 := insn16(11 downto 7);
	--3 bit source/destination registers
	rs1rd3 := std_logic_vector(unsigned(rs1rd3) + 8);
	rs2rd3 := std_logic_vector(unsigned(rs2rd3) + 8);
	
	if insn16(1 downto 0) ="00" then
		
		--C.LW translate in LW
		if insn16(15 downto 13) = "010" then
			svInsn := "00000" & insn16(5) & insn16(12 downto 10) & insn16(6) & "00" & rs1rd3 & "010" & rs2rd3 & opcode_LOAD;
			return;
		end if;
		
		--C.SW translate in SW
		if insn16(15 downto 13) = "110" then
			svInsn := "00000" & insn16(5) & insn16(12) & rs2rd3 & rs1rd3 & "010" &  insn16(11 downto 10) & insn16(6) & "00" & opcode_STORE;
			return;
		end if;
		
		--C.ADDI4SPN translate in ADDI
		if insn16(15 downto 13) = "000" then
			svInsn := "00" & insn16(10 downto 7) & insn16(12 downto 11) & insn16(5) & insn16(6)  & "00" & "00010" & "000" & rs2rd3 & opcode_OP_IMM;
			return;
		end if;
	end if;	
	
	if insn16(1 downto 0) ="01" then
	
		--C.NOP translate in ADDI
		if insn16(15 downto 0) = x"0000" then
			--to addi x0,x0,0
			svInsn := x"00000013";
			return;
		end if;
		
		--C.ADDI translate in ADDI
		if insn16(15 downto 13) = "000" and insn16(11 downto 7) /= "00000" then
			--check if immediate for sign-extention
			if insn16(12) = '1' then
				svInsn := "111111" & insn16(12) & insn16(6 downto 2) & rs1rd5 & "000" & rs1rd5 & opcode_OP_IMM;
				return;
			else
				svInsn := "000000" & insn16(12) & insn16(6 downto 2) & rs1rd5 & "000" & rs1rd5 & opcode_OP_IMM;
				return;
			end if;
		end if;
		
		--C.BEQZ translate in BEQ
		if insn16(15 downto 13) = "110" then
		   --form immediate--form immediate
			imm := "000" & insn16(12) & insn16(6 downto 5) & insn16(2) & insn16(11 downto 10) & insn16(4 downto 3);
			--check immediate for sign-extention
			if insn16(12) = '1' then
   			svInsn := "111" & imm(7 downto 4) & "00000" & rs1rd3 & "000" & imm(3 downto 0) & '1' & opcode_BRANCH;
				return;
			else
				svInsn := "000" & imm(7 downto 4) & "00000" & rs1rd3 & "000" & imm(3 downto 0) & '0' & opcode_BRANCH;
				return;
			end if;
		end if;
		
		--C.BNEQZ translate in BNE
		if insn16(15 downto 13) = "111" then
			--form immediate
			imm := "000" & insn16(12) & insn16(6 downto 5) & insn16(2) & insn16(11 downto 10) & insn16(4 downto 3);
			--check immediate for sign-extention
			if insn16(12) = '1' then
				svInsn := "111" & imm(7 downto 4) & "00000" & rs1rd3 & "001" & imm(3 downto 0) & '1' & opcode_BRANCH;
				return;
			else
				svInsn := "000" & imm(7 downto 4) & "00000" & rs1rd3 & "001" & imm(3 downto 0) & '0' & opcode_BRANCH;
				return;
			end if;
		end if;
		
		--C.LI translate in ADDI
		if insn16(15 downto 13) = "010" then
			--check if immediate for sign-extention
			if insn16(12) = '1' then
				svInsn := "111111" & insn16(12) & insn16(6 downto 2) & "00000" & "000" & rs1rd5 & opcode_OP_IMM;
				return;
			else
				svInsn := "000000" & insn16(12) & insn16(6 downto 2) & "00000" & "000" & rs1rd5 & opcode_OP_IMM;
				return;
			end if;
		end if;
		
		--C.ADDI16SP translate in addi
		if insn16(15 downto 13) = "011" and rs1rd5 = "00010" then
			--check immediate for sign-extention
			if insn16(12) = '1' then
				svInsn := "11" & insn16(12) & insn16(4 downto 3) & insn16(5) & insn16(2) & insn16(6) & "1111" & rs1rd5 & "000" & rs1rd5 & opcode_OP_IMM;
				return;
			else
				svInsn := "00" & insn16(12) & insn16(4 downto 3) & insn16(5) & insn16(2) & insn16(6) & "0000" & rs1rd5 & "000" & rs1rd5 & opcode_OP_IMM;
				return;
			end if;
		end if;
		
		--C.LUI translate in LUI
		if insn16(15 downto 13) = "011" and rs1rd5 /= "00010" and rs1rd5 /= "00000" then
			--check immediate for sign-extention
			if insn16(12) = '1' then
				svInsn := x"111" & "11" & insn16(12) & insn16(6 downto 2) & rs1rd5 & opcode_LUI;
				return;
			else
				svInsn := x"000" & "00" & insn16(12) & insn16(6 downto 2) & rs1rd5 & opcode_LUI;
				return;
			end if;
		end if;
		
		--C.SRLI translate in SRLI
		if insn16(15 downto 13) = "100" and insn16(12) = '0' and insn16(11 downto 10) = "00" then
			svInsn := "0000000" & insn16(6 downto 2) & rs1rd3 & "101" & rs1rd3 & opcode_OP_IMM;
			return;
		end if;
		
		--C.SRAI translate in SRAI
		if insn16(15 downto 13) = "100" and insn16(12) = '0' and insn16(11 downto 10) = "01" then
			svInsn := "0100000" & insn16(6 downto 2) & rs1rd3 & "101" & rs1rd3 & opcode_OP_IMM;
			return;
		end if;
		
		--C.ANDI translate in ANDI
		if insn16(15 downto 13) = "100" and insn16(11 downto 10) = "10" then
			--check if immediate for sign-extention
			if insn16(12) = '1' then
				svInsn := "111111" & insn16(12) & insn16(6 downto 2) & rs1rd3 & "111" & rs1rd3 & opcode_OP_IMM;
				return;
			else
				svInsn := "000000" & insn16(12) & insn16(6 downto 2) & rs1rd3 & "111" & rs1rd3 & opcode_OP_IMM;
				return;
			end if;
		end if;
		
		--C.AND translate in AND
		if insn16(15 downto 13) = "100" and insn16(12) = '0' and insn16(11 downto 10) = "11" and insn16(6 downto 5) = "11" then
			svInsn := "0000000" & rs2rd3 & rs1rd3 & "111" & rs1rd3 & opcode_OP;
			return;
		end if;
		
		--C.OR translate in OR
		if insn16(15 downto 13) = "100" and insn16(12) = '0' and insn16(11 downto 10) = "11" and insn16(6 downto 5) = "10" then
			svInsn := "0000000" & rs2rd3 & rs1rd3 & "110" & rs1rd3 & opcode_OP;
			return;
		end if;
		
		--C.XOR translate in XOR
		if insn16(15 downto 13) = "100" and insn16(12) = '0' and insn16(11 downto 10) = "11" and insn16(6 downto 5) = "01" then
			svInsn := "0000000" & rs2rd3 & rs1rd3 & "100" & rs1rd3 & opcode_OP;
			return;
		end if;
		
		--C.SUB translate in SUB
		if insn16(15 downto 13) = "100" and insn16(12) = '0' and insn16(11 downto 10) = "11" and insn16(6 downto 5) = "00" then
			svInsn := "0100000" & rs2rd3 & rs1rd3 & "000" & rs1rd3 & opcode_OP;
			return;
		end if;
		
		--C.J translate in JAL
		if insn16(15 downto 13) = "101" then
			--form immediate
			imm := insn16(12) & insn16(8) & insn16(10 downto 9) & insn16(6) & insn16(7) & insn16(2) & insn16(11) & insn16(5 downto 3);
			--check immediate for sign-extention
			if insn16(12) = '1' then
				svInsn := '1' & imm(9 downto 0) & imm(10) & "11111111" & "00000" & opcode_JAL;
				return;
			else
				svInsn := '0' & imm(9 downto 0) & imm(10) & "00000000" & "00000" & opcode_JAL;
				return;
			end if;
		end if;
		
		--C.JAL translate in JAL
		if insn16(15 downto 13) = "001" then
		   --form immediate
   		imm := insn16(12) & insn16(8) & insn16(10 downto 9) & insn16(6) & insn16(7) & insn16(2) & insn16(11) & insn16(5 downto 3);
			--check immediate for sign-extention
			if insn16(12) = '1' then					
				svInsn := '1' & imm(9 downto 0) & imm(10) & "11111111" & "00001" & opcode_JAL;
				return;
			else
				svInsn := '0' & imm(9 downto 0) & imm(10) & "00000000" & "00001" & opcode_JAL;
				return;
			end if;
		end if;
		
	end if;	
	
	if insn16(1 downto 0) ="10" then
	
		--C.SWSP translate in SW
		if insn16(15 downto 13) = "110" then
			svInsn := "0000" & insn16(8 downto 7) & insn16(12) & insn16(6 downto 2) & "00010" & "010" & insn16(11 downto 9) &  "00" & opcode_STORE;
			return;
		end if;
		
		--C.LWSP translate in LW
		if insn16(15 downto 13) = "010" then
			svInsn := "0000" & insn16(3 downto 2) & insn16(12) & insn16(6 downto 4)& "00" & "00010" & "010"  & insn16(11 downto 7) & opcode_LOAD;
			return;
		end if;
		
		--C.JR translate in JALR
		if insn16(15 downto 13) = "100" and insn16(12) = '0' and insn16(6 downto 2) = "00000" then
			svInsn := x"000" & insn16(11 downto 7) & "000" & insn16(6 downto 2) & opcode_JALR;	
			return;
		end if;
		
		--C.JALR translate in JALR
		if insn16(15 downto 13) = "100" and insn16(12) = '1' and insn16(6 downto 2) = "00000" then
			svInsn := x"000" & insn16(11 downto 7) & "000" & "00001" & opcode_JALR;	
			return;
		end if;
		
		--C.SLLI translate in SLLI
		if insn16(15 downto 13) = "000" and insn16(12) = '0' and insn16(6 downto 2) /= "00000" then
			svInsn := "0000000" & insn16(6 downto 2) & rs1rd5 & "001" & rs1rd5 & opcode_OP_IMM;	
			return;
		end if;
		
		--C.ADD translate in ADD
		if insn16(15 downto 13) = "100" and insn16(12) = '1' and insn16(6 downto 2) /= "00000" and insn16(11 downto 7) /= "00000" then
			svInsn := "0000000" & insn16(6 downto 2)  & rs1rd5 & "000" & rs1rd5 & opcode_OP;	
			return;
		end if;
		
		--C.MV translate in ADD
		if insn16(15 downto 13) = "100" and insn16(12) = '0' and insn16(6 downto 2) /= "00000" and insn16(11 downto 7) /= "00000" then
			svInsn := "0000000" & insn16(6 downto 2)  & "00000" & "000" & rs1rd5 & opcode_OP;		
			return;
		end if;	
	end if;
	svInsn := x"00000013";
end procedure convertTo32bitInsn;


begin

process(CLK,nRst, Stall)

--to save the old instruction for to use if an interlock occur
variable svInsn : std_logic_vector(31 downto 0);
--save the upper part of the 32 bit instruction word
variable sv16bit : std_logic_vector(15 downto 0);
--set to 1 if the saved part of the instruction word is a 16 bit instruction
variable svis16bit : std_logic;
--set 16bit jump to 16 bit instruction saved in upper two bytes
variable setJumpToUpper : std_logic;


begin
	if nRst='0' then
		InsnO <= x"00000000";
		PCNextO <= x"00000000";
		ClearO <= '0';
		InterlockO <= '0';
		PCActO <= x"00000000";
	elsif rising_edge(CLK) and Stall /= '1' then
		--clear if there is a jump or branch
		if ClearI = '1' then
			--set if jump is a 16 bit instruction saved in the upper 2 bytes of the instruction word
			if SetUpperI = '1' then
				setJumpToUpper := '1';
			end if;
			SetRV32CO <= '0';
			sv16bit := x"0000";
			svis16bit := '0';
			svInsn := x"00000000";	
			PCNextO<=PCNextI;
			PCActO <= x"00000000";
		else
			--if there is a sw instruction decode
			if InterlockI ='1' then
				if svis16bit = '1'  then
					SetRV32CO <= '1';
				else
					SetRV32CO <= '0';				
				end if;
				
			--if 2 16 bit instructions are received
			--or 16 bit instruction is saved in upper 2 bytes and lower 2 bytes are the upper part of an 32 bit instruction
			elsif InsnI(1 downto 0) /= "11" and  InsnI(17 downto 16) /= "11" then
			
				--2 16bit instructions and nothing is saved(initial state or 32 bit before in word)
				if sv16bit = x"0000" then
				
					--if a jump targets to the upper 2 bytes of the instruction
					if setJumpToUpper = '1' then
						convertTo32bitInsn(svis16bit,InsnI(31 downto 16),svInsn);
						--svInsn := convertTo32bitInsn(svis16bit,InsnI(31 downto 16));
						svis16bit :='0';
						SetRV32CO <= '0';
						setJumpToUpper :='0';
						PCNextO <= PCNextI;
						PCActO<=std_logic_vector(unsigned(PCNextI)-2);
						
					else
						--if a jump targets 16bit instruction saved in lower 2 bytes of instruction word or no jump is executed							
						sv16bit := InsnI(31 downto 16);
						convertTo32bitInsn(svis16bit,InsnI(15 downto 0),svInsn);
						--svInsn := convertTo32bitInsn(svis16bit,InsnI(15 downto 0));
						--if end of instructions reached
						if sv16bit /= x"0000" then 
							SetRV32CO <= '1';
							svis16bit :='1';
						else
							SetRV32CO <= '0';
							svis16bit :='0';
						end if;						
						PCNextO <= std_logic_vector(unsigned(PCNextI)-2);
						PCActO <= std_logic_vector(unsigned(PCNextI)-4);
					end if;
					
				-- if 16 bit instruction is saved( send the saved instruction)
				elsif svis16bit = '1' and sv16bit /= x"0000" then
					convertTo32bitInsn(svis16bit,sv16bit(15 downto 0),svInsn);
					--svInsn := convertTo32bitInsn(svis16bit,sv16bit(15 downto 0));
					sv16bit := x"0000";
					SetRV32CO <= '0';--to -1
					svis16bit :='0';
					PCNextO <= std_logic_vector(unsigned(PCNextI));
					PCActO <= std_logic_vector(unsigned(PCNextI)-2);
	
				--lower 2 bytes are the upper part of an 32 bit instruction and the upper part is a 16 bit instruction
				elsif svis16bit = '0' and sv16bit /= x"0000"  then					
					svInsn := InsnI(15 downto 0) & sv16bit;
					sv16bit := InsnI(31 downto 16);
					--if end of instructions reached
					if sv16bit /= x"0000" then 
						SetRV32CO <= '1';
						svis16bit :='1';
					else
						SetRV32CO <= '0';
						svis16bit :='0';
					end if;
					PCNextO <= std_logic_vector(unsigned(PCNextI)-2);
					PCActO <= std_logic_vector(unsigned(PCNextI)-6);
					
				else
					InsnO <= InsnI;
					SetRV32CO <= '0';
					sv16bit := x"0000";
					svis16bit := '0';
					PCNextO<=PCNextI;
					PCActO <= std_logic_vector(unsigned(PCNextI)-4);
				end if;
			
			--if 1 16 bit instruction is received in the lower 2 bytes and a beginning 32 bit instruction is saved in the upper 2 bytes
			--or the lower 2 bytes are the upper part of an 32 bit instruction and the upper 2 bytes are the lower part of the following 32 bit instruction
			elsif InsnI(1 downto 0) /= "11" and  InsnI(17 downto 16) = "11" then
			
				--1 16bit instruction in the lower 2 bytes (initial state or 32 bit before in instruction word)
				if sv16bit = x"0000" then
				
					--if jump targets to the upper 2 bytes of the instruction
					if setJumpToUpper = '1' then
						svis16bit :='0';
						--nop instruction because 32 bit instruction is not aligned
						convertTo32bitInsn(svis16bit,"0000000000000001",svInsn);
						--svInsn := convertTo32bitInsn(svis16bit,"0000000000000001");
						sv16bit := InsnI(31 downto 16);
						SetRV32CO <= '0';
						setJumpToUpper :='0';
						PCNextO <= std_logic_vector(unsigned(PCNextI)+2);
						PCActO <= std_logic_vector(unsigned(PCNextI)-2);
						
					else
						sv16bit := InsnI(31 downto 16);
						convertTo32bitInsn(svis16bit,InsnI(15 downto 0),svInsn);
						--svInsn := convertTo32bitInsn(svis16bit,InsnI(15 downto 0));
						SetRV32CO <= '0';
						svis16bit :='0';
						setJumpToUpper :='0';
						PCNextO <= std_logic_vector(unsigned(PCNextI)-2);
						PCActO <= std_logic_vector(unsigned(PCNextI)-4);
					end if;
					
				-- if 16 bit instruction is saved( send the saved instruction and stall the pipeline)
				elsif svis16bit = '1' and sv16bit /= x"0000" then
					convertTo32bitInsn(svis16bit,sv16bit(15 downto 0),svInsn);
					--svInsn := convertTo32bitInsn(svis16bit,sv16bit(15 downto 0));
					sv16bit := x"0000";
					SetRV32CO <= '0';
					svis16bit :='0';
					setJumpToUpper :='0';
					PCNextO <= std_logic_vector(unsigned(PCNextI));
					PCActO <= std_logic_vector(unsigned(PCNextI)-2);
					
				--lower 2 bytes are the upper part of an 32 bit instruction
				elsif svis16bit = '0' and sv16bit /= x"0000"  then
					svInsn := InsnI(15 downto 0) & sv16bit;
					sv16bit := InsnI(31 downto 16);
					SetRV32CO <= '0';
					svis16bit := '0';
					setJumpToUpper :='0';
					PCNextO <= std_logic_vector(unsigned(PCNextI)-2);
					PCActO <= std_logic_vector(unsigned(PCNextI)-6);
					
				else
					InsnO <= InsnI;
					SetRV32CO <= '0';
					sv16bit := x"0000";
					svis16bit := '0';
					setJumpToUpper :='0';
					PCNextO <= PCNextI;
					PCActO <= std_logic_vector(unsigned(PCNextI)-4);
				end if;
					
			--if 1 32 bit instruction is lower part of the next instruction saved in the upper 2 bytes and the lower 2 bytes are the upper part of a 32 bit instruction
			--or if all 4 bytes are only one instruction
			elsif InsnI(1 downto 0) = "11" and  InsnI(17 downto 16) = "11" then
			
				--if all 4 bytes are only one instruction or jump to upper 
				if sv16bit = x"0000" then
				
					--if jump targets to the upper 2 bytes of the instruction
					if setJumpToUpper = '1' then
						svis16bit :='0';
						--nop instruction because 32 bit instruction is not aligned
						convertTo32bitInsn(svis16bit,"0000000000000001",svInsn);
						--svInsn := convertTo32bitInsn(svis16bit,"0000000000000001");
						sv16bit := InsnI(31 downto 16);
						SetRV32CO <= '0';
						setJumpToUpper :='0';
						PCNextO <= std_logic_vector(unsigned(PCNextI)+2);
						PCActO <= std_logic_vector(unsigned(PCNextI)-2);
						
					else
						svInsn := InsnI;
						SetRV32CO <= '0';
						svis16bit :='0';
						sv16bit := x"0000";
						setJumpToUpper :='0';
						PCNextO<=PCNextI;
						PCActO <= std_logic_vector(unsigned(PCNextI)-4);
					end if;
					
				--if 16 bit instruction is saved( send the saved instruction and stall the pipeline)
				elsif svis16bit = '1' and sv16bit /= x"0000" then
					convertTo32bitInsn(svis16bit,sv16bit(15 downto 0),svInsn);
					--svInsn := convertTo32bitInsn(svis16bit,sv16bit(15 downto 0));
					sv16bit := x"0000";
					SetRV32CO <= '0';-----1
					svis16bit :='0';
					setJumpToUpper :='0';
					PCNextO <= std_logic_vector(unsigned(PCNextI));
					PCActO <= std_logic_vector(unsigned(PCNextI)-2);
					
				--lower 2 bytes are the upper part of an 32 bit instruction
				elsif svis16bit = '0' and sv16bit /= x"0000"  then					
					svInsn := InsnI(15 downto 0) & sv16bit;
					sv16bit := InsnI(31 downto 16);
					SetRV32CO <= '0';
					svis16bit := '0';
					setJumpToUpper :='0';
					PCNextO <= std_logic_vector(unsigned(PCNextI)-2);
					PCActO <= std_logic_vector(unsigned(PCNextI)-6);
					
				else
					InsnO <= InsnI;
					SetRV32CO <= '0';
					sv16bit := x"0000";
					svis16bit := '0';
					setJumpToUpper :='0';
					PCNextO<=PCNextI;
					PCActO <= std_logic_vector(unsigned(PCNextI)-4);
				end if;
					
			--if 1 16 bit instruction is saved in the upper 2 bytes and the upper part of an 32 bit instruction is saved in the lower 2 bytes
			--or all 4 bytes are a 32 bit instruction
			elsif InsnI(1 downto 0) = "11" and  InsnI(17 downto 16) /= "11" then
			
				--if all 4 bytes are only one instruction
				if sv16bit = x"0000" then
					if setJumpToUpper = '1' then					
						convertTo32bitInsn(svis16bit,InsnI(31 downto 16),svInsn);
						--svInsn := convertTo32bitInsn(svis16bit,InsnI(31 downto 16));
						svis16bit :='0';
						SetRV32CO <= '0';
						setJumpToUpper :='0';
						PCNextO<=PCNextI;
						PCActO <= std_logic_vector(unsigned(PCNextI)-2);
					else
						svInsn := InsnI;
						SetRV32CO <= '0';
						svis16bit := '0';
						sv16bit := x"0000";
						PCNextO<=PCNextI;
						PCActO <= std_logic_vector(unsigned(PCNextI)-4);
					end if;
				
				--if 16 bit instruction is saved( send the saved instruction and stall the pipeline)
				elsif svis16bit = '1' and sv16bit /= x"0000" then
					convertTo32bitInsn(svis16bit, sv16bit(15 downto 0),svInsn);
					--svInsn := convertTo32bitInsn(svis16bit,sv16bit(15 downto 0));
					sv16bit := x"0000";
					SetRV32CO <= '0';
					svis16bit :='0';
					PCNextO <= std_logic_vector(unsigned(PCNextI));
					PCActO <= std_logic_vector(unsigned(PCNextI)-2);
					
				--lower 2 bytes are the upper part of an 32 bit instruction
				elsif svis16bit = '0' and sv16bit /= x"0000"  then					
					svInsn := InsnI(15 downto 0) & sv16bit;
					sv16bit := InsnI(31 downto 16);
					--if end of instructions reached
					if sv16bit /= x"0000" then 
						SetRV32CO <= '1';
						svis16bit :='1';
					else
						SetRV32CO <= '0';
						svis16bit :='0';
					end if;
					PCNextO <= std_logic_vector(unsigned(PCNextI)-2);
					PCActO <= std_logic_vector(unsigned(PCNextI)-6);
					
				else
					InsnO <= InsnI;
					SetRV32CO <= '0';
					sv16bit := x"0000";
					svis16bit := '0';
					PCNextO <= PCNextI;
					PCActO <= std_logic_vector(unsigned(PCNextI)-4);
				end if;
				
			else
				InsnO <= InsnI;
				PCNEXTO <= x"00000000";
				SetRV32CO <= '0';
				sv16bit := x"0000";
				svis16bit := '0';
				PCNextO <= PCNextI;
				PCActO <= std_logic_vector(unsigned(PCNextI)-4);
			end if;	
		end if;		
		InsnO <= svInsn;
		InterlockO <= InterlockI;
		ClearO <= ClearI;
	end if;
end process;

end RTL;
