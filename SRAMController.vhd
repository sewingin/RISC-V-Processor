library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity SRAMController is

	Port(
		data: in std_logic_vector(31 downto 0);
		address: in std_logic_vector(17 downto 0);
		wren:  in std_logic;
		byteena: in std_logic_vector(3 downto 0);
		data_out: out std_logic_vector(31 downto 0);
		SRAM_address: out std_logic_vector(17 downto 0);
		SRAM_data: inout std_logic_vector(15 downto 0);
		SRAM_Read_Enable_N: out std_logic;
		SRAM_Write_Enable_N: out std_logic;
		SRAM_Chip_Enable_N: out std_logic;
		SRAM_Low_Byte_N: out std_logic;
		SRAM_High_Byte_N: out std_logic;
		Clk: in std_logic;
		nRest: in std_logic;
		Stall: out std_logic
		);
		
end SRAMController;

architecture RTL of SRAMController is

	type state_type is(wait0, readHigh,readLow, write1);
	signal currentState: state_type;
		
	begin
		
	process(nRest, Clk)
	
	variable saveAddress: std_logic_vector(16 downto 0);
	variable saveData: std_logic_vector(15 downto 0);
	
		begin
		
		if nRest = '0' then
				SRAM_address<= (others => '1');
				SRAM_data <= (others => 'Z');
				SRAM_Read_Enable_N <= '1';
				SRAM_Write_Enable_N<= '1';
				SRAM_Chip_Enable_N<= '1';
				SRAM_Low_Byte_N <= '1';
				SRAM_High_Byte_N <= '1';
				Stall <= '0';
				currentState <= wait0;
				saveData := (others => '0');
				data_out <= (others => '0');
				saveAddress := (others => '0');
				
		elsif rising_edge(Clk) then 
		
			case currentState is
			
				when wait0 =>
	
					--mem instruction and address(17) = '0'
					if byteena /= "0000" and to_integer(unsigned(address)) >= 512 then						
						--save instruction
						
						if wren = '1' then
								case byteena is
									when "1111" =>
										SRAM_Write_Enable_N<= '0';
										SRAM_Read_Enable_N <= '1';
										--high halfword first
										SRAM_data <= data(31 downto 16);
										saveData := data(15 downto 0);
										--write address
										SRAM_address <= address(16 downto 0) & '1';
										saveAddress := address(16 downto 0);
										currentState <= write1;							
										Stall <= '1';
										
										SRAM_Chip_Enable_N<= '0';
										SRAM_Low_Byte_N <= '0';
										SRAM_High_Byte_N <= '0';
									when "0001" =>	
										SRAM_Write_Enable_N<= '0';
										SRAM_Read_Enable_N <= '0';
										SRAM_address <= address(16 downto 0) & '0';
										SRAM_data <= "ZZZZZZZZ" & data(7 downto 0);
										Stall <= '0';
										
										SRAM_Chip_Enable_N<= '0';
										SRAM_Low_Byte_N <= '0';
										SRAM_High_Byte_N <= '1';
									when "0010" =>
										SRAM_Write_Enable_N<= '0';
										SRAM_Read_Enable_N <= '0';
										SRAM_address <= address(16 downto 0) & '0';
										SRAM_data <= data(15 downto 8) & "ZZZZZZZZ";
										Stall <= '0';
										
										SRAM_Chip_Enable_N<= '0';
										SRAM_Low_Byte_N <= '1';
										SRAM_High_Byte_N <= '0';
									when "0100" =>
										SRAM_Write_Enable_N<= '0';
										SRAM_Read_Enable_N <= '0';
										SRAM_address <= address(16 downto 0) & '1';
										SRAM_data <= "ZZZZZZZZ" & data(23 downto 16);
										Stall <= '0';
										
										SRAM_Chip_Enable_N<= '0';
										SRAM_Low_Byte_N <= '0';
										SRAM_High_Byte_N <= '1';
									when "1000" =>
										SRAM_Write_Enable_N<= '0';
										SRAM_Read_Enable_N <= '0';
										SRAM_address <= address(16 downto 0) & '1';
										SRAM_data <= data(31 downto 24) & "ZZZZZZZZ";
										Stall <= '0';
										
										SRAM_Chip_Enable_N<= '0';
										SRAM_Low_Byte_N <= '1';
										SRAM_High_Byte_N <= '0';
									when "0011" =>
										SRAM_Write_Enable_N<= '0';
										SRAM_Read_Enable_N <= '1';
										SRAM_address <= address(16 downto 0) & '0';
										SRAM_data <= data(15 downto 0);
										Stall <= '0';
										
										SRAM_Chip_Enable_N<= '0';
										SRAM_Low_Byte_N <= '0';
										SRAM_High_Byte_N <= '0';
									when "1100" =>
										SRAM_Write_Enable_N<= '0';
										SRAM_Read_Enable_N <= '1';
										SRAM_address <= address(16 downto 0) & '1';
										SRAM_data <= data(31 downto 16);
										Stall <= '0';
										
										SRAM_Chip_Enable_N<= '0';
										SRAM_Low_Byte_N <= '0';
										SRAM_High_Byte_N <= '0';
									when others =>
										null;
								end case;
						
						--load instruction
						else
								SRAM_Write_Enable_N<= '1';
								SRAM_Read_Enable_N <= '0';
								saveAddress:=address(16 downto 0);
								--read high halfword first
								SRAM_address <= address(16 downto 0) & '1';
								currentState <= readHigh;	
								--saveData := SRAM_data;	
								SRAM_data<=(others => 'Z');
								--data_out<= (others => '0');
								Stall <= '1';
								SRAM_Chip_Enable_N<= '0';
								SRAM_Low_Byte_N <= '0';
								SRAM_High_Byte_N <= '0';
						end if;
					else
						--
						--SRAM_Write_Enable_N<= '1';
						--SRAM_Read_Enable_N <= '0';
						
						--SRAM_Chip_Enable_N<= '0';
						--SRAM_Low_Byte_N <= '1';
						--SRAM_High_Byte_N <= '1';
						--Stall<='0';
						
						SRAM_address<= (others => '0');
						SRAM_data <= (others => 'Z');
						SRAM_Read_Enable_N <= '1';
						SRAM_Write_Enable_N<= '1';
						SRAM_Chip_Enable_N<= '0';
						SRAM_Low_Byte_N <= '0';
						SRAM_High_Byte_N <= '0';
						Stall <= '0';
						currentState <= wait0;
						saveData := (others => '0');
						data_out <= (others => '0');
						saveAddress := (others => '0');
					end if;
					
				when readHigh =>
				
					SRAM_Write_Enable_N<= '1';
					SRAM_Read_Enable_N <= '0';
					--save high word in variable
					saveData := SRAM_data;
					Stall <= '1';
					data_out<= x"00000000"; --saveData & SRAM_data;
					currentState <= readLow;
					--read low halfword next
					SRAM_address <= saveAddress & '0';
					--saveAddress := "00000000000000000";
					SRAM_Chip_Enable_N<= '0';
					SRAM_Low_Byte_N <= '0';
					SRAM_High_Byte_N <= '0';	
				when readLow =>
					
					SRAM_Write_Enable_N<= '1';
					SRAM_Read_Enable_N <= '0';
					--save low word in variable
					--saveData := SRAM_data;
					Stall <= '0';
					data_out<= saveData & SRAM_data;
					currentState <= wait0;
					--read low halfword next
					SRAM_address <= (others => '0'); --"0000000" & saveAddress & '0';
					--saveAddress := "00000000000000000";
					--saveData := x"0000";
					SRAM_data<=(others => 'Z');
					SRAM_Chip_Enable_N<= '0';
					SRAM_Low_Byte_N <= '0';
					SRAM_High_Byte_N <= '0';	
				when write1 =>
				
					SRAM_Write_Enable_N<= '0';
					SRAM_Read_Enable_N <= '1';
					--low word second 
					SRAM_data <= saveData;
					--saveData := x"0000";
					--write address
					SRAM_address <= saveAddress & '0';
					--saveAddress := "00000000000000000";
					currentState <= wait0;
					Stall <= '0';
					SRAM_Chip_Enable_N<= '0';
					SRAM_Low_Byte_N <= '0';
					SRAM_High_Byte_N <= '0';	
					data_out<= x"00000000"; 
			end case;
			
		end if;

	end process;
end RTL;