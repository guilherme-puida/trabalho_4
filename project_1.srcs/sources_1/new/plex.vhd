library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity plex is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           res : out STD_LOGIC_VECTOR (3 downto 0));
end plex;

architecture Behavioral of plex is

begin

    res <= A when sel = '0' else B;
    
end Behavioral;