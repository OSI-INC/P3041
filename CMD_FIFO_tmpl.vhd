-- VHDL module instantiation generated by SCUBA Diamond (64-bit) 3.12.1.454
-- Module  Version: 5.8
-- Wed Aug 30 13:22:09 2023

-- parameterized module component declaration
component CMD_FIFO
    port (Data: in  std_logic_vector(7 downto 0); WrClock: in  std_logic; 
        RdClock: in  std_logic; WrEn: in  std_logic; RdEn: in  std_logic; 
        Reset: in  std_logic; RPReset: in  std_logic; 
        Q: out  std_logic_vector(7 downto 0); Empty: out  std_logic; 
        Full: out  std_logic; AlmostEmpty: out  std_logic; 
        AlmostFull: out  std_logic);
end component;

-- parameterized module component instance
__ : CMD_FIFO
    port map (Data(7 downto 0)=>__, WrClock=>__, RdClock=>__, WrEn=>__, 
        RdEn=>__, Reset=>__, RPReset=>__, Q(7 downto 0)=>__, Empty=>__, 
        Full=>__, AlmostEmpty=>__, AlmostFull=>__);
