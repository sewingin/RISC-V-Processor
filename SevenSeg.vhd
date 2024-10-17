library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SevenSeg is
    Port(  
           v : in std_logic_vector(31 downto 0);
			  set : in std_logic;
			  CLK : in std_logic;
			  nRst : in std_logic;
			  Hex0 : out std_logic_vector(6 downto 0);
			  Hex1 : out std_logic_vector(6 downto 0);
			  Hex2 : out std_logic_vector(6 downto 0);
			  Hex3 : out std_logic_vector(6 downto 0));
end SevenSeg;

architecture RTL of SevenSeg is

signal State : std_logic_vector(31 downto 0);

begin

process(CLK,nRst,set,v,State)

begin
	if nRst= '0' then
	   Hex0<="0000000";
		Hex1<="0000000";
		Hex2<="0000000";
		Hex3<="0000000";
		State<=(others=>'0');
	elsif rising_edge(CLK) then
		if set = '1' then
			State <= not v;
		end if;
		
		Hex0<=State(6 downto 0);
		Hex1<=State(14 downto 8);
		Hex2<=State(22 downto 16);
		Hex3<=State(30 downto 24);
	end if;
end process;

end RTL;
