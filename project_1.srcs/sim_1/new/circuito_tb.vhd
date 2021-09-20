library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity circuito_tb is
--  Port ( );
end circuito_tb;

architecture Behavioral of circuito_tb is

    component circuito
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               sel : in STD_LOGIC;
               seg : out STD_LOGIC_VECTOR (6 downto 0);
               an : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal s_sel : STD_LOGIC;
    signal s_A, s_B, s_an : STD_LOGIC_VECTOR (3 downto 0);
    signal s_seg : STD_LOGIC_VECTOR (6 downto 0);
    
begin

    uut: circuito port map (A=>s_A, B=>s_B, sel=>s_sel, seg=>s_seg, an=>s_an);
    
    stimulus: process
    begin
        -- Testando com sel = '0'
        s_A <= "0000"; s_B <= "1111"; s_sel <= '0';
        wait for 10ns;
        
        s_A <= "0001"; s_B <= "1111"; s_sel <= '0';
        wait for 10ns;
        
        s_A <= "0010"; s_B <= "1111"; s_sel <= '0';
        wait for 10ns;
        
        s_A <= "0011"; s_B <= "1111"; s_sel <= '0';
        wait for 10ns;
        
        s_A <= "0100"; s_B <= "1111"; s_sel <= '0';
        wait for 10ns;
        
        s_A <= "0101"; s_B <= "1111"; s_sel <= '0';
        wait for 10ns;
        
        s_A <= "0110"; s_B <= "1111"; s_sel <= '0';
        wait for 10ns;
        
        s_A <= "0111"; s_B <= "1111"; s_sel <= '0';
        wait for 10ns;
        
        s_A <= "1000"; s_B <= "1111"; s_sel <= '0';
        wait for 10ns;
        
        s_A <= "1001"; s_B <= "1111"; s_sel <= '0';
        wait for 10ns;       
        
        -- Testando para sel = '1'
        s_A <= "1111"; s_B <= "0000"; s_sel <= '1';
        wait for 10ns;
        
        s_A <= "1111"; s_B <= "0001"; s_sel <= '1';
        wait for 10ns;
        
        s_A <= "1111"; s_B <= "0010"; s_sel <= '1';
        wait for 10ns;
        
        s_A <= "1111"; s_B <= "0011"; s_sel <= '1';
        wait for 10ns;
        
        s_A <= "1111"; s_B <= "0100"; s_sel <= '1';
        wait for 10ns;
        
        s_A <= "1111"; s_B <= "0101"; s_sel <= '1';
        wait for 10ns;
        
        s_A <= "1111"; s_B <= "0110"; s_sel <= '1';
        wait for 10ns;
        
        s_A <= "1111"; s_B <= "0111"; s_sel <= '1';
        wait for 10ns;
        
        s_A <= "1111"; s_B <= "1000"; s_sel <= '1';
        wait for 10ns;
        
        s_A <= "1111"; s_B <= "1001"; s_sel <= '1';
        wait for 10ns;
        
        wait;
    end process;


end Behavioral;
