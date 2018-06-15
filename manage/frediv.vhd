library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity frediv is
  port(control:in std_logic_vector(3 downto 0);
       clk_in:in std_logic;
		 voice:out std_logic);
end frediv;

architecture fun1 of frediv is 
signal n:integer range 0 to 499;
signal div:integer range  0 to 499;
signal zj:std_logic;
begin 
  process(clk_in)
  begin
  if(control="0000") then div<=0;
  elsif(control="0001") then div<=49;
  elsif(control="0010") then div<=249;
  elsif(control="0100") then div<=349;
  else div<=499;
  end if;
  
  if(clk_in'event and clk_in='1') then 
    if(n<=div) then 
		n<=n+1;
	 else
	 n<=0;
	 zj<=not zj;
	 end if;
	end if;
  end process;
  voice<=zj;
end architecture;