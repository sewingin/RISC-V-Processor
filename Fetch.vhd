library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE work.constants.all;

entity Fetch is
    Port (
			  PCOLD : in std_logic_vector(31 downto 0);
			  Jump : in std_logic;
			  JumpTarget : in std_logic_vector(31 downto 0);
			  InterlockI : in std_logic;
			  SetRV32CI : in std_logic;
			  Stall : in std_logic;
			  PCNextO : out std_logic_vector(31 downto 0);
			  SetUpperO : out std_logic;
			  ImmemAddr : out std_logic_vector(9 downto 0));
end Fetch;

architecture RTL of Fetch is
begin

process(Jump, JumpTarget, PCOLD, InterlockI, SetRV32CI, Stall)
begin

	if Jump='1' then
		--set SetUpper if junp target is upper 2 bytes of the instruction
		if (to_integer(unsigned(JumpTarget)) mod 4) /= 0 then
			PCNextO <= std_logic_vector(unsigned(JumpTarget)-2);
			SetUpperO<= '1';
		else
			PCNextO <= JumpTarget;
			SetUpperO <= '0';
		end if;
		ImmemAddr <= JumpTarget(11 downto 2);
		--stall if load instruction is in decode
	elsif InterlockI = '1' or Stall = '1' then
		PCNextO <= PCOLD;
		ImmemAddr <= PCOLD(11 downto 2);
		SetUpperO <= '0';
		--stall if next instruction is needed again because an 16 bit instruction
	elsif SetRV32CI = '1' then
		PCNextO <= PCOLD;
		ImmemAddr <= PCOLD(11 downto 2);
		SetUpperO <= '0';
	else
		PCNextO <= std_logic_vector(signed(PCOLD) + 4);
		ImmemAddr <= std_logic_vector(signed(PCOLD) + 4)(11 downto 2);
		SetUpperO <= '0';
   end if;
	
end process;

end RTL;
