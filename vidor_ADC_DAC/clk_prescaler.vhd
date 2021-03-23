library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity clk_prescaler is
 --se uso un prescalador de 10 para la simulacion, 33554 operacion normal
	GENERIC(	prescaler         : INTEGER := 33554);         --number of output pwms and phases

	port (	clk,reset: in std_logic;
				clock_out: out std_logic);
end clk_prescaler;
  
architecture bhv of clk_prescaler is
  
signal count: integer:= 1;
signal tmp :  std_logic := '0';
  
begin
  
	process(clk,reset)
	begin
		if(reset='1') then
			count<=1;
			tmp<='0';
		elsif(clk'event and clk='1') then
			count <=count+1;
			if (count = prescaler) then
				tmp <= NOT tmp;
				count <= 1;
			end if;
		end if;
		clock_out <= tmp;
	end process;
  
end bhv;