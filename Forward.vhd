library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE work.constants.all;

entity Forward is
    Port (				
			  DestData_EX : in std_logic_vector(31 downto 0);
			  DestRegNo_EX : in std_logic_vector(4 downto 0);
			  DestWrEn_EX : in std_logic;
			  DestData_MEM : in std_logic_vector(31 downto 0);
			  DestRegNo_MEM : in std_logic_vector(4 downto 0);
			  DestWrEn_MEM : in std_logic;
			  SrcData1 : in std_logic_vector(31 downto 0);
			  SrcData2 : in std_logic_vector(31 downto 0);
			  SrcRegNo1 : in std_logic_vector(4 downto 0);
			  SrcRegNo2 : in std_logic_vector(4 downto 0);		  
			  FwdData1 : out std_logic_vector(31 downto 0);
			  FwdData2 : out std_logic_vector(31 downto 0));
end Forward;

architecture RTL of Forward is
begin

process(DestWrEn_EX,SrcRegNo1,SrcRegNo2,SrcData1,SrcData2,DestRegNo_EX,DestData_EX,DestWrEn_MEM,DestRegNo_MEM,DestData_MEM)
begin


	if (DestWrEn_EX = '1') and (SrcRegNo1 = DestRegNo_EX) then
		FwdData1<=DestData_EX;
	elsif (DestWrEn_MEM = '1') and (SrcRegNo1 = DestRegNo_MEM) then
		FwdData1<=DestData_MEM;
	else
		FwdData1<=SrcData1;
	end if;

	
	if (DestWrEn_EX = '1') and (SrcRegNo2 = DestRegNo_EX) then
		FwdData2<=DestData_EX;
	elsif (DestWrEn_MEM = '1') and (SrcRegNo2 = DestRegNo_MEM) then
		FwdData2<=DestData_MEM;
	else
		FwdData2<=SrcData2;
	end if;


end process;

end RTL;
