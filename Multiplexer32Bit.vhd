library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE work.constants.all;

entity Multiplexer32Bit is
    Port (
			  Sel : in std_logic;
			  A : in std_logic_vector(31 downto 0);
			  B : in std_logic_vector(31 downto 0);			  
			  O : out std_logic_vector(31 downto 0));
			  
end Multiplexer32Bit;

architecture RTL of Multiplexer32Bit is
begin

process(Sel,A,B)

begin

	if sel = '0' then
	   O <= A;
	else
	    O <= B;
	end if;
	
end process;

end RTL;
