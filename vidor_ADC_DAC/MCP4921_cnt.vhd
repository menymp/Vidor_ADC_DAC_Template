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
-- Logic module for mcp4921 Microchip SPI DAC IC
--*********************************************************************


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

--*********************************************************************
-- Logic module for mcp4921 Microchip SPI DAC IC
--*********************************************************************
ENTITY MCP4921_cnt IS
  PORT(
      clk       		: IN  STD_LOGIC;                    --clock
      reset   			: IN  STD_LOGIC;                    --reset
      start  			: IN 	STD_LOGIC;                    --Start DAC send
      data				: IN  STD_LOGIC_VECTOR(11 DOWNTO 0);--DAC 12 bit output value
		done				: out	STD_LOGIC;							--DAC send done
		sck				: out STD_LOGIC;							--clk output
		mosi				: out STD_LOGIC;							--master output slave input
		cs					: out STD_LOGIC);							--chip select 
END MCP4921_cnt;

architecture bhv of MCP4921_cnt IS
type DAC_MOORE is (Idle, Set_output, TrasmitCfg_low,TrasmitCfg_high);--, TrasmitData_low,	TrasmitData_high);
signal current_state, next_state: DAC_MOORE;
signal cfg_data 	: std_logic_vector(3 downto 0) := "0011"; --no ignore, unbuffered, unit gain, no shutdown 
signal data_Index : integer range 0 to 20 := 0;  -- count up to 12
signal output_data : std_logic_vector(15 downto 0);
begin

   PROCESS (clk, reset)
   BEGIN
      IF reset = '1' THEN
         current_state <= Idle;
      ELSIF (clk'EVENT AND clk = '1') THEN
         CASE current_state IS
            WHEN Idle=>
				   data_Index <= 0;
               IF start = '1' THEN
                  current_state <= Set_output;
               ELSE
                  current_state <= Idle;
               END IF;
					
            WHEN Set_output=>
                 output_data <= cfg_data & data;
					  data_Index <= 0;
                 current_state <= TrasmitCfg_low;
					  
            WHEN TrasmitCfg_low=>
					  current_state <= TrasmitCfg_high;
					  
				WHEN TrasmitCfg_high=>
				
					  output_data <= output_data(14 downto 0) & '0';
					  
				     if (data_Index = 15) then
						 data_Index <= 0;
						 current_state <= Idle;
					  else
					    data_Index <= data_Index + 1;
						 current_state <= TrasmitCfg_low;
					  end if;
					  
         END CASE;
      END IF;
   END PROCESS;
   
   PROCESS (current_state)
   BEGIN
      CASE current_state IS
         WHEN Idle =>
            cs <= '1';
				sck <= '0';
				mosi <='0';
				done <='1';
				
         WHEN Set_output =>
			   cs <= '0';
				sck <= '0';
				mosi <='0';
				done <='0';
            
         WHEN TrasmitCfg_low =>
				cs <= '0';
				sck <= '0';
				mosi <=output_data(15);
				done <='0';
            
			WHEN TrasmitCfg_high =>
				cs <= '0';
				sck <= '1';
				mosi <=output_data(15);
				done <='0';
				
      END CASE;
   END PROCESS;
--	-- Secuenciador
--	process(clk,reset)
--	begin
--		if(reset='1') then
--			current_state <= Idle;
--		elsif(rising_edge(clk)) then
--			current_state <= next_state;
--		end if;
--	end process;
--  
--	-- Logica de cambio de estado
--	-- Logica combinacional
--	process(clk,current_state)
--	--variable data_Index : integer range 0 to 17 := 0;  -- count up to 12
--	begin
--		case(current_state) is
--			when Idle =>
--				-- Idle
--				cs <= '1';
--				sck <= '0';
--				mosi <='0';
--				done <='1';
--				data_index <= 0;
--				
--				if(start = '1') then
--					next_state <= Set_output;
--				else
--					next_state <= Idle;
--				end if;
--				
--			when Set_output =>
--				-- Set_output
--				cs <= '0';
--				sck <= '0';
--				mosi <='0';
--				done <='0';
--				output_data <= cfg_data & data;
--				data_Index <= 0;
--
--				next_state <= TrasmitCfg_low;
--				
--			when TrasmitCfg_low => 
--				-- TrasmitCfg_low
--				cs <= '0';
--				sck <= '0';
--				mosi <=output_data(15);
--				done <='0';
--				
--				next_state <= TrasmitCfg_high;
--			
--			when TrasmitCfg_high =>
--				-- TrasmitCfg_high
--				cs <= '0';
--				sck <= '1';
--				mosi <=output_data(15);
--				done <='0';
--				
--				
--				output_data <= output_data(14 downto 0) & '0';
--				
--				if(data_Index > 16) then
--					next_state <= Idle;
--					data_Index <= 0;
--				else
--					next_State <= TrasmitCfg_low;
--					data_Index <= data_Index + 1;
--				end if;
--		end case;
--	end process;
end bhv;