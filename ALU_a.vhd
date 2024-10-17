library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE work.constants.all;

entity ALU is
    Port ( 
	        Funct : in std_logic_vector(2 downto 0);
			  B : in std_logic_vector(31 downto 0);
			  SrcData2 : in std_logic_vector(31 downto 0);
			  A : in std_logic_vector(31 downto 0);			  
			  PCNext : in std_logic_vector(31 downto 0);
			  JumpTargetI : in std_logic_vector(31 downto 0);
			  DestRegNoI : in std_logic_vector(4 downto 0);
			  DestWrEnI : in std_logic;
			  Aux : in std_logic;
			  JumpI : in std_logic;
			  JumpRel : in std_logic;
			  MemAccessI : in std_logic;
			  Clear : in std_logic;	
			  Set7SegI : in std_logic;	
			  Set7SegO : out std_logic;				  
			  JumpO : out std_logic;
			  JumpTargetO : out std_logic_vector(31 downto 0);			  
			  MemAccessO : out std_logic;
			  X : out std_logic_vector(31 downto 0);
			  DestRegNoO : out std_logic_vector(4 downto 0);
			  DestWrEnO : out std_logic;  	           
			  MemWrData : out std_logic_vector(31 downto 0);
			  MemByteEna : out std_logic_vector(3 downto 0)
			  --SramAddressOut : out std_logic_vector(9 downto 0)
			  );
end ALU;

architecture Behavioral of ALU is

-- function definitions

function funct_ADD(Aux: in std_logic; A, B: in std_logic_vector(31 downto 0)) return std_logic_vector is
begin
	if Aux = '0' then
		return std_logic_vector(signed(A) + signed(B));
	else
		return std_logic_vector(signed(A) - signed(B));
	end if;
end funct_ADD;

function funct_SLL(A, B: in std_logic_vector(31 downto 0)) return std_logic_vector is
begin
	return std_logic_vector(shift_left(unsigned(A),to_integer(unsigned(B(4 downto 0)))));
end funct_SLL;

function funct_SLT(A, B: in std_logic_vector(31 downto 0)) return std_logic_vector is
begin
   if signed(A) < signed(B) then
	  return x"00000001";
	else
	  return x"00000000"; -- std_logic_vector(to_unsigned(0,32));
	end if;
end funct_SLT;

function funct_SLTU(A, B: in std_logic_vector(31 downto 0)) return std_logic_vector is
begin
	if unsigned(A) < unsigned(B) then
	  return x"00000001";
	else
	  return x"00000000";
	end if;
end funct_SLTU;

function funct_XOR(A, B: in std_logic_vector(31 downto 0)) return std_logic_vector is
begin
	return A xor B;
end funct_XOR;

function funct_SRL(Aux: in std_logic; A, B: in std_logic_vector(31 downto 0)) return std_logic_vector is
begin
	if Aux = '0' then
		return std_logic_vector(shift_right(unsigned(A),to_integer(unsigned(B(4 downto 0)))));
	else
		return std_logic_vector(shift_right(signed(A),to_integer(unsigned(B(4 downto 0)))));
	end if;
	
end funct_SRL;

function funct_OR(A, B: in std_logic_vector(31 downto 0)) return std_logic_vector is
begin
	return A or B;
end funct_OR;

function funct_AND(A, B: in std_logic_vector(31 downto 0)) return std_logic_vector is
begin
	return A and B;
end funct_AND;


begin

process (Aux, A, B, Funct, PCNext,JumpI, JumpTargetI,DestRegNoI, DestWrEnI, SrcData2, JumpRel, Clear, MemAccessI, Set7SegI)
variable result : std_logic_vector(31 downto 0);
variable cond : std_logic;
begin
cond := '0';

