library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE work.constants.all;

entity Decode is
    Port (
			  Insn : in std_logic_vector(31 downto 0);
			  PCNextI : in std_logic_vector(31 downto 0);
			  InterlockI : in std_logic;
			  Clear : in std_logic;
			  PCActI : in std_logic_vector(31 downto 0);
			  --RV32CI : in std_logic;
			  Funct : out std_logic_vector(2 downto 0);
			  SrcRegNo1 : out std_logic_vector(4 downto 0);
			  SrcRegNo2 : out std_logic_vector(4 downto 0);
			  Imm : out std_logic_vector(31 downto 0);
			  SelSrc2 : out std_logic;
			  DestRegNO : out std_logic_vector(4 downto 0);
			  DestWrEn : out std_logic;
			  Aux : out std_logic;
			  Jump : out std_logic;
			  JumpRel : out std_logic;
			  MemAccess : out std_logic;
			  MemWrEn : out std_logic;
			  PCNextO : out std_logic_vector(31 downto 0);
			  JumpTarget : out std_logic_vector(31 downto 0);
			  Set7Segment : out std_logic;
			  InterlockO : out std_logic);
end Decode;

architecture RTL of Decode is
begin



process(Insn, PCNextI, InterlockI, Clear,PCActI)

variable immmm : std_logic_vector(19 downto 0);
--variable v7seg: std_logic;

begin

if Clear ='1' or InterlockI = '1' then
	
	Jump<='0';
	JumpRel<='0';
	DestWrEn <= '0';
	Funct <= "000";
   SrcRegNo1 <= "00000";
   SrcRegNo2 <= "00000";
   Imm <= x"00000000";
   SelSrc2 <= '0';
   DestRegNO <= "00000";   
   Aux <= '0';  
   MemAccess <= '0';
   MemWrEn <= '0';
   PCNextO <= x"00000000";
   JumpTarget <= x"00000000";
   InterlockO <= '0';
	Set7Segment <= '0';
	
	
