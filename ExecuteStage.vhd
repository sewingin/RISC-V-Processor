library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE work.constants.all;

entity ExecuteStage is
    Port (  
			  ClearI : in std_logic;		
			  FunctI : in std_logic_vector(2 downto 0);
			  SrcData1I : in std_logic_vector(31 downto 0);
			  SrcData2I : in std_logic_vector(31 downto 0);  
			  ImmI : in std_logic_vector(31 downto 0);			  
			  SelSrc2I : in std_logic;
			  DestRegNoI : in std_logic_vector(4 downto 0);
			  DestWrEnI : in std_logic;
			  AuxI : in std_logic;
			  JumpI : in std_logic;			  
			  JumpRelI : in std_logic;			  
			  MemAccessI : in std_logic;
			  MemWrEnI : in std_logic;		
			  PCNextI : in std_logic_vector(31 downto 0);
			  JumpTargetI : in std_logic_vector(31 downto 0);		  	  
			  Set7SegI : in std_logic;
			  FunctO : out std_logic_vector(2 downto 0);
			  SelSrc2O : out std_logic;
			  ImmO : out std_logic_vector(31 downto 0);			  
			  SrcData2O : out std_logic_vector(31 downto 0);
			  SrcData1O : out std_logic_vector(31 downto 0);
			  PCNextO : out std_logic_vector(31 downto 0);			  
			  JumpTargetO : out std_logic_vector(31 downto 0);
			  DestRegNoO : out std_logic_vector(4 downto 0);
			  DestWrEnO : out std_logic;
			  AuxO : out std_logic;
			  JumpO : out std_logic;
			  JumpRelO : out std_logic;
			  MemAccessO : out std_logic;
			  ClearO : out std_logic;
			  Set7SegO : out std_logic;
			  MemWrEnO : out std_logic;
			  CLK : in std_logic;
			  nRst : in std_logic;
			  Stall : in std_logic);
			
end ExecuteStage;

architecture RTL of ExecuteStage is
begin

process(CLK,nRst, Stall)
begin

	if nRst= '0' then
		FunctO <= "000";
		SrcData1O <= x"00000000";
		SrcData2O <= x"00000000";
		ImmO <= x"00000000";
		SelSrc2O <= '0';
		AuxO <= '0';
		DestWrEnO <= '0';
		DestRegNoO <= "00000";
		PCNextO <= x"00000000";
		JumpO <= '1';
		JumpRelO <= '0';
		JumpTargetO <= x"00000000";
		MemAccessO <= '0';
		MemWrEnO <= '0';
		ClearO <= '0';
		Set7SegO <= '0';
		
	elsif rising_edge(CLK) and Stall /= '1' then
	
		if ClearI = '1' then
			MemWrEnO <= '0';
			DestRegNoO <= "00000";
		else
			MemWrEnO <= MemWrEnI;
			DestRegNoO <= DestRegNoI;
		end if;
		FunctO <= FunctI;
		SrcData1O <= SrcData1I;
		SrcData2O <= SrcData2I;
		ImmO <= ImmI;
		SelSrc2O <= SelSrc2I;
		AuxO <= AuxI;
		DestWrEnO <= DestWrEnI;
		
		PCNextO <= PCNextI;
		JumpO <= JumpI;
		JumpRelO <= JumpRelI;
		JumpTargetO <= JumpTargetI;
		MemAccessO <= MemAccessI;
		ClearO <= ClearI;
		Set7SegO <= Set7SegI;
	end if;

end process;

end RTL;
