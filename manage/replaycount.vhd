library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity replaycount is
  port (datain: in integer;
        hun,ten,one : out std_logic_vector(3 downto 0));
end replaycount;

architecture behave of replaycount is
signal change:integer;
begin
  change<=datain;
  hun <= conv_std_logic_vector((change/100),4);--百位
  ten <= conv_std_logic_vector(((change/10) rem 10),4);--十位
  one <= conv_std_logic_vector((change rem 10),4);--个位
end behave;
