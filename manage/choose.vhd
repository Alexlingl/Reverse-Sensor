library ieee;
use ieee.std_logic_1164.all;

entity choose is
  port(chin:in std_logic_vector(3 downto 0);
       fre_div_10hz:in std_logic;
		 fre_div_100hz:in std_logic;
		 fre_div_1khz:in std_logic;
		 res_fre:out std_logic);
end choose;

architecture fun1 of choose is
begin
  process(chin,fre_div_100hz,fre_div_10hz,fre_div_1khz)
  begin
  if(chin="0000") then res_fre<=fre_div_10hz;
  elsif(chin="0001") then res_fre<=fre_div_10hz;
  elsif(chin="0010") then res_fre<=fre_div_100hz;
  elsif(chin="0100") then res_fre<=fre_div_100hz;
  elsif(chin="1000") then res_fre<=fre_div_1khz;
  end if;
  end process;
end architecture;