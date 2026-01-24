-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Wed Dec  4 20:38:48 2024
-- Host        : m-desktop running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub
--               SoomRV-Arty.gen/sources_1/bd/axi_map/ip/axi_map_xpm_cdc_gen_0_0/axi_map_xpm_cdc_gen_0_0_stub.vhdl
-- Design      : axi_map_xpm_cdc_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity axi_map_xpm_cdc_gen_0_0 is
  Port (
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dest_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end axi_map_xpm_cdc_gen_0_0;

architecture stub of axi_map_xpm_cdc_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "src_clk,dest_clk,src_in[0:0],dest_out[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xpm_cdc_gen_v1_0_4,Vivado 2024.1";
begin
end;
