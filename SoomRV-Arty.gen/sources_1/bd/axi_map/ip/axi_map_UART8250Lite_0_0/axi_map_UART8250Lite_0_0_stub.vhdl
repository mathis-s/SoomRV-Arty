-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Nov 22 00:33:34 2023
-- Host        : m-desktop running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode synth_stub
--               SoomRV-Arty.gen/sources_1/bd/axi_map/ip/axi_map_UART8250Lite_0_0/axi_map_UART8250Lite_0_0_stub.vhdl
-- Design      : axi_map_UART8250Lite_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity axi_map_UART8250Lite_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    UART_tx : out STD_LOGIC;
    UART_rx : in STD_LOGIC
  );

end axi_map_UART8250Lite_0_0;

architecture stub of axi_map_UART8250Lite_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,aresetn,s_axi_awaddr[11:0],s_axi_awsize[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[127:0],s_axi_wstrb[15:0],s_axi_wvalid,s_axi_wready,s_axi_bready,s_axi_bvalid,s_axi_araddr[11:0],s_axi_arsize[2:0],s_axi_arvalid,s_axi_arready,s_axi_rready,s_axi_rdata[127:0],s_axi_rvalid,UART_tx,UART_rx";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "UART8250Lite,Vivado 2023.2";
begin
end;
