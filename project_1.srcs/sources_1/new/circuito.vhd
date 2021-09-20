library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity circuito is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end circuito;

architecture Behavioral of circuito is

    component plex
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               sel : in STD_LOGIC;
               res : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    component bcd_7
        Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
               seg : out STD_LOGIC_VECTOR (6 downto 0));
    end component;

    signal multi_result : STD_LOGIC_VECTOR (3 downto 0);

begin
    u1: plex port map (A => A, B => B, sel => sel, res => multi_result);
    an <= "1110" when sel = '0' else "1101";
    u2 : bcd_7 port map (bcd => multi_result, seg => seg);

end Behavioral;