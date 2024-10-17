library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE work.constants.all;

entity MemMux is
    Port (
			  FunctI : in std_logic_vector(2 downto 0);
			  Sel : in std_logic;
			  ALUDataIn : in std_logic_vector(31 downto 0);
			  MemoryDataIn : in std_logic_vector(31 downto 0);		
			  ROMDataIn: in std_logic_vector(31 downto 0);
			  WrData : out std_logic_vector(31 downto 0));
end MemMux;

architecture RTL of MemMux is
begin

process(Sel,ALUDataIn,MemoryDataIn,FunctI,ROMDataIn)

variable MemSource : std_logic_vector(31 downto 0);

begin

	if sel = '1' then
	
		if to_integer(unsigned(ALUDataIn)) >= 512 then
			MemSource := MemoryDataIn;
		else
			MemSource := ROMDataIn;
		end if;
	
		case FunctI is
			--LB
			when "000" =>
				case ALUDataIn(1 downto 0) is
					when "00" =>
						WrData <= std_logic_vector(resize(signed(MemSource(7 downto 0)), 32));
					when "01" =>	
						WrData <= std_logic_vector(resize(signed(MemSource(15 downto 8)), 32));
					when "10" =>
						WrData <= std_logic_vector(resize(signed(MemSource(23 downto 16)), 32));
					when "11" =>
						WrData <= std_logic_vector(resize(signed(MemSource(31 downto 24)), 32));
				end case;	
			--LBU
			when "100" =>
				case ALUDataIn(1 downto 0) is
					when "00" =>
							WrData<=(x"000000" & MemSource(7 downto 0));
					when "01" =>	
							WrData<=x"000000" & MemSource(15 downto 8);			
					when "10" =>
							WrData<=x"000000" & MemSource(23 downto 16);
					when "11" =>
							WrData<=x"000000" & MemSource(31 downto 24);
				end case;
			--LH
			when "001" =>
				case ALUDataIn(1) is
					when '1' =>
							WrData <= std_logic_vector(resize(signed(MemSource(31 downto 16)), 32));
					when '0' =>
							WrData <= std_logic_vector(resize(signed(MemSource(15 downto 0)), 32));
				end case;
			--LHU
			when "101" =>
				case ALUDataIn(1) is
					when '0' =>
							WrData <= x"0000" & MemSource(15 downto 0);			
					when '1' =>
							WrData <= x"0000" & MemSource(31 downto 16);
				end case;
			-- don't care	
			when others =>
				WrData <= MemSource;		
		end case;	   
	else
	    WrData <= ALUDataIn;
	end if;
	
end process;

end RTL;