else

	
		Funct <= Insn(14 downto 12);
		SrcRegNo1 <= Insn(19 downto 15);
		SrcRegNo2 <= Insn(24 downto 20);
		DestRegNO <= Insn(11 downto 07);
		
		case Insn(6 downto 0) is 
			--
			when opcode_LOAD =>
				MemAccess <= '1';
				MemWrEn <= '0';
				SelSrc2 <= '0';
				DestWrEn <= '1';
				Imm <= std_logic_vector(resize(signed(Insn(31 downto 20)), Imm'length));
				--Imm <= std_logic_vector(x"00000" & Insn(31 downto 20));
				Jump<='0';
				JumpRel<='0';
				JumpTarget<=x"00000000";
				PCNextO<=PCNextI;
				Aux<='0';
				InterlockO<='1';
				Set7Segment <= '0';
				SrcRegNo2 <= "00000";
				
			when opcode_STORE =>				
				MemAccess <= '1';
				MemWrEn <= '1';
				SelSrc2 <= '0';
				DestWrEn <= '0';
				Imm <= std_logic_vector(resize(signed(Insn(31 downto 25) & Insn(11 downto 7)), Imm'length));
				Jump<='0';
				JumpRel<='0';
				JumpTarget<=x"00000000";
				PCNextO<=PCNextI;
				Aux<='0';
				InterlockO<='0';
				Set7Segment <= '0';
				DestRegNO <= "00000";
				
			when opcode_LUI =>
				Imm <= std_logic_vector(Insn(31 downto 12) & x"000");
				Funct <= funct_ADD;
				SrcRegNo1 <= "00000";
				SrcRegNo2 <= "00000";
				SelSrc2 <= '0';
				Jump<='0';
				JumpRel<='0';
				JumpTarget<=x"00000000";
				PCNextO<=PCNextI;
				DestWrEn <= '1';
				Aux<='0';
				MemAccess <= '0';
				InterlockO<='0';
				MemWrEn <= '0';
				Set7Segment <= '0';
				
			when opcode_JAL =>
				Jump<='1';
				--add 2 to PCNextI  if jump from upper 2 bytes of the instruction word
				JumpTarget <= std_logic_vector(signed(PCActI) + signed(Insn(31) & Insn(19 downto 12) & Insn(20) & Insn(30 downto 21) & '0'));		
				PCNextO<=PCNextI;
				DestWrEn <= '1';
				JumpRel<='1';
				Imm<=x"00000000";
				SelSrc2 <= '1';
				Aux<='0';
				MemAccess <= '0';
				MemWrEn <= '0';
				InterlockO<='0';
				Set7Segment <= '0';
				
			when opcode_JALR =>
				Jump<='1';
				DestWrEn <= '1';
				SelSrc2 <= '0';
				Funct <= funct_ADD;				
				MemAccess <= '0';
				Imm <= std_logic_vector(resize(signed(Insn(31 downto 20)), Imm'length));
				--add 2 to PCNextI if jump from upper 2 bytes of the instruction word
				PCNextO<=PCNextI;
				JumpRel<='0';
				Aux<='0';
				JumpTarget<=x"00000000";
				InterlockO<='0';
				MemWrEn <= '0';
				Set7Segment <= '0';
				
			when opcode_BRANCH =>
				--add 2 to PCNextI if jump from upper 2 bytes of the instruction word
				JumpTarget <=std_logic_vector(signed(PCActI) + signed(Insn(31) & Insn(7) & Insn(30 downto 25) & Insn(11 downto 8) & '0'));
				PCNextO<=PCNextI;
				DestWrEn <= '0';
				Jump<='0';
				JumpRel<='1';
				SelSrc2 <= '1';
				Imm <= x"00000000"; 
				Aux<='0';
				MemAccess <= '0';
				MemWrEn <= '0';
				InterlockO<='0';
				Set7Segment <= '0';
				
			when opcode_OP =>
				--decide if subtraction or addition,sra
				if insn(30)='1' then
						Aux <= '1';
					else 
						Aux <='0';
				end if;
				Imm <= x"00000000"; 
				DestWrEn <= '1';
				Jump<='0';
				JumpRel<='0';
				JumpTarget<=x"00000000";
				SelSrc2 <= '1';
				MemWrEn <= '0';
				PCNextO<=PCNextI;
				MemAccess <= '0';
				InterlockO<='0';
				Set7Segment <= '0';
				
			when opcode_OP_IMM =>
				SelSrc2 <= '0';
				DestWrEn <= '1';
				Jump<='0';	
				JumpRel<='0';
				JumpTarget<=x"00000000";
				PCNextO<=PCNextI;
				MemAccess <= '0';
				MemWrEn <= '0';
				InterlockO<='0';
				Set7Segment <= '0';
				--srai
				if (Insn(14 downto 12)=funct_SRL) and insn(30)='1' then
					Aux <= '1';
					Imm <= std_logic_vector(resize(signed(Insn(24 downto 20)), Imm'length));
				else
					Aux <= '0';
					Imm <= std_logic_vector(resize(signed(Insn(31 downto 20)), Imm'length));
				end if;
				SrcRegNo2 <= "00000";
				
			when opcode_AUIPC =>
				Imm <= std_logic_vector(resize(signed(Insn(31 downto 12)), Imm'length));
				SelSrc2 <= '0';
				DestWrEn <= '1';
				Jump<='0';	
				JumpRel<='0';
				JumpTarget<=x"00000000";
				PCNextO<=PCNextI;	
				Funct <= funct_ADD;
				MemAccess <= '0';
				MemWrEn <= '0';
				InterlockO<='0';
				Aux<='0';
				Set7Segment <= '0';
				
			--SevenSeg
			when "1110011" =>
				if Insn(31 downto 20) = "011110001000" then
					Set7Segment<= '1';	
				else
					Set7Segment <= '0';
				end if;
				Imm <= x"00000000"; 
				Aux<='0';
				DestWrEn <= '0';
				SelSrc2 <= '0';
				Jump<='0';
				JumpRel<='0';
				JumpTarget<=x"00000000";
				PCNextO<=PCNextI;
				MemAccess <= '0';
				MemWrEn <= '0';
				InterlockO<='0';
				
			when others =>
				Imm <= x"00000000"; 
				Aux<='0';
				DestWrEn <= '0';
				SelSrc2 <= '0';
				Jump<='0';
				JumpRel<='0';
				JumpTarget<=x"00000000";
				PCNextO<=PCNextI;
				MemAccess <= '0';
				MemWrEn <= '0';
				InterlockO<='0';
				Set7Segment <= '0';
		end case;
	
		if Insn(11 downto 07) = "00000" then
			DestWrEn <= '0';
		end if;
	
end if;			
	
		
end process;

end RTL;
