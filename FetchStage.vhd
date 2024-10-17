library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FetchStage is
    Port ( 
			  PCI : in std_logic_vector (31 downto 0);
			  CLK : in std_logic;
			  nRst : in std_logic;			  	  
           PCO : out std_logic_vector(31 downto 0));
end FetchStage;

architecture RTL of FetchStage is
begin

process(CLK,nRst)
begin
	if nRst= '0' then
	   PCO <= std_logic_vector(to_signed(-4,32));	
	elsif rising_edge(CLK) then
		PCO<=PCI;
	end if;
end process;

end RTL;