if  Clear = '0' then

   --branch op_codes
	if JumpI = '0' and JumpRel = '1' then	
		result := funct_ADD(Aux, std_logic_vector(unsigned(PCNext) - 4),B);
		MemWrData <= SrcData2;
		MemByteEna <= "0000";
		case Funct is
			when funct_BEQ =>
				if SrcData2 = A then
					cond := '1';
				end if;
			when funct_BNE =>
				if signed(A) /= signed(B) then
					cond := '1';
				end if;
			when funct_BLT =>
				if signed(A) < signed(B) then
					cond := '1';
				end if;
			when funct_BGE =>
				if signed(A) >= signed(B) then
					cond := '1';
				end if;
			when funct_BLTU =>
				if unsigned(A) < unsigned(B) then
					cond := '1';
				end if;
			when funct_BGEU =>
				if unsigned(A) >= unsigned(B) then
					cond := '1';
				end if;
			when others =>
					cond := '0';
		end case;

	else

		case Funct is
			when "000" => 
			--for mem access
				--sb
				if MemAccessI='1' then 
					MemWrData <= SrcData2(7 downto 0)&SrcData2(7 downto 0)&SrcData2(7 downto 0)&SrcData2(7 downto 0);
					result := funct_ADD(Aux,A,B);
					--select rom or ram(=1)
					
					case result(1 downto 0) is
						when "00" =>
							MemByteEna <= "0001";
						when "01" =>	
							MemByteEna <= "0010";
						when "10" =>
							MemByteEna <= "0100";
						when "11" =>
							MemByteEna <= "1000";
					end case;	
				else
				--add and addi
					result := funct_ADD(Aux,A,B);
					MemByteEna <= "0000"; 
					MemWrData <= SrcData2;
				end if;
			when "001" =>
				--for mem access
				--sh
				if MemAccessI='1' then 
					MemWrData <= SrcData2(15 downto 0) & SrcData2(15 downto 0);
					result := funct_ADD(Aux,A,B);
					case result(1) is
						when '0' =>
							MemByteEna <= "0011";
						when '1' =>
							MemByteEna <= "1100";
						end case;
				else
					--sll and slli
					result := funct_SLL(A,B);
					MemWrData <= SrcData2;
					MemByteEna <= "0000"; 
				end if;
			when "010" =>
				--sw
				if MemAccessI='1' then 
					MemWrData <= SrcData2;
					MemByteEna <= "1111";
					result := funct_ADD(Aux, A,B);
				--slt-----
				else
					result := funct_SLL(A,B);
					MemWrData <= SrcData2;
					MemByteEna <= "0000"; 
				end if;
			when "011" =>
				--sltu and sltiu
				result := funct_SLTU(A,B);
				MemByteEna <= "0000"; 
				MemWrData <= SrcData2;
			when "100" =>
				--xor and xori
				result := funct_XOR(A,B);
				MemByteEna <= "0000"; 
				MemWrData <= SrcData2;
			when "101" =>
				--lhu 
				if MemAccessI='1' then 
					result := funct_ADD(Aux, A,B);
					MemWrData <= SrcData2;
					MemByteEna <= "0000";
				else
				--srl and srli
					result := funct_SRL(Aux, A,B);
					MemByteEna <= "0000"; 
					MemWrData <= SrcData2;
				end if;
			when "110" =>
				--or
				result := funct_OR(A,B);
				MemByteEna <= "0000"; 
				MemWrData <= SrcData2;
			when "111" =>
				--and
				result := funct_AND(A,B);
				MemByteEna <= "0000"; 
				MemWrData <= SrcData2;
		end case;

	end if;
	
	--jal,jalr
	if JumpI='1' then
		x <= PCNext;
		JumpTargetO <= x"00000000";
	else
	-- branch and others
		x<=result;
	end if;
	
	--jalr,others
	if JumpRel='0' then
		JumpTargetO <= result;
	else
	--jal, branch
		JumpTargetO <= JumpTargetI;
	end if;

	--branch
	if JumpI = '0' and JumpRel = '1' then
		JumpO <= cond;
	else
	--others
		JumpO <= JumpI;
	end if;
	DestRegNoO <= DestRegNoI;
	DestWrEnO <= DestWrEnI;
	--MemWrData <= SrcData2;
	MemAccessO <= MemAccessI;
else
	JumpO <= '0';
	JumpTargetO <= x"00000000";  
	MemAccessO <= '0';
   X <= x"00000000"; 
	DestRegNoO <= "00000"; 
	DestWrEnO <= '0'; 	           
	MemWrData <= SrcData2; 
	MemByteEna <= "0000"; 
	
end if;
	Set7SegO<=Set7SegI;
end process;

end Behavioral;
