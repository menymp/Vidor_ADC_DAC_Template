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
-- Dac control module
--*********************************************************************


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

--*********************************************************************
-- Dac control module
--*********************************************************************
ENTITY DAC_Trigger_module IS
  PORT(
      clk       		: IN  STD_LOGIC;                    --clock
      reset   			: IN  STD_LOGIC;                    --reset
		done				: IN	STD_LOGIC;							--send done
      start  			: out STD_LOGIC);                   --Start DAC send
END DAC_Trigger_module;

architecture bhv of DAC_Trigger_module IS
type SQUARE_DAC_MOORE is (High_send,High_wait,TransferPauseHigh);
signal current_state: SQUARE_DAC_MOORE;
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
					
            WHEN TransferPauseHigh=>--espera a finalizar la conversion
					data_Index <= data_Index + 1;
				
				   if(data_Index > 500) then
					   current_state <= High_send;
				   else
					   current_state <= TransferPauseHigh;
				   end if;
					
      END CASE;
      END IF;
   END PROCESS;
   
   PROCESS (current_state)
   BEGIN
      CASE current_state IS
            WHEN High_send=>
					start <= '1';

			   WHEN High_wait=>
					start <= '0';
					
            WHEN TransferPauseHigh=>
					start <= '0';
					
      END CASE;
   END PROCESS;
end bhv;