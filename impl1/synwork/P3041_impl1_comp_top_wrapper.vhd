--
-- Synopsys
-- Vhdl wrapper for top level design, written on Wed Jun 15 22:29:07 2022
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wrapper_for_main is
   port (
      RP : in std_logic;
      RCK : in std_logic;
      SDO : in std_logic;
      XEN : out std_logic;
      TP1 : out std_logic;
      TP2 : out std_logic;
      TP3 : out std_logic;
      TP4 : out std_logic;
      OND : out std_logic;
      ONL : out std_logic;
      NCS : out std_logic;
      SCK : out std_logic;
      xdac : out std_logic_vector(4 downto 0)
   );
end wrapper_for_main;

architecture behavior of wrapper_for_main is

component main
 port (
   RP : in std_logic;
   RCK : in std_logic;
   SDO : in std_logic;
   XEN : out std_logic;
   TP1 : out std_logic;
   TP2 : out std_logic;
   TP3 : out std_logic;
   TP4 : out std_logic;
   OND : out std_logic;
   ONL : out std_logic;
   NCS : out std_logic;
   SCK : out std_logic;
   xdac : out std_logic_vector (4 downto 0)
 );
end component;

signal tmp_RP : std_logic;
signal tmp_RCK : std_logic;
signal tmp_SDO : std_logic;
signal tmp_XEN : std_logic;
signal tmp_TP1 : std_logic;
signal tmp_TP2 : std_logic;
signal tmp_TP3 : std_logic;
signal tmp_TP4 : std_logic;
signal tmp_OND : std_logic;
signal tmp_ONL : std_logic;
signal tmp_NCS : std_logic;
signal tmp_SCK : std_logic;
signal tmp_xdac : std_logic_vector (4 downto 0);

begin

tmp_RP <= RP;

tmp_RCK <= RCK;

tmp_SDO <= SDO;

XEN <= tmp_XEN;

TP1 <= tmp_TP1;

TP2 <= tmp_TP2;

TP3 <= tmp_TP3;

TP4 <= tmp_TP4;

OND <= tmp_OND;

ONL <= tmp_ONL;

NCS <= tmp_NCS;

SCK <= tmp_SCK;

xdac <= tmp_xdac;



u1:   main port map (
		RP => tmp_RP,
		RCK => tmp_RCK,
		SDO => tmp_SDO,
		XEN => tmp_XEN,
		TP1 => tmp_TP1,
		TP2 => tmp_TP2,
		TP3 => tmp_TP3,
		TP4 => tmp_TP4,
		OND => tmp_OND,
		ONL => tmp_ONL,
		NCS => tmp_NCS,
		SCK => tmp_SCK,
		xdac => tmp_xdac
       );
end behavior;
