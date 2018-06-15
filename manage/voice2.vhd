library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity voice2 is
  port(control:in std_logic_vector(3 downto 0);
       clk_in:in std_logic;
		 voice:out std_logic);
end voice2;

architecture fun1 of voice2 is 
signal n:integer range 0 to 10;
signal div:integer range  0 to 9;
signal zj:std_logic:='1';
begin 
  process(clk_in)
  begin
  if(control="0000") then div<=3;
  elsif(control="0001") then div<=4;
  elsif(control="0010") then div<=5;
  elsif(control="0100") then div<=6;
  else div<=7;
  end if;
  
  if(clk_in'event and clk_in='1') then 
  n<=n+1;
    if(n=div) then 
		zj<='0';
	 end if;
	end if;
  if(n=10) then 
  zj<='1';n<=0;
  end if;
  end process;
  voice<=zj;
end architecture;
