-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Mon Dec  2 16:54:09 2024
-- Host        : m-desktop running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub
--               SoomRV-Arty.gen/sources_1/ip/ila_0/ila_0_stub.vhdl
-- Design      : ila_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_0 is
  Port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 182 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 182 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 182 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 182 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 182 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 40 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 40 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 40 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 40 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 71 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 73 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 204 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 129 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 160 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 100 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 100 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 88 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 88 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 139 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 183 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe33 : in STD_LOGIC_VECTOR ( 439 downto 0 )
  );

end ila_0;

architecture stub of ila_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[182:0],probe1[182:0],probe2[182:0],probe3[182:0],probe4[182:0],probe5[40:0],probe6[40:0],probe7[40:0],probe8[40:0],probe9[19:0],probe10[19:0],probe11[19:0],probe12[19:0],probe13[19:0],probe14[19:0],probe15[19:0],probe16[71:0],probe17[47:0],probe18[6:0],probe19[73:0],probe20[204:0],probe21[129:0],probe22[160:0],probe23[127:0],probe24[127:0],probe25[100:0],probe26[100:0],probe27[88:0],probe28[88:0],probe29[139:0],probe30[183:0],probe31[31:0],probe32[31:0],probe33[439:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2024.1";
begin
end;
