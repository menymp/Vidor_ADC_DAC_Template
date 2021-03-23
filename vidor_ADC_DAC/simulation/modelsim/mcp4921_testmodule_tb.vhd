LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY mcp4921_testmodule_tb  IS 
END ; 
 
ARCHITECTURE mcp4921_testmodule_tb_arch OF mcp4921_testmodule_tb IS
  SIGNAL data   :  std_logic_vector (11 downto 0)  ; 
  SIGNAL start   :  STD_LOGIC  ; 
  SIGNAL done   :  STD_LOGIC  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  SIGNAL reset   :  STD_LOGIC  ; 
  COMPONENT MCP4921_TestModule  
    PORT ( 
      data  : out std_logic_vector (11 downto 0) ; 
      start  : out STD_LOGIC ; 
      done  : in STD_LOGIC ; 
      clk  : in STD_LOGIC ; 
      reset  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : MCP4921_TestModule  
    PORT MAP ( 
      data   => data  ,
      start   => start  ,
      done   => done  ,
      clk   => clk  ,
      reset   => reset   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ps, End Time = 100 ns, Period = 100 ps
  Process
	Begin
	 clk  <= '0'  ;
	wait for 15 ns ;
-- 15 ns, single loop till start period.
	for Z in 1 to 1200
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
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 100 ns, Period = 0 ps
  Process
	Begin
	 reset  <= '0'  ;
	wait for 100 ms ;
-- dumped values till 100 ps
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 100 ns, Period = 0 ps
  Process
	Begin
	 done  <= '1'  ;
	wait for 15 ns ;
	 done <= '0';
	 wait for 510 ns;
	 done <= '1';
	 wait for 4.2 us;
	 done <= '0';
	 wait for 510 ns;
	 done <= '1';
	 wait;
	 
-- dumped values till 100 ps
	wait;
 End Process;
END;
