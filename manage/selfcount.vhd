library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity selfcount is
port( clk:in std_logic;
      clr,trig:out std_logic);
end selfcount;

architecture fun1 of selfcount is 

subtype sub_in is integer range 0 to 350000;
signal tmp:sub_in:=0;
begin
process(clk)
begin
     if(clk'event and clk ='1')then 
	  if(tmp=350000) then 
	  clr<='1';
	  tmp<=0;
	  elsif(tmp<=10) then
	  clr<='0';
	  trig<='1';
	  tmp<=tmp+1;
	  elsif(tmp>10) then
	  trig<='0';
	  clr<='0';
	  tmp<=tmp+1;
	  end if;
	  end if;
	  end process;
end fun1;