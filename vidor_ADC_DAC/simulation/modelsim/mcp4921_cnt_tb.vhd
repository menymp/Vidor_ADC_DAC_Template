LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY mcp4921_cnt_tb  IS 
END ; 
 
ARCHITECTURE mcp4921_cnt_tb_arch OF mcp4921_cnt_tb IS
  SIGNAL mosi   :  STD_LOGIC  ; 
  SIGNAL sck   :  STD_LOGIC  ; 
  SIGNAL cs   :  STD_LOGIC  ; 
  SIGNAL done   :  STD_LOGIC  ; 
  SIGNAL data   :  std_logic_vector (11 downto 0)  ; 
  SIGNAL start   :  STD_LOGIC  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  SIGNAL reset   :  STD_LOGIC  ; 
  COMPONENT MCP4921_cnt  
    PORT ( 
      mosi  : out STD_LOGIC ; 
      sck  : out STD_LOGIC ; 
      cs  : out STD_LOGIC ; 
      done  : out STD_LOGIC ; 
      data  : in std_logic_vector (11 downto 0) ; 
      start  : in STD_LOGIC ; 
      clk  : in STD_LOGIC ; 
      reset  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : MCP4921_cnt  
    PORT MAP ( 
      mosi   => mosi  ,
      sck   => sck  ,
      cs   => cs  ,
      done   => done  ,
      data   => data  ,
      start   => start  ,
      clk   => clk  ,
      reset   => reset   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 10 us, Period = 30 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 15 ns ;
-- 15 ns, single loop till start period.
	for Z in 1 to 332
	loop
	    clk  <= '1'  ;
	   wait for 15 ns ;
	    clk  <= '0'  ;
	   wait for 15 ns ;
-- 9975 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 15 ns ;
	 clk  <= '0'  ;
	wait for 10 ns ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 reset  <= '0'  ;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 start  <= '1'  ;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 10 us, Period = 0 ns
  Process
	Begin
	 data  <= "101010101010"  ;
	wait for 10 us ;
-- dumped values till 10 us
	wait;
 End Process;
END;
