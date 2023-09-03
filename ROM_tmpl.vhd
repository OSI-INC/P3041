-- VHDL module instantiation generated by SCUBA Diamond (64-bit) 3.12.1.454
-- Module  Version: 6.5
-- Sun Sep 03 18:09:46 2023

-- parameterized module component declaration
component ROM
    port (WrAddress: in  std_logic_vector(11 downto 0); 
        RdAddress: in  std_logic_vector(11 downto 0); 
        Data: in  std_logic_vector(7 downto 0); WE: in  std_logic; 
        RdClock: in  std_logic; RdClockEn: in  std_logic; 
        Reset: in  std_logic; WrClock: in  std_logic; 
        WrClockEn: in  std_logic; Q: out  std_logic_vector(7 downto 0));
end component;

-- parameterized module component instance
__ : ROM
    port map (WrAddress(11 downto 0)=>__, RdAddress(11 downto 0)=>__, 
        Data(7 downto 0)=>__, WE=>__, RdClock=>__, RdClockEn=>__, Reset=>__, 
        WrClock=>__, WrClockEn=>__, Q(7 downto 0)=>__);
