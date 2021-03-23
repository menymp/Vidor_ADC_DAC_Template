--*********************************************************************
-- This program is free software; you can redistribute it and/or
-- modify it under the terms of the GNU General Public License
-- as published by the Free Software Foundation; either version 2
-- of the License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--

--*********************************************************************


--*********************************************************************
-- Logic module for mcp4921 Microchip SPI DAC IC creates square signal
--*********************************************************************


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

--*********************************************************************
-- Logic module for mcp4921 Microchip SPI DAC IC creates square signal
--*********************************************************************
ENTITY MCP4921_TestModule IS
  PORT(
      clk       		: IN  STD_LOGIC;                    --clock
      reset   			: IN  STD_LOGIC;                    --reset
		done				: IN	STD_LOGIC;							--send done
      start  			: out STD_LOGIC;                    --Start DAC send
      data				: out STD_LOGIC_VECTOR(11 DOWNTO 0));--DAC 12 bit output value
						--DAC send done 
END MCP4921_TestModule;

architecture bhv of MCP4921_TestModule IS
type SQUARE_DAC_MOORE is (High_send,High_wait,TransferPauseHigh,Low_send,Low_wait,TransferPauseLow);
signal current_state, next_state: SQUARE_DAC_MOORE;
signal data_Index : integer range 0 to 501 := 0;  -- count up to 500

begin

   PROCESS (clk, reset)
   BEGIN
      IF reset = '1' THEN
         current_state <= High_send;
      ELSIF (clk'EVENT AND clk = '1') THEN
      CASE current_state IS
            WHEN High_send=>
					data_Index <= 0;
					current_state <= High_wait;
					
			   WHEN High_wait=>
					data_Index <= 0;
   				if(done = '1') then
      				current_state <= TransferPauseHigh;
   				else
   					current_state <= High_wait;
      			end if;
					
            WHEN TransferPauseHigh=>
					data_Index <= data_Index + 1;
				
				   if(data_Index > 200) then
					   current_state <= Low_send;
				   else
					   current_state <= TransferPauseHigh;
				   end if;
				
            WHEN Low_send=>
					data_Index <= 0;
					current_state <= Low_wait;
					
            WHEN Low_wait=>	
					data_Index <= 0;
   				if(done = '1') then
      				current_state <= TransferPauseLow;
   				else
   					current_state <= Low_wait;
      			end if;
					
            WHEN TransferPauseLow=>		
					data_Index <= data_Index + 1;
				
				   if(data_Index > 200) then
					   current_state <= High_send;
				   else
					   current_state <= TransferPauseLow;
				   end if;
					
      END CASE;
      END IF;
   END PROCESS;
   
   PROCESS (current_state)
   BEGIN
      CASE current_state IS
            WHEN High_send=>
					start <= '1';
					data <= "111111111111";

			   WHEN High_wait=>
					start <= '0';
					data <= "111111111111";
					
            WHEN TransferPauseHigh=>
					start <= '0';
					data <= "111111111111";
				
            WHEN Low_send=>
					start <= '1';
					data <= "000000000000";
					
            WHEN Low_wait=>	
					start <= '0';
					data <= "000000000000";
					
            WHEN TransferPauseLow=>		
					start <= '0';
					data <= "000000000000";
					
      END CASE;
   END PROCESS;

--	-- Secuenciador
--	process(clk,reset)
--	begin
--		if(reset='1') then
--			current_state <= High_send;
--		elsif(rising_edge(clk)) then
--			current_state <= next_state;
--		end if;
--	end process;
--  
--	-- Logica de cambio de estado
--	-- Logica combinacional
--	process(clk,current_state,done)
--	begin
--		case(current_state) is
--			when High_send =>
--				-- High_send
--				start <= '1';
--				data <= "111111111111";
--				data_Index <= 0;
--
--				next_state <= High_wait;
--				
--			when High_wait =>
--				-- High_wait
--				start <= '0';
--				data <= "111111111111";
--				data_Index <= 0;
--				
--				if(done = '1') then
--					next_state <= TransferPauseHigh;
--				else
--					next_state <= High_wait;
--				end if;
--
--			when TransferPauseHigh => 
--				-- TransferPauseHigh
--				start <= '0';
--				data <= "111111111111";
--				data_Index <= data_Index + 1;
--				
--				if(data_Index = 500) then
--					next_state <= Low_send;
--				else
--					next_state <= TransferPauseHigh;
--				end if;
--
--			when Low_send =>
--				-- Low_send
--				start <= '1';
--				data <= "000000000000";
--				data_Index <= 0;
--
--				next_state <= Low_wait;
--				
--			when Low_wait => 
--				-- Low_wait
--				start <= '0';
--				data <= "000000000000";
--				data_Index <= 0;
--				
--				if(done = '1') then
--					next_state <= TransferPauseLow;
--				else
--					next_state <= Low_wait;
--				end if;
--				
--			when TransferPauseLow =>
--				-- 	TransferPauseLow
--				start <= '0';
--				data <= "000000000000";
--				data_Index <= data_Index + 1;
--				
--				if(data_Index = 500) then
--					next_state <= High_send;
--				else
--					next_state <= TransferPauseLow;
--				end if;
--				
--		end case;
--	end process;
end bhv;