library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RegSet is
    Port ( 
			  WrData : in std_logic_vector(31 downto 0);
			  WrRegNo : in std_logic_vector(4 downto 0);			  
			  WrEn :std_logic;
			  RdRegNo1 : in std_logic_vector(4 downto 0);
			  RdRegNo2 : in std_logic_vector(4 downto 0); 
			  CLK : std_logic;
			  nRst : std_logic;
			  RdData1 :out std_logic_vector(31 downto 0);	
           RdData2 :out std_logic_vector(31 downto 0));
end RegSet;

architecture RTL of RegSet is
TYPE TRegisters IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Registers : TRegisters;
begin

process(CLK, nRst)
begin
	if nRst= '0' then
		Registers <= (others => (others => '0'));
		Registers(1) <= x"00000001";
	elsif rising_edge(CLK) then
		if WrEn = '1' and WrRegNo /= "00000" then
			Registers(to_integer(unsigned(WrRegNo))) <= WrData;
		end if;
	end if;
end process;

process(RdRegNo1, RdRegNo2, Registers)
begin
		if RdRegNo1 ="00000" then 
			RdData1 <= x"00000000";
		else
			RdData1 <= Registers(to_integer(unsigned(RdRegNo1))); 
		end if;
		if RdRegNo2 = "00000" then	 
			RdData2 <= x"00000000"; 
		else
			RdData2 <= Registers(to_integer(unsigned(RdRegNo2))); 
		end if;
end process;
end RTL;
