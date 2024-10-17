library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE work.constants.all;

entity MemStage is
    Port ( FunctI : in std_logic_vector(2 downto 0);
			  MemAccessI : in std_logic; 
		     DestDataI : in std_logic_vector(31 downto 0);
			  DestRegNoI : in std_logic_vector(4 downto 0);	
			  DestWrEnI : in std_logic;
			  FunctO : out std_logic_vector(2 downto 0);	
			  MemAccessO : out std_logic;			  	
			  DestDataO : out std_logic_vector(31 downto 0);	 
			  DestRegNoO : out std_logic_vector(4 downto 0);
			  DestWrEnO : out std_logic;			 	  	
			  CLK : in std_logic;	
			  nRst : in std_logic;
			  Stall : in std_logic);
end MemStage;

architecture RTL of MemStage is
begin

process(CLK,nRst,Stall)
begin
	if nRst='0' then
		FunctO <= "000";
		DestWrEnO <= '0';
		DestRegNoO <= "00000";
		MemAccessO <= '0';
		DestDataO <= x"00000000";
	elsif rising_edge(CLK) then
		if Stall /= '1' then
			FunctO <= FunctI;	
			DestRegNoO <= DestRegNoI;
			--if MemAccessI = '1' and DestWrEnI = '0' then
				--DestWrEnO<='1';
			--else
				DestWrEnO <= DestWrEnI;
			--end if;
			MemAccessO <= MemAccessI;
			DestDataO <= DestDataI;
--		else
--			FunctO <= "000";
--			DestWrEnO <= '0';
--			DestRegNoO <= "00000";
--			MemAccessO <= '0';
--			DestDataO <= x"00000000";
		end if;
	end if;
end process;

end RTL;
