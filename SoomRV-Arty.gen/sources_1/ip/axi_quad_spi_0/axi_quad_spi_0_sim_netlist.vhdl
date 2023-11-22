-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Nov  2 18:27:49 2023
-- Host        : m-desktop running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode funcsim
--               SoomRV-Arty.gen/sources_1/ip/axi_quad_spi_0/axi_quad_spi_0_sim_netlist.vhdl
-- Design      : axi_quad_spi_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_cdc_sync is
  port (
    Rx_FIFO_Full_Fifo : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    almost_full : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_cdc_sync : entity is "cdc_sync";
end axi_quad_spi_0_cdc_sync;

architecture STRUCTURE of axi_quad_spi_0_cdc_sync is
  signal Q : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => almost_full,
      I1 => \^scndry_out\,
      O => Rx_FIFO_Full_Fifo
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => prmry_in,
      Q => Q,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q,
      Q => \^scndry_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_cdc_sync_0 is
  port (
    Rx_FIFO_Full_Fifo_d1_synced_i : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    empty : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_cdc_sync_0 : entity is "cdc_sync";
end axi_quad_spi_0_cdc_sync_0;

architecture STRUCTURE of axi_quad_spi_0_cdc_sync_0 is
  signal Q : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => prmry_in,
      Q => Q,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => Q,
      Q => \^scndry_out\,
      R => '0'
    );
rc_FIFO_Full_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => empty,
      O => Rx_FIFO_Full_Fifo_d1_synced_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_counter_f is
  port (
    \icount_out_reg[0]_0\ : out STD_LOGIC;
    tx_occ_msb_1 : out STD_LOGIC;
    \FIFO_EXISTS.Tx_FIFO_Empty_intr\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ : in STD_LOGIC;
    spiXfer_done_d2 : in STD_LOGIC;
    spiXfer_done_d3 : in STD_LOGIC;
    \FIFO_EXISTS.spiXfer_done_to_axi_1\ : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    \icount_out_reg[3]_0\ : in STD_LOGIC;
    \icount_out_reg[3]_1\ : in STD_LOGIC;
    tx_FIFO_Empty_d1_reg : in STD_LOGIC;
    \icount_out_reg[3]_2\ : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    \icount_out_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_counter_f : entity is "counter_f";
end axi_quad_spi_0_counter_f;

architecture STRUCTURE of axi_quad_spi_0_counter_f is
  signal \icount_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \icount_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \icount_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \icount_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \^icount_out_reg[0]_0\ : STD_LOGIC;
  signal \icount_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \icount_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \^tx_occ_msb_1\ : STD_LOGIC;
begin
  \icount_out_reg[0]_0\ <= \^icount_out_reg[0]_0\;
  tx_occ_msb_1 <= \^tx_occ_msb_1\;
\icount_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEBEBEEBBEEBBEBE"
    )
        port map (
      I0 => rst,
      I1 => \^icount_out_reg[0]_0\,
      I2 => \icount_out_reg_n_0_[1]\,
      I3 => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      I4 => spiXfer_done_d2,
      I5 => spiXfer_done_d3,
      O => \icount_out[1]_i_1_n_0\
    );
\icount_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFEBFBFEAABEAEA"
    )
        port map (
      I0 => rst,
      I1 => \^icount_out_reg[0]_0\,
      I2 => \icount_out_reg_n_0_[1]\,
      I3 => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      I4 => \FIFO_EXISTS.spiXfer_done_to_axi_1\,
      I5 => \icount_out_reg_n_0_[2]\,
      O => \icount_out[2]_i_1_n_0\
    );
\icount_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFEFFFEFEFF"
    )
        port map (
      I0 => bus2ip_reset_ipif_inverted,
      I1 => \icount_out_reg[3]_0\,
      I2 => \icount_out_reg[3]_1\,
      I3 => \icount_out[3]_i_3_n_0\,
      I4 => \^tx_occ_msb_1\,
      I5 => \icount_out_reg_n_0_[2]\,
      O => \icount_out[3]_i_2_n_0\
    );
\icount_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9000000FFFFFFF9"
    )
        port map (
      I0 => spiXfer_done_d3,
      I1 => spiXfer_done_d2,
      I2 => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      I3 => \icount_out_reg_n_0_[1]\,
      I4 => \^icount_out_reg[0]_0\,
      I5 => \icount_out_reg_n_0_[2]\,
      O => \icount_out[3]_i_3_n_0\
    );
\icount_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \icount_out_reg[3]_2\,
      D => \icount_out_reg[0]_1\,
      Q => \^icount_out_reg[0]_0\,
      R => '0'
    );
\icount_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \icount_out_reg[3]_2\,
      D => \icount_out[1]_i_1_n_0\,
      Q => \icount_out_reg_n_0_[1]\,
      R => '0'
    );
\icount_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \icount_out_reg[3]_2\,
      D => \icount_out[2]_i_1_n_0\,
      Q => \icount_out_reg_n_0_[2]\,
      R => '0'
    );
\icount_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \icount_out_reg[3]_2\,
      D => \icount_out[3]_i_2_n_0\,
      Q => \^tx_occ_msb_1\,
      R => '0'
    );
tx_FIFO_Empty_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \^tx_occ_msb_1\,
      I1 => \icount_out_reg_n_0_[2]\,
      I2 => tx_FIFO_Empty_d1_reg,
      I3 => \^icount_out_reg[0]_0\,
      I4 => \icount_out_reg_n_0_[1]\,
      I5 => \FIFO_EXISTS.spiXfer_done_to_axi_1\,
      O => \FIFO_EXISTS.Tx_FIFO_Empty_intr\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_cross_clk_sync_fifo_1 is
  port (
    SPISR_0_CMD_Error_to_axi_clk : out STD_LOGIC;
    spisel_d1_reg_to_axi_clk : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0\ : out STD_LOGIC;
    spiXfer_done_d2 : out STD_LOGIC;
    spiXfer_done_d3 : out STD_LOGIC;
    spicr_3_cpol_to_spi_clk : out STD_LOGIC;
    spicr_4_cpha_to_spi_clk : out STD_LOGIC;
    spicr_5_txfifo_to_spi_clk : out STD_LOGIC;
    spicr_8_tr_inhibit_to_spi_clk : out STD_LOGIC;
    spicr_bits_7_8_to_spi_clk : out STD_LOGIC_VECTOR ( 0 to 1 );
    register_Data_slvsel_int : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2_0\ : out STD_LOGIC;
    Bus2IP_Reset_i_reg : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_0\ : out STD_LOGIC;
    \FIFO_EXISTS.spiXfer_done_to_axi_1\ : out STD_LOGIC;
    tx_occ_msb : out STD_LOGIC;
    \s_axi4_wdata[7]\ : out STD_LOGIC;
    \s_axi4_wdata[5]\ : out STD_LOGIC;
    R : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2_0\ : out STD_LOGIC;
    D : out STD_LOGIC;
    \master_tri_state_en_control1__0\ : out STD_LOGIC;
    rst : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    SPISR_0_CMD_Error_int : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    empty : in STD_LOGIC;
    Rst_to_spi : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    spicr_1_spe_frm_axi_clk : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    spicr_3_cpol_frm_axi_clk : in STD_LOGIC;
    spicr_4_cpha_frm_axi_clk : in STD_LOGIC;
    \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC_0\ : in STD_LOGIC;
    spicr_8_tr_inhibit_frm_axi_clk : in STD_LOGIC;
    spicr_bits_7_8_frm_axi_clk : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SPISSR_frm_axi_clk : in STD_LOGIC;
    stop_clock : in STD_LOGIC;
    transfer_start_reg : in STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg\ : in STD_LOGIC;
    \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg_0\ : in STD_LOGIC;
    tx_occ_msb_4 : in STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\ : in STD_LOGIC;
    p_1_in16_in : in STD_LOGIC;
    p_1_in22_in : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    drr_Overrun_int : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    transfer_start_d2 : in STD_LOGIC;
    \IO2_T_control__3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_cross_clk_sync_fifo_1 : entity is "cross_clk_sync_fifo_1";
end axi_quad_spi_0_cross_clk_sync_fifo_1;

architecture STRUCTURE of axi_quad_spi_0_cross_clk_sync_fifo_1 is
  signal D0 : STD_LOGIC;
  signal D01_out : STD_LOGIC;
  signal \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0\ : STD_LOGIC;
  signal \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0\ : STD_LOGIC;
  signal \^logic_generation_fdr.tx_empt_4_spisr_s2ax_2_0\ : STD_LOGIC;
  signal \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_n_0\ : STD_LOGIC;
  signal \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_n_0\ : STD_LOGIC;
  signal SPICR_1_SPE_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_2_MST_N_SLV_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_2_MST_N_SLV_to_spi_clk : STD_LOGIC;
  signal SPICR_3_CPOL_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_4_CPHA_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_5_TXFIFO_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_8_TR_INHIBIT_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_bits_7_8_cdc_from_axi_d1_0 : STD_LOGIC;
  signal SPICR_bits_7_8_cdc_from_axi_d1_1 : STD_LOGIC;
  signal SPISR_0_CMD_Error_cdc_from_spi_d1 : STD_LOGIC;
  signal SPISSR_cdc_from_axi_d1 : STD_LOGIC;
  signal Tx_FIFO_Empty_SPISR_cdc_from_spi_d1 : STD_LOGIC;
  signal drr_Overrun_int_cdc_from_spi_d1 : STD_LOGIC;
  signal drr_Overrun_int_cdc_from_spi_d2 : STD_LOGIC;
  signal drr_Overrun_int_cdc_from_spi_d3 : STD_LOGIC;
  signal reset_RcFIFO_ptr_cdc_from_axi_d1 : STD_LOGIC;
  signal reset_RcFIFO_ptr_cdc_from_axi_d2 : STD_LOGIC;
  signal spiXfer_done_d1 : STD_LOGIC;
  signal \^spixfer_done_d2\ : STD_LOGIC;
  signal \^spixfer_done_d3\ : STD_LOGIC;
  signal spicr_1_spe_to_spi_clk : STD_LOGIC;
  signal \^spicr_3_cpol_to_spi_clk\ : STD_LOGIC;
  signal \^spicr_4_cpha_to_spi_clk\ : STD_LOGIC;
  signal \^spicr_8_tr_inhibit_to_spi_clk\ : STD_LOGIC;
  signal \^spicr_bits_7_8_to_spi_clk\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal spisel_d1_reg_cdc_from_spi_d1 : STD_LOGIC;
  signal spisel_pulse_cdc_from_spi_d1 : STD_LOGIC;
  signal spisel_pulse_cdc_from_spi_d2 : STD_LOGIC;
  signal spisel_pulse_cdc_from_spi_d3 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_1_CDC\ : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.CMD_ERR_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_3\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2\ : label is "PRIMITIVE";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_3\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_SYNC_AXI_2_SPI_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_SYNC_AXI_2_SPI_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_SYNC_AXI_2_SPI_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_1_CDC\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_1_CDC\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ : label is "VCC:CE";
  attribute box_type of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of QSPI_IO1_T_i_2 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_1\ : label is "soft_lutpair24";
begin
  \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0\ <= \^logic_generation_fdr.tx_empt_4_spisr_s2ax_2_0\;
  spiXfer_done_d2 <= \^spixfer_done_d2\;
  spiXfer_done_d3 <= \^spixfer_done_d3\;
  spicr_3_cpol_to_spi_clk <= \^spicr_3_cpol_to_spi_clk\;
  spicr_4_cpha_to_spi_clk <= \^spicr_4_cpha_to_spi_clk\;
  spicr_8_tr_inhibit_to_spi_clk <= \^spicr_8_tr_inhibit_to_spi_clk\;
  spicr_bits_7_8_to_spi_clk(0 to 1) <= \^spicr_bits_7_8_to_spi_clk\(0 to 1);
\FIFO_EXISTS.RX_FIFO_II_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => reset_RcFIFO_ptr_cdc_from_axi_d1,
      I1 => reset_RcFIFO_ptr_cdc_from_axi_d2,
      I2 => Rst_to_spi,
      O => rst
    );
\FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF90"
    )
        port map (
      I0 => \^spixfer_done_d3\,
      I1 => \^spixfer_done_d2\,
      I2 => \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg_0\,
      I3 => bus2ip_reset_ipif_inverted,
      I4 => \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg\,
      I5 => spicr_6_rxfifo_rst_frm_axi_clk,
      O => \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_0\
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FFFF78"
    )
        port map (
      I0 => s_axi4_wdata(0),
      I1 => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\,
      I2 => p_1_in22_in,
      I3 => drr_Overrun_int_cdc_from_spi_d3,
      I4 => drr_Overrun_int_cdc_from_spi_d2,
      O => \s_axi4_wdata[5]\
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FFFF78"
    )
        port map (
      I0 => s_axi4_wdata(1),
      I1 => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\,
      I2 => p_1_in16_in,
      I3 => spisel_pulse_cdc_from_spi_d3,
      I4 => spisel_pulse_cdc_from_spi_d2,
      O => \s_axi4_wdata[7]\
    );
\LOGIC_GENERATION_FDR.CMD_ERR_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => SPISR_0_CMD_Error_int,
      Q => SPISR_0_CMD_Error_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.CMD_ERR_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => SPISR_0_CMD_Error_cdc_from_spi_d1,
      Q => SPISR_0_CMD_Error_to_axi_clk,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_n_0\,
      Q => drr_Overrun_int_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => drr_Overrun_int_cdc_from_spi_d1,
      Q => drr_Overrun_int_cdc_from_spi_d2,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => drr_Overrun_int_cdc_from_spi_d2,
      Q => drr_Overrun_int_cdc_from_spi_d3,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0\,
      Q => reset_RcFIFO_ptr_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => reset_RcFIFO_ptr_cdc_from_axi_d1,
      Q => reset_RcFIFO_ptr_cdc_from_axi_d2,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_1_spe_frm_axi_clk,
      Q => SPICR_1_SPE_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_1_SPE_cdc_from_axi_d1,
      Q => spicr_1_spe_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_2_mst_n_slv_frm_axi_clk,
      Q => SPICR_2_MST_N_SLV_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_2_MST_N_SLV_cdc_from_axi_d1,
      Q => SPICR_2_MST_N_SLV_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_3_cpol_frm_axi_clk,
      Q => SPICR_3_CPOL_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_3_CPOL_cdc_from_axi_d1,
      Q => \^spicr_3_cpol_to_spi_clk\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_4_cpha_frm_axi_clk,
      Q => SPICR_4_CPHA_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_4_CPHA_cdc_from_axi_d1,
      Q => \^spicr_4_cpha_to_spi_clk\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC_0\,
      Q => SPICR_5_TXFIFO_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_5_TXFIFO_cdc_from_axi_d1,
      Q => spicr_5_txfifo_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_8_tr_inhibit_frm_axi_clk,
      Q => SPICR_8_TR_INHIBIT_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_8_TR_INHIBIT_cdc_from_axi_d1,
      Q => \^spicr_8_tr_inhibit_to_spi_clk\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_bits_7_8_frm_axi_clk(0),
      Q => SPICR_bits_7_8_cdc_from_axi_d1_0,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_bits_7_8_cdc_from_axi_d1_0,
      Q => \^spicr_bits_7_8_to_spi_clk\(1),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_bits_7_8_frm_axi_clk(1),
      Q => SPICR_bits_7_8_cdc_from_axi_d1_1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_bits_7_8_cdc_from_axi_d1_1,
      Q => \^spicr_bits_7_8_to_spi_clk\(0),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0\,
      I1 => spicr_6_rxfifo_rst_frm_axi_clk,
      O => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0\
    );
\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0\,
      Q => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0\,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => '1',
      Q => spisel_d1_reg_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => spisel_d1_reg_cdc_from_spi_d1,
      Q => spisel_d1_reg_to_axi_clk,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => '0',
      Q => spisel_pulse_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => spisel_pulse_cdc_from_spi_d1,
      Q => spisel_pulse_cdc_from_spi_d2,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => spisel_pulse_cdc_from_spi_d2,
      Q => spisel_pulse_cdc_from_spi_d3,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPISSR_frm_axi_clk,
      Q => SPISSR_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_SYNC_AXI_2_SPI_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPISSR_cdc_from_axi_d1,
      Q => register_Data_slvsel_int,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_n_0\,
      Q => spiXfer_done_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => spiXfer_done_d1,
      Q => \^spixfer_done_d2\,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \^spixfer_done_d2\,
      Q => \^spixfer_done_d3\,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => empty,
      Q => Tx_FIFO_Empty_SPISR_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => Tx_FIFO_Empty_SPISR_cdc_from_spi_d1,
      Q => \^logic_generation_fdr.tx_empt_4_spisr_s2ax_2_0\,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_n_0\,
      I1 => drr_Overrun_int,
      O => D0
    );
\LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => D0,
      Q => \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_n_0\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_n_0\,
      I1 => wr_en,
      O => D01_out
    );
\LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => D01_out,
      Q => \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_n_0\,
      R => Rst_to_spi
    );
QSPI_IO1_T_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^spicr_bits_7_8_to_spi_clk\(1),
      I1 => \^spicr_bits_7_8_to_spi_clk\(0),
      O => \master_tri_state_en_control1__0\
    );
\QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^spicr_bits_7_8_to_spi_clk\(0),
      I1 => \^spicr_bits_7_8_to_spi_clk\(1),
      I2 => \IO2_T_control__3\,
      O => \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2_0\
    );
QSPI_SS_T_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^spicr_bits_7_8_to_spi_clk\(0),
      I1 => \^spicr_bits_7_8_to_spi_clk\(1),
      O => D
    );
\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SPICR_2_MST_N_SLV_to_spi_clk,
      O => R
    );
\RATIO_OF_2_GENERATE.Count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F07"
    )
        port map (
      I0 => \^spicr_3_cpol_to_spi_clk\,
      I1 => \^spicr_4_cpha_to_spi_clk\,
      I2 => Q(0),
      I3 => transfer_start_d2,
      O => E(0)
    );
\icount_out[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^spixfer_done_d3\,
      I1 => \^spixfer_done_d2\,
      O => \FIFO_EXISTS.spiXfer_done_to_axi_1\
    );
\icount_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFFFEFFFFFE"
    )
        port map (
      I0 => bus2ip_reset_ipif_inverted,
      I1 => \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg\,
      I2 => \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC_0\,
      I3 => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      I4 => \^spixfer_done_d3\,
      I5 => \^spixfer_done_d2\,
      O => Bus2IP_Reset_i_reg
    );
transfer_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => stop_clock,
      I1 => transfer_start_reg,
      I2 => \^spicr_8_tr_inhibit_to_spi_clk\,
      I3 => Rst_to_spi,
      I4 => spicr_1_spe_to_spi_clk,
      O => \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2_0\
    );
tx_FIFO_Occpncy_MSB_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_occ_msb_4,
      I1 => \^logic_generation_fdr.tx_empt_4_spisr_s2ax_2_0\,
      O => tx_occ_msb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_interrupt_control is
  port (
    irpt_wrack_d1 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC;
    p_1_in34_in : out STD_LOGIC;
    p_1_in31_in : out STD_LOGIC;
    p_1_in28_in : out STD_LOGIC;
    p_1_in25_in : out STD_LOGIC;
    p_1_in22_in : out STD_LOGIC;
    p_1_in19_in : out STD_LOGIC;
    p_1_in16_in : out STD_LOGIC;
    p_1_in13_in : out STD_LOGIC;
    p_1_in10_in : out STD_LOGIC;
    p_1_in7_in : out STD_LOGIC;
    p_1_in4_in : out STD_LOGIC;
    p_1_in1_in : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    irpt_rdack_d1 : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg\ : out STD_LOGIC;
    intr2bus_wrack_reg_0 : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_reg : out STD_LOGIC;
    \grdc.rd_data_count_i_reg[3]\ : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[13]_0\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    reset2ip_reset_int : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]_0\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]_0\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]_0\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9]_0\ : in STD_LOGIC;
    interrupt_wrce_strb : in STD_LOGIC;
    irpt_rdack : in STD_LOGIC;
    intr2bus_rdack0 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg_0 : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi4_rdata_i_reg[31]\ : in STD_LOGIC;
    data_valid : in STD_LOGIC;
    ip2Bus_RdAck_core_reg : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole : in STD_LOGIC;
    ip2bus_error_int : in STD_LOGIC;
    wrack : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole : in STD_LOGIC;
    ip2Bus_WrAck_core_reg : in STD_LOGIC;
    burst_tr_int : in STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]_0\ : in STD_LOGIC;
    rc_FIFO_Full_d1 : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    empty : in STD_LOGIC;
    tx_occ_msb_4 : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]_0\ : in STD_LOGIC;
    tx_FIFO_Occpncy_MSB_d1 : in STD_LOGIC;
    rd_data_count : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi4_rdata_i_reg[3]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[3]_0\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[3]_1\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[3]_2\ : in STD_LOGIC;
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1\ : in STD_LOGIC;
    SPISR_0_CMD_Error_to_axi_clk : in STD_LOGIC;
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1\ : in STD_LOGIC;
    SPISR_1_LOOP_Back_Error_int : in STD_LOGIC;
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1\ : in STD_LOGIC;
    SPISR_2_MSB_Error_int : in STD_LOGIC;
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1\ : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[13]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_interrupt_control : entity is "interrupt_control";
end axi_quad_spi_0_interrupt_control;

architecture STRUCTURE of axi_quad_spi_0_interrupt_control is
  signal \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_fwft.gdvld_fwft.data_valid_fwft_reg\ : STD_LOGIC;
  signal intr_ip2bus_rdack : STD_LOGIC;
  signal intr_ip2bus_wrack : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_1_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_2_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_3_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_4_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_5_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_6_n_0 : STD_LOGIC;
  signal \^ip_irpt_enable_reg_reg[13]_0\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in5_in : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal \^p_1_in10_in\ : STD_LOGIC;
  signal \^p_1_in13_in\ : STD_LOGIC;
  signal \^p_1_in16_in\ : STD_LOGIC;
  signal \^p_1_in19_in\ : STD_LOGIC;
  signal \^p_1_in1_in\ : STD_LOGIC;
  signal \^p_1_in22_in\ : STD_LOGIC;
  signal \^p_1_in25_in\ : STD_LOGIC;
  signal \^p_1_in28_in\ : STD_LOGIC;
  signal \^p_1_in31_in\ : STD_LOGIC;
  signal \^p_1_in34_in\ : STD_LOGIC;
  signal \^p_1_in4_in\ : STD_LOGIC;
  signal \^p_1_in7_in\ : STD_LOGIC;
begin
  \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ <= \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\;
  \gen_fwft.gdvld_fwft.data_valid_fwft_reg\ <= \^gen_fwft.gdvld_fwft.data_valid_fwft_reg\;
  \ip_irpt_enable_reg_reg[13]_0\(12 downto 0) <= \^ip_irpt_enable_reg_reg[13]_0\(12 downto 0);
  p_0_in(0) <= \^p_0_in\(0);
  p_1_in <= \^p_1_in\;
  p_1_in10_in <= \^p_1_in10_in\;
  p_1_in13_in <= \^p_1_in13_in\;
  p_1_in16_in <= \^p_1_in16_in\;
  p_1_in19_in <= \^p_1_in19_in\;
  p_1_in1_in <= \^p_1_in1_in\;
  p_1_in22_in <= \^p_1_in22_in\;
  p_1_in25_in <= \^p_1_in25_in\;
  p_1_in28_in <= \^p_1_in28_in\;
  p_1_in31_in <= \^p_1_in31_in\;
  p_1_in34_in <= \^p_1_in34_in\;
  p_1_in4_in <= \^p_1_in4_in\;
  p_1_in7_in <= \^p_1_in7_in\;
\FSM_onehot_axi_full_sm_ps[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ip2bus_error_int,
      I1 => ip2Bus_RdAck_intr_reg_hole,
      I2 => ip2Bus_RdAck_core_reg,
      I3 => intr_ip2bus_rdack,
      O => ip2Bus_RdAck_intr_reg_hole_reg
    );
\FSM_onehot_axi_full_sm_ps[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100000001"
    )
        port map (
      I0 => ip2bus_error_int,
      I1 => intr_ip2bus_wrack,
      I2 => wrack,
      I3 => ip2Bus_WrAck_intr_reg_hole,
      I4 => ip2Bus_WrAck_core_reg,
      I5 => burst_tr_int,
      O => intr2bus_wrack_reg_0
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"787878FF"
    )
        port map (
      I0 => s_axi4_wdata(9),
      I1 => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]_0\,
      I2 => \^p_1_in7_in\,
      I3 => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1\,
      I4 => spicr_2_mst_n_slv_frm_axi_clk,
      O => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0\,
      Q => \^p_1_in7_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF7878"
    )
        port map (
      I0 => s_axi4_wdata(10),
      I1 => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]_0\,
      I2 => \^p_1_in4_in\,
      I3 => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1\,
      I4 => SPISR_2_MSB_Error_int,
      O => \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0\,
      Q => \^p_1_in4_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF7878"
    )
        port map (
      I0 => s_axi4_wdata(11),
      I1 => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]_0\,
      I2 => \^p_1_in1_in\,
      I3 => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1\,
      I4 => SPISR_1_LOOP_Back_Error_int,
      O => \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0\,
      Q => \^p_1_in1_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF7878"
    )
        port map (
      I0 => s_axi4_wdata(12),
      I1 => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]_0\,
      I2 => \^p_1_in\,
      I3 => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1\,
      I4 => SPISR_0_CMD_Error_to_axi_clk,
      O => \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0\,
      Q => \^p_1_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\,
      Q => \^p_1_in34_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]_0\,
      Q => \^p_1_in31_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]_0\,
      Q => \^p_1_in28_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7878787878FF7878"
    )
        port map (
      I0 => s_axi4_wdata(4),
      I1 => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]_0\,
      I2 => \^p_1_in25_in\,
      I3 => rc_FIFO_Full_d1,
      I4 => scndry_out,
      I5 => empty,
      O => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\,
      Q => \^p_1_in25_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]_0\,
      Q => \^p_1_in22_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF78FF78787878"
    )
        port map (
      I0 => s_axi4_wdata(6),
      I1 => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]_0\,
      I2 => \^p_1_in19_in\,
      I3 => tx_occ_msb_4,
      I4 => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]_0\,
      I5 => tx_FIFO_Occpncy_MSB_d1,
      O => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\,
      Q => \^p_1_in19_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\,
      Q => \^p_1_in16_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\,
      Q => \^p_1_in13_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9]_0\,
      Q => \^p_1_in10_in\,
      R => reset2ip_reset_int
    );
intr2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => intr2bus_rdack0,
      Q => intr_ip2bus_rdack,
      R => reset2ip_reset_int
    );
intr2bus_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => interrupt_wrce_strb,
      Q => intr_ip2bus_wrack,
      R => reset2ip_reset_int
    );
ip2intc_irpt_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => ip2intc_irpt_INST_0_i_1_n_0,
      I2 => ip2intc_irpt_INST_0_i_2_n_0,
      I3 => ip2intc_irpt_INST_0_i_3_n_0,
      I4 => ip2intc_irpt_INST_0_i_4_n_0,
      O => ip2intc_irpt
    );
ip2intc_irpt_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^p_1_in16_in\,
      I1 => \^ip_irpt_enable_reg_reg[13]_0\(6),
      I2 => \^p_1_in13_in\,
      I3 => \^ip_irpt_enable_reg_reg[13]_0\(7),
      I4 => ip2intc_irpt_INST_0_i_5_n_0,
      O => ip2intc_irpt_INST_0_i_1_n_0
    );
ip2intc_irpt_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^p_1_in28_in\,
      I1 => p_0_in5_in,
      I2 => \^p_1_in25_in\,
      I3 => \^ip_irpt_enable_reg_reg[13]_0\(3),
      I4 => ip2intc_irpt_INST_0_i_6_n_0,
      O => ip2intc_irpt_INST_0_i_2_n_0
    );
ip2intc_irpt_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000077707770777"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => \^ip_irpt_enable_reg_reg[13]_0\(12),
      I2 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      I3 => \^ip_irpt_enable_reg_reg[13]_0\(0),
      I4 => \^ip_irpt_enable_reg_reg[13]_0\(8),
      I5 => \^p_1_in10_in\,
      O => ip2intc_irpt_INST_0_i_3_n_0
    );
ip2intc_irpt_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^ip_irpt_enable_reg_reg[13]_0\(9),
      I1 => \^p_1_in7_in\,
      I2 => \^p_1_in1_in\,
      I3 => \^ip_irpt_enable_reg_reg[13]_0\(11),
      I4 => \^p_1_in4_in\,
      I5 => \^ip_irpt_enable_reg_reg[13]_0\(10),
      O => ip2intc_irpt_INST_0_i_4_n_0
    );
ip2intc_irpt_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^ip_irpt_enable_reg_reg[13]_0\(5),
      I1 => \^p_1_in19_in\,
      I2 => \^ip_irpt_enable_reg_reg[13]_0\(4),
      I3 => \^p_1_in22_in\,
      O => ip2intc_irpt_INST_0_i_5_n_0
    );
ip2intc_irpt_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^ip_irpt_enable_reg_reg[13]_0\(2),
      I1 => \^p_1_in31_in\,
      I2 => \^ip_irpt_enable_reg_reg[13]_0\(1),
      I3 => \^p_1_in34_in\,
      O => ip2intc_irpt_INST_0_i_6_n_0
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[13]_1\(0),
      D => s_axi4_wdata(0),
      Q => \^ip_irpt_enable_reg_reg[13]_0\(0),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[13]_1\(0),
      D => s_axi4_wdata(9),
      Q => \^ip_irpt_enable_reg_reg[13]_0\(9),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[13]_1\(0),
      D => s_axi4_wdata(10),
      Q => \^ip_irpt_enable_reg_reg[13]_0\(10),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[13]_1\(0),
      D => s_axi4_wdata(11),
      Q => \^ip_irpt_enable_reg_reg[13]_0\(11),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[13]_1\(0),
      D => s_axi4_wdata(12),
      Q => \^ip_irpt_enable_reg_reg[13]_0\(12),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[13]_1\(0),
      D => s_axi4_wdata(1),
      Q => \^ip_irpt_enable_reg_reg[13]_0\(1),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[13]_1\(0),
      D => s_axi4_wdata(2),
      Q => \^ip_irpt_enable_reg_reg[13]_0\(2),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[13]_1\(0),
      D => s_axi4_wdata(3),
      Q => p_0_in5_in,
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[13]_1\(0),
      D => s_axi4_wdata(4),
      Q => \^ip_irpt_enable_reg_reg[13]_0\(3),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[13]_1\(0),
      D => s_axi4_wdata(5),
      Q => \^ip_irpt_enable_reg_reg[13]_0\(4),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[13]_1\(0),
      D => s_axi4_wdata(6),
      Q => \^ip_irpt_enable_reg_reg[13]_0\(5),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[13]_1\(0),
      D => s_axi4_wdata(7),
      Q => \^ip_irpt_enable_reg_reg[13]_0\(6),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[13]_1\(0),
      D => D(0),
      Q => \^ip_irpt_enable_reg_reg[13]_0\(7),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[13]_1\(0),
      D => s_axi4_wdata(8),
      Q => \^ip_irpt_enable_reg_reg[13]_0\(8),
      R => reset2ip_reset_int
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => ipif_glbl_irpt_enable_reg_reg_0,
      Q => \^p_0_in\(0),
      R => reset2ip_reset_int
    );
irpt_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => irpt_rdack,
      Q => irpt_rdack_d1,
      R => reset2ip_reset_int
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => reset2ip_reset_int
    );
\s_axi4_rdata_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \^gen_fwft.gdvld_fwft.data_valid_fwft_reg\,
      I2 => Q(0),
      O => E(0)
    );
\s_axi4_rdata_i[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000007"
    )
        port map (
      I0 => \s_axi4_rdata_i_reg[31]\,
      I1 => data_valid,
      I2 => intr_ip2bus_rdack,
      I3 => ip2Bus_RdAck_core_reg,
      I4 => ip2Bus_RdAck_intr_reg_hole,
      I5 => ip2bus_error_int,
      O => \^gen_fwft.gdvld_fwft.data_valid_fwft_reg\
    );
\s_axi4_rdata_i[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF90FF90FFFFFF90"
    )
        port map (
      I0 => rd_data_count(0),
      I1 => \s_axi4_rdata_i_reg[3]\,
      I2 => \s_axi4_rdata_i_reg[3]_0\,
      I3 => \s_axi4_rdata_i_reg[3]_1\,
      I4 => p_0_in5_in,
      I5 => \s_axi4_rdata_i_reg[3]_2\,
      O => \grdc.rd_data_count_i_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_qspi_address_decoder is
  port (
    s_axi4_awvalid_0 : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    p_2_in : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    ip2Bus_WrAck_core_reg0 : out STD_LOGIC;
    wr_ce_or_reduce_core_cmb : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[5]\ : out STD_LOGIC;
    \length_cntr_reg[6]\ : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_1\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ : out STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[2]\ : out STD_LOGIC;
    \length_cntr_reg[4]\ : out STD_LOGIC;
    Transmit_ip2bus_error0 : out STD_LOGIC;
    \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ : out STD_LOGIC;
    ip2bus_error_int : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    Bus_RNW_reg_reg_5 : out STD_LOGIC;
    bus2ip_wrce_int : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg_6 : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    \bus2ip_BE_reg_reg[3]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]_0\ : out STD_LOGIC;
    rd_ce_or_reduce_core_cmb : out STD_LOGIC;
    intr_controller_rd_ce_or_reduce : out STD_LOGIC;
    s_axi4_wdata_0_sp_1 : out STD_LOGIC;
    \s_axi4_wdata[31]\ : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ : out STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ip2Bus_WrAck_core_reg : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    ip2Bus_WrAck_core_reg_d1 : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : in STD_LOGIC;
    s_axi4_aresetn : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    \guf.underflow_i_reg\ : in STD_LOGIC;
    empty : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi4_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[13]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ip2Bus_RdAck_core_reg : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    s_axi_wready_i : in STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[6]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gwack.wr_ack_i_reg\ : in STD_LOGIC;
    \gwack.wr_ack_i_reg_0\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : in STD_LOGIC;
    \s_axi4_rresp_i_reg[1]\ : in STD_LOGIC;
    transmit_ip2bus_error : in STD_LOGIC;
    receive_ip2bus_error : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : in STD_LOGIC;
    rx_fifo_empty_i : in STD_LOGIC;
    SPISR_4_CPOL_CPHA_Error_int : in STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : in STD_LOGIC;
    p_1_in19_in : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    p_1_in7_in : in STD_LOGIC;
    SPISR_0_CMD_Error_to_axi_clk : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    p_1_in1_in : in STD_LOGIC;
    p_1_in_0 : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_rdack_d1 : in STD_LOGIC;
    p_1_in28_in : in STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 5 downto 0 );
    p_1_in34_in : in STD_LOGIC;
    spicr_1_spe_frm_axi_clk : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    p_1_in31_in : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    Tx_FIFO_Empty_SPISR_to_axi_clk : in STD_LOGIC;
    spicr_3_cpol_frm_axi_clk : in STD_LOGIC;
    p_1_in25_in : in STD_LOGIC;
    spicr_4_cpha_frm_axi_clk : in STD_LOGIC;
    p_1_in22_in : in STD_LOGIC;
    spicr_5_txfifo_rst_frm_axi_clk : in STD_LOGIC;
    spisel_d1_reg_to_axi_clk : in STD_LOGIC;
    spicr_8_tr_inhibit_frm_axi_clk : in STD_LOGIC;
    SPISR_2_MSB_Error_int : in STD_LOGIC;
    SPISR_1_LOOP_Back_Error_int : in STD_LOGIC;
    SPISSR_frm_axi_clk : in STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_qspi_address_decoder : entity is "qspi_address_decoder";
end axi_quad_spi_0_qspi_address_decoder;

architecture STRUCTURE of axi_quad_spi_0_qspi_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \^bus_rnw_reg_reg_4\ : STD_LOGIC;
  signal \^bus_rnw_reg_reg_5\ : STD_LOGIC;
  signal \^bus_rnw_reg_reg_6\ : STD_LOGIC;
  signal \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\ : STD_LOGIC;
  signal \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\ : STD_LOGIC;
  signal \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0\ : STD_LOGIC;
  signal \ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_1_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_axi_full_sm_ps_reg[5]\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2_n_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_1\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31]\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_10 : STD_LOGIC;
  signal ce_expnd_i_11 : STD_LOGIC;
  signal ce_expnd_i_12 : STD_LOGIC;
  signal ce_expnd_i_13 : STD_LOGIC;
  signal ce_expnd_i_14 : STD_LOGIC;
  signal ce_expnd_i_15 : STD_LOGIC;
  signal ce_expnd_i_16 : STD_LOGIC;
  signal ce_expnd_i_17 : STD_LOGIC;
  signal ce_expnd_i_18 : STD_LOGIC;
  signal ce_expnd_i_19 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_20 : STD_LOGIC;
  signal ce_expnd_i_21 : STD_LOGIC;
  signal ce_expnd_i_22 : STD_LOGIC;
  signal ce_expnd_i_23 : STD_LOGIC;
  signal ce_expnd_i_24 : STD_LOGIC;
  signal ce_expnd_i_25 : STD_LOGIC;
  signal ce_expnd_i_26 : STD_LOGIC;
  signal ce_expnd_i_28 : STD_LOGIC;
  signal ce_expnd_i_29 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_30 : STD_LOGIC;
  signal ce_expnd_i_31 : STD_LOGIC;
  signal ce_expnd_i_4 : STD_LOGIC;
  signal ce_expnd_i_5 : STD_LOGIC;
  signal ce_expnd_i_6 : STD_LOGIC;
  signal ce_expnd_i_7 : STD_LOGIC;
  signal ce_expnd_i_8 : STD_LOGIC;
  signal ce_expnd_i_9 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 : STD_LOGIC;
  signal \^length_cntr_reg[4]\ : STD_LOGIC;
  signal \^length_cntr_reg[6]\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal p_21_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal p_23_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_26_in : STD_LOGIC;
  signal p_27_in : STD_LOGIC;
  signal p_28_in : STD_LOGIC;
  signal p_29_in : STD_LOGIC;
  signal \^p_2_in\ : STD_LOGIC;
  signal p_30_in : STD_LOGIC;
  signal p_31_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \^s_axi4_awvalid_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[9]_i_2_n_0\ : STD_LOGIC;
  signal s_axi4_wdata_0_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int[9]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_1_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_6\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of ip2Bus_RdAck_intr_reg_hole_i_1 : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of ip2Bus_WrAck_intr_reg_hole_d1_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of ip2Bus_WrAck_intr_reg_hole_i_1 : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[13]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of irpt_rdack_d1_i_1 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of irpt_wrack_d1_i_1 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of reset_trig_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[0]_i_4\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[10]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[10]_i_3\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[10]_i_4\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[7]_i_4\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \s_axi4_rresp_i[1]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of sw_rst_cond_d1_i_1 : label is "soft_lutpair79";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  Bus_RNW_reg_reg_4 <= \^bus_rnw_reg_reg_4\;
  Bus_RNW_reg_reg_5 <= \^bus_rnw_reg_reg_5\;
  Bus_RNW_reg_reg_6 <= \^bus_rnw_reg_reg_6\;
  \FSM_onehot_axi_full_sm_ps_reg[5]\ <= \^fsm_onehot_axi_full_sm_ps_reg[5]\;
  \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0\ <= \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\;
  \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_1\ <= \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_1\;
  \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ <= \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\;
  \length_cntr_reg[4]\ <= \^length_cntr_reg[4]\;
  \length_cntr_reg[6]\ <= \^length_cntr_reg[6]\;
  p_1_in <= \^p_1_in\;
  p_2_in <= \^p_2_in\;
  s_axi4_awvalid_0 <= \^s_axi4_awvalid_0\;
  s_axi4_wdata_0_sp_1 <= s_axi4_wdata_0_sn_1;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FF000"
    )
        port map (
      I0 => s_axi4_awvalid,
      I1 => s_axi4_wvalid,
      I2 => Q(0),
      I3 => s_axi4_arvalid,
      I4 => \^bus_rnw_reg_reg_0\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => spicr_6_rxfifo_rst_frm_axi_clk,
      I1 => ip2Bus_WrAck_core_reg,
      I2 => s_axi4_wdata(4),
      I3 => p_7_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => reset2ip_reset_int,
      O => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\
    );
\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => spicr_5_txfifo_rst_frm_axi_clk,
      I1 => ip2Bus_WrAck_core_reg,
      I2 => s_axi4_wdata(3),
      I3 => p_7_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => reset2ip_reset_int,
      O => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\
    );
\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_7_in,
      I2 => ip2Bus_WrAck_core_reg,
      O => Bus_RNW_reg_reg_1
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00FD"
    )
        port map (
      I0 => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\,
      I1 => p_6_in,
      I2 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\,
      O => wr_ce_or_reduce_core_cmb
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_10_in,
      I1 => p_12_in,
      I2 => p_13_in,
      I3 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31]\,
      I4 => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0\,
      O => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00F2"
    )
        port map (
      I0 => p_5_in,
      I1 => almost_full,
      I2 => p_3_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_7_in,
      O => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_8_in,
      I1 => \^p_1_in\,
      I2 => p_14_in,
      I3 => \^p_2_in\,
      I4 => p_9_in,
      I5 => p_11_in,
      O => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0\
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00FD"
    )
        port map (
      I0 => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\,
      I1 => p_6_in,
      I2 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\,
      I5 => ip2Bus_WrAck_core_reg_d1,
      O => ip2Bus_WrAck_core_reg0
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFD00"
    )
        port map (
      I0 => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\,
      I1 => p_5_in,
      I2 => p_15_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_1_i_2_n_0\,
      O => rd_ce_or_reduce_core_cmb
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCC8"
    )
        port map (
      I0 => p_3_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_7_in,
      I3 => p_6_in,
      O => \ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_1_i_2_n_0\
    );
\FIFO_EXISTS.RX_FIFO_II_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F2000000"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \guf.underflow_i_reg\,
      I2 => Q(2),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\,
      I5 => empty,
      O => rd_en
    );
\FSM_onehot_axi_full_sm_ps[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^length_cntr_reg[4]\,
      I1 => \FSM_onehot_axi_full_sm_ps_reg[6]\(6),
      I2 => \FSM_onehot_axi_full_sm_ps_reg[6]\(5),
      I3 => \FSM_onehot_axi_full_sm_ps_reg[6]\(7),
      O => \^length_cntr_reg[6]\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044034700000000"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\,
      O => ce_expnd_i_31
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_31,
      Q => p_31_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000022202"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\,
      I2 => s_axi4_awaddr(2),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      O => ce_expnd_i_21
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_21,
      Q => p_21_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002020200020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      I3 => s_axi4_awaddr(2),
      I4 => s_axi4_arvalid,
      I5 => s_axi4_araddr(2),
      O => ce_expnd_i_20
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_20,
      Q => p_20_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      I1 => s_axi4_awaddr(4),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_araddr(4),
      I4 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2_n_0\,
      O => ce_expnd_i_19
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_19,
      Q => p_19_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A000A20200000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I1 => s_axi4_araddr(1),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_awaddr(1),
      I4 => s_axi4_araddr(2),
      I5 => s_axi4_awaddr(2),
      O => ce_expnd_i_18
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_18,
      Q => p_18_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022200020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\,
      I2 => s_axi4_awaddr(2),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      O => ce_expnd_i_17
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFFFFFFFCFFF"
    )
        port map (
      I0 => s_axi4_araddr(4),
      I1 => s_axi4_awaddr(4),
      I2 => \^s_axi4_awvalid_0\,
      I3 => s_axi4_awaddr(1),
      I4 => s_axi4_arvalid,
      I5 => s_axi4_araddr(1),
      O => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      O => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_17,
      Q => p_17_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000A0A0C0000000"
    )
        port map (
      I0 => s_axi4_awaddr(1),
      I1 => s_axi4_araddr(1),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_arvalid,
      I5 => s_axi4_awaddr(2),
      O => ce_expnd_i_16
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008080800080"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      I2 => \^s_axi4_awvalid_0\,
      I3 => s_axi4_awaddr(4),
      I4 => s_axi4_arvalid,
      I5 => s_axi4_araddr(4),
      O => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_16,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22200020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      I2 => s_axi4_awaddr(4),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(4),
      O => ce_expnd_i_15
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_15,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0\,
      I2 => s_axi4_araddr(0),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_awaddr(0),
      O => ce_expnd_i_14
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_14,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000440347"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      O => ce_expnd_i_13
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_13,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047034400"
    )
        port map (
      I0 => s_axi4_araddr(2),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(2),
      I3 => s_axi4_araddr(0),
      I4 => s_axi4_awaddr(0),
      I5 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      O => ce_expnd_i_12
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_12,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A000A20200000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\,
      I1 => s_axi4_araddr(2),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_awaddr(2),
      I4 => s_axi4_araddr(0),
      I5 => s_axi4_awaddr(0),
      O => ce_expnd_i_30
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_30,
      Q => p_30_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22200020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      I2 => s_axi4_awaddr(4),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(4),
      O => ce_expnd_i_11
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_11,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0\,
      I2 => s_axi4_araddr(0),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_awaddr(0),
      O => ce_expnd_i_10
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C0A0A000C0"
    )
        port map (
      I0 => s_axi4_araddr(4),
      I1 => s_axi4_awaddr(4),
      I2 => \^s_axi4_awvalid_0\,
      I3 => s_axi4_awaddr(3),
      I4 => s_axi4_arvalid,
      I5 => s_axi4_araddr(3),
      O => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_10,
      Q => p_10_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047034400"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      O => ce_expnd_i_9
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_9,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8308800"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      O => ce_expnd_i_8
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFFFFFFFDFFF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_6_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      I2 => \^s_axi4_awvalid_0\,
      I3 => s_axi4_awaddr(4),
      I4 => s_axi4_arvalid,
      I5 => s_axi4_araddr(4),
      O => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_8,
      Q => p_8_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_2_n_0\,
      I1 => s_axi4_awaddr(4),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_araddr(4),
      I4 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      O => ce_expnd_i_7
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000440347"
    )
        port map (
      I0 => s_axi4_araddr(1),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(1),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_7,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_3_n_0\,
      I2 => s_axi4_araddr(0),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_awaddr(0),
      O => ce_expnd_i_6
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => s_axi4_awaddr(2),
      I1 => s_axi4_araddr(2),
      I2 => s_axi4_awaddr(1),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(1),
      O => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_6,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000440347"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_5_n_0\,
      O => ce_expnd_i_5
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_5,
      Q => p_5_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047034400"
    )
        port map (
      I0 => s_axi4_araddr(2),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(2),
      I3 => s_axi4_araddr(0),
      I4 => s_axi4_awaddr(0),
      I5 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_5_n_0\,
      O => ce_expnd_i_4
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_4,
      Q => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2_n_0\,
      I1 => s_axi4_awaddr(4),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_araddr(4),
      I4 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      O => ce_expnd_i_3
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047034400"
    )
        port map (
      I0 => s_axi4_araddr(1),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(1),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi4_araddr(3),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(3),
      O => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_3,
      Q => p_3_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_3_n_0\,
      I2 => s_axi4_araddr(0),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_awaddr(0),
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => s_axi4_awaddr(2),
      I1 => s_axi4_araddr(2),
      I2 => s_axi4_awaddr(1),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(1),
      O => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0AAC00000000000"
    )
        port map (
      I0 => s_axi4_awaddr(3),
      I1 => s_axi4_araddr(3),
      I2 => s_axi4_araddr(4),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_awaddr(4),
      I5 => \^s_axi4_awvalid_0\,
      O => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_3_n_0\
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_2,
      Q => \^p_2_in\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000151"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\,
      I1 => s_axi4_awaddr(2),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_araddr(2),
      I4 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      I5 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      O => ce_expnd_i_29
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_29,
      Q => p_29_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047034400"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_5_n_0\,
      O => ce_expnd_i_1
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_1,
      Q => \^p_1_in\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFFFFFF4FFF4"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      I1 => Q(2),
      I2 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_3_n_0\,
      I3 => \^fsm_onehot_axi_full_sm_ps_reg[5]\,
      I4 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_4_n_0\,
      I5 => Q(4),
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8308800"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_5_n_0\,
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F4FFF4F"
    )
        port map (
      I0 => \^length_cntr_reg[6]\,
      I1 => Q(1),
      I2 => s_axi4_aresetn,
      I3 => Q(3),
      I4 => s_axi4_rready,
      O => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_3_n_0\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBBFBFF"
    )
        port map (
      I0 => \^length_cntr_reg[6]\,
      I1 => s_axi4_wvalid,
      I2 => almost_full,
      I3 => Q(4),
      I4 => s_axi_wready_i,
      O => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_4_n_0\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777FFF7FFFFFFFFF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_6_n_0\,
      I1 => \^s_axi4_awvalid_0\,
      I2 => s_axi4_awaddr(4),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(4),
      I5 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_5_n_0\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi4_araddr(1),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(1),
      O => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_6_n_0\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000044404"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      I2 => s_axi4_awaddr(2),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      O => ce_expnd_i_28
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_28,
      Q => p_28_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A000A20200000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\,
      I1 => s_axi4_araddr(0),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_awaddr(0),
      I4 => s_axi4_araddr(2),
      I5 => s_axi4_awaddr(2),
      O => \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0\,
      Q => p_27_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A800A0080800000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\,
      I1 => s_axi4_araddr(0),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_awaddr(0),
      I4 => s_axi4_araddr(2),
      I5 => s_axi4_awaddr(2),
      O => ce_expnd_i_26
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004700"
    )
        port map (
      I0 => s_axi4_araddr(4),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(4),
      I3 => \^s_axi4_awvalid_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      I5 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_6_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_26,
      Q => p_26_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\,
      I1 => s_axi4_awaddr(2),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_araddr(2),
      I4 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      I5 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      O => ce_expnd_i_25
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_25,
      Q => p_25_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054040000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      I1 => s_axi4_awaddr(2),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_araddr(2),
      I4 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      I5 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\,
      O => ce_expnd_i_24
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_24,
      Q => p_24_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00088808"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_3_n_0\,
      I2 => s_axi4_awaddr(4),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(4),
      O => ce_expnd_i_23
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_23,
      Q => p_23_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044034700000000"
    )
        port map (
      I0 => s_axi4_araddr(1),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(1),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => ce_expnd_i_22
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^s_axi4_awvalid_0\,
      D => ce_expnd_i_22,
      Q => p_22_in,
      R => cs_ce_clr
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA6AAAAAAAAA"
    )
        port map (
      I0 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\,
      I1 => ipif_glbl_irpt_enable_reg_reg(0),
      I2 => p_23_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => irpt_wrack_d1,
      I5 => s_axi4_wdata(0),
      O => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA6AAAAAAAAA"
    )
        port map (
      I0 => p_1_in34_in,
      I1 => ipif_glbl_irpt_enable_reg_reg(0),
      I2 => p_23_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => irpt_wrack_d1,
      I5 => s_axi4_wdata(1),
      O => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => ipif_glbl_irpt_enable_reg_reg(0),
      I1 => p_23_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => irpt_wrack_d1,
      O => \bus2ip_BE_reg_reg[3]\
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA6AAAAAAAAA"
    )
        port map (
      I0 => p_1_in28_in,
      I1 => ipif_glbl_irpt_enable_reg_reg(0),
      I2 => p_23_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => irpt_wrack_d1,
      I5 => s_axi4_wdata(2),
      O => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\
    );
\SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_7_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_wrce_int(0)
    );
\SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi4_wdata(0),
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_3_in,
      I3 => ip2Bus_WrAck_core_reg,
      I4 => SPISSR_frm_axi_clk,
      O => s_axi4_wdata_0_sn_1
    );
\S_AXI4_BID_reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => s_axi4_awvalid,
      I1 => s_axi4_wvalid,
      I2 => Q(0),
      I3 => s_axi4_arvalid,
      O => \^s_axi4_awvalid_0\
    );
Transmit_ip2bus_error_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => Q(4),
      I1 => s_axi_wready_i,
      I2 => almost_full,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_5_in,
      O => Transmit_ip2bus_error0
    );
awready_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(5),
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\,
      O => \^fsm_onehot_axi_full_sm_ps_reg[5]\
    );
intr2bus_rdack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4400440044004000"
    )
        port map (
      I0 => irpt_rdack_d1,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_24_in,
      I3 => ipif_glbl_irpt_enable_reg_reg(0),
      I4 => p_21_in,
      I5 => p_23_in,
      O => intr2bus_rdack0
    );
intr2bus_wrack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000505000005040"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => p_21_in,
      I2 => ipif_glbl_irpt_enable_reg_reg(0),
      I3 => p_23_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => p_24_in,
      O => interrupt_wrce_strb
    );
ip2Bus_RdAck_intr_reg_hole_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      O => intr_controller_rd_ce_or_reduce
    );
ip2Bus_RdAck_intr_reg_hole_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      I2 => ip2Bus_RdAck_intr_reg_hole_d1,
      O => ip2Bus_RdAck_intr_reg_hole0
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      O => Bus_RNW_reg_reg_3
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0,
      I2 => p_17_in,
      I3 => p_25_in,
      I4 => p_20_in,
      O => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_16_in,
      I1 => p_31_in,
      I2 => p_28_in,
      I3 => p_19_in,
      I4 => p_29_in,
      I5 => p_30_in,
      O => ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_26_in,
      I1 => p_18_in,
      I2 => p_27_in,
      I3 => p_22_in,
      O => ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0
    );
ip2Bus_WrAck_intr_reg_hole_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      I2 => ip2Bus_WrAck_intr_reg_hole_d1,
      O => ip2Bus_WrAck_intr_reg_hole0
    );
\ip_irpt_enable_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ipif_glbl_irpt_enable_reg_reg(0),
      I2 => p_21_in,
      O => Bus_RNW_reg_reg_2(0)
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi4_wdata(5),
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_24_in,
      I3 => ipif_glbl_irpt_enable_reg_reg(0),
      I4 => p_0_in(0),
      O => \s_axi4_wdata[31]\
    );
irpt_rdack_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0A080"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_24_in,
      I2 => ipif_glbl_irpt_enable_reg_reg(0),
      I3 => p_21_in,
      I4 => p_23_in,
      O => irpt_rdack
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CC00C8"
    )
        port map (
      I0 => p_21_in,
      I1 => ipif_glbl_irpt_enable_reg_reg(0),
      I2 => p_23_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_24_in,
      O => irpt_wrack
    );
\length_cntr[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps_reg[6]\(4),
      I1 => \FSM_onehot_axi_full_sm_ps_reg[6]\(3),
      I2 => \FSM_onehot_axi_full_sm_ps_reg[6]\(2),
      I3 => \FSM_onehot_axi_full_sm_ps_reg[6]\(1),
      I4 => \FSM_onehot_axi_full_sm_ps_reg[6]\(0),
      O => \^length_cntr_reg[4]\
    );
reset_trig_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_15_in,
      I2 => \s_axi4_rresp_i_reg[1]\,
      I3 => sw_rst_cond_d1,
      O => reset_trig0
    );
\s_axi4_rdata_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4FFF4F4"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_1\,
      I1 => dout(0),
      I2 => \s_axi4_rdata_i_reg[0]\,
      I3 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I4 => \s_axi4_rdata_i_reg[13]\(0),
      I5 => \s_axi4_rdata_i[0]_i_3_n_0\,
      O => D(0)
    );
\s_axi4_rdata_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8F8F8F8F8"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_4\,
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\,
      I2 => \s_axi4_rdata_i[0]_i_4_n_0\,
      I3 => rx_fifo_empty_i,
      I4 => empty,
      I5 => \^bus_rnw_reg_reg_5\,
      O => \s_axi4_rdata_i[0]_i_3_n_0\
    );
\s_axi4_rdata_i[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => p_7_in,
      I1 => SPISR_1_LOOP_Back_Error_int,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_3_in,
      I4 => SPISSR_frm_axi_clk,
      O => \s_axi4_rdata_i[0]_i_4_n_0\
    );
\s_axi4_rdata_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I1 => \s_axi4_rdata_i_reg[13]\(6),
      I2 => p_1_in7_in,
      I3 => \^bus_rnw_reg_reg_4\,
      I4 => SPISR_0_CMD_Error_to_axi_clk,
      I5 => \^bus_rnw_reg_reg_5\,
      O => D(6)
    );
\s_axi4_rdata_i[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => p_23_in,
      I1 => p_21_in,
      I2 => ipif_glbl_irpt_enable_reg_reg(0),
      I3 => \^bus_rnw_reg_reg_0\,
      O => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\
    );
\s_axi4_rdata_i[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_23_in,
      I2 => ipif_glbl_irpt_enable_reg_reg(0),
      O => \^bus_rnw_reg_reg_4\
    );
\s_axi4_rdata_i[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_6_in,
      O => \^bus_rnw_reg_reg_5\
    );
\s_axi4_rdata_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C00800080008000"
    )
        port map (
      I0 => p_1_in4_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_23_in,
      I3 => ipif_glbl_irpt_enable_reg_reg(0),
      I4 => \s_axi4_rdata_i_reg[13]\(7),
      I5 => p_21_in,
      O => D(7)
    );
\s_axi4_rdata_i[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C00800080008000"
    )
        port map (
      I0 => p_1_in1_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_23_in,
      I3 => ipif_glbl_irpt_enable_reg_reg(0),
      I4 => \s_axi4_rdata_i_reg[13]\(8),
      I5 => p_21_in,
      O => D(8)
    );
\s_axi4_rdata_i[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C00800080008000"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_23_in,
      I3 => ipif_glbl_irpt_enable_reg_reg(0),
      I4 => \s_axi4_rdata_i_reg[13]\(9),
      I5 => p_21_in,
      O => D(9)
    );
\s_axi4_rdata_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_4\,
      I1 => p_1_in34_in,
      I2 => spicr_1_spe_frm_axi_clk,
      I3 => \^bus_rnw_reg_reg_6\,
      I4 => scndry_out,
      I5 => \^bus_rnw_reg_reg_5\,
      O => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\
    );
\s_axi4_rdata_i[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_4\,
      I1 => p_1_in31_in,
      I2 => \^bus_rnw_reg_reg_6\,
      I3 => spicr_2_mst_n_slv_frm_axi_clk,
      I4 => Tx_FIFO_Empty_SPISR_to_axi_clk,
      I5 => \^bus_rnw_reg_reg_5\,
      O => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\
    );
\s_axi4_rdata_i[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => p_23_in,
      I1 => p_21_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_24_in,
      I4 => ipif_glbl_irpt_enable_reg_reg(0),
      I5 => p_0_in(0),
      O => D(10)
    );
\s_axi4_rdata_i[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \^length_cntr_reg[6]\,
      I3 => s_axi4_rready,
      O => \FSM_onehot_axi_full_sm_ps_reg[2]\
    );
\s_axi4_rdata_i[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_4\,
      I1 => p_1_in28_in,
      I2 => \^bus_rnw_reg_reg_5\,
      I3 => almost_full,
      I4 => spicr_3_cpol_frm_axi_clk,
      I5 => \^bus_rnw_reg_reg_6\,
      O => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]_0\
    );
\s_axi4_rdata_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_1\,
      I1 => dout(1),
      I2 => \s_axi4_rdata_i[4]_i_2_n_0\,
      I3 => \s_axi4_rdata_i_reg[13]\(1),
      I4 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      O => D(1)
    );
\s_axi4_rdata_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00800080008000"
    )
        port map (
      I0 => p_23_in,
      I1 => ipif_glbl_irpt_enable_reg_reg(0),
      I2 => p_1_in25_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_7_in,
      I5 => spicr_4_cpha_frm_axi_clk,
      O => \s_axi4_rdata_i[4]_i_2_n_0\
    );
\s_axi4_rdata_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_1\,
      I1 => dout(2),
      I2 => \s_axi4_rdata_i[5]_i_2_n_0\,
      I3 => \s_axi4_rdata_i_reg[13]\(2),
      I4 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      O => D(2)
    );
\s_axi4_rdata_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_4\,
      I1 => p_1_in22_in,
      I2 => spicr_5_txfifo_rst_frm_axi_clk,
      I3 => \^bus_rnw_reg_reg_6\,
      I4 => spisel_d1_reg_to_axi_clk,
      I5 => \^bus_rnw_reg_reg_5\,
      O => \s_axi4_rdata_i[5]_i_2_n_0\
    );
\s_axi4_rdata_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_1\,
      I1 => dout(3),
      I2 => \s_axi4_rdata_i[6]_i_2_n_0\,
      I3 => \s_axi4_rdata_i_reg[13]\(3),
      I4 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      O => D(3)
    );
\s_axi4_rdata_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_5\,
      I1 => SPISR_4_CPOL_CPHA_Error_int,
      I2 => spicr_6_rxfifo_rst_frm_axi_clk,
      I3 => \^bus_rnw_reg_reg_6\,
      I4 => p_1_in19_in,
      I5 => \^bus_rnw_reg_reg_4\,
      O => \s_axi4_rdata_i[6]_i_2_n_0\
    );
\s_axi4_rdata_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777777F777F7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => Q(2),
      I3 => \guf.underflow_i_reg\,
      I4 => s_axi4_rready,
      I5 => ip2Bus_RdAck_core_reg,
      O => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_1\
    );
\s_axi4_rdata_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_7_in,
      O => \^bus_rnw_reg_reg_6\
    );
\s_axi4_rdata_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4F4F4"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I1 => \s_axi4_rdata_i_reg[13]\(4),
      I2 => \s_axi4_rdata_i[8]_i_2_n_0\,
      I3 => p_1_in13_in,
      I4 => \^bus_rnw_reg_reg_4\,
      O => D(4)
    );
\s_axi4_rdata_i[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => p_7_in,
      I1 => spicr_8_tr_inhibit_frm_axi_clk,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_6_in,
      I4 => SPISR_2_MSB_Error_int,
      O => \s_axi4_rdata_i[8]_i_2_n_0\
    );
\s_axi4_rdata_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4F4F4"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      I1 => \s_axi4_rdata_i_reg[13]\(5),
      I2 => \s_axi4_rdata_i[9]_i_2_n_0\,
      I3 => p_1_in10_in,
      I4 => \^bus_rnw_reg_reg_4\,
      O => D(5)
    );
\s_axi4_rdata_i[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => p_6_in,
      I1 => SPISR_1_LOOP_Back_Error_int,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_7_in,
      I4 => SPISR_2_MSB_Error_int,
      O => \s_axi4_rdata_i[9]_i_2_n_0\
    );
\s_axi4_rresp_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_15_in,
      I2 => \s_axi4_rresp_i_reg[1]\,
      I3 => transmit_ip2bus_error,
      I4 => receive_ip2bus_error,
      O => ip2bus_error_int
    );
sw_rst_cond_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_axi4_rresp_i_reg[1]\,
      I1 => p_15_in,
      I2 => \^bus_rnw_reg_reg_0\,
      O => sw_rst_cond
    );
\xpm_fifo_instance.xpm_fifo_async_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040004040400"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_5_in,
      I2 => almost_full,
      I3 => ip2Bus_WrAck_core_reg,
      I4 => \gwack.wr_ack_i_reg\,
      I5 => \gwack.wr_ack_i_reg_0\,
      O => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_qspi_cntrl_reg is
  port (
    spicr_bits_7_8_frm_axi_clk : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SPISR_1_LOOP_Back_Error_int : out STD_LOGIC;
    spicr_1_spe_frm_axi_clk : out STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0\ : out STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]_0\ : out STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]_0\ : out STD_LOGIC;
    spicr_8_tr_inhibit_frm_axi_clk : out STD_LOGIC;
    SPISR_2_MSB_Error_int : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0\ : out STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : out STD_LOGIC;
    \s_axi4_wdata[9]\ : out STD_LOGIC;
    SPISR_4_CPOL_CPHA_Error_int : out STD_LOGIC;
    \s_axi4_wdata[8]\ : out STD_LOGIC;
    \s_axi4_wdata[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPISR_3_Slave_Mode_Error_int : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    bus2ip_wrce_int : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_aclk : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\ : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_1\ : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]\ : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi4_rdata_i_reg[7]_0\ : in STD_LOGIC;
    \gen_rst_ic.wr_rst_busy_ic_reg\ : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\ : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1\ : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[8]\ : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]_1\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]_2\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]_3\ : in STD_LOGIC;
    p_1_in16_in : in STD_LOGIC;
    \FIFO_EXISTS.data_Exists_RcFIFO_int_d1\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_qspi_cntrl_reg : entity is "qspi_cntrl_reg";
end axi_quad_spi_0_qspi_cntrl_reg;

architecture STRUCTURE of axi_quad_spi_0_qspi_cntrl_reg is
  signal \^control_reg_3_4_generate[4].spicr_data_int_reg[4]_0\ : STD_LOGIC;
  signal \^control_reg_5_9_generate[5].spicr_data_int_reg[5]_0\ : STD_LOGIC;
  signal \^control_reg_5_9_generate[6].spicr_data_int_reg[6]_0\ : STD_LOGIC;
  signal \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[7]_i_3_n_0\ : STD_LOGIC;
  signal spicr_7_ss_frm_axi_clk : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2\ : label is "soft_lutpair23";
  attribute box_type : string;
  attribute box_type of \SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I\ : label is "PRIMITIVE";
  attribute box_type of \SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[8]_i_1\ : label is "soft_lutpair23";
begin
  \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0\ <= \^control_reg_3_4_generate[4].spicr_data_int_reg[4]_0\;
  \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]_0\ <= \^control_reg_5_9_generate[5].spicr_data_int_reg[5]_0\;
  \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]_0\ <= \^control_reg_5_9_generate[6].spicr_data_int_reg[6]_0\;
  \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0\ <= \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\;
\CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(6),
      Q => spicr_8_tr_inhibit_frm_axi_clk,
      S => reset2ip_reset_int
    );
\CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(5),
      Q => spicr_7_ss_frm_axi_clk,
      S => reset2ip_reset_int
    );
\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\,
      Q => spicr_6_rxfifo_rst_frm_axi_clk,
      R => '0'
    );
\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_1\,
      Q => \^control_reg_3_4_generate[4].spicr_data_int_reg[4]_0\,
      R => '0'
    );
\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(4),
      Q => \^control_reg_5_9_generate[5].spicr_data_int_reg[5]_0\,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(3),
      Q => \^control_reg_5_9_generate[6].spicr_data_int_reg[6]_0\,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(2),
      Q => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(1),
      Q => spicr_1_spe_frm_axi_clk,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(0),
      Q => SPISR_1_LOOP_Back_Error_int,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      O => SPISR_3_Slave_Mode_Error_int
    );
\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^control_reg_5_9_generate[6].spicr_data_int_reg[6]_0\,
      I1 => \^control_reg_5_9_generate[5].spicr_data_int_reg[5]_0\,
      O => SPISR_4_CPOL_CPHA_Error_int
    );
\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD5FF2A00"
    )
        port map (
      I0 => s_axi4_wdata(6),
      I1 => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      I2 => \ip_irpt_enable_reg_reg[8]\,
      I3 => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\,
      I4 => p_1_in13_in,
      I5 => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0\,
      O => \s_axi4_wdata[8]\
    );
\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
        port map (
      I0 => \FIFO_EXISTS.data_Exists_RcFIFO_int_d1\,
      I1 => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\,
      I2 => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      I3 => \ip_irpt_enable_reg_reg[8]\,
      O => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"787878FF78FF7878"
    )
        port map (
      I0 => s_axi4_wdata(7),
      I1 => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\,
      I2 => p_1_in10_in,
      I3 => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1\,
      I4 => \^control_reg_5_9_generate[6].spicr_data_int_reg[6]_0\,
      I5 => \^control_reg_5_9_generate[5].spicr_data_int_reg[5]_0\,
      O => \s_axi4_wdata[9]\
    );
\SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi4_wdata(2),
      Q => spicr_bits_7_8_frm_axi_clk(1),
      R => reset2ip_reset_int
    );
\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi4_wdata(1),
      Q => spicr_bits_7_8_frm_axi_clk(0),
      R => reset2ip_reset_int
    );
\SPICR_data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(7),
      Q => SPISR_2_MSB_Error_int,
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axi4_wdata(6),
      I1 => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      I2 => \ip_irpt_enable_reg_reg[8]\,
      O => \s_axi4_wdata[8]_0\(0)
    );
\s_axi4_rdata_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \s_axi4_rdata_i_reg[7]\,
      I1 => dout(0),
      I2 => \s_axi4_rdata_i[7]_i_3_n_0\,
      I3 => Q(0),
      I4 => \s_axi4_rdata_i_reg[7]_0\,
      O => D(0)
    );
\s_axi4_rdata_i[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => spicr_7_ss_frm_axi_clk,
      I1 => \s_axi4_rdata_i_reg[7]_1\,
      I2 => \s_axi4_rdata_i_reg[7]_2\,
      I3 => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      I4 => \s_axi4_rdata_i_reg[7]_3\,
      I5 => p_1_in16_in,
      O => \s_axi4_rdata_i[7]_i_3_n_0\
    );
\xpm_fifo_instance.xpm_fifo_async_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^control_reg_3_4_generate[4].spicr_data_int_reg[4]_0\,
      I1 => \gen_rst_ic.wr_rst_busy_ic_reg\,
      I2 => bus2ip_reset_ipif_inverted,
      O => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_qspi_fifo_ifmodule is
  port (
    rc_FIFO_Full_d1 : out STD_LOGIC;
    receive_ip2bus_error : out STD_LOGIC;
    transmit_ip2bus_error : out STD_LOGIC;
    tx_FIFO_Occpncy_MSB_d1 : out STD_LOGIC;
    tx_FIFO_Empty_d1_reg_0 : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    Rx_FIFO_Full_Fifo_d1_synced_i : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    \FIFO_EXISTS.Tx_FIFO_Empty_intr\ : in STD_LOGIC;
    Transmit_ip2bus_error0 : in STD_LOGIC;
    tx_occ_msb : in STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : in STD_LOGIC;
    p_1_in31_in : in STD_LOGIC;
    Receive_ip2bus_error_reg_0 : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    p_4_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_qspi_fifo_ifmodule : entity is "qspi_fifo_ifmodule";
end axi_quad_spi_0_qspi_fifo_ifmodule;

architecture STRUCTURE of axi_quad_spi_0_qspi_fifo_ifmodule is
  signal Receive_ip2bus_error0 : STD_LOGIC;
  signal tx_FIFO_Empty_d1 : STD_LOGIC;
begin
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFFF444"
    )
        port map (
      I0 => tx_FIFO_Empty_d1,
      I1 => \FIFO_EXISTS.Tx_FIFO_Empty_intr\,
      I2 => s_axi4_wdata(0),
      I3 => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\,
      I4 => p_1_in31_in,
      O => tx_FIFO_Empty_d1_reg_0
    );
Receive_ip2bus_error_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => Receive_ip2bus_error_reg_0,
      I1 => prmry_in,
      I2 => p_4_in,
      I3 => Bus_RNW_reg,
      O => Receive_ip2bus_error0
    );
Receive_ip2bus_error_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => Receive_ip2bus_error0,
      Q => receive_ip2bus_error,
      R => reset2ip_reset_int
    );
Transmit_ip2bus_error_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => Transmit_ip2bus_error0,
      Q => transmit_ip2bus_error,
      R => reset2ip_reset_int
    );
rc_FIFO_Full_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => Rx_FIFO_Full_Fifo_d1_synced_i,
      Q => rc_FIFO_Full_d1,
      R => reset2ip_reset_int
    );
tx_FIFO_Empty_d1_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FIFO_EXISTS.Tx_FIFO_Empty_intr\,
      Q => tx_FIFO_Empty_d1,
      S => reset2ip_reset_int
    );
tx_FIFO_Occpncy_MSB_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_occ_msb,
      Q => tx_FIFO_Occpncy_MSB_d1,
      R => reset2ip_reset_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_qspi_mode_control_logic is
  port (
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    ss_t : out STD_LOGIC;
    transfer_start_d2 : out STD_LOGIC;
    SPIXfer_done_int : out STD_LOGIC;
    stop_clock : out STD_LOGIC;
    SPIXfer_done_int_pulse : out STD_LOGIC;
    sck_d3 : out STD_LOGIC;
    wr_en : out STD_LOGIC;
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    drr_Overrun_int : out STD_LOGIC;
    io0_o : out STD_LOGIC;
    io1_o : out STD_LOGIC;
    io2_o : out STD_LOGIC;
    io3_o : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \Shift_Reg1__0\ : out STD_LOGIC;
    \RATIO_OF_2_GENERATE.Count_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_qspi_cntrl_ps_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CE : out STD_LOGIC;
    \QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_d10\ : out STD_LOGIC;
    \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d10\ : out STD_LOGIC;
    \qspo_int_reg[4]\ : out STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[6]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \stop_clock134_out__3\ : out STD_LOGIC;
    \stop_clock1__3\ : out STD_LOGIC;
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\ : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \RATIO_OF_2_GENERATE.Count_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D_0 : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    QSPI_IO1_T_0 : in STD_LOGIC;
    \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_0\ : in STD_LOGIC;
    spicr_8_tr_inhibit_to_spi_clk : in STD_LOGIC;
    R : in STD_LOGIC;
    Rst_to_spi : in STD_LOGIC;
    register_Data_slvsel_int : in STD_LOGIC;
    transfer_start_reg_0 : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_reg_0\ : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \receive_Data_int1__0\ : in STD_LOGIC;
    \SPIXfer_done_int130_out__0\ : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_reg_0\ : in STD_LOGIC;
    Serial_Dout_018_in : in STD_LOGIC;
    \SPIXfer_done_int132_out__0\ : in STD_LOGIC;
    \mode_0__0\ : in STD_LOGIC;
    \mode_1__3\ : in STD_LOGIC;
    spicr_3_cpol_to_spi_clk : in STD_LOGIC;
    spicr_4_cpha_to_spi_clk : in STD_LOGIC;
    \master_tri_state_en_control1__0\ : in STD_LOGIC;
    \IO2_T_control__3\ : in STD_LOGIC;
    qspo : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_sequential_qspi_cntrl_ps_reg[0]_0\ : in STD_LOGIC;
    empty : in STD_LOGIC;
    spicr_bits_7_8_to_spi_clk : in STD_LOGIC_VECTOR ( 0 to 1 );
    QSPI_IO0_T_0 : in STD_LOGIC;
    \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d1\ : in STD_LOGIC;
    \FSM_sequential_qspi_cntrl_ps_reg[1]_0\ : in STD_LOGIC;
    io1_i_sync : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[5]_0\ : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[4]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RATIO_OF_2_GENERATE.Count_reg[4]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_qspi_mode_control_logic : entity is "qspi_mode_control_logic";
end axi_quad_spi_0_qspi_mode_control_logic;

architecture STRUCTURE of axi_quad_spi_0_qspi_mode_control_logic is
  signal \DRR_Overrun_reg_int0__0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_qspi_cntrl_ps[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Mst_Trans_inhibit_d1 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal QSPI_IO0_T_i_1_n_0 : STD_LOGIC;
  signal \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T_i_1_n_0\ : STD_LOGIC;
  signal \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_3_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\ : STD_LOGIC;
  signal \^ratio_of_2_generate.count_reg[0]_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.Count_reg_n_0_[3]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_4_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_3_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_sp_mem_gen.shift_reg_reg[6]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.sck_o_int_i_1_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0\ : STD_LOGIC;
  signal \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_3_n_0\ : STD_LOGIC;
  signal \^spixfer_done_int\ : STD_LOGIC;
  signal SPIXfer_done_int1 : STD_LOGIC;
  signal SPIXfer_done_int_d1 : STD_LOGIC;
  signal \^spixfer_done_int_pulse\ : STD_LOGIC;
  signal SPIXfer_done_int_pulse_d1 : STD_LOGIC;
  signal SPIXfer_done_int_pulse_d2 : STD_LOGIC;
  signal Shift_Reg : STD_LOGIC_VECTOR ( 4 to 5 );
  signal \^shift_reg1__0\ : STD_LOGIC;
  signal \^drr_overrun_int\ : STD_LOGIC;
  signal \^io0_o\ : STD_LOGIC;
  signal \^io1_o\ : STD_LOGIC;
  signal \^io3_o\ : STD_LOGIC;
  signal p_0_in38_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_37_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^qspo_int_reg[4]\ : STD_LOGIC;
  signal receive_Data_int : STD_LOGIC;
  signal rx_shft_reg_mode_0011 : STD_LOGIC_VECTOR ( 0 to 6 );
  signal sck_d1 : STD_LOGIC;
  signal sck_d2 : STD_LOGIC;
  signal sck_o_int : STD_LOGIC;
  signal \^stop_clock\ : STD_LOGIC;
  signal \stop_clock28_out__0\ : STD_LOGIC;
  signal stop_clock_reg : STD_LOGIC;
  signal stop_clock_reg_i_2_n_0 : STD_LOGIC;
  signal stop_clock_reg_i_3_n_0 : STD_LOGIC;
  signal transfer_start : STD_LOGIC;
  signal transfer_start_d1 : STD_LOGIC;
  signal \transfer_start_pulse__0\ : STD_LOGIC;
  signal \^wr_en\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_qspi_cntrl_ps[0]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \FSM_sequential_qspi_cntrl_ps[0]_i_5\ : label is "soft_lutpair65";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_qspi_cntrl_ps_reg[0]\ : label is "cmd_send:001,addr_send:010,temp_addr_send:011,data_send:101,temp_data_send:100,data_receive:111,temp_data_receive:110,idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_qspi_cntrl_ps_reg[1]\ : label is "cmd_send:001,addr_send:010,temp_addr_send:011,data_send:101,temp_data_send:100,data_receive:111,temp_data_receive:110,idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_qspi_cntrl_ps_reg[2]\ : label is "cmd_send:001,addr_send:010,temp_addr_send:011,data_send:101,temp_data_send:100,data_receive:111,temp_data_receive:110,idle:000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of MST_TRANS_INHIBIT_D1_I : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of MST_TRANS_INHIBIT_D1_I : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of MST_TRANS_INHIBIT_D1_I : label is "PRIMITIVE";
  attribute KEEP : string;
  attribute KEEP of QSPI_IO0_T : label is "yes";
  attribute XILINX_LEGACY_PRIM of QSPI_IO0_T : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of QSPI_IO0_T : label is "VCC:CE GND:R";
  attribute box_type of QSPI_IO0_T : label is "PRIMITIVE";
  attribute KEEP of QSPI_IO1_T : label is "yes";
  attribute XILINX_LEGACY_PRIM of QSPI_IO1_T : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of QSPI_IO1_T : label is "VCC:CE GND:R";
  attribute box_type of QSPI_IO1_T : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d1_i_1\ : label is "soft_lutpair65";
  attribute KEEP of \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T\ : label is "VCC:CE GND:R";
  attribute box_type of \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T\ : label is "PRIMITIVE";
  attribute KEEP of \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T\ : label is "VCC:CE GND:R";
  attribute box_type of \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[2]_i_2\ : label is "soft_lutpair59";
  attribute KEEP of QSPI_SCK_T : label is "yes";
  attribute XILINX_LEGACY_PRIM of QSPI_SCK_T : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of QSPI_SCK_T : label is "VCC:CE GND:R";
  attribute box_type of QSPI_SCK_T : label is "PRIMITIVE";
  attribute KEEP of QSPI_SS_T : label is "yes";
  attribute XILINX_LEGACY_PRIM of QSPI_SS_T : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of QSPI_SS_T : label is "VCC:CE GND:R";
  attribute box_type of QSPI_SS_T : label is "PRIMITIVE";
  attribute IOB : string;
  attribute IOB of \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\ : label is "TRUE";
  attribute box_type of \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_3\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[1]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[2]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.Count[4]_i_3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_3\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_5\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_8\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_9\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_3\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[1]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[2]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[3]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_3\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of SPIXfer_done_int_pulse_d1_i_1 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of stop_clock_reg_i_4 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \xpm_fifo_instance.xpm_fifo_async_inst_i_3\ : label is "soft_lutpair67";
begin
  \FSM_sequential_qspi_cntrl_ps_reg[2]_0\(2 downto 0) <= \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2 downto 0);
  Q(2 downto 0) <= \^q\(2 downto 0);
  \RATIO_OF_2_GENERATE.Count_reg[0]_0\ <= \^ratio_of_2_generate.count_reg[0]_0\;
  \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[6]_0\(1 downto 0) <= \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_sp_mem_gen.shift_reg_reg[6]_0\(1 downto 0);
  SPIXfer_done_int <= \^spixfer_done_int\;
  SPIXfer_done_int_pulse <= \^spixfer_done_int_pulse\;
  \Shift_Reg1__0\ <= \^shift_reg1__0\;
  drr_Overrun_int <= \^drr_overrun_int\;
  io0_o <= \^io0_o\;
  io1_o <= \^io1_o\;
  io3_o <= \^io3_o\;
  \qspo_int_reg[4]\ <= \^qspo_int_reg[4]\;
  stop_clock <= \^stop_clock\;
  wr_en <= \^wr_en\;
DRR_Overrun_reg_int0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => scndry_out,
      I1 => almost_full,
      I2 => \^drr_overrun_int\,
      I3 => \^wr_en\,
      O => \DRR_Overrun_reg_int0__0\
    );
DRR_Overrun_reg_int_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \DRR_Overrun_reg_int0__0\,
      Q => \^drr_overrun_int\,
      R => Rst_to_spi
    );
\FSM_sequential_qspi_cntrl_ps[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAEAAFE"
    )
        port map (
      I0 => \FSM_sequential_qspi_cntrl_ps[0]_i_2_n_0\,
      I1 => \FSM_sequential_qspi_cntrl_ps_reg[0]_0\,
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I4 => empty,
      O => \FSM_sequential_qspi_cntrl_ps[0]_i_1_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEFEAAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_qspi_cntrl_ps[0]_i_4_n_0\,
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I2 => empty,
      I3 => qspo(3),
      I4 => \^qspo_int_reg[4]\,
      I5 => \FSM_sequential_qspi_cntrl_ps[0]_i_5_n_0\,
      O => \FSM_sequential_qspi_cntrl_ps[0]_i_2_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044000400"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I2 => qspo(3),
      I3 => empty,
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I5 => register_Data_slvsel_int,
      O => \FSM_sequential_qspi_cntrl_ps[0]_i_4_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C04"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I2 => empty,
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      O => \FSM_sequential_qspi_cntrl_ps[0]_i_5_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFF000000000000"
    )
        port map (
      I0 => \FSM_sequential_qspi_cntrl_ps_reg[1]_0\,
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I2 => qspo(4),
      I3 => \^qspo_int_reg[4]\,
      I4 => \FSM_sequential_qspi_cntrl_ps[1]_i_2_n_0\,
      I5 => \FSM_sequential_qspi_cntrl_ps[1]_i_3_n_0\,
      O => \FSM_sequential_qspi_cntrl_ps[1]_i_1_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5754FFFFFFFFFFFF"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I3 => qspo(3),
      I4 => empty,
      I5 => register_Data_slvsel_int,
      O => \FSM_sequential_qspi_cntrl_ps[1]_i_2_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF04000000"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I2 => SPIXfer_done_int_d1,
      I3 => \^spixfer_done_int\,
      I4 => qspo(0),
      I5 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      O => \FSM_sequential_qspi_cntrl_ps[1]_i_3_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700770077F07700"
    )
        port map (
      I0 => empty,
      I1 => register_Data_slvsel_int,
      I2 => \^qspo_int_reg[4]\,
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I5 => \FSM_sequential_qspi_cntrl_ps_reg[1]_0\,
      O => \FSM_sequential_qspi_cntrl_ps[2]_i_1_n_0\
    );
\FSM_sequential_qspi_cntrl_ps[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400800"
    )
        port map (
      I0 => qspo(1),
      I1 => qspo(3),
      I2 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(1),
      I3 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(2),
      I4 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(0),
      O => \^qspo_int_reg[4]\
    );
\FSM_sequential_qspi_cntrl_ps_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \FSM_sequential_qspi_cntrl_ps[0]_i_1_n_0\,
      Q => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      R => Rst_to_spi
    );
\FSM_sequential_qspi_cntrl_ps_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \FSM_sequential_qspi_cntrl_ps[1]_i_1_n_0\,
      Q => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      R => Rst_to_spi
    );
\FSM_sequential_qspi_cntrl_ps_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \FSM_sequential_qspi_cntrl_ps[2]_i_1_n_0\,
      Q => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      R => Rst_to_spi
    );
MST_TRANS_INHIBIT_D1_I: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_8_tr_inhibit_to_spi_clk,
      Q => Mst_Trans_inhibit_d1,
      R => '0'
    );
QSPI_IO0_T: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => QSPI_IO0_T_i_1_n_0,
      Q => io0_t,
      R => '0'
    );
QSPI_IO0_T_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF89FFFFFF"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I3 => spicr_bits_7_8_to_spi_clk(0),
      I4 => spicr_bits_7_8_to_spi_clk(1),
      I5 => QSPI_IO0_T_0,
      O => QSPI_IO0_T_i_1_n_0
    );
QSPI_IO1_T: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => QSPI_IO1_T_0,
      Q => io1_t,
      R => '0'
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d1\,
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      O => \QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_d10\
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I3 => empty,
      O => \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d10\
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[0].TXFIFO_FIRST_ENTRY_REG_I_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d1\,
      I1 => empty,
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      O => CE
    );
\QSPI_MODE_2_T_CONTROL.QSPI_IO2_T\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_0\,
      Q => io2_t,
      R => '0'
    );
\QSPI_MODE_2_T_CONTROL.QSPI_IO3_T\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T_i_1_n_0\,
      Q => io3_t,
      R => '0'
    );
\QSPI_MODE_2_T_CONTROL.QSPI_IO3_T_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777777775777"
    )
        port map (
      I0 => \master_tri_state_en_control1__0\,
      I1 => \IO2_T_control__3\,
      I2 => qspo(2),
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I5 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      O => \QSPI_MODE_2_T_CONTROL.QSPI_IO3_T_i_1_n_0\
    );
\QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000D200000000"
    )
        port map (
      I0 => \^spixfer_done_int\,
      I1 => SPIXfer_done_int_d1,
      I2 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(0),
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I5 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      O => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[0]_i_1_n_0\
    );
\QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006A00000000"
    )
        port map (
      I0 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(1),
      I1 => \^spixfer_done_int_pulse\,
      I2 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(0),
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I5 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      O => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[1]_i_1_n_0\
    );
\QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006AAA"
    )
        port map (
      I0 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(2),
      I1 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(1),
      I2 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(0),
      I3 => \^spixfer_done_int_pulse\,
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I5 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[2]_i_2_n_0\,
      O => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[2]_i_1_n_0\
    );
\QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      O => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[2]_i_2_n_0\
    );
\QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[0]_i_1_n_0\,
      Q => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(0),
      R => '0'
    );
\QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[1]_i_1_n_0\,
      Q => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(1),
      R => '0'
    );
\QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt[2]_i_1_n_0\,
      Q => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(2),
      R => '0'
    );
QSPI_SCK_T: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => D_0,
      Q => sck_t,
      R => '0'
    );
QSPI_SS_T: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => D_0,
      Q => ss_t,
      R => '0'
    );
\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0\,
      Q => sck_o,
      R => R
    );
\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => sck_o_int,
      I1 => transfer_start_d1,
      I2 => transfer_start,
      I3 => \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_3_n_0\,
      I4 => spicr_3_cpol_to_spi_clk,
      O => \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_2_n_0\
    );
\RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      O => \RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST_i_3_n_0\
    );
\RATIO_OF_2_GENERATE.Count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      O => SPIXfer_done_int1
    );
\RATIO_OF_2_GENERATE.Count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I1 => p_37_in,
      O => plusOp(1)
    );
\RATIO_OF_2_GENERATE.Count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I1 => p_37_in,
      I2 => p_0_in38_in,
      O => plusOp(2)
    );
\RATIO_OF_2_GENERATE.Count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_37_in,
      I1 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I2 => p_0_in38_in,
      I3 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[3]\,
      O => plusOp(3)
    );
\RATIO_OF_2_GENERATE.Count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => transfer_start,
      I1 => \^spixfer_done_int\,
      I2 => Rst_to_spi,
      O => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in38_in,
      I1 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I2 => p_37_in,
      I3 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[3]\,
      O => plusOp(4)
    );
\RATIO_OF_2_GENERATE.Count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.Count_reg[4]_1\(0),
      D => SPIXfer_done_int1,
      Q => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.Count_reg[4]_1\(0),
      D => plusOp(1),
      Q => p_37_in,
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.Count_reg[4]_1\(0),
      D => plusOp(2),
      Q => p_0_in38_in,
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.Count_reg[4]_1\(0),
      D => plusOp(3),
      Q => \RATIO_OF_2_GENERATE.Count_reg_n_0_[3]\,
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.Count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.Count_reg[4]_1\(0),
      D => plusOp(4),
      Q => \RATIO_OF_2_GENERATE.Count_reg[4]_0\(0),
      R => \RATIO_OF_2_GENERATE.Count[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_reg_0\,
      I1 => \^shift_reg1__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_4_n_0\,
      I3 => \^ratio_of_2_generate.count_reg[0]_0\,
      I4 => Serial_Dout_018_in,
      I5 => \^io0_o\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => transfer_start_d1,
      I1 => transfer_start,
      I2 => SPIXfer_done_int_d1,
      O => \^shift_reg1__0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \SPIXfer_done_int130_out__0\,
      I1 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[3]\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[1]\,
      I3 => \receive_Data_int1__0\,
      I4 => p_1_in,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_4_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F700"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I1 => transfer_start_d1,
      I2 => SPIXfer_done_int_d1,
      I3 => transfer_start,
      O => \^ratio_of_2_generate.count_reg[0]_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_1_n_0\,
      Q => \^io0_o\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFFF20202000"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_2_n_0\,
      I1 => \receive_Data_int1__0\,
      I2 => \^ratio_of_2_generate.count_reg[0]_0\,
      I3 => \SPIXfer_done_int132_out__0\,
      I4 => \SPIXfer_done_int130_out__0\,
      I5 => \^io1_o\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[2]\,
      I1 => dout(4),
      I2 => \SPIXfer_done_int130_out__0\,
      I3 => dout(6),
      I4 => \^shift_reg1__0\,
      I5 => p_1_in,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(0),
      I1 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(1),
      I2 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(2),
      I3 => qspo(1),
      I4 => qspo(3),
      O => \stop_clock134_out__3\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(0),
      I1 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(2),
      I2 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(1),
      I3 => qspo(3),
      I4 => qspo(1),
      O => \stop_clock1__3\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_1_n_0\,
      Q => \^io1_o\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => dout(5),
      I1 => transfer_start_d1,
      I2 => transfer_start,
      I3 => SPIXfer_done_int_d1,
      I4 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[1]\,
      O => \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_reg_0\,
      Q => io2_o,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFFFAF00C000A0"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_2_n_0\,
      I1 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_3_n_0\,
      I2 => \^ratio_of_2_generate.count_reg[0]_0\,
      I3 => \mode_0__0\,
      I4 => \mode_1__3\,
      I5 => \^io3_o\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => qspo(2),
      I1 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I2 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I3 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAA20"
    )
        port map (
      I0 => dout(6),
      I1 => transfer_start_d1,
      I2 => transfer_start,
      I3 => SPIXfer_done_int_d1,
      I4 => p_1_in,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_3_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_1_n_0\,
      Q => \^io3_o\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF008F00"
    )
        port map (
      I0 => Serial_Dout_018_in,
      I1 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I2 => transfer_start_d1,
      I3 => transfer_start,
      I4 => SPIXfer_done_int_d1,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => dout(6),
      I1 => \^shift_reg1__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_3_n_0\,
      I3 => \receive_Data_int1__0\,
      I4 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[1]\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[2]\,
      I1 => Shift_Reg(4),
      I2 => \receive_Data_int1__0\,
      I3 => \SPIXfer_done_int130_out__0\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_3_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => dout(5),
      I1 => \^shift_reg1__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[1]_i_2_n_0\,
      I3 => \receive_Data_int1__0\,
      I4 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[2]\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[1]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[3]\,
      I1 => Shift_Reg(5),
      I2 => \receive_Data_int1__0\,
      I3 => \SPIXfer_done_int130_out__0\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[1]_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => dout(4),
      I1 => \^shift_reg1__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[2]_i_2_n_0\,
      I3 => \receive_Data_int1__0\,
      I4 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[3]\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[2]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => Shift_Reg(4),
      I1 => \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_sp_mem_gen.shift_reg_reg[6]_0\(1),
      I2 => \receive_Data_int1__0\,
      I3 => \SPIXfer_done_int130_out__0\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[2]_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => dout(3),
      I1 => \^shift_reg1__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[3]_i_2_n_0\,
      I3 => \receive_Data_int1__0\,
      I4 => Shift_Reg(4),
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[3]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => Shift_Reg(5),
      I1 => \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_sp_mem_gen.shift_reg_reg[6]_0\(0),
      I2 => \receive_Data_int1__0\,
      I3 => \SPIXfer_done_int130_out__0\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[3]_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => dout(2),
      I1 => \^shift_reg1__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[4]_0\,
      I3 => \receive_Data_int1__0\,
      I4 => Shift_Reg(5),
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[4]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => dout(1),
      I1 => \^shift_reg1__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[5]_0\,
      I3 => \receive_Data_int1__0\,
      I4 => \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_sp_mem_gen.shift_reg_reg[6]_0\(1),
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[5]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => io1_i_sync,
      I1 => \receive_Data_int1__0\,
      I2 => \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_sp_mem_gen.shift_reg_reg[6]_0\(0),
      I3 => \^shift_reg1__0\,
      I4 => dout(0),
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[6]_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_2_n_0\,
      Q => p_1_in,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[1]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[1]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[2]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[2]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[3]_i_1_n_0\,
      Q => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg_n_0_[3]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[4]_i_1_n_0\,
      Q => Shift_Reg(4),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[5]_i_1_n_0\,
      Q => Shift_Reg(5),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[6]_i_1_n_0\,
      Q => \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_sp_mem_gen.shift_reg_reg[6]_0\(1),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[0]_i_1_n_0\,
      D => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[7]_0\(0),
      Q => \^ratio_of_2_generate.ratio_2_cap_qspi_quad_mode_sp_mem_gen.shift_reg_reg[6]_0\(0),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBA5410"
    )
        port map (
      I0 => \receive_Data_int1__0\,
      I1 => \SPIXfer_done_int130_out__0\,
      I2 => \^q\(2),
      I3 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3]\,
      I4 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2]\,
      O => rx_shft_reg_mode_0011(1)
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBA5410"
    )
        port map (
      I0 => \receive_Data_int1__0\,
      I1 => \SPIXfer_done_int130_out__0\,
      I2 => \^q\(1),
      I3 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\,
      I4 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3]\,
      O => rx_shft_reg_mode_0011(2)
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBA5410"
    )
        port map (
      I0 => \receive_Data_int1__0\,
      I1 => \SPIXfer_done_int130_out__0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\,
      O => rx_shft_reg_mode_0011(3)
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \receive_Data_int1__0\,
      I2 => io1_i_sync,
      O => rx_shft_reg_mode_0011(6)
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => rx_shft_reg_mode_0011(1),
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => rx_shft_reg_mode_0011(2),
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => rx_shft_reg_mode_0011(3),
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[3]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => D(2),
      Q => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => D(1),
      Q => \^q\(2),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => rx_shft_reg_mode_0011(6),
      Q => \^q\(1),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.sck_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => sck_o_int,
      Q => sck_d1,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.sck_d2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => sck_d1,
      Q => sck_d2,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.sck_d3_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => sck_d2,
      Q => sck_d3,
      R => Rst_to_spi
    );
\RATIO_OF_2_GENERATE.sck_o_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060F060F060006"
    )
        port map (
      I0 => sck_o_int,
      I1 => transfer_start,
      I2 => Rst_to_spi,
      I3 => \RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0\,
      I4 => spicr_3_cpol_to_spi_clk,
      I5 => spicr_4_cpha_to_spi_clk,
      O => \RATIO_OF_2_GENERATE.sck_o_int_i_1_n_0\
    );
\RATIO_OF_2_GENERATE.sck_o_int_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Mst_Trans_inhibit_d1,
      I1 => spicr_8_tr_inhibit_to_spi_clk,
      I2 => \^spixfer_done_int\,
      O => \RATIO_OF_2_GENERATE.sck_o_int_i_2_n_0\
    );
\RATIO_OF_2_GENERATE.sck_o_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RATIO_OF_2_GENERATE.sck_o_int_i_1_n_0\,
      Q => sck_o_int,
      R => '0'
    );
\RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011101010101010"
    )
        port map (
      I0 => Rst_to_spi,
      I1 => \transfer_start_pulse__0\,
      I2 => \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_3_n_0\,
      I3 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I4 => p_37_in,
      I5 => \SPIXfer_done_int132_out__0\,
      O => \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_1_n_0\
    );
\RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_start,
      I1 => transfer_start_d1,
      O => \transfer_start_pulse__0\
    );
\RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080800"
    )
        port map (
      I0 => p_0_in38_in,
      I1 => p_37_in,
      I2 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[0]\,
      I3 => \SPIXfer_done_int130_out__0\,
      I4 => \RATIO_OF_2_GENERATE.Count_reg_n_0_[3]\,
      O => \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_3_n_0\
    );
\RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RX_DATA_SCK_RATIO_2_GEN1.SPIXfer_done_int_i_1_n_0\,
      Q => \^spixfer_done_int\,
      R => '0'
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SPIXfer_done_int_pulse_d2,
      I1 => Serial_Dout_018_in,
      O => receive_Data_int
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBA5410"
    )
        port map (
      I0 => \receive_Data_int1__0\,
      I1 => \SPIXfer_done_int130_out__0\,
      I2 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[4]\,
      I3 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[2]\,
      I4 => \RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011_reg_n_0_[1]\,
      O => rx_shft_reg_mode_0011(0)
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => rx_shft_reg_mode_0011(0),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(7),
      R => Rst_to_spi
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => rx_shft_reg_mode_0011(1),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(6),
      R => Rst_to_spi
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => rx_shft_reg_mode_0011(2),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(5),
      R => Rst_to_spi
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => rx_shft_reg_mode_0011(3),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(4),
      R => Rst_to_spi
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => D(2),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(3),
      R => Rst_to_spi
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => D(1),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(2),
      R => Rst_to_spi
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => rx_shft_reg_mode_0011(6),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(1),
      R => Rst_to_spi
    );
\RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => receive_Data_int,
      D => D(0),
      Q => \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(0),
      R => Rst_to_spi
    );
SPIXfer_done_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^spixfer_done_int\,
      Q => SPIXfer_done_int_d1,
      R => Rst_to_spi
    );
SPIXfer_done_int_pulse_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^spixfer_done_int\,
      I1 => SPIXfer_done_int_d1,
      O => \^spixfer_done_int_pulse\
    );
SPIXfer_done_int_pulse_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^spixfer_done_int_pulse\,
      Q => SPIXfer_done_int_pulse_d1,
      R => Rst_to_spi
    );
SPIXfer_done_int_pulse_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPIXfer_done_int_pulse_d1,
      Q => SPIXfer_done_int_pulse_d2,
      R => Rst_to_spi
    );
SPIXfer_done_int_pulse_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPIXfer_done_int_pulse_d2,
      Q => \^wr_en\,
      R => Rst_to_spi
    );
\SS_O_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => register_Data_slvsel_int,
      Q => ss_o(0),
      S => Rst_to_spi
    );
stop_clock_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5550FE545050FF55"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(2),
      I1 => stop_clock_reg_i_2_n_0,
      I2 => stop_clock_reg_i_3_n_0,
      I3 => \stop_clock28_out__0\,
      I4 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(0),
      I5 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      O => \^stop_clock\
    );
stop_clock_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000008000000"
    )
        port map (
      I0 => empty,
      I1 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(0),
      I2 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(2),
      I3 => \QSPI_QUAD_MODE_SP_MEM_GEN.addr_cnt_reg\(1),
      I4 => qspo(3),
      I5 => qspo(1),
      O => stop_clock_reg_i_2_n_0
    );
stop_clock_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \^fsm_sequential_qspi_cntrl_ps_reg[2]_0\(1),
      I1 => empty,
      I2 => qspo(0),
      I3 => SPIXfer_done_int_d1,
      I4 => \^spixfer_done_int\,
      O => stop_clock_reg_i_3_n_0
    );
stop_clock_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF020000"
    )
        port map (
      I0 => \^spixfer_done_int\,
      I1 => SPIXfer_done_int_d1,
      I2 => register_Data_slvsel_int,
      I3 => stop_clock_reg,
      I4 => empty,
      O => \stop_clock28_out__0\
    );
stop_clock_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^stop_clock\,
      Q => stop_clock_reg,
      R => Rst_to_spi
    );
transfer_start_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => transfer_start,
      Q => transfer_start_d1,
      R => Rst_to_spi
    );
transfer_start_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => transfer_start_d1,
      Q => transfer_start_d2,
      R => Rst_to_spi
    );
transfer_start_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => transfer_start_reg_0,
      Q => transfer_start,
      R => '0'
    );
\xpm_fifo_instance.xpm_fifo_async_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => transfer_start_d1,
      I1 => transfer_start,
      I2 => SPIXfer_done_int_pulse_d2,
      O => rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_qspi_status_slave_sel_reg is
  port (
    SPISSR_frm_axi_clk : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]_0\ : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_qspi_status_slave_sel_reg : entity is "qspi_status_slave_sel_reg";
end axi_quad_spi_0_qspi_status_slave_sel_reg;

architecture STRUCTURE of axi_quad_spi_0_qspi_status_slave_sel_reg is
begin
\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]_0\,
      Q => SPISSR_frm_axi_clk,
      S => reset2ip_reset_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_reset_sync_module is
  port (
    R : out STD_LOGIC;
    Rst_to_spi : out STD_LOGIC;
    spicr_5_txfifo_to_spi_clk : in STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_reset_sync_module : entity is "reset_sync_module";
end axi_quad_spi_0_reset_sync_module;

architecture STRUCTURE of axi_quad_spi_0_reset_sync_module is
  signal \^rst_to_spi\ : STD_LOGIC;
  signal Soft_Reset_frm_axi_d1 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of RESET_SYNC_AX2S_1 : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of RESET_SYNC_AX2S_1 : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of RESET_SYNC_AX2S_1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of RESET_SYNC_AX2S_1 : label is "PRIMITIVE";
  attribute ASYNC_REG of RESET_SYNC_AX2S_2 : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of RESET_SYNC_AX2S_2 : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of RESET_SYNC_AX2S_2 : label is "VCC:CE";
  attribute box_type of RESET_SYNC_AX2S_2 : label is "PRIMITIVE";
begin
  Rst_to_spi <= \^rst_to_spi\;
\QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[0].TXFIFO_FIRST_ENTRY_REG_I_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^rst_to_spi\,
      I1 => spicr_5_txfifo_to_spi_clk,
      O => R
    );
RESET_SYNC_AX2S_1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => reset2ip_reset_int,
      Q => Soft_Reset_frm_axi_d1,
      R => '0'
    );
RESET_SYNC_AX2S_2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Soft_Reset_frm_axi_d1,
      Q => \^rst_to_spi\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_soft_reset is
  port (
    sw_rst_cond_d1 : out STD_LOGIC;
    wrack : out STD_LOGIC;
    \RESET_FLOPS[15].RST_FLOPS_0\ : out STD_LOGIC;
    Bus2IP_Reset_i_reg : out STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    sw_rst_cond : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    reset_trig0 : in STD_LOGIC;
    \icount_out_reg[0]\ : in STD_LOGIC;
    \icount_out_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_soft_reset : entity is "soft_reset";
end axi_quad_spi_0_soft_reset;

architecture STRUCTURE of axi_quad_spi_0_soft_reset is
  signal FF_WRACK_i_1_n_0 : STD_LOGIC;
  signal \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \^reset_flops[15].rst_flops_0\ : STD_LOGIC;
  signal \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal flop_q_chain_1 : STD_LOGIC;
  signal flop_q_chain_10 : STD_LOGIC;
  signal flop_q_chain_11 : STD_LOGIC;
  signal flop_q_chain_12 : STD_LOGIC;
  signal flop_q_chain_13 : STD_LOGIC;
  signal flop_q_chain_14 : STD_LOGIC;
  signal flop_q_chain_15 : STD_LOGIC;
  signal flop_q_chain_2 : STD_LOGIC;
  signal flop_q_chain_3 : STD_LOGIC;
  signal flop_q_chain_4 : STD_LOGIC;
  signal flop_q_chain_5 : STD_LOGIC;
  signal flop_q_chain_6 : STD_LOGIC;
  signal flop_q_chain_7 : STD_LOGIC;
  signal flop_q_chain_8 : STD_LOGIC;
  signal flop_q_chain_9 : STD_LOGIC;
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of FF_WRACK : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of FF_WRACK : label is "1'b0";
  attribute box_type : string;
  attribute box_type of FF_WRACK : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FF_WRACK_i_1 : label is "soft_lutpair70";
  attribute IS_CE_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[0].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[10].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[10].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[10].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[10].RST_FLOPS_i_1\ : label is "soft_lutpair75";
  attribute IS_CE_INVERTED of \RESET_FLOPS[11].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[11].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[11].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[11].RST_FLOPS_i_1\ : label is "soft_lutpair76";
  attribute IS_CE_INVERTED of \RESET_FLOPS[12].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[12].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[12].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[12].RST_FLOPS_i_1\ : label is "soft_lutpair76";
  attribute IS_CE_INVERTED of \RESET_FLOPS[13].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[13].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[13].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[13].RST_FLOPS_i_1\ : label is "soft_lutpair77";
  attribute IS_CE_INVERTED of \RESET_FLOPS[14].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[14].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[14].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[14].RST_FLOPS_i_1\ : label is "soft_lutpair77";
  attribute IS_CE_INVERTED of \RESET_FLOPS[15].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[15].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[15].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[1].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[1].RST_FLOPS_i_1\ : label is "soft_lutpair71";
  attribute IS_CE_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[2].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[2].RST_FLOPS_i_1\ : label is "soft_lutpair71";
  attribute IS_CE_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[3].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[3].RST_FLOPS_i_1\ : label is "soft_lutpair72";
  attribute IS_CE_INVERTED of \RESET_FLOPS[4].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[4].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[4].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[4].RST_FLOPS_i_1\ : label is "soft_lutpair72";
  attribute IS_CE_INVERTED of \RESET_FLOPS[5].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[5].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[5].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[5].RST_FLOPS_i_1\ : label is "soft_lutpair73";
  attribute IS_CE_INVERTED of \RESET_FLOPS[6].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[6].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[6].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[6].RST_FLOPS_i_1\ : label is "soft_lutpair73";
  attribute IS_CE_INVERTED of \RESET_FLOPS[7].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[7].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[7].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[7].RST_FLOPS_i_1\ : label is "soft_lutpair74";
  attribute IS_CE_INVERTED of \RESET_FLOPS[8].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[8].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[8].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[8].RST_FLOPS_i_1\ : label is "soft_lutpair74";
  attribute IS_CE_INVERTED of \RESET_FLOPS[9].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[9].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[9].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[9].RST_FLOPS_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \icount_out[0]_i_1\ : label is "soft_lutpair70";
begin
  \RESET_FLOPS[15].RST_FLOPS_0\ <= \^reset_flops[15].rst_flops_0\;
FF_WRACK: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => FF_WRACK_i_1_n_0,
      Q => wrack,
      R => bus2ip_reset_ipif_inverted
    );
FF_WRACK_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^reset_flops[15].rst_flops_0\,
      I1 => flop_q_chain_1,
      O => FF_WRACK_i_1_n_0
    );
\RESET_FLOPS[0].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => S,
      Q => flop_q_chain_15,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[10].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_5,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[10].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_6,
      O => \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[11].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_4,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[11].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_5,
      O => \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[12].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_3,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[12].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_4,
      O => \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[13].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_2,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[13].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_3,
      O => \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[14].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_1,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[14].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_2,
      O => \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[15].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\,
      Q => \^reset_flops[15].rst_flops_0\,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[15].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_1,
      O => \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[1].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_14,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[1].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_15,
      O => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[2].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_13,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[2].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_14,
      O => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[3].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_12,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[3].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_13,
      O => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[4].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_11,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[4].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_12,
      O => \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[5].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_10,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[5].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_11,
      O => \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[6].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_9,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[6].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_10,
      O => \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[7].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_8,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[7].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_9,
      O => \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[8].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_7,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[8].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_8,
      O => \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[9].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_6,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[9].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_7,
      O => \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\
    );
\icount_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => bus2ip_reset_ipif_inverted,
      I1 => \^reset_flops[15].rst_flops_0\,
      I2 => \icount_out_reg[0]\,
      I3 => \icount_out_reg[0]_0\,
      O => Bus2IP_Reset_i_reg
    );
reset_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => reset_trig0,
      Q => S,
      R => bus2ip_reset_ipif_inverted
    );
sw_rst_cond_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => sw_rst_cond,
      Q => sw_rst_cond_d1,
      R => bus2ip_reset_ipif_inverted
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of axi_quad_spi_0_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of axi_quad_spi_0_xpm_cdc_gray : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of axi_quad_spi_0_xpm_cdc_gray : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of axi_quad_spi_0_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of axi_quad_spi_0_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of axi_quad_spi_0_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of axi_quad_spi_0_xpm_cdc_gray : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of axi_quad_spi_0_xpm_cdc_gray : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of axi_quad_spi_0_xpm_cdc_gray : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of axi_quad_spi_0_xpm_cdc_gray : entity is "GRAY";
end axi_quad_spi_0_xpm_cdc_gray;

architecture STRUCTURE of axi_quad_spi_0_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair28";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_cdc_gray__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \axi_quad_spi_0_xpm_cdc_gray__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \axi_quad_spi_0_xpm_cdc_gray__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_cdc_gray__1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \axi_quad_spi_0_xpm_cdc_gray__1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \axi_quad_spi_0_xpm_cdc_gray__1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \axi_quad_spi_0_xpm_cdc_gray__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \axi_quad_spi_0_xpm_cdc_gray__1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \axi_quad_spi_0_xpm_cdc_gray__1\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \axi_quad_spi_0_xpm_cdc_gray__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \axi_quad_spi_0_xpm_cdc_gray__1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \axi_quad_spi_0_xpm_cdc_gray__1\ : entity is "GRAY";
end \axi_quad_spi_0_xpm_cdc_gray__1\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_cdc_gray__1\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \axi_quad_spi_0_xpm_cdc_gray__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \axi_quad_spi_0_xpm_cdc_gray__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \axi_quad_spi_0_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \axi_quad_spi_0_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \axi_quad_spi_0_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \axi_quad_spi_0_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \axi_quad_spi_0_xpm_cdc_gray__2\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \axi_quad_spi_0_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \axi_quad_spi_0_xpm_cdc_gray__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \axi_quad_spi_0_xpm_cdc_gray__2\ : entity is "GRAY";
end \axi_quad_spi_0_xpm_cdc_gray__2\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair3";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_cdc_gray__3\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \axi_quad_spi_0_xpm_cdc_gray__3\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \axi_quad_spi_0_xpm_cdc_gray__3\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_cdc_gray__3\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \axi_quad_spi_0_xpm_cdc_gray__3\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \axi_quad_spi_0_xpm_cdc_gray__3\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \axi_quad_spi_0_xpm_cdc_gray__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \axi_quad_spi_0_xpm_cdc_gray__3\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \axi_quad_spi_0_xpm_cdc_gray__3\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \axi_quad_spi_0_xpm_cdc_gray__3\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \axi_quad_spi_0_xpm_cdc_gray__3\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \axi_quad_spi_0_xpm_cdc_gray__3\ : entity is "GRAY";
end \axi_quad_spi_0_xpm_cdc_gray__3\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_cdc_gray__3\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair25";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_cdc_gray__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \axi_quad_spi_0_xpm_cdc_gray__parameterized0\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \axi_quad_spi_0_xpm_cdc_gray__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_cdc_gray__parameterized0\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \axi_quad_spi_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \axi_quad_spi_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \axi_quad_spi_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \axi_quad_spi_0_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \axi_quad_spi_0_xpm_cdc_gray__parameterized0\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \axi_quad_spi_0_xpm_cdc_gray__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \axi_quad_spi_0_xpm_cdc_gray__parameterized0\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \axi_quad_spi_0_xpm_cdc_gray__parameterized0\ : entity is "GRAY";
end \axi_quad_spi_0_xpm_cdc_gray__parameterized0\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_cdc_gray__parameterized0\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair27";
begin
  dest_out_bin(4) <= \dest_graysync_ff[3]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(0),
      I1 => \dest_graysync_ff[3]\(2),
      I2 => \dest_graysync_ff[3]\(4),
      I3 => \dest_graysync_ff[3]\(3),
      I4 => \dest_graysync_ff[3]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(1),
      I1 => \dest_graysync_ff[3]\(3),
      I2 => \dest_graysync_ff[3]\(4),
      I3 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(2),
      I1 => \dest_graysync_ff[3]\(4),
      I2 => \dest_graysync_ff[3]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(3),
      I1 => \dest_graysync_ff[3]\(4),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\ : entity is "GRAY";
end \axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair2";
begin
  dest_out_bin(4) <= \dest_graysync_ff[3]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(0),
      I1 => \dest_graysync_ff[3]\(2),
      I2 => \dest_graysync_ff[3]\(4),
      I3 => \dest_graysync_ff[3]\(3),
      I4 => \dest_graysync_ff[3]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(1),
      I1 => \dest_graysync_ff[3]\(3),
      I2 => \dest_graysync_ff[3]\(4),
      I3 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(2),
      I1 => \dest_graysync_ff[3]\(4),
      I2 => \dest_graysync_ff[3]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(3),
      I1 => \dest_graysync_ff[3]\(4),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_cdc_gray__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \axi_quad_spi_0_xpm_cdc_gray__parameterized1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \axi_quad_spi_0_xpm_cdc_gray__parameterized1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_cdc_gray__parameterized1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \axi_quad_spi_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \axi_quad_spi_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \axi_quad_spi_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \axi_quad_spi_0_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \axi_quad_spi_0_xpm_cdc_gray__parameterized1\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \axi_quad_spi_0_xpm_cdc_gray__parameterized1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \axi_quad_spi_0_xpm_cdc_gray__parameterized1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \axi_quad_spi_0_xpm_cdc_gray__parameterized1\ : entity is "GRAY";
end \axi_quad_spi_0_xpm_cdc_gray__parameterized1\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_cdc_gray__parameterized1\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair29";
begin
  dest_out_bin(4) <= \dest_graysync_ff[1]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\ : entity is "GRAY";
end \axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair4";
begin
  dest_out_bin(4) <= \dest_graysync_ff[1]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of axi_quad_spi_0_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of axi_quad_spi_0_xpm_cdc_sync_rst : entity is 2;
  attribute INIT : string;
  attribute INIT of axi_quad_spi_0_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of axi_quad_spi_0_xpm_cdc_sync_rst : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of axi_quad_spi_0_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of axi_quad_spi_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of axi_quad_spi_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of axi_quad_spi_0_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of axi_quad_spi_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end axi_quad_spi_0_xpm_cdc_sync_rst;

architecture STRUCTURE of axi_quad_spi_0_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_cdc_sync_rst__4\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \axi_quad_spi_0_xpm_cdc_sync_rst__4\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \axi_quad_spi_0_xpm_cdc_sync_rst__4\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \axi_quad_spi_0_xpm_cdc_sync_rst__4\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \axi_quad_spi_0_xpm_cdc_sync_rst__4\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_cdc_sync_rst__4\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \axi_quad_spi_0_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \axi_quad_spi_0_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \axi_quad_spi_0_xpm_cdc_sync_rst__4\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \axi_quad_spi_0_xpm_cdc_sync_rst__4\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \axi_quad_spi_0_xpm_cdc_sync_rst__4\ : entity is "SYNC_RST";
end \axi_quad_spi_0_xpm_cdc_sync_rst__4\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_cdc_sync_rst__4\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_cdc_sync_rst__5\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \axi_quad_spi_0_xpm_cdc_sync_rst__5\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \axi_quad_spi_0_xpm_cdc_sync_rst__5\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \axi_quad_spi_0_xpm_cdc_sync_rst__5\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \axi_quad_spi_0_xpm_cdc_sync_rst__5\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_cdc_sync_rst__5\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \axi_quad_spi_0_xpm_cdc_sync_rst__5\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \axi_quad_spi_0_xpm_cdc_sync_rst__5\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \axi_quad_spi_0_xpm_cdc_sync_rst__5\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \axi_quad_spi_0_xpm_cdc_sync_rst__5\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \axi_quad_spi_0_xpm_cdc_sync_rst__5\ : entity is "SYNC_RST";
end \axi_quad_spi_0_xpm_cdc_sync_rst__5\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_cdc_sync_rst__5\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_cdc_sync_rst__6\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \axi_quad_spi_0_xpm_cdc_sync_rst__6\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \axi_quad_spi_0_xpm_cdc_sync_rst__6\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \axi_quad_spi_0_xpm_cdc_sync_rst__6\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \axi_quad_spi_0_xpm_cdc_sync_rst__6\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_cdc_sync_rst__6\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \axi_quad_spi_0_xpm_cdc_sync_rst__6\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \axi_quad_spi_0_xpm_cdc_sync_rst__6\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \axi_quad_spi_0_xpm_cdc_sync_rst__6\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \axi_quad_spi_0_xpm_cdc_sync_rst__6\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \axi_quad_spi_0_xpm_cdc_sync_rst__6\ : entity is "SYNC_RST";
end \axi_quad_spi_0_xpm_cdc_sync_rst__6\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_cdc_sync_rst__6\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_xpm_counter_updn is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrst_busy : in STD_LOGIC;
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_xpm_counter_updn : entity is "xpm_counter_updn";
end axi_quad_spi_0_xpm_counter_updn;

architecture STRUCTURE of axi_quad_spi_0_xpm_counter_updn is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair31";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_xpm_counter_updn_5 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrst_busy : in STD_LOGIC;
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_xpm_counter_updn_5 : entity is "xpm_counter_updn";
end axi_quad_spi_0_xpm_counter_updn_5;

architecture STRUCTURE of axi_quad_spi_0_xpm_counter_updn_5 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair6";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_counter_updn__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \axi_quad_spi_0_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_counter_updn__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair44";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_counter_updn__parameterized0_16\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_counter_updn__parameterized0_16\ : entity is "xpm_counter_updn";
end \axi_quad_spi_0_xpm_counter_updn__parameterized0_16\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_counter_updn__parameterized0_16\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair18";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_counter_updn__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC;
    \count_value_i_reg[1]_1\ : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : out STD_LOGIC;
    src_in_bin : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_value_i_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_3\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \axi_quad_spi_0_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_counter_updn__parameterized1\ is
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_1\ : STD_LOGIC;
begin
  \count_value_i_reg[0]_0\ <= \^count_value_i_reg[0]_0\;
  \count_value_i_reg[1]_0\ <= \^count_value_i_reg[1]_0\;
  \count_value_i_reg[1]_1\ <= \^count_value_i_reg[1]_1\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005A88A655"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \count_value_i_reg[1]_2\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_2\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[1]_3\,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA88AAAA"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \count_value_i_reg[1]_2\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_2\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[1]_3\,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFF755500008AA"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \count_value_i_reg[1]_2\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_2\(1),
      I4 => ram_empty_i,
      I5 => \^count_value_i_reg[1]_1\,
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^count_value_i_reg[0]_0\,
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^count_value_i_reg[1]_1\,
      R => '0'
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \grdc.rd_data_count_i_reg[2]\(0),
      I2 => \^count_value_i_reg[1]_1\,
      I3 => \grdc.rd_data_count_i_reg[2]\(1),
      O => src_in_bin(0)
    );
\grdc.rd_data_count_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696699669966969"
    )
        port map (
      I0 => \^count_value_i_reg[1]_0\,
      I1 => Q(2),
      I2 => \grdc.rd_data_count_i_reg[2]\(2),
      I3 => \grdc.rd_data_count_i_reg[2]\(1),
      I4 => \^count_value_i_reg[1]_1\,
      I5 => Q(1),
      O => D(0)
    );
\grdc.rd_data_count_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69FF696969690069"
    )
        port map (
      I0 => \^count_value_i_reg[1]_1\,
      I1 => \grdc.rd_data_count_i_reg[2]\(1),
      I2 => Q(1),
      I3 => \grdc.rd_data_count_i_reg[2]\(0),
      I4 => \^count_value_i_reg[0]_0\,
      I5 => Q(0),
      O => \^count_value_i_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_counter_updn__parameterized1_10\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC;
    \count_value_i_reg[1]_1\ : out STD_LOGIC;
    \count_value_i_reg[0]_0\ : out STD_LOGIC;
    src_in_bin : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_value_i_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_3\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_counter_updn__parameterized1_10\ : entity is "xpm_counter_updn";
end \axi_quad_spi_0_xpm_counter_updn__parameterized1_10\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_counter_updn__parameterized1_10\ is
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_1\ : STD_LOGIC;
begin
  \count_value_i_reg[0]_0\ <= \^count_value_i_reg[0]_0\;
  \count_value_i_reg[1]_0\ <= \^count_value_i_reg[1]_0\;
  \count_value_i_reg[1]_1\ <= \^count_value_i_reg[1]_1\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005A88A655"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \count_value_i_reg[1]_2\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_2\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[1]_3\,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA88AAAA"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \count_value_i_reg[1]_2\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_2\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[1]_3\,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFF755500008AA"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \count_value_i_reg[1]_2\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_2\(1),
      I4 => ram_empty_i,
      I5 => \^count_value_i_reg[1]_1\,
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^count_value_i_reg[0]_0\,
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^count_value_i_reg[1]_1\,
      R => '0'
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \grdc.rd_data_count_i_reg[2]\(0),
      I2 => \^count_value_i_reg[1]_1\,
      I3 => \grdc.rd_data_count_i_reg[2]\(1),
      O => src_in_bin(0)
    );
\grdc.rd_data_count_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696699669966969"
    )
        port map (
      I0 => \^count_value_i_reg[1]_0\,
      I1 => Q(2),
      I2 => \grdc.rd_data_count_i_reg[2]\(2),
      I3 => \grdc.rd_data_count_i_reg[2]\(1),
      I4 => \^count_value_i_reg[1]_1\,
      I5 => Q(1),
      O => D(0)
    );
\grdc.rd_data_count_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69FF696969690069"
    )
        port map (
      I0 => \^count_value_i_reg[1]_1\,
      I1 => \grdc.rd_data_count_i_reg[2]\(1),
      I2 => Q(1),
      I3 => \grdc.rd_data_count_i_reg[2]\(0),
      I4 => \^count_value_i_reg[0]_0\,
      I5 => Q(0),
      O => \^count_value_i_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_counter_updn__parameterized2\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    \reg_out_i_reg[4]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[4]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \src_gray_ff_reg[4]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[0]\ : in STD_LOGIC;
    \count_value_i_reg[4]_0\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_counter_updn__parameterized2\ : entity is "xpm_counter_updn";
end \axi_quad_spi_0_xpm_counter_updn__parameterized2\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_counter_updn__parameterized2\ is
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \count_value_i[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[4]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[0]_i_1\ : label is "soft_lutpair37";
begin
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  \count_value_i_reg[3]_0\(3 downto 0) <= \^count_value_i_reg[3]_0\(3 downto 0);
\count_value_i[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^count_value_i_reg[3]_0\(0),
      O => \count_value_i[0]_i_1__4_n_0\
    );
\count_value_i[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^count_value_i_reg[3]_0\(0),
      I4 => \^count_value_i_reg[3]_0\(1),
      O => \count_value_i[1]_i_1__4_n_0\
    );
\count_value_i[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \^count_value_i_reg[3]_0\(1),
      I2 => \^count_value_i_reg[3]_0\(2),
      O => \count_value_i[2]_i_1__4_n_0\
    );
\count_value_i[3]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(1),
      I1 => \^count_value_i_reg[3]_0\(0),
      I2 => \^count_value_i_reg[3]_0\(2),
      I3 => \^count_value_i_reg[3]_0\(3),
      O => \count_value_i[3]_i_1__4_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(2),
      I1 => \^count_value_i_reg[3]_0\(0),
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \^count_value_i_reg[3]_0\(3),
      I4 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[0]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(0),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[1]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(1),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[2]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(2),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[3]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(3),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => \count_value_i_reg[4]_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFE00001501"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(3),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\,
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \src_gray_ff_reg[4]\,
      I4 => \^count_value_i_reg[3]_0\(2),
      I5 => \count_value_i_reg_n_0_[4]\,
      O => src_in_bin(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBBAFB04044504"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(2),
      I1 => \src_gray_ff_reg[4]\,
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \grdc.rd_data_count_i_reg[0]\,
      I4 => \^count_value_i_reg[3]_0\(0),
      I5 => \^count_value_i_reg[3]_0\(3),
      O => src_in_bin(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FB4F04"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \src_gray_ff_reg[4]\,
      I4 => \^count_value_i_reg[3]_0\(2),
      O => src_in_bin(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      O => src_in_bin(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0\,
      I1 => Q(1),
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => Q(2),
      I4 => \^count_value_i_reg[3]_0\(2),
      O => D(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFDDDD44454444"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => ram_empty_i,
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => \count_value_i_reg[0]_0\(1),
      I5 => Q(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\,
      I1 => Q(2),
      I2 => \^count_value_i_reg[3]_0\(2),
      I3 => Q(3),
      I4 => \^count_value_i_reg[3]_0\(3),
      O => D(1)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44D4D4DD"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \^count_value_i_reg[3]_0\(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
\grdc.rd_data_count_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      I2 => \grdc.rd_data_count_i_reg[4]_0\(0),
      O => \reg_out_i_reg[4]\(0)
    );
\grdc.rd_data_count_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69699669"
    )
        port map (
      I0 => \grdc.rd_data_count_i[4]_i_3_n_0\,
      I1 => \grdc.rd_data_count_i_reg[4]_0\(3),
      I2 => \^count_value_i_reg[3]_0\(3),
      I3 => \grdc.rd_data_count_i_reg[4]_0\(2),
      I4 => \^count_value_i_reg[3]_0\(2),
      O => \reg_out_i_reg[4]\(1)
    );
\grdc.rd_data_count_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1EE1788787781EE1"
    )
        port map (
      I0 => \grdc.rd_data_count_i[4]_i_3_n_0\,
      I1 => \grdc.rd_data_count_i_reg[4]\,
      I2 => \grdc.rd_data_count_i_reg[4]_0\(4),
      I3 => \count_value_i_reg_n_0_[4]\,
      I4 => \grdc.rd_data_count_i_reg[4]_0\(3),
      I5 => \^count_value_i_reg[3]_0\(3),
      O => \reg_out_i_reg[4]\(2)
    );
\grdc.rd_data_count_i[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F999FFF990009990"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(2),
      I1 => \grdc.rd_data_count_i_reg[4]_0\(2),
      I2 => \grdc.rd_data_count_i_reg[4]_0\(1),
      I3 => \src_gray_ff_reg[4]\,
      I4 => \^count_value_i_reg[3]_0\(1),
      I5 => \grdc.rd_data_count_i_reg[3]\,
      O => \grdc.rd_data_count_i[4]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_counter_updn__parameterized2_11\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    \reg_out_i_reg[4]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[4]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \src_gray_ff_reg[4]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[0]\ : in STD_LOGIC;
    \count_value_i_reg[4]_0\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_counter_updn__parameterized2_11\ : entity is "xpm_counter_updn";
end \axi_quad_spi_0_xpm_counter_updn__parameterized2_11\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_counter_updn__parameterized2_11\ is
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \count_value_i[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[4]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[0]_i_1\ : label is "soft_lutpair12";
begin
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  \count_value_i_reg[3]_0\(3 downto 0) <= \^count_value_i_reg[3]_0\(3 downto 0);
\count_value_i[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^count_value_i_reg[3]_0\(0),
      O => \count_value_i[0]_i_1__4_n_0\
    );
\count_value_i[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^count_value_i_reg[3]_0\(0),
      I4 => \^count_value_i_reg[3]_0\(1),
      O => \count_value_i[1]_i_1__4_n_0\
    );
\count_value_i[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \^count_value_i_reg[3]_0\(1),
      I2 => \^count_value_i_reg[3]_0\(2),
      O => \count_value_i[2]_i_1__4_n_0\
    );
\count_value_i[3]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(1),
      I1 => \^count_value_i_reg[3]_0\(0),
      I2 => \^count_value_i_reg[3]_0\(2),
      I3 => \^count_value_i_reg[3]_0\(3),
      O => \count_value_i[3]_i_1__4_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(2),
      I1 => \^count_value_i_reg[3]_0\(0),
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \^count_value_i_reg[3]_0\(3),
      I4 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[0]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(0),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[1]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(1),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[2]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(2),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[3]_i_1__4_n_0\,
      Q => \^count_value_i_reg[3]_0\(3),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => \count_value_i_reg[4]_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFE00001501"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(3),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\,
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \src_gray_ff_reg[4]\,
      I4 => \^count_value_i_reg[3]_0\(2),
      I5 => \count_value_i_reg_n_0_[4]\,
      O => src_in_bin(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBBAFB04044504"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(2),
      I1 => \src_gray_ff_reg[4]\,
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \grdc.rd_data_count_i_reg[0]\,
      I4 => \^count_value_i_reg[3]_0\(0),
      I5 => \^count_value_i_reg[3]_0\(3),
      O => src_in_bin(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FB4F04"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => \src_gray_ff_reg[4]\,
      I4 => \^count_value_i_reg[3]_0\(2),
      O => src_in_bin(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      O => src_in_bin(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0\,
      I1 => Q(1),
      I2 => \^count_value_i_reg[3]_0\(1),
      I3 => Q(2),
      I4 => \^count_value_i_reg[3]_0\(2),
      O => D(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFDDDD44454444"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => ram_empty_i,
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => \count_value_i_reg[0]_0\(1),
      I5 => Q(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\,
      I1 => Q(2),
      I2 => \^count_value_i_reg[3]_0\(2),
      I3 => Q(3),
      I4 => \^count_value_i_reg[3]_0\(3),
      O => D(1)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44D4D4DD"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \^count_value_i_reg[3]_0\(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
\grdc.rd_data_count_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\,
      I2 => \grdc.rd_data_count_i_reg[4]_0\(0),
      O => \reg_out_i_reg[4]\(0)
    );
\grdc.rd_data_count_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69699669"
    )
        port map (
      I0 => \grdc.rd_data_count_i[4]_i_3_n_0\,
      I1 => \grdc.rd_data_count_i_reg[4]_0\(3),
      I2 => \^count_value_i_reg[3]_0\(3),
      I3 => \grdc.rd_data_count_i_reg[4]_0\(2),
      I4 => \^count_value_i_reg[3]_0\(2),
      O => \reg_out_i_reg[4]\(1)
    );
\grdc.rd_data_count_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1EE1788787781EE1"
    )
        port map (
      I0 => \grdc.rd_data_count_i[4]_i_3_n_0\,
      I1 => \grdc.rd_data_count_i_reg[4]\,
      I2 => \grdc.rd_data_count_i_reg[4]_0\(4),
      I3 => \count_value_i_reg_n_0_[4]\,
      I4 => \grdc.rd_data_count_i_reg[4]_0\(3),
      I5 => \^count_value_i_reg[3]_0\(3),
      O => \reg_out_i_reg[4]\(2)
    );
\grdc.rd_data_count_i[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F999FFF990009990"
    )
        port map (
      I0 => \^count_value_i_reg[3]_0\(2),
      I1 => \grdc.rd_data_count_i_reg[4]_0\(2),
      I2 => \grdc.rd_data_count_i_reg[4]_0\(1),
      I3 => \src_gray_ff_reg[4]\,
      I4 => \^count_value_i_reg[3]_0\(1),
      I5 => \grdc.rd_data_count_i_reg[3]\,
      O => \grdc.rd_data_count_i[4]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_counter_updn__parameterized2_14\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gwdc.wr_data_count_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_counter_updn__parameterized2_14\ : entity is "xpm_counter_updn";
end \axi_quad_spi_0_xpm_counter_updn__parameterized2_14\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_counter_updn__parameterized2_14\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gwdc.wr_data_count_i[0]_i_1\ : label is "soft_lutpair16";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\gwdc.wr_data_count_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[2]\(0),
      O => D(0)
    );
\gwdc.wr_data_count_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[2]\(0),
      I2 => \^q\(1),
      I3 => \gwdc.wr_data_count_i_reg[2]\(1),
      I4 => \gwdc.wr_data_count_i_reg[2]\(2),
      I5 => \^q\(2),
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_counter_updn__parameterized2_3\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gwdc.wr_data_count_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_counter_updn__parameterized2_3\ : entity is "xpm_counter_updn";
end \axi_quad_spi_0_xpm_counter_updn__parameterized2_3\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_counter_updn__parameterized2_3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gwdc.wr_data_count_i[0]_i_1\ : label is "soft_lutpair42";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\gwdc.wr_data_count_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[2]\(0),
      O => D(0)
    );
\gwdc.wr_data_count_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[2]\(0),
      I2 => \^q\(1),
      I3 => \gwdc.wr_data_count_i_reg[2]\(1),
      I4 => \gwdc.wr_data_count_i_reg[2]\(2),
      I5 => \^q\(2),
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_counter_updn__parameterized3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_counter_updn__parameterized3\ : entity is "xpm_counter_updn";
end \axi_quad_spi_0_xpm_counter_updn__parameterized3\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_counter_updn__parameterized3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair38";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_counter_updn__parameterized3_12\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_counter_updn__parameterized3_12\ : entity is "xpm_counter_updn";
end \axi_quad_spi_0_xpm_counter_updn__parameterized3_12\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_counter_updn__parameterized3_12\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair13";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_counter_updn__parameterized3_15\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_counter_updn__parameterized3_15\ : entity is "xpm_counter_updn";
end \axi_quad_spi_0_xpm_counter_updn__parameterized3_15\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_counter_updn__parameterized3_15\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair17";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_counter_updn__parameterized3_4\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_counter_updn__parameterized3_4\ : entity is "xpm_counter_updn";
end \axi_quad_spi_0_xpm_counter_updn__parameterized3_4\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_counter_updn__parameterized3_4\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair43";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ : out STD_LOGIC;
    overflow_i0 : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    rst : in STD_LOGIC;
    \gof.overflow_i_reg\ : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_xpm_fifo_reg_bit : entity is "xpm_fifo_reg_bit";
end axi_quad_spi_0_xpm_fifo_reg_bit;

architecture STRUCTURE of axi_quad_spi_0_xpm_fifo_reg_bit is
  signal \^rst_d1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gof.overflow_i_i_1\ : label is "soft_lutpair39";
begin
  rst_d1 <= \^rst_d1\;
d_out_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrst_busy,
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => wrst_busy,
      O => clr_full
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3A200A2"
    )
        port map (
      I0 => p_0_in,
      I1 => \^rst_d1\,
      I2 => rst,
      I3 => \gof.overflow_i_reg\,
      I4 => prog_full,
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\
    );
\gof.overflow_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gof.overflow_i_reg\,
      I3 => wr_en,
      O => overflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_xpm_fifo_reg_bit_13 is
  port (
    rst_d1 : out STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ : out STD_LOGIC;
    overflow_i0 : out STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_xpm_fifo_reg_bit_13 : entity is "xpm_fifo_reg_bit";
end axi_quad_spi_0_xpm_fifo_reg_bit_13;

architecture STRUCTURE of axi_quad_spi_0_xpm_fifo_reg_bit_13 is
  signal \^rst_d1\ : STD_LOGIC;
begin
  rst_d1 <= \^rst_d1\;
d_out_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrst_busy,
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E200E2E2"
    )
        port map (
      I0 => p_1_in,
      I1 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I2 => prog_full,
      I3 => rst,
      I4 => \^rst_d1\,
      I5 => wrst_busy,
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\
    );
\gof.overflow_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I3 => wr_en,
      O => overflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_xpm_fifo_reg_vec is
  port (
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    diff_pntr_pf_q0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_out_i_reg[3]_0\ : out STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clr_full : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_xpm_fifo_reg_vec : entity is "xpm_fifo_reg_vec";
end axi_quad_spi_0_xpm_fifo_reg_vec;

architecture STRUCTURE of axi_quad_spi_0_xpm_fifo_reg_vec is
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\ : STD_LOGIC;
  signal leaving_afull : STD_LOGIC;
  signal ram_afull_i0 : STD_LOGIC;
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FE0002"
    )
        port map (
      I0 => ram_afull_i0,
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\,
      I2 => rst,
      I3 => rst_d1,
      I4 => almost_full,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8080802020FF20"
    )
        port map (
      I0 => wr_pntr_plus1_pf_carry,
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\(3),
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\,
      I3 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\,
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(3),
      I5 => rd_pntr_wr(3),
      O => ram_afull_i0
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\(0),
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\(2),
      I3 => rd_pntr_wr(2),
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\(1),
      I5 => rd_pntr_wr(1),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF909090"
    )
        port map (
      I0 => rd_pntr_wr(3),
      I1 => Q(3),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0\,
      I3 => leaving_afull,
      I4 => wr_pntr_plus1_pf_carry,
      I5 => clr_full,
      O => \reg_out_i_reg[3]_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => rd_pntr_wr(2),
      I4 => Q(1),
      I5 => rd_pntr_wr(1),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => rd_pntr_wr(3),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(3),
      I2 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\,
      O => leaving_afull
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(0),
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(2),
      I3 => rd_pntr_wr(2),
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(1),
      I5 => rd_pntr_wr(1),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\,
      I1 => Q(2),
      I2 => rd_pntr_wr(2),
      I3 => rd_pntr_wr(3),
      I4 => Q(3),
      O => diff_pntr_pf_q0(0)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D444DDD4"
    )
        port map (
      I0 => rd_pntr_wr(1),
      I1 => Q(1),
      I2 => wr_pntr_plus1_pf_carry,
      I3 => Q(0),
      I4 => rd_pntr_wr(0),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => rd_pntr_wr(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => rd_pntr_wr(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => rd_pntr_wr(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => rd_pntr_wr(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_xpm_fifo_reg_vec_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i0 : out STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\ : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[0]_0\ : in STD_LOGIC;
    \reg_out_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_xpm_fifo_reg_vec_1 : entity is "xpm_fifo_reg_vec";
end axi_quad_spi_0_xpm_fifo_reg_vec_1;

architecture STRUCTURE of axi_quad_spi_0_xpm_fifo_reg_vec_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_pf_ic_rc.ram_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666699999969"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(1),
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(0),
      I4 => rd_en,
      I5 => ram_empty_i,
      O => D(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D42B2BD4"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\,
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I3 => \^q\(1),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      O => D(1)
    );
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8080802020FF20"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_0\(3),
      I2 => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(3),
      I5 => \^q\(3),
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_0\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_0\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_xpm_fifo_reg_vec_6 is
  port (
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ : out STD_LOGIC;
    diff_pntr_pf_q0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_i0 : out STD_LOGIC;
    almost_full : in STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_xpm_fifo_reg_vec_6 : entity is "xpm_fifo_reg_vec";
end axi_quad_spi_0_xpm_fifo_reg_vec_6;

architecture STRUCTURE of axi_quad_spi_0_xpm_fifo_reg_vec_6 is
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\ : STD_LOGIC;
  signal ram_afull_i0 : STD_LOGIC;
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00AA000000B8"
    )
        port map (
      I0 => almost_full,
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\,
      I2 => ram_afull_i0,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => rst,
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8080802020FF20"
    )
        port map (
      I0 => wr_pntr_plus1_pf_carry,
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(3),
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\,
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3),
      I5 => rd_pntr_wr(3),
      O => ram_afull_i0
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(0),
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(2),
      I3 => rd_pntr_wr(2),
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(1),
      I5 => rd_pntr_wr(1),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\,
      I1 => Q(2),
      I2 => rd_pntr_wr(2),
      I3 => rd_pntr_wr(3),
      I4 => Q(3),
      O => diff_pntr_pf_q0(0)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D444DDD4"
    )
        port map (
      I0 => rd_pntr_wr(1),
      I1 => Q(1),
      I2 => wr_pntr_plus1_pf_carry,
      I3 => Q(0),
      I4 => rd_pntr_wr(0),
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8080802020FF20"
    )
        port map (
      I0 => wr_pntr_plus1_pf_carry,
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\,
      I4 => Q(3),
      I5 => rd_pntr_wr(3),
      O => ram_full_i0
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(0),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(2),
      I3 => rd_pntr_wr(2),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(1),
      I5 => rd_pntr_wr(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => rd_pntr_wr(2),
      I4 => Q(1),
      I5 => rd_pntr_wr(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => rd_pntr_wr(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => rd_pntr_wr(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => rd_pntr_wr(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => rd_pntr_wr(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_xpm_fifo_reg_vec_8 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i0 : out STD_LOGIC;
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\ : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[0]_0\ : in STD_LOGIC;
    \reg_out_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_xpm_fifo_reg_vec_8 : entity is "xpm_fifo_reg_vec";
end axi_quad_spi_0_xpm_fifo_reg_vec_8;

architecture STRUCTURE of axi_quad_spi_0_xpm_fifo_reg_vec_8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_pf_ic_rc.ram_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666699999969"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(1),
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(0),
      I4 => rd_en,
      I5 => ram_empty_i,
      O => D(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D42B2BD4"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\,
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I3 => \^q\(1),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      O => D(1)
    );
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8080802020FF20"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_0\(3),
      I2 => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(3),
      I5 => \^q\(3),
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_0\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_0\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gwdc.wr_data_count_i_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wrst_busy : in STD_LOGIC;
    \reg_out_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0\ : entity is "xpm_fifo_reg_vec";
end \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gwdc.wr_data_count_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gwdc.wr_data_count_i[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gwdc.wr_data_count_i[4]_i_1\ : label is "soft_lutpair33";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\gwdc.wr_data_count_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[4]\(0),
      I2 => \^q\(1),
      I3 => \gwdc.wr_data_count_i_reg[4]\(1),
      O => D(0)
    );
\gwdc.wr_data_count_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gwdc.wr_data_count_i[4]_i_2_n_0\,
      I1 => \reg_out_i_reg_n_0_[3]\,
      I2 => \gwdc.wr_data_count_i_reg[4]\(3),
      O => D(1)
    );
\gwdc.wr_data_count_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gwdc.wr_data_count_i[4]_i_2_n_0\,
      I1 => \gwdc.wr_data_count_i_reg[4]\(3),
      I2 => \reg_out_i_reg_n_0_[3]\,
      I3 => \reg_out_i_reg_n_0_[4]\,
      I4 => \gwdc.wr_data_count_i_reg[4]\(4),
      O => D(2)
    );
\gwdc.wr_data_count_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4DD4444DDDDD4DD"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gwdc.wr_data_count_i_reg[4]\(2),
      I2 => \gwdc.wr_data_count_i_reg[4]\(0),
      I3 => \^q\(0),
      I4 => \gwdc.wr_data_count_i_reg[4]\(1),
      I5 => \^q\(1),
      O => \gwdc.wr_data_count_i[4]_i_2_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(0),
      Q => \^q\(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(1),
      Q => \^q\(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(2),
      Q => \^q\(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(3),
      Q => \reg_out_i_reg_n_0_[3]\,
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(4),
      Q => \reg_out_i_reg_n_0_[4]\,
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_2\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \reg_out_i_reg[2]_0\ : out STD_LOGIC;
    \grdc.rd_data_count_i_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[1]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[1]_0\ : in STD_LOGIC;
    \reg_out_i_reg[4]_0\ : in STD_LOGIC;
    \reg_out_i_reg[4]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_2\ : entity is "xpm_fifo_reg_vec";
end \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_2\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\grdc.rd_data_count_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33C96696996C33C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \grdc.rd_data_count_i_reg[4]\(1),
      I3 => \grdc.rd_data_count_i_reg[1]\,
      I4 => \grdc.rd_data_count_i_reg[1]_0\,
      I5 => \grdc.rd_data_count_i_reg[4]\(0),
      O => D(0)
    );
\grdc.rd_data_count_i[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[4]\(2),
      O => \reg_out_i_reg[2]_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(4),
      Q => \^q\(4),
      R => \reg_out_i_reg[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_7\ is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gwdc.wr_data_count_i_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wrst_busy : in STD_LOGIC;
    \reg_out_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_7\ : entity is "xpm_fifo_reg_vec";
end \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_7\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_7\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gwdc.wr_data_count_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gwdc.wr_data_count_i[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gwdc.wr_data_count_i[4]_i_1\ : label is "soft_lutpair8";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\gwdc.wr_data_count_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[4]\(0),
      I2 => \^q\(1),
      I3 => \gwdc.wr_data_count_i_reg[4]\(1),
      O => D(0)
    );
\gwdc.wr_data_count_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gwdc.wr_data_count_i[4]_i_2_n_0\,
      I1 => \reg_out_i_reg_n_0_[3]\,
      I2 => \gwdc.wr_data_count_i_reg[4]\(3),
      O => D(1)
    );
\gwdc.wr_data_count_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gwdc.wr_data_count_i[4]_i_2_n_0\,
      I1 => \gwdc.wr_data_count_i_reg[4]\(3),
      I2 => \reg_out_i_reg_n_0_[3]\,
      I3 => \reg_out_i_reg_n_0_[4]\,
      I4 => \gwdc.wr_data_count_i_reg[4]\(4),
      O => D(2)
    );
\gwdc.wr_data_count_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4DD4444DDDDD4DD"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gwdc.wr_data_count_i_reg[4]\(2),
      I2 => \gwdc.wr_data_count_i_reg[4]\(0),
      I3 => \^q\(0),
      I4 => \gwdc.wr_data_count_i_reg[4]\(1),
      I5 => \^q\(1),
      O => \gwdc.wr_data_count_i[4]_i_2_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(0),
      Q => \^q\(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(1),
      Q => \^q\(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(2),
      Q => \^q\(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(3),
      Q => \reg_out_i_reg_n_0_[3]\,
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(4),
      Q => \reg_out_i_reg_n_0_[4]\,
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_9\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \reg_out_i_reg[2]_0\ : out STD_LOGIC;
    \grdc.rd_data_count_i_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[1]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[1]_0\ : in STD_LOGIC;
    \reg_out_i_reg[4]_0\ : in STD_LOGIC;
    \reg_out_i_reg[4]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_9\ : entity is "xpm_fifo_reg_vec";
end \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_9\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_9\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\grdc.rd_data_count_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33C96696996C33C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \grdc.rd_data_count_i_reg[4]\(1),
      I3 => \grdc.rd_data_count_i_reg[1]\,
      I4 => \grdc.rd_data_count_i_reg[1]_0\,
      I5 => \grdc.rd_data_count_i_reg[4]\(0),
      O => D(0)
    );
\grdc.rd_data_count_i[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[4]\(2),
      O => \reg_out_i_reg[2]_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(4),
      Q => \^q\(4),
      R => \reg_out_i_reg[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of axi_quad_spi_0_xpm_memory_base : entity is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of axi_quad_spi_0_xpm_memory_base : entity is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of axi_quad_spi_0_xpm_memory_base : entity is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of axi_quad_spi_0_xpm_memory_base : entity is 8;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of axi_quad_spi_0_xpm_memory_base : entity is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of axi_quad_spi_0_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of axi_quad_spi_0_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of axi_quad_spi_0_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of axi_quad_spi_0_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of axi_quad_spi_0_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of axi_quad_spi_0_xpm_memory_base : entity is 128;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of axi_quad_spi_0_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of axi_quad_spi_0_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of axi_quad_spi_0_xpm_memory_base : entity is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of axi_quad_spi_0_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of axi_quad_spi_0_xpm_memory_base : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of axi_quad_spi_0_xpm_memory_base : entity is 8;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of axi_quad_spi_0_xpm_memory_base : entity is 8;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of axi_quad_spi_0_xpm_memory_base : entity is 8;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of axi_quad_spi_0_xpm_memory_base : entity is 8;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of axi_quad_spi_0_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of axi_quad_spi_0_xpm_memory_base : entity is 8;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of axi_quad_spi_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of axi_quad_spi_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of axi_quad_spi_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of axi_quad_spi_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of axi_quad_spi_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of axi_quad_spi_0_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of axi_quad_spi_0_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of axi_quad_spi_0_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of axi_quad_spi_0_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of axi_quad_spi_0_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of axi_quad_spi_0_xpm_memory_base : entity is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of axi_quad_spi_0_xpm_memory_base : entity is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of axi_quad_spi_0_xpm_memory_base : entity is 8;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of axi_quad_spi_0_xpm_memory_base : entity is 8;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of axi_quad_spi_0_xpm_memory_base : entity is 8;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of axi_quad_spi_0_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of axi_quad_spi_0_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of axi_quad_spi_0_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of axi_quad_spi_0_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of axi_quad_spi_0_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of axi_quad_spi_0_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of axi_quad_spi_0_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of axi_quad_spi_0_xpm_memory_base : entity is 8;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of axi_quad_spi_0_xpm_memory_base : entity is 8;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of axi_quad_spi_0_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of axi_quad_spi_0_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of axi_quad_spi_0_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of axi_quad_spi_0_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of axi_quad_spi_0_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of axi_quad_spi_0_xpm_memory_base : entity is 8;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of axi_quad_spi_0_xpm_memory_base : entity is 8;
end axi_quad_spi_0_xpm_memory_base;

architecture STRUCTURE of axi_quad_spi_0_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_SPO_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute dram_emb_xdc : string;
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7]\ : label is "no";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 5;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 6;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 7;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 6;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 7;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(0),
      Q => doutb(0),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(1),
      Q => doutb(1),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(2),
      Q => doutb(2),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(3),
      Q => doutb(3),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(4),
      Q => doutb(4),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(5),
      Q => doutb(5),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(6),
      Q => doutb(6),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(7),
      Q => doutb(7),
      R => rstb
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(0),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(0),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(1),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(1),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(2),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(2),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(3),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(3),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(4),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(4),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(5),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(5),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(6),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(6),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(7),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(7),
      R => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(1 downto 0),
      DIB(1 downto 0) => dina(3 downto 2),
      DIC(1 downto 0) => dina(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(1 downto 0),
      DOB(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(3 downto 2),
      DOC(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(5 downto 4),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => addra(2),
      A3 => addra(3),
      A4 => '0',
      D => dina(6),
      DPO => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(6),
      DPRA0 => addrb(0),
      DPRA1 => addrb(1),
      DPRA2 => addrb(2),
      DPRA3 => addrb(3),
      DPRA4 => '0',
      SPO => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_SPO_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => addra(2),
      A3 => addra(3),
      A4 => '0',
      D => dina(7),
      DPO => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(7),
      DPRA0 => addrb(0),
      DPRA1 => addrb(1),
      DPRA2 => addrb(2),
      DPRA3 => addrb(3),
      DPRA4 => '0',
      SPO => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0_SPO_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_memory_base__1\ is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 128;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "xpm_memory_base";
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \axi_quad_spi_0_xpm_memory_base__1\ : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \axi_quad_spi_0_xpm_memory_base__1\ : entity is 8;
end \axi_quad_spi_0_xpm_memory_base__1\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_memory_base__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_SPO_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute dram_emb_xdc : string;
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7]\ : label is "no";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\ : label is 5;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 6;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\ : label is 7;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 6;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\ : label is 7;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(0),
      Q => doutb(0),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(1),
      Q => doutb(1),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(2),
      Q => doutb(2),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(3),
      Q => doutb(3),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(4),
      Q => doutb(4),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(5),
      Q => doutb(5),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(6),
      Q => doutb(6),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(7),
      Q => doutb(7),
      R => rstb
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(0),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(0),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(1),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(1),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(2),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(2),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(3),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(3),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(4),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(4),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(5),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(5),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(6),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(6),
      R => '0'
    );
\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(7),
      Q => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg\(7),
      R => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5\: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(1 downto 0),
      DIB(1 downto 0) => dina(3 downto 2),
      DIC(1 downto 0) => dina(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(1 downto 0),
      DOB(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(3 downto 2),
      DOC(1 downto 0) => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(5 downto 4),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => addra(2),
      A3 => addra(3),
      A4 => '0',
      D => dina(6),
      DPO => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(6),
      DPRA0 => addrb(0),
      DPRA1 => addrb(1),
      DPRA2 => addrb(2),
      DPRA3 => addrb(3),
      DPRA4 => '0',
      SPO => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7_SPO_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => addra(2),
      A3 => addra(3),
      A4 => '0',
      D => dina(7),
      DPO => \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0\(7),
      DPRA0 => addrb(0),
      DPRA1 => addrb(1),
      DPRA2 => addrb(2),
      DPRA3 => addrb(3),
      DPRA4 => '0',
      SPO => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_7__0_SPO_UNCONNECTED\,
      WCLK => clka,
      WE => ena
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
M9ERyrMNmk2Jjyg6ZCGYQpTqx5C+74+ICn/vAQ5KoRuxJNbql8tHJjFcOe3FAJX14Nokq4wtfvZP
2sPXAs/eYYzjjbnt4nx8oZRRPy0XyDpvba/qxyqBSxjChIoPMDwpXnxi+chZJU5N1zCNt9FZPAep
nLCjMCkQTlKbP3cUJIY=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
FBAg02qOh8M8uZkNvwWHoY3ELncwvHjjgL2y2qLN7xuxxaPQj3LdyD/IETTPdSjNCB/rhpJxbT1y
U5fbF28Hkp+bzDuxeTWPX251wMhiEmdm4jhyMl2z+GRf2Z6VJ4bVM5bieaJvsbjuyQ9Az6TDmueI
14citDEbyRCyJD9EiVckdS2mZcTl37oVFebKnIeJGmNjOc2XrcM84JVJIG5iv3ryS2hAG9/84hEr
u3DYC+xS2w5swJXVSf0zV+w8xZulS3PTPLELIM8O+SEFdHetZKnrgG1aJ7V5xu0RniGAsyVwVbgu
M1jPqNLyU+9kyETKfG9jcGEIM2I2gUfmOvRs+g==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
TYvdYOtu2OcY/hp0LCFlgwGgJeLJ5MSBDPjuyI3760LiXtklDVs7CUFlvRRXMgAzbHlMXbiHp/Xl
cvmN035ayt8D8gPWRXxnbQf3kRlW6EIFwFMZ1inL9b5f47gsuvCP6MaKiTg0W7+/ZeHbM4jHXvRe
b8HXvQvK5kVwtayEwt0=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
GkcGg32vdV7ZS9x4Uw9v3hZEcxD5hMmQXUqa6shDPbzqUGIxrKpTOb9W4Sgi8rq+qw7QpAZp2JW/
MkYAH1WikFlf+XWG57y55EFV7oRoKQDh2Yz0sZEwVhwTGwSAqfnjrmPITofdG5eiey1ySGprEKsT
mqWAV+ZN7TkQkKup0Ukf1O+8giYKT/7UibTRqG/CT9dgU/4atPgYh2QjNMVrsAH/uzDxh7stQMYe
nkjZBkpLWOq7mxEXTKVtYAD/8G5qCJELRcvCuUKYz4Une1wDj+L/vwRK3IAdWKQ+/5mvj0q5XEm7
IKu5HYvalbySwRWzaB00uobXZorNhfwSv45jHg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
JnT3Bfv/DUBx2mIm4+jpmHjzhKoX4mNpcc/lgscv3iYrJw8Uble396hMwPsVZ+kkAsmYtegNCiTG
Z7kqnoNeWHv+Grdizsq0QM9S2KJ5EoZhjelE+3Cii/ztNHf7Y3c0nBPnioUQ5YmWk7vgoQl3SJ3d
vwD3G0c+fGJBRpi14hTJOB2wtu4EeWcJ1f+01LjKINeucLlwacjnN0tElyRgCNKfsRDAQiMqwKqg
XCleeNY0cyLXGI30pXMpnbLizYlNKgVD6DSeNaby0dhW4phR0a+9xteo8l8eRVzTO+VSOcYSy8rU
6Uj2y0Up19vcq91C+/YeHlh24VwNI2TJeUEDwQ==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
AWr8D+IaT/X0jMJSrwmWnhWOjt0+8oyULINYaH7QGBLgqKCVtf8rqo68R3/TZ8gTkN73fZOx0QCU
3WEp7Ga1gUsqEgy+2zGlncYhOzx62FJm4Pm7S6LbE1qdg3/9Pp55JLaf1ouYlZccQJ+yawj0HgL4
zR0T347Zg2aIFxQZ28icCuJbxAZsZgAT30scXsTMMvXlQQ9NI21OjirKgHRn3dldIjpkL+BrVBkQ
Q7MMiTBhpCn/c+WXk4H9BPc3vMrVoh6r5oo+e1858Hk7osyxNI9zuACaGwdAatsW756kQBMsQoUj
TmJksSfucjrHVSuLFffpztOARH3LXrhZcCZdoQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
fPVwMHnHe1L8weZTnbBxjlAabwZZnO4DZSHaO7tHGHAw6U+w+7Rc3BwfQXtiTyGXP15rvoLhvVpo
i1Tzs4zrV1X8vlWrxhS6XA2VO4RFkpCjmnHpvdgnW9mpk7w90QOEZIWZQST/o15t0wDT/kv4J36r
Ho59mVFCGQQSSYx0209u6sG2rNpJ5HtWMM+tDEDHUArucrBmPOoZSq0VSQsTHtjJQxr3U5fv9l6q
aEBWkjnLJ6zqLkt12B3q7V3iFORPpz6XNMqA6wzArzWirzgTCw3CduiSAgbNgoGmV4eNrVb2DfOT
5V4ni19GigMG1fHCD9dNPWGiRCWpY6iiN6iE1w==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
NkQB16Pku9sdGFuAkY+DjFhWzKYvb26AsK/VO1//MS5ztnK+V9d/0K8nVee9kGDNC4zorSd1NjRc
Jkj/JJm1k/9QiQQwOSB/94zKWUyVH2Rvw3UOuaTu9pWRQsIdmPNwXBKCOF5L17HHGaNqYzvHF7YY
REIp6VR4HcyLq2beYXn09Mq0f84obUr7+CMgh8i1SaLa/ydMPS9xsm1i0NFB3qcEC0dDq6xklwsX
s198UBI5mBJTEUKi38eytWXzQPFTmqdlD3Qn4CgstxSdoLrFHchISqt+L62U4xU6aVyYXmVaeebF
I1F3MAXQZwZwGETW7RW9t/+3pJtkjPfPtdnqu/Sg+zP+vLjSV/NcONctKnTj86/z+TTehoSH8ccr
BsjV0PhAtR3+RTr3VGkKJoUNeE8yFQIHlES8UamuSNMh5XrbmcbFx22MZ9gLOa350ytm1N124jNF
V860l5gGbt/8NcGf8I3EVPrYblJ5ZLGsZkVg1cKBMUys1yMm6Ci2Mruc

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
JDELzo7luYHcwIl8sAAMR3hvm1tr+ZaD3VKTvYj1uwYFwuIPCkUfjVi8OMAgp3Hh/R1wDZSeoY7T
xpO0sKF9MsovKwwArnByLL8zZflfJIe5AmC+jE5a8qUxydp4liMdOypRTLu6U6EUYUwSj6VOR0Uj
deCoQCr/gVZ2GdNKF5sKZsGXZSvx1Wag70BiGs69qhgUvVVlpbqpNRSB0DR/2IuSKCHhkucLXiTk
zVS7zC7GiyNYE6l/Yu5Ov25Cl+lY5cMZkqKvIFm90UiTBNYk4No5ofXnH/E0rNcbydv0BvWDmgKt
NXVratbi0ztKLb27z2lw5ZZzXCihB41kx4VjqA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10640)
`protect data_block
Y10GJMshf4IwrstCORd1UHCH3/l/ZQfODiToKv9UMZxTuJ7eoNQ+DOqp4gN5Hcg0vKfjmNeBdt9F
4zy1eNzWMZ2Sgkreqi/aahjj6THqenskOHsJG2EjudXt/+ALTMnYbc0tOmQnVM5Lc3cMNv4w4Ok0
Fh1T8MLjyd1iH9XqaZRNblVgOv5ZTm4/hd75GkozWdHNW9aG9NL2vHWFfMmfVaBtIZLBPicsKOFv
p5cmllWTq8tk/ijxjXKdP9vdq14duM9BgOH3AiBnKIiuw/u2IsulzJGAN+J8HdB2c4ZUnHDDA6cm
FAyQsKVuzJHCPx9Ug7UrgF5Eg5Lz0ukd0k6xYfwQkHWOP+7e/KYssNSjrNFCGMpyPzOroyZwmtgx
W4ywqXy/7sWdAR6rPITlKDISLXaTB8QF3f+amHdUL5FTy6yvgAKzRp2zklX+oIY7Q4MOX9makioZ
lckep5HPCREydoZmRYkXHO8PsYByYBsESt4EH21XCb5vi9XOHJEo7n+egVyh08DMuRwwGBS7WT/p
c5JbaL0ehiS/r/H3NQnf/cEmzsQhLlEr1ulNsKsWmnhnwI37MqcrsYtn035DGasz/rekZp0RVXA5
s/rJITnksl+oM0o1Mt/m+ti6j8zSXgSrekB+wuJL8iBWETfFQqqiraJsdyXxc8NPov/I/EY5wAiM
w66mTSbNRHeQQyNSZT20PDtfTdTr4BBEHboA/dXo7iuCcN079navBeyBP9tLBw7owVSDfvYMuDx3
Tz9ZkibZHjvTvqyXu7y+s1p8D0MfMGmscELjNljY1MxmJB+F9AOH+dyHGJTPkOWq0uyPBPZoC/ak
MFh9mDtezbiLArtDb+RIQQHQMh0cGOlaxnHTFIExIwvh5efJyPwY4+QCv0OyKz0GZeIOLckDfqIw
oeq5THKiknOrYnUx+rqbtABjkbr43psI1wF2niN9/jIi3C5s02F8MLEAhl4e+hIX31BmVTaoewA3
3CQJKaYMd6DekIB9OrNV8LbTkj+lV/bfMShdWm/hmRBNKV07+ejywdhuzX36Ns2fq+vQSKA53D+n
swbSqkw5RqHjLCvJTGatRVj6B+dm4vaDZ9RFFRKAB/NsjLw39L9NevjgGbBcP81OsnQ+srVPFCZg
ydvndHdIn1ziUPm0tN9VntsuwEEpH0pGFoVwd3RGEc8F73PZUW3r9x952BPuAjWCMs0IINTuqbR0
38EYWblLea1gOvKF1ycGOjm/bquAeLD8EZnwIVv/XQ5oHykLBZB+NTiS+ZVMDGLWMJC6MhySMShM
Q9xWatBN5EsIV8IBJ6lZGgM83tp/9podSzS2aKuI47caIgIDAFOIeFQIxiH8i1gCgwfy2Qom3KX4
imjuPCbDtTWpnZB2FmNuJumC4b8QR6qFWrLZOmeTzdU7ELc+gpTDNM2dpINxW8ZIKh92HX6XAMXO
OA+0hqm8zw/mEi2sQBGH2w5jFhm5+3vfySHS98peF1Fzi99b9ZKESRiA2v0+rQ4y42CC2iIkacSd
r2jK/Ii2xBsBCwoM2VsExVfXsMYufs/fBIFutzB/N0qnqFcGPDkBDYduXJJdzVE6qE4hLOv1IEO+
f05NT18Nn3/6WM3GuRLpZit+KTdjg4S1LxP3AxTuSP1M+17QNF4W5Dqn/X9AvdVSdM/TVC1UlBut
NvlWTZ1jvDbX1edAQKricSzVUvE5ikIi8QtuiWISlaJ79q081hR2IIG3YgxhsV3FOXXVtPEr+57I
KoVpsyUvsLMUeTfIk3hFklePZ86AYSD6jNHMXL1OhSFnf5uhtjmLUb/E4UjvB85xYNJ1yX98Dzev
gw6ieg3JNmXmlcktdpofXHBCN1VFWnvMnHqONPkKJOHJYAwSxrxBTfZpqI+1p1ODvuTjasndoYBy
3CJJ6VaAbDRzr8dAEWoA7amw2GhsT0Lsk50UZqdPdGCm93xqy13+uZCUvvIEqYjOPYHqUsU6YqUC
5J+KeFzVhdyemPM/Dt7HT9TWZytERpjTFdzJRq/DD8AZCzcpe3NVsy3Ub4184xU5d/1BiM6pzo5Q
fFuOzPITcAJxMCItYsQ1V8cP9RwuWTa+Y3BC0d2V+NnYF8Jy8En9uQHSFYR4x0mAk5WOdz0ZXm7d
QFqz2ll4bSnuzZLfK+BAtsN6CE0XFMBxAFcsuLWHPImozGVhGH3oBE1AlGqc42dHLpw3+efjetoK
RMDh3wNHEfDpAOWPQdZ124I7Un3DSvTEoIgL9FUmbnIoNwhwdZfEfx0RGfbpci1WIAyx3t0Y5fdA
VtK8i0figBptboIRhCOrBIMIWX3j9kblsJ8BeYHG11hjqGHkDcG2//rndpuLKjYwnBN79fYMkdm/
J2BIxpWSyDtSn6Sl0pPK59kpFLdiGC9Wj8+pfpxgP6o+9PR7aUCLzwImyem5Qu5kbzL2Cic3Boy5
IftVe+pM5oheTNLNKLSz93Ed60wdwuxIYz/3cDGEFJ8+60vdNvsDeXD8I9GyFO6z/EzW4EuWsJOj
G76sXa15TjegaGWAYN6TL6/J3alp5yeqNdZ+pp2Z1mfvoTpNpXuh8j8rFjS+X//5+F2nCsGB90L0
1/NRNDfneefh2CUY22AzJ23w1F6obYKuN/TfpeuaP3oPR1wlEe8Pl8x0Gl5JJwV6QHAB5QTg10vN
0nj3mVskkwiZyzZHslCLFS0Yyk9VExjm+j6ln7k1jcRv4ZAEwJq/EOgMfZLGLqdwPH8OcXNbxCBj
nJBt67yStWF1PE74LFhJ+YjLeaVLt+bI91LVOQCxvrKrFNZQnElL2bl34S0sogMk7A9FkFudZgHD
uFpVQMnTmeV4WS79AesWMCjMHTF5MCR0t0JU2+PTnsfuMZVf39/H54W9Rk4aoLpoHWf798tOvW+1
s61c7NFUOm7DbUYEanJNqEnt18xpHJI1GtPDCnwA8AER7D0B701PwU1bFKudutWyGFCQj0V5rW/e
rfaj8ajCIVLYJ7JmtkR1Y+iOg2jn876pgN1YxQoleumAGGftdTfu5i0huXDG0i8DR9M87E6vou7q
A1wJ8EYVdvqQqkVEO6Xw9D3B8xQmxxwLvHlrWCf5rc17+8Sz09ZOjss5Zs1IQOoNFwYgcH7axhc5
0S3NvvBYTULS5lWwLDU4ea8LgZmjpU+X8g8gHGeygOPdnbGbetI0X8XfORSJDn8FZ7hj24RuJUBL
KMA9H04ot8icQb/0nLPhxf2C9rqdLylIMZ9ArTC348MXRCx4bRcJ20q7AlWogNalItMnRQ8TZpW+
VEzmxFjNCq0eNBu4osr7BBQCNSKxonW7deJJQMHj/2FO0bOnI5cLFKRO5SSs8pHRPrGxtGm8Ii30
7T3qoNDTS8duLoocScCahDcK1fTocuzV7sEOGkByrVTJU7jysX90S0fyn4VQFDCxnR1B719ZWrwf
/pN1IADGTr1QtUnz48IA91pcQ5dBwR198708S8XVsovYxQ/2SNfOZN1rManwYnV2lddbsnXfv/Z9
1JTJG6FZUClIDst/DO+fDLid38aqDwCnucmyrucr9kIifYquoED5EiZGsMmjMmUvVFAK4eW/FuDF
nZbB3h3SgKyHiNc/sMkpI/bZ4WJgbFNCm+W3ZX7jD9LNxV8HDSSfvqQlAfZFsn8DTGRswRjG+ijh
xJL2GDx9gwio8DQov2o0nL6g4sfeXph5wrjmztjNE0MGlzLUj7ZP1SG6iQRqHD5E8OtdWwY+EZZA
6I6oLcbFlLzbFXqmEr1/xg9V1H76gS/Unv3/tnuX8m/3iyeHHdp2Ugb2HRWIMMJ5IsVTeLf8ItuK
er520fYnJGslu8se0eby//oNoCPU7VR+SHJz+ccyXkRxza1yHSgEzOHiUeiAsivL0qFiLfeC4mYY
OWAGBfosGKMUd7zPG1NBUTzNLXII7IpMXZ9etagEbu32UCNLvn3OR5BIHAOw7+fBwXO1QIJ/2AzX
WRhn7P3Vb/A2V4aKKS4bbMMnQrFo3nNVhHVXhxQcNSDnaOJu/zaxTVSlxjXIOG6u4kEOO6/oaUSt
vzPkhiYWuFvbB8h3aq6f0ZHw57/CKAMLHayo6pQbdHrnlHbJtasPBn4NIDi6ud9ZneW75jDWOn5h
meRjYpOalGkMucNy3I4wnc0eH8VGS+s0Bt1tNq9RLGRnf0V7c0wxS5y5I9iecXlKk3xZIfq4IXy2
I/yq6Vf3Fi/HxYZWi0Znn/7pGZKFvxDB++CJTSbWC3LPao4F2JLPr9/ZOnYASGKFxoQQ9u6/dbrW
ibDPMuUfMJzNfv6lCpGo2+MkKrTcBGSumAvHTrSMjeIf1FmfUHymqhxQovEv0mpRjFDzb3H1hOjj
vJY+UkpHkgjR5OA2bKcbHuhz+rduErzI86A4zxlfoCjEO4OZBb6l3U1eJyClPRhjEbRRmmyT/UCF
bQFlNviOwujFr+claQ3E3AUlRvzZNS1/FyOK74yUKkzU7ePG7VzLZbtdebF3mforHME+YrPNUL2S
VxO0n8MSaZESbQmOvTxfON1O7cjj8Nm139prinXY2x2xlfaCdKlC70aSPVDtwOSFIeJ1wWVmtH4W
RPF5ZoQsyfqfiP0iwsZmbVMbzlJlT/dwsJhhe0dDuhn1smIArN2+w+p8GD771JH9W/3HAfyEyxXE
Oo5ZxDtChaah889U0WncVDWuUSmZ5o+h0RKC0j5Mf8pXVAO+Q/5vM2PugEhzUNfIj3PvQH8sZU6b
MT7VCWFz6tVWhHHGZhl06Rqc7cIBPF1HSaBGD6SjuJWAS/bO4FXHjojvT9fOqid+JuzGCSpS//0L
jn8ctM0cYLVv+qEGhezP8GDzUle3ERbACvFhXRYcC6hW1n+aQIMC3MtiSLq64F7ERcuiIyqILJ34
DfWTkFTXFXh1OLBX+RNEXL59o+SjlMzGsvASlMPfatAhp9AobR7F90o/KkGS2O4EgvHcMozsqB0D
T2/ISaWpSumCtT2LC4aoOuC+OXlmWwak7uVcNvrMsQy3F9GkgF3+BWViKCE+euRymPqXLPWvLB1P
u56AHbS7JVSOjF9ccbmmDat0xPtsTuVCf0VFuq9TCcQNfQ60S+voBPOLZ+Pns0tcnTiT5s47Z+ch
ZlU8jD0GD1nKvHGO/ZoHpNclBS4Lsgd9GgEJDpQC1P9wfeAJV1SOr7Chdqu6nPgLd2Kz06fzyau2
ArmPxO7MKwHcZXrvx3fSsVUJ1Se5ctY3eJ1ZKKZjsLvwyyo5k+HVB17oAYHA/6ZnTnd1MjiPvRkP
xkiqvxHqteRQhiEC79yiCQhAlBPntpAvaxU4OnOvkyUS9m9Ru1b8wxupNOYP7hqeqC0O29UxpUFk
rdvc2XCoEFdVupbhuvlZZdMjU0Mba6jTA4XybLl0Ev4ZaQ7gsWvROSf30QRwO0Bm+BXBWVlQw6Zk
tg2e3P13V4Mtp+HSpyG11/DRYWMqgyPFyZOiBbMdutGDdbN3hFNjga7hbpBF4QCI2VrCtuACGbVe
k6ATvcMI27fElrV4/3wqCvIegSYpImVilHggZ+1UQI88Yf5udA/Nr+gVHYS1RQeqCTMGf+rHwkQ4
KTCSzB10bSsh8Mm25eC685ME0VBsTWTNbde9uuuGQgXT4qUc2+aVw+5JgME77oQEzGiXzIgQ1AM/
B04s8NwnV+sRaSXrbqZylp2UhTB08zIwj39hD1AuXrdncnvLkkW1uOGgHOi1caTL1qNqnq6DS0zM
t2d+gupWqwFiWHfl5rSEWr177G3NAt479ULR4teDuXFUkBVPCGaL4tkGxeonPhlOHEvwLR8EeBYt
bCkaLuyxZ3Eq9sBtYwLAhyT+B5U1HZIRNOdTSRIB81eIYyBp8fFSZaxetJjIOzCxhIc+ijugQNeY
9p7o4WueorkhFywwV4Q5uK0zGjD2eMOjtEW16CYVPyR+OIX1bkY9R26vmeEDntugqBxnYMVR47bC
ACtII1GT4u3SjjjuT2EIxnoM9agK2nUEMlS5mC6mtoshH2EyiZo09lejL7lvkve1Pn4WN/xou661
HicJoAvIfeZRga2G6xJS9GxK9m54rU2P69eif0MxNfLUYBXA6dlctr9UnMCDDtymJTjNgwk3PduS
rm2mVXh/1P+RNBsuSLetNXxGpyconFJNJdqfYTAZ8+xGe5E+F7WVDVRJX8Yi/+83ljt94lW43vLK
XJsy6Hjt+jShYXxzzMBV0okblj5AlF5B33nfN8CWev+2K15CD0fdAR4Z3URGFkBrRpyebSSGELLc
P1vEZOP2G88WLCxX+b+e2cWrng1G/92Mn48M2qabDKjxs9PiWWcYNadreVrtZBvWCgtmhf49f0J4
DdcL29QRuW9jxT1yNOV+C2cjjxv2RbbqkvQIqqj2IjUwHpTJ/56gVHuIMuTIcCo8ejMaKnfQUHMA
oFpo2gNp5TQNlGeJCAPBvVGURU5N5poqEpbh1G+h3L9CMKwArv8mDxoOB0PYI/bIOBTJAfS5R/0H
UPQhlltdDDjSH6ofXzhyhxRBZksyphIN+KAwhopsxkkYosVqi/FatoPCtgskrgxwkTC6ZCBHUm6C
0BJZCazLBTvu53fzKBJ6fxsBKZNXWZrId9YQ+vw5nsE1HKzWfxbzXSjI2/+r8wMqE5U0yDNsawry
ESdh33imeyZSDD2B7G0Q3v+Q+1T86cSL64bMO4g5ntailgcR2Xf+Wj23WWgLuGndS0URaOxDEMQr
b1Mz2aFq/T8VDU4SKiER7JjRIK8vMoblLCnmaOp8JU/f2NasHWylWzgYCM7owGnlx/D1YrexXXdt
78zQLSvQMoF4MCJ6DvGIc9oznPXb1wx/LShggX8NkFyAr9Idmw+P1Tz/qbRVFu6Mnrihlek3UlBN
Ccx+/UDYEkDb8gcP3E/WR4r13lzQS4Z8zT9DYOS9EApnkDGbP874f3P1xzrlNrG/RIiYKBlRJ9CG
5LD16RAVD9UKlOjbye450nURhDUBYKS/DJYioQlrwXywfiK6gHEoXh0azgrDOL6S71md5nGnsGP9
wdsdSmiFsoFulstg6KaWNUqlDg7D3bXookrD8SPxHCabH4DlmCjex8hwskJSKU7oZ2x6eHFAd4eC
nyT64tXwI0rhol44UFVhpk0gVOxe9bxMlmBD2kzPrO47jvq3IK54bDUuAYqZIEkdVxRoz2bCS6T8
WUXuhEnv72Sf6QGWgkpn0ph2Ie02MGTPjiIKCp8/RxRENeLQLFCzqn7kCH3hWYTsJAdGMkQFgM6+
bGlN4sW7npqqsY+JHqBUWznkkaqke2AH1wFOhPiyX4LgpI933/HuYAsAd2+hY7KvEqDD5l7oVRmQ
qV0/A0koaXdVCrQfRqPCnjhp8Hd+i0cvjYCULwguLfk8hrkdcwr57Nlms5ppB4nQM9gfs0v5t9Rx
9ce6UpHAP86V8j4ZsswZGWioo2b+VAWwM0hUL1BrmDDWBp20jJsHkQFghm+H+8IpSsxwELLT1Ci4
ky/EWsOf0Dv3k9a2Du3i/ZWQUXiGJZ3ETxwWBYpaOuTcBUs+uvY1nCJCjgdgw+sY14RjRwxXPuOh
nRc0GyXYYs9xhT9gQAzySa8p9GGV55VWNGCXOG2V20C595M+2BsyDLPacqMZks0Q8HAfNbAo/J+o
BbW0MRcOQ57nuvgrd5v7lUOeQeD7XvCahY5vnFlxW5ppR7iWuMfmUqEMzfWvuHwciiJURa49DnOt
Y0GapKlq+vzp3DxyZyPqXT3f4Qs5KjOEajwPPVC7CjYlCQduJI/fMrlOK9nDojbayy88l3O13ifo
5R3gpdzKC4IN0anuX9ecK61aqhlx+2hDkCKnDEJk2EJQyoXxCiAm1zd5ouEq51b7WoDB1rgUNKOP
7fhNZniPN81FG9zQ7/M0Auqu8BDA6vFF1HKkyoJuGKuVcZ4Wt7USJutte3GG6rq14eoqcfzE1oQa
2s8vIeMZafp/jP12wie6wlEHjeCfO8ZAx1nvGmNfX0KiqDFzEp31Yx8lvBmd5LgqREVjSL/D+QSI
I8G/5VZJX4W1jzKx1MSHRQz7quFZnBFIVE/TDN9Z8Tq0ypiRgHoVkZ3ZuK6xtodEosejFA1l+f9L
bgovijC1Zt+yTeB4I4yz2Js3w65YMei3u131peSTy7zIPFhhGSUQnhx/0GYO7dNefuB2aMG+Npfd
Pj6br2po7cAA+dxpFxn0lF3BbcDL5XyakMGth6Qcox+EDkSIuGltZduvVRfpwI84wv3jpURKoGuN
u1OGQ/Ri6l1CdJexScmG6tAlMzpdnKaed84TEtMYdmEK2z8SLVHi+AYW2j0otL/QV776Iap5szO3
vFzmpQ6O5qmi4lXYLAunMhkvUMaN/PDmxvUQ0bd/7ewvMEyo/as7a6MkIhMysFBv/rlcnkivP4/j
c7uyBr7Cp6pGySFSxDnwRB4LCJrzI+NXXSZj1boTKUm26XO2rFkz48zHJmmwMEjepGq5LeYL1b6M
A1v31npvYAkCdnOfsGzziG4NZnz66gYVI4asFsx+11uXVjGA6bhyc6Ven/xy2pQIADZMT0g4zccX
3t+vMIHo6e/kjVQxP94V4LrXM1Zy+brpbtyyD5tL0jO1vzwHDuEstlas/07hOz+sP6oQTEkA8GBB
JApNGOQOUrYAksAhtX5N3zyPmvoy4N2gMdL5QelgGYQ9d3Flh8bAqW9CCpWQBbWiAzdJtLSp85bq
aY5lIcn8c1tnNI7uBzCajRGTmz/ahmLNPYbtPmumslQtufBHeIkVNA/AvTjfvjHCg5M+irfaoGeG
2eb9YjiGjLK4Ep6tznkx8BBT4v7rTTrugo2YmXDVfJlFZFO9J5VgJi0KfXXCnZoMdMLcVFzgZwiP
Ln2+id5QGOiejbQOvFvVAaacrohLqCvVtnlv+/Mee61wCNOM6bKkR2c7lAATGssb1RIJblKY+jfX
fowti7+bPuo/XxkKyDaJ7ksK/EaBJ6iDsy+b5CnwEGxymU03tcAub6gMVNGCSaJall/T8yB6Zbss
5wr7tIqNcLplD2hXBUTyQao80Eit2LDseUFjHUyumPIFEvau+9zmJdZzER9ejoQXQgYh1uWnacqA
iYOZr8TI9gft8z1aPjmBtLJ0InseU5YUtNjcbYbUQDqd51dcivjm/d3ee033ZWhzm6N6cjPNjjc8
9iChUkowIwYDihAwHV9wIaeDvfAAy02KXWCQ8Y5kw/BiIByw4YphlxaJiIZ9Hlg5BDPqVc6tWufR
3Om9zTtqP8Jf9RkA7yGrJIWzgng8kdV3nk7nFF5qtjXpidmYquSgQr6hIPVjIn+e/TWSZ5cCxrQZ
/uyS6jUz+yJUPfyJAFM0DYBwlYvcc+35SZV07/07Ok7gzK5R6v77/nSV7WlR8pvw8tEkm0pLE//y
J6Bhug+Ns70QM+ekJZVJ/R6qSBvi4Gc0wUzCsHkmArcU8mEumF/Nw/I/E9+h7LB2LKKjSuFBEAgH
lmTPdRTKz6BWBlwcjbEMq0hJcFJyQETZJRIL2lDESh812jzCsmErIw8iRtj32ZKT3n5dZSlJ9zbj
e+93I5cU51WIg5PVxwL8nWbaPkwzBuvxoCWac5uCUY+8UbjIqar9kJPRkxmuWLtH2cCEE4nmmvhJ
PIrSGz4yEe0uysKsdWNpyTw2/F76Kg0fhfkFATi+Rxe8jzxsMgfsijXr26PJREbvSIsGaQsCaMx6
HaboQr2V6ZL34ITgqmRMDH0OGGbqpXVe/8DGOEArfT2rc7bVGDtfVy9NcnoRGm2SwwFcmqUwVmuT
OHUAanvRUDQPDxKTjC+/WlSMLdu4BZ9Cp/genSji4paSxWI6Ot5mtZvaiiJsF+Zfel1EQjrixxQT
M1rfYh8Z9G6KqPrh4rnEOzOJrDUmufc3yzxxCfHF7JarUvs1aQNUbnoRv9X3cNLY+WoJcZMSV2QP
SuUYBwu+5a7Ben9vPssesxWAAZmHs57mlgVBhYr86tFC8JyWMHOaBOnl48aU8o26yVa4/2AzhtHI
LwpZ9DZliSCL6lbFRe1RSpuVmtdvlZoVUHaI90mM1vfjOP97YWisMT7M0/KSYudcZe0fVoIXrx9l
kLBb15NsFFdoUonTTnHGfKx93c8yeNiCVaoTq+ktMA/SuuVKhIhajNhugp0kx8Lm9bA5fC2ZwAxj
i90pcQSjspmg3Dlf3pZmza2quzLnvegqq/19v6VRkBZhPNfvOYKJMJyp8JMfePvIk14UTOQL19Fp
v0K8b/CvvRy8i6nuIPnIDspIwZYtQp9uTsArhwZM5u1rGHsUB2jE0xtYiVPd92CfQ3P/mtTSRwdY
IUpp1VaK/YWi7XjFq6UiyMPClW2tJwFs0jZSrrF4390MHll2xjBvtIqLfaJcCReauSrnGlmkTFqj
dlBMmcZe+uO3rBh5ZkDQVx8zjSdC5b5qrZSWGvVoEyVMjKqEPvZrYWXHU8vu2DTmPrxIHegjSM2A
RP7zcCfyO3tDntFciJ2F/7ZKYXFW1gTnmDVOLsGxvehDFRxELM8KRg+AE6xEI799z5Us2TSNlMz+
VDhDK6fiKVwheemh1eeWf9peZqXW8tk+u/BNsA7mQMn60x82wswEfKAqoSJFYmop//sptRtbzdVk
1wLD72TiRxMgdfGj8yOa4kLlBAQP1zHu1h7167BhWAh6zZ/n08I3KeeknpeuyWq2CrQVfg9CCEcY
ae6Qj4ZKepi1t4BU0G3669xJXkpSEGv3ToT+OoOlL26I1+j4yDkwTBytw9IMXWBVp+Fc7VjGP1Im
yzFWsnjGAJv45SLJVMeR9MudYelgShi++HQr0Cutyw3vcFMUCgPGWqVajLkac/SyGyR9rzqR6gKp
jFXTeZkegj9qFQdBicr9Mt4CMsrF7uPNo6OZa2FRRW5LpUr22gJMWZDTlNL7TZ6oMKej7RUqVWf9
eTkUS/BI6XIvgnHBVCzuMt4GIphx+07gDrG8gYc+taBfLr559Kxxfj4G5h3edStOT1eLrfd0GLfo
50kCunxBZc1NdMovj+Jwsrlv/Rz1MO6pNUOwBAGY5yxBDDaOQDvlvFE57OzQxObw6X3WfJy7tV69
s5p5tmKu4wcEghTYuoPA90cZ9UH8QRnrPmkw7tq8RNS4uMOsMcCjE6nnq0OUGfFgY9BsaBAMysMz
VSG6uTKrqbNZyJqs5dpULvuS7cpIAEyCy/agA3PAhYrJUAOE8dX9brPthvGDDy3creqjmBfnfRnc
PnDYWev1Bd/wP7AVrXSzfd69Z2KW2LKwoJHo5tji5e0YW4Gj7RgTSB3WFtCreMDoG+1MEwok6MF1
tjVdgVy5LIZkikzn3lW2sW8FHqkBMxw24iMaeiNsJYyVHgzobl0+GvTI9WE21ARGrjIXAtJuC2kE
OfM9x15IDvlWkvxJmhQH9Fdt3yqbGukvuin7plYow3VJOR908KUHwGMrcQdB5QAB3kIVv3WikMm8
kbsg67yhKYEdZXvaIpRt0VeZIXT4OB6EpcPFpjjwRdsMrNd0DLIYqNCnkUvMGOGalhPNAXVq1JPi
T23aKLL5UsZ0WeKXmsAvvarkAzb68tTr1S0f9F7G9VMHH5br5CDPNeNdQWESkPcyHl1NH4TgyWwG
kK9SvKaiMFT+/p0zHU8Q+kMoS5YhUZsXHMj+0QGdXOmlbryjHIa/DLLtDrgJo6hGD2KqnmHhY8fy
dufieHDxPKRzdaW9FDRWHNKWIeoF4yp+iZuW3QCrMgl7saI0UfGyQ9oM+KQVfhjCcRISeI/LxKPx
NnXy6123QtL7i1YznkDztpVrAhZbIePoYRqxJ/l+hyTOSO6nxHZRxu82F5s/m2GLeo8QDxNFBqVr
Pq6D7dy5/sMmbtxdsR1uTgjzkb6CZnJtngMlu+qvNqVDjjM5ngyGOcrycgFYjFPuReOirRF5ChyW
jGV1L+6vDeWxTV+PjoauabKxF7cd0u1Q7Smda6Py46NMqSBJ5qI3USPl/x/wcgc9qH2hw6KTfxN9
q5A1CtVMlp2/Dhnaz602jb914z2l7KmYa7V8N3C0wlrUzz3fbyEtsGSnrAwVkTHO1ysH9hDTXDdc
Hm7ckUn5Fu9uXL9YNwrudb0Q+VoPudRz7973Y3JwlCVUQx/fE2Lu2N4tDV1t+gyjripvBRNHTos1
tX0oXAxJmozozRxXpkdXAAzHSRF/NtdUT2d9W6bZqQQATbDAAeGA4Q1CDH3tIVxB7Zs2hg7Qcnne
doSQ/fo6RMXF7PIk98ZbuDKS4YCeZ3rqCjnuO5mD/sYRUOM41LQfnkiyPf4xvv0k5puqWJPfFvRc
Qg3o4mdkTOH1SSNH7Rs6USJrMewjzYIuNHjq1lrt5QNwrEc+mD4ISk+RJOgYoZbLBSU3xqbFzDEt
nwt/6niDQ5sy4VZnN0uLpr1i+4AXitUdT+BjW0skAbZj1qGlu0QVR8fp5V9Hl8Sd4npHJMxowgZ/
IIuzzlBrTcSb+RaW8PraC8H7+4oaiwjhNaeASa3FdWvwVzIZEqtNarpfDuXhFn3G+/2gC5gIzsOc
f5JUnfshCTLEDa2wLRQ4pMoTTCWjQq9GhS0N9rN8eWAZLaIwr0jkSP79vYawO7ooWC/kPLbl1pi4
O+14DMpJeufHioHXIekjRot5ZLkNGedhjGlGpmGnNOeGTQdH76P1ZP9cmE78EcD2R+aR105OMKHE
mUo2zPhJ+Y61m3Fsm4ptI/sDzT5BRPi0nLCg/d6IfBtrp5X5Pt5ToBZEB7eNj1TH8vR2pcMz1ITv
79ZKKv6KFYms2Cuan/R6tC11R39m0ePmW4lLlCoHmSyYNlKVym0d73uOoYJgo/YAIaeXHZRX+tKA
cRgyPkQBK711m3SA27Pnxl4AgC4mUuc+REVd36/soZZXcZYTXytsTkiHnmyQsphElhvh4iPdJ1gs
VuafU1fvUTbhNYiu5dELGn4N8O4iPMdrECvDYMmWiatIU7EuDG2SxMCSkiDMa9wMKuKWB12AznKh
aKa3bRqx1prq1fW99a+PQ00n4lyBncO9OKa0z7uqTXMy1Rys+SF9amyffaG1qMZD3eNYdWRAr+Du
Pd4sW/S0J2Qmtzn4EBFAR6ao6qqlKuuPHG22xyzpBZdMioFdTm2tm8L0cqzt46lXeJn4HHGhpTQ9
NzslfP8SNWombjFnW2N2DT3iMzvn820tOpZBF8W0wn7p1IqqC0vRqS2DBG3svJtmNEwKuDV+OHxw
8dpZ5uVdzxyhLQufxDdbKg6+9bKD+cPN5V2jAL6iv7RGa4ogD5YgSVVElaHJAACycfKF4Ep/IiNy
bsoLerWQaWRbRhyjPOEB3MpAWfXmkYXbnlccVa9+YcdGWJsoOAYQmUJ5/LXGUu7Jq1oqQkiEKXTe
QN3WDvH3vGfGGpxvQwGFEK3knEBiZyjUEdXGDv6kicx5qQ501ySos/+8tz6vXxUi/0i54Wo3Hibg
Neh25HBcDaLz0MEWfC2c4qh1+UaGk2m32vL9UfF2I2At5jji0LIjn36qQEV+4979MyNxAVeLHe0X
79qO2McC4PgdfwlSjLlBjSzZgM8iESjGFQGleipr3vdGo/LPqSN55szMkY+Q95kiq5C+mA9Egbsu
VCHMcsx5spBolipvnDtVgurMLaz0kEl+EmVInFThVb4e+p24xStIognNQUv4TDpijnlFofPHRcde
XPcdmQXw41pLZG2zbUlUmCjW6tsnnCFYraltpkkPEThdNZlvLMDi7Dyq0nz90zzq1PdaJrB016uD
gMRVPQJG/h8ZN5OoymX7b979E/6O+szCPGSoX5uvydGO64oeACEKLt7C1g6PaDeFsH4fFOZp75HE
olt3/37qVN7a1E94e21a0Vd6agFltV61zTNDXccmM6za1D1v96axUWWcUef1hVP/rSWqWnOJmepl
+dDKkY8FahEqPH33/5SMOCxUeJei7BNQDGdFAwiJJoIhzuMY7v5naYQVTCH4cClVuSDRJK37Q4li
+5Af/Ufl8SfPc54SRfynswrZrE/7FfMHs3abh6Bw0QErSXkvjh9bLPv7/VjtzOjqGkypTv811dmw
wGRLQVQLlUmWZbxojCdA0/buYtA+MaTcBLBxqVVAr+uqVeet/iLcPcXDi1W4H5rUs54EOM6jv7o2
l6Pi6d+P4RjOq9yoLpxpcB0mtUlX7mzfH5du9hDeiYIK+7vKnJnSpgMbwNB8rH3V8mdyK8AiBIi8
GSr+aZXLZidnE8s0r86JihCLyWdjD5tIegwmldWPDciaQcGr77Y=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_axi_qspi_enhanced_mode is
  port (
    p_1_in : out STD_LOGIC;
    p_2_in : out STD_LOGIC;
    p_4_in : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_awready : out STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_error_int : out STD_LOGIC;
    burst_tr_int : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_rlast : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    ip2Bus_WrAck_core_reg0 : out STD_LOGIC;
    wr_ce_or_reduce_core_cmb : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : out STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[2]_0\ : out STD_LOGIC;
    Transmit_ip2bus_error0 : out STD_LOGIC;
    s_axi4_wready : out STD_LOGIC;
    \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    reset2ip_reset_int : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC;
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    bus2ip_wrce_int : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    \bus2ip_BE_reg_reg[3]_0\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]_0\ : out STD_LOGIC;
    rd_ce_or_reduce_core_cmb : out STD_LOGIC;
    intr_controller_rd_ce_or_reduce : out STD_LOGIC;
    s_axi4_wdata_0_sp_1 : out STD_LOGIC;
    \s_axi4_wdata[31]\ : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ : out STD_LOGIC;
    s_axi4_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi4_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    ip2Bus_WrAck_core_reg : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_d1 : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[5]_0\ : in STD_LOGIC;
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC;
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_aresetn : in STD_LOGIC;
    empty : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi4_rdata_i_reg[0]_0\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[13]_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ip2Bus_RdAck_core_reg : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    transmit_ip2bus_error : in STD_LOGIC;
    receive_ip2bus_error : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : in STD_LOGIC;
    rx_fifo_empty_i : in STD_LOGIC;
    SPISR_4_CPOL_CPHA_Error_int : in STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : in STD_LOGIC;
    p_1_in19_in : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    p_1_in7_in : in STD_LOGIC;
    SPISR_0_CMD_Error_to_axi_clk : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    p_1_in1_in : in STD_LOGIC;
    p_1_in_0 : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_rdack_d1 : in STD_LOGIC;
    p_1_in28_in : in STD_LOGIC;
    p_1_in34_in : in STD_LOGIC;
    spicr_1_spe_frm_axi_clk : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    p_1_in31_in : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    Tx_FIFO_Empty_SPISR_to_axi_clk : in STD_LOGIC;
    spicr_3_cpol_frm_axi_clk : in STD_LOGIC;
    p_1_in25_in : in STD_LOGIC;
    spicr_4_cpha_frm_axi_clk : in STD_LOGIC;
    p_1_in22_in : in STD_LOGIC;
    spicr_5_txfifo_rst_frm_axi_clk : in STD_LOGIC;
    spisel_d1_reg_to_axi_clk : in STD_LOGIC;
    spicr_8_tr_inhibit_frm_axi_clk : in STD_LOGIC;
    SPISR_2_MSB_Error_int : in STD_LOGIC;
    SPISR_1_LOOP_Back_Error_int : in STD_LOGIC;
    SPISSR_frm_axi_clk : in STD_LOGIC;
    data_valid : in STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[3]_0\ : in STD_LOGIC;
    s_axi4_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_arid : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_axi_qspi_enhanced_mode : entity is "axi_qspi_enhanced_mode";
end axi_quad_spi_0_axi_qspi_enhanced_mode;

architecture STRUCTURE of axi_quad_spi_0_axi_qspi_enhanced_mode is
  signal \FSM_onehot_axi_full_sm_ps[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps_reg_n_0_[7]\ : STD_LOGIC;
  signal I_DECODER_n_0 : STD_LOGIC;
  signal I_DECODER_n_12 : STD_LOGIC;
  signal I_DECODER_n_13 : STD_LOGIC;
  signal I_DECODER_n_29 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/intr_ip2bus_data\ : STD_LOGIC_VECTOR ( 0 to 20 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \S_AXI4_BRESP_i[1]_i_1_n_0\ : STD_LOGIC;
  signal arready_cmb : STD_LOGIC;
  signal awready_cmb : STD_LOGIC;
  signal axi_full_sm_ps_IDLE_cmb : STD_LOGIC;
  signal \^burst_tr_int\ : STD_LOGIC;
  signal burst_transfer_cmb : STD_LOGIC;
  signal burst_transfer_reg_i_2_n_0 : STD_LOGIC;
  signal burst_transfer_reg_i_3_n_0 : STD_LOGIC;
  signal burst_transfer_reg_i_4_n_0 : STD_LOGIC;
  signal burst_transfer_reg_i_5_n_0 : STD_LOGIC;
  signal \bus2ip_BE_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal bus2ip_be_int : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clear : STD_LOGIC;
  signal ip2bus_data_int : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^ip2bus_error_int\ : STD_LOGIC;
  signal last_data_acked_i_1_n_0 : STD_LOGIC;
  signal last_data_acked_i_2_n_0 : STD_LOGIC;
  signal last_data_acked_i_3_n_0 : STD_LOGIC;
  signal last_data_acked_i_4_n_0 : STD_LOGIC;
  signal last_data_acked_i_5_n_0 : STD_LOGIC;
  signal last_data_acked_i_6_n_0 : STD_LOGIC;
  signal last_data_acked_i_7_n_0 : STD_LOGIC;
  signal \length_cntr[2]_i_2_n_0\ : STD_LOGIC;
  signal \length_cntr[3]_i_2_n_0\ : STD_LOGIC;
  signal \length_cntr[4]_i_2_n_0\ : STD_LOGIC;
  signal \length_cntr[6]_i_2_n_0\ : STD_LOGIC;
  signal \length_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \length_cntr[7]_i_3_n_0\ : STD_LOGIC;
  signal length_cntr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^reset2ip_reset_int\ : STD_LOGIC;
  signal rnw_cmb : STD_LOGIC;
  signal rnw_reg_i_2_n_0 : STD_LOGIC;
  signal rnw_reg_i_3_n_0 : STD_LOGIC;
  signal rnw_reg_reg_n_0 : STD_LOGIC;
  signal \^s_axi4_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi4_bvalid\ : STD_LOGIC;
  signal \^s_axi4_rlast\ : STD_LOGIC;
  signal \s_axi4_rresp_i[1]_i_2_n_0\ : STD_LOGIC;
  signal s_axi4_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_rvalid_i_i_2_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_wready_i : STD_LOGIC;
  signal s_axi_wready_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_wready_i_i_2_n_0 : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_axi_full_sm_ps[1]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_full_sm_ps[2]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_full_sm_ps[4]_i_2\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_full_sm_ps[5]_i_2\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_full_sm_ps[6]_i_1\ : label is "soft_lutpair99";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[0]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[1]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[2]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[3]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[4]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[5]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[6]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[7]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute SOFT_HLUTNM of \S_AXI4_BRESP_i[1]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of arready_i_i_1 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of burst_transfer_reg_i_2 : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of burst_transfer_reg_i_5 : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \bus2ip_BE_reg[0]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \bus2ip_BE_reg[3]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of last_data_acked_i_2 : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of last_data_acked_i_5 : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of last_data_acked_i_7 : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \length_cntr[2]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \length_cntr[3]_i_2\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \length_cntr[4]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \length_cntr[6]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \length_cntr[6]_i_2\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \length_cntr[7]_i_3\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of rnw_reg_i_2 : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of rnw_reg_i_3 : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of s_axi4_wready_INST_0 : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of s_axi_rvalid_i_i_2 : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of s_axi_wready_i_i_2 : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \xpm_fifo_instance.xpm_fifo_async_inst_i_4\ : label is "soft_lutpair102";
begin
  Q(0) <= \^q\(0);
  SR(0) <= \^sr\(0);
  burst_tr_int <= \^burst_tr_int\;
  ip2bus_error_int <= \^ip2bus_error_int\;
  reset2ip_reset_int <= \^reset2ip_reset_int\;
  s_axi4_bresp(0) <= \^s_axi4_bresp\(0);
  s_axi4_bvalid <= \^s_axi4_bvalid\;
  s_axi4_rlast <= \^s_axi4_rlast\;
  s_axi4_wdata_0_sp_1 <= s_axi4_wdata_0_sn_1;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
Bus2IP_Reset_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => clear,
      Q => \^sr\(0),
      R => '0'
    );
\FSM_onehot_axi_full_sm_ps[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBA00"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[3]\,
      I1 => I_DECODER_n_13,
      I2 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      I3 => s_axi4_rready,
      I4 => \FSM_onehot_axi_full_sm_ps[0]_i_2_n_0\,
      O => \FSM_onehot_axi_full_sm_ps[0]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF044404440444"
    )
        port map (
      I0 => s_axi4_arvalid,
      I1 => axi_full_sm_ps_IDLE_cmb,
      I2 => s_axi4_awvalid,
      I3 => s_axi4_wvalid,
      I4 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[7]\,
      I5 => s_axi4_bready,
      O => \FSM_onehot_axi_full_sm_ps[0]_i_2_n_0\
    );
\FSM_onehot_axi_full_sm_ps[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => s_axi4_arvalid,
      I1 => axi_full_sm_ps_IDLE_cmb,
      I2 => burst_transfer_cmb,
      I3 => I_DECODER_n_13,
      I4 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      O => \FSM_onehot_axi_full_sm_ps[1]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF404040"
    )
        port map (
      I0 => burst_transfer_cmb,
      I1 => s_axi4_arvalid,
      I2 => axi_full_sm_ps_IDLE_cmb,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      I4 => \^q\(0),
      O => \FSM_onehot_axi_full_sm_ps[2]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A8FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => data_valid,
      I2 => \FSM_onehot_axi_full_sm_ps_reg[3]_0\,
      I3 => \FSM_onehot_axi_full_sm_ps[3]_i_3_n_0\,
      I4 => s_axi4_rready,
      O => \FSM_onehot_axi_full_sm_ps[3]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555455555555"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[3]\,
      I1 => I_DECODER_n_29,
      I2 => length_cntr_reg(6),
      I3 => length_cntr_reg(5),
      I4 => length_cntr_reg(7),
      I5 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      O => \FSM_onehot_axi_full_sm_ps[3]_i_3_n_0\
    );
\FSM_onehot_axi_full_sm_ps[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps[4]_i_2_n_0\,
      I1 => s_axi4_wvalid,
      I2 => s_axi4_awvalid,
      I3 => axi_full_sm_ps_IDLE_cmb,
      I4 => s_axi4_arvalid,
      I5 => burst_transfer_cmb,
      O => \FSM_onehot_axi_full_sm_ps[4]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      I1 => almost_full,
      I2 => s_axi4_wvalid,
      I3 => I_DECODER_n_13,
      O => \FSM_onehot_axi_full_sm_ps[4]_i_2_n_0\
    );
\FSM_onehot_axi_full_sm_ps[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000400040004"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps[5]_i_2_n_0\,
      I1 => axi_full_sm_ps_IDLE_cmb,
      I2 => s_axi4_arvalid,
      I3 => burst_transfer_cmb,
      I4 => \FSM_onehot_axi_full_sm_ps_reg[5]_0\,
      I5 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[5]\,
      O => \FSM_onehot_axi_full_sm_ps[5]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi4_awvalid,
      I1 => s_axi4_wvalid,
      O => \FSM_onehot_axi_full_sm_ps[5]_i_2_n_0\
    );
\FSM_onehot_axi_full_sm_ps[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAAAA"
    )
        port map (
      I0 => I_DECODER_n_12,
      I1 => I_DECODER_n_13,
      I2 => s_axi4_wvalid,
      I3 => almost_full,
      I4 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      O => \FSM_onehot_axi_full_sm_ps[6]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[6]\,
      I1 => s_axi4_bready,
      I2 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[7]\,
      O => \FSM_onehot_axi_full_sm_ps[7]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[0]_i_1_n_0\,
      Q => axi_full_sm_ps_IDLE_cmb,
      S => \^sr\(0)
    );
\FSM_onehot_axi_full_sm_ps_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[1]_i_1_n_0\,
      Q => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\FSM_onehot_axi_full_sm_ps_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[2]_i_1_n_0\,
      Q => \^q\(0),
      R => \^sr\(0)
    );
\FSM_onehot_axi_full_sm_ps_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[3]_i_1_n_0\,
      Q => \FSM_onehot_axi_full_sm_ps_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\FSM_onehot_axi_full_sm_ps_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[4]_i_1_n_0\,
      Q => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\FSM_onehot_axi_full_sm_ps_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[5]_i_1_n_0\,
      Q => \FSM_onehot_axi_full_sm_ps_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\FSM_onehot_axi_full_sm_ps_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[6]_i_1_n_0\,
      Q => \FSM_onehot_axi_full_sm_ps_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\FSM_onehot_axi_full_sm_ps_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[7]_i_1_n_0\,
      Q => \FSM_onehot_axi_full_sm_ps_reg_n_0_[7]\,
      R => \^sr\(0)
    );
I_DECODER: entity work.axi_quad_spi_0_qspi_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => Bus_RNW_reg,
      Bus_RNW_reg_reg_1 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_2(0) => Bus_RNW_reg_reg_0(0),
      Bus_RNW_reg_reg_3 => Bus_RNW_reg_reg_1,
      Bus_RNW_reg_reg_4 => Bus_RNW_reg_reg_2,
      Bus_RNW_reg_reg_5 => Bus_RNW_reg_reg_3,
      Bus_RNW_reg_reg_6 => Bus_RNW_reg_reg_4,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\,
      D(10) => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/intr_ip2bus_data\(0),
      D(9) => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/intr_ip2bus_data\(18),
      D(8) => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/intr_ip2bus_data\(19),
      D(7) => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/intr_ip2bus_data\(20),
      D(6 downto 4) => ip2bus_data_int(10 downto 8),
      D(3 downto 1) => ip2bus_data_int(6 downto 4),
      D(0) => ip2bus_data_int(0),
      \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      \FSM_onehot_axi_full_sm_ps_reg[2]\ => \FSM_onehot_axi_full_sm_ps_reg[2]_0\,
      \FSM_onehot_axi_full_sm_ps_reg[5]\ => I_DECODER_n_12,
      \FSM_onehot_axi_full_sm_ps_reg[6]\(7 downto 0) => length_cntr_reg(7 downto 0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => \FSM_onehot_axi_full_sm_ps_reg[5]_0\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0\ => p_4_in,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_1\ => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\,
      \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\,
      \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]_0\ => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]_0\,
      Q(5) => \FSM_onehot_axi_full_sm_ps_reg_n_0_[5]\,
      Q(4) => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      Q(3) => \FSM_onehot_axi_full_sm_ps_reg_n_0_[3]\,
      Q(2) => \^q\(0),
      Q(1) => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      Q(0) => axi_full_sm_ps_IDLE_cmb,
      SPISR_0_CMD_Error_to_axi_clk => SPISR_0_CMD_Error_to_axi_clk,
      SPISR_1_LOOP_Back_Error_int => SPISR_1_LOOP_Back_Error_int,
      SPISR_2_MSB_Error_int => SPISR_2_MSB_Error_int,
      SPISR_4_CPOL_CPHA_Error_int => SPISR_4_CPOL_CPHA_Error_int,
      SPISSR_frm_axi_clk => SPISSR_frm_axi_clk,
      Transmit_ip2bus_error0 => Transmit_ip2bus_error0,
      Tx_FIFO_Empty_SPISR_to_axi_clk => Tx_FIFO_Empty_SPISR_to_axi_clk,
      almost_full => almost_full,
      \bus2ip_BE_reg_reg[3]\ => \bus2ip_BE_reg_reg[3]_0\,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(0),
      dout(3 downto 0) => dout(3 downto 0),
      empty => empty,
      \guf.underflow_i_reg\ => s_axi_rvalid_i_i_2_n_0,
      \gwack.wr_ack_i_reg\ => \^burst_tr_int\,
      \gwack.wr_ack_i_reg_0\ => \xpm_fifo_instance.xpm_fifo_async_inst_i_4_n_0\,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr_controller_rd_ce_or_reduce => intr_controller_rd_ce_or_reduce,
      ip2Bus_RdAck_core_reg => ip2Bus_RdAck_core_reg,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_core_reg => ip2Bus_WrAck_core_reg,
      ip2Bus_WrAck_core_reg0 => ip2Bus_WrAck_core_reg0,
      ip2Bus_WrAck_core_reg_d1 => ip2Bus_WrAck_core_reg_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2bus_error_int => \^ip2bus_error_int\,
      ipif_glbl_irpt_enable_reg_reg(0) => bus2ip_be_int(3),
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      \length_cntr_reg[4]\ => I_DECODER_n_29,
      \length_cntr_reg[6]\ => I_DECODER_n_13,
      p_0_in(0) => p_0_in(0),
      p_1_in => p_1_in,
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in19_in => p_1_in19_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in22_in => p_1_in22_in,
      p_1_in25_in => p_1_in25_in,
      p_1_in28_in => p_1_in28_in,
      p_1_in31_in => p_1_in31_in,
      p_1_in34_in => p_1_in34_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      p_1_in_0 => p_1_in_0,
      p_2_in => p_2_in,
      rd_ce_or_reduce_core_cmb => rd_ce_or_reduce_core_cmb,
      rd_en => rd_en,
      receive_ip2bus_error => receive_ip2bus_error,
      reset2ip_reset_int => \^reset2ip_reset_int\,
      reset_trig0 => reset_trig0,
      rx_fifo_empty_i => rx_fifo_empty_i,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_araddr(4 downto 0) => s_axi4_araddr(4 downto 0),
      s_axi4_aresetn => s_axi4_aresetn,
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_awaddr(4 downto 0) => s_axi4_awaddr(4 downto 0),
      s_axi4_awvalid => s_axi4_awvalid,
      s_axi4_awvalid_0 => I_DECODER_n_0,
      \s_axi4_rdata_i_reg[0]\ => \s_axi4_rdata_i_reg[0]_0\,
      \s_axi4_rdata_i_reg[13]\(9 downto 0) => \s_axi4_rdata_i_reg[13]_0\(9 downto 0),
      s_axi4_rready => s_axi4_rready,
      \s_axi4_rresp_i_reg[1]\ => \s_axi4_rresp_i[1]_i_2_n_0\,
      s_axi4_wdata(5 downto 2) => s_axi4_wdata(6 downto 3),
      s_axi4_wdata(1 downto 0) => s_axi4_wdata(1 downto 0),
      \s_axi4_wdata[31]\ => \s_axi4_wdata[31]\,
      s_axi4_wdata_0_sp_1 => s_axi4_wdata_0_sn_1,
      s_axi4_wvalid => s_axi4_wvalid,
      s_axi_wready_i => s_axi_wready_i,
      scndry_out => scndry_out,
      spicr_1_spe_frm_axi_clk => spicr_1_spe_frm_axi_clk,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spicr_3_cpol_frm_axi_clk => spicr_3_cpol_frm_axi_clk,
      spicr_4_cpha_frm_axi_clk => spicr_4_cpha_frm_axi_clk,
      spicr_5_txfifo_rst_frm_axi_clk => spicr_5_txfifo_rst_frm_axi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => spicr_6_rxfifo_rst_frm_axi_clk,
      spicr_8_tr_inhibit_frm_axi_clk => spicr_8_tr_inhibit_frm_axi_clk,
      spisel_d1_reg_to_axi_clk => spisel_d1_reg_to_axi_clk,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      transmit_ip2bus_error => transmit_ip2bus_error,
      wr_ce_or_reduce_core_cmb => wr_ce_or_reduce_core_cmb
    );
RESET_SYNC_AX2S_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sr\(0),
      I1 => \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\,
      O => \^reset2ip_reset_int\
    );
\S_AXI4_BID_reg[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi4_aresetn,
      O => clear
    );
\S_AXI4_BID_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => I_DECODER_n_0,
      D => s_axi4_awid(0),
      Q => s_axi4_bid(0),
      R => clear
    );
\S_AXI4_BID_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => I_DECODER_n_0,
      D => s_axi4_awid(1),
      Q => s_axi4_bid(1),
      R => clear
    );
\S_AXI4_BID_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => I_DECODER_n_0,
      D => s_axi4_awid(2),
      Q => s_axi4_bid(2),
      R => clear
    );
\S_AXI4_BID_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => I_DECODER_n_0,
      D => s_axi4_awid(3),
      Q => s_axi4_bid(3),
      R => clear
    );
\S_AXI4_BID_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => I_DECODER_n_0,
      D => s_axi4_awid(4),
      Q => s_axi4_bid(4),
      R => clear
    );
\S_AXI4_BID_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => I_DECODER_n_0,
      D => s_axi4_awid(5),
      Q => s_axi4_bid(5),
      R => clear
    );
\S_AXI4_BRESP_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000ABA8"
    )
        port map (
      I0 => \^ip2bus_error_int\,
      I1 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      I2 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[5]\,
      I3 => \^s_axi4_bresp\(0),
      I4 => axi_full_sm_ps_IDLE_cmb,
      O => \S_AXI4_BRESP_i[1]_i_1_n_0\
    );
\S_AXI4_BRESP_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \S_AXI4_BRESP_i[1]_i_1_n_0\,
      Q => \^s_axi4_bresp\(0),
      R => '0'
    );
\S_AXI4_RID_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => I_DECODER_n_0,
      D => s_axi4_arid(0),
      Q => s_axi4_rid(0),
      R => clear
    );
\S_AXI4_RID_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => I_DECODER_n_0,
      D => s_axi4_arid(1),
      Q => s_axi4_rid(1),
      R => clear
    );
\S_AXI4_RID_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => I_DECODER_n_0,
      D => s_axi4_arid(2),
      Q => s_axi4_rid(2),
      R => clear
    );
\S_AXI4_RID_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => I_DECODER_n_0,
      D => s_axi4_arid(3),
      Q => s_axi4_rid(3),
      R => clear
    );
\S_AXI4_RID_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => I_DECODER_n_0,
      D => s_axi4_arid(4),
      Q => s_axi4_rid(4),
      R => clear
    );
\S_AXI4_RID_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => I_DECODER_n_0,
      D => s_axi4_arid(5),
      Q => s_axi4_rid(5),
      R => clear
    );
arready_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_full_sm_ps_IDLE_cmb,
      I1 => s_axi4_arvalid,
      O => arready_cmb
    );
arready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => arready_cmb,
      Q => s_axi4_arready,
      R => \^sr\(0)
    );
awready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEAAAAAAAAAAA"
    )
        port map (
      I0 => I_DECODER_n_12,
      I1 => s_axi4_wvalid,
      I2 => s_axi4_awvalid,
      I3 => axi_full_sm_ps_IDLE_cmb,
      I4 => s_axi4_arvalid,
      I5 => burst_transfer_cmb,
      O => awready_cmb
    );
awready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => awready_cmb,
      Q => s_axi4_awready,
      R => \^sr\(0)
    );
burst_transfer_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => burst_transfer_reg_i_2_n_0,
      I1 => burst_transfer_reg_i_3_n_0,
      I2 => burst_transfer_reg_i_4_n_0,
      I3 => burst_transfer_reg_i_5_n_0,
      O => burst_transfer_cmb
    );
burst_transfer_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi4_awlen(6),
      I1 => s_axi4_arlen(6),
      I2 => s_axi4_awlen(0),
      I3 => rnw_cmb,
      I4 => s_axi4_arlen(0),
      O => burst_transfer_reg_i_2_n_0
    );
burst_transfer_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi4_awlen(5),
      I1 => s_axi4_arlen(5),
      I2 => s_axi4_awlen(2),
      I3 => rnw_cmb,
      I4 => s_axi4_arlen(2),
      O => burst_transfer_reg_i_3_n_0
    );
burst_transfer_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi4_awlen(7),
      I1 => s_axi4_arlen(7),
      I2 => s_axi4_awlen(1),
      I3 => rnw_cmb,
      I4 => s_axi4_arlen(1),
      O => burst_transfer_reg_i_4_n_0
    );
burst_transfer_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi4_awlen(4),
      I1 => s_axi4_arlen(4),
      I2 => s_axi4_awlen(3),
      I3 => rnw_cmb,
      I4 => s_axi4_arlen(3),
      O => burst_transfer_reg_i_5_n_0
    );
burst_transfer_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => I_DECODER_n_0,
      D => burst_transfer_cmb,
      Q => \^burst_tr_int\,
      R => clear
    );
\bus2ip_BE_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi4_wstrb(0),
      I1 => rnw_cmb,
      O => \bus2ip_BE_reg[0]_i_1_n_0\
    );
\bus2ip_BE_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi4_wstrb(1),
      I1 => rnw_cmb,
      O => \bus2ip_BE_reg[3]_i_1_n_0\
    );
\bus2ip_BE_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \bus2ip_BE_reg[0]_i_1_n_0\,
      Q => bus2ip_be_int(0),
      R => \^sr\(0)
    );
\bus2ip_BE_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \bus2ip_BE_reg[3]_i_1_n_0\,
      Q => bus2ip_be_int(3),
      R => \^sr\(0)
    );
last_data_acked_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA88A8"
    )
        port map (
      I0 => last_data_acked_i_2_n_0,
      I1 => last_data_acked_i_3_n_0,
      I2 => \FSM_onehot_axi_full_sm_ps[3]_i_1_n_0\,
      I3 => last_data_acked_i_4_n_0,
      I4 => last_data_acked_i_5_n_0,
      I5 => axi_full_sm_ps_IDLE_cmb,
      O => last_data_acked_i_1_n_0
    );
last_data_acked_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \^s_axi4_rlast\,
      O => last_data_acked_i_2_n_0
    );
last_data_acked_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => last_data_acked_i_6_n_0,
      I1 => last_data_acked_i_7_n_0,
      I2 => length_cntr_reg(4),
      I3 => length_cntr_reg(2),
      I4 => length_cntr_reg(3),
      O => last_data_acked_i_3_n_0
    );
last_data_acked_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^burst_tr_int\,
      I1 => length_cntr_reg(7),
      I2 => length_cntr_reg(5),
      I3 => length_cntr_reg(6),
      I4 => I_DECODER_n_29,
      O => last_data_acked_i_4_n_0
    );
last_data_acked_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \^s_axi4_rlast\,
      I2 => \^burst_tr_int\,
      O => last_data_acked_i_5_n_0
    );
last_data_acked_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \^s_axi_rvalid_i_reg_0\,
      I1 => s_axi4_rready,
      I2 => length_cntr_reg(1),
      I3 => \^burst_tr_int\,
      I4 => length_cntr_reg(0),
      I5 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      O => last_data_acked_i_6_n_0
    );
last_data_acked_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => length_cntr_reg(7),
      I1 => length_cntr_reg(5),
      I2 => length_cntr_reg(6),
      O => last_data_acked_i_7_n_0
    );
last_data_acked_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => last_data_acked_i_1_n_0,
      Q => \^s_axi4_rlast\,
      R => '0'
    );
\length_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => s_axi4_arlen(0),
      I1 => rnw_cmb,
      I2 => s_axi4_awlen(0),
      I3 => I_DECODER_n_0,
      I4 => length_cntr_reg(0),
      O => \p_0_in__0\(0)
    );
\length_cntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi4_arlen(1),
      I1 => rnw_cmb,
      I2 => s_axi4_awlen(1),
      I3 => I_DECODER_n_0,
      I4 => length_cntr_reg(1),
      I5 => length_cntr_reg(0),
      O => \p_0_in__0\(1)
    );
\length_cntr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi4_arlen(2),
      I1 => rnw_cmb,
      I2 => s_axi4_awlen(2),
      I3 => I_DECODER_n_0,
      I4 => \length_cntr[2]_i_2_n_0\,
      I5 => length_cntr_reg(2),
      O => \p_0_in__0\(2)
    );
\length_cntr[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => length_cntr_reg(1),
      I1 => length_cntr_reg(0),
      O => \length_cntr[2]_i_2_n_0\
    );
\length_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => \length_cntr[3]_i_2_n_0\,
      I1 => I_DECODER_n_0,
      I2 => length_cntr_reg(3),
      I3 => length_cntr_reg(1),
      I4 => length_cntr_reg(0),
      I5 => length_cntr_reg(2),
      O => \p_0_in__0\(3)
    );
\length_cntr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi4_arlen(3),
      I1 => rnw_cmb,
      I2 => s_axi4_awlen(3),
      O => \length_cntr[3]_i_2_n_0\
    );
\length_cntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi4_arlen(4),
      I1 => rnw_cmb,
      I2 => s_axi4_awlen(4),
      I3 => I_DECODER_n_0,
      I4 => \length_cntr[4]_i_2_n_0\,
      I5 => length_cntr_reg(4),
      O => \p_0_in__0\(4)
    );
\length_cntr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => length_cntr_reg(0),
      I1 => length_cntr_reg(1),
      I2 => length_cntr_reg(2),
      I3 => length_cntr_reg(3),
      O => \length_cntr[4]_i_2_n_0\
    );
\length_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi4_arlen(5),
      I1 => rnw_cmb,
      I2 => s_axi4_awlen(5),
      I3 => I_DECODER_n_0,
      I4 => length_cntr_reg(5),
      I5 => I_DECODER_n_29,
      O => \p_0_in__0\(5)
    );
\length_cntr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => \length_cntr[6]_i_2_n_0\,
      I1 => I_DECODER_n_0,
      I2 => length_cntr_reg(5),
      I3 => I_DECODER_n_29,
      I4 => length_cntr_reg(6),
      O => \p_0_in__0\(6)
    );
\length_cntr[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi4_arlen(6),
      I1 => rnw_cmb,
      I2 => s_axi4_awlen(6),
      O => \length_cntr[6]_i_2_n_0\
    );
\length_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBB"
    )
        port map (
      I0 => I_DECODER_n_0,
      I1 => \xpm_fifo_instance.xpm_fifo_async_inst_i_4_n_0\,
      I2 => s_axi4_rready,
      I3 => \^s_axi_rvalid_i_reg_0\,
      O => \length_cntr[7]_i_1_n_0\
    );
\length_cntr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => s_axi4_arlen(7),
      I1 => rnw_cmb,
      I2 => s_axi4_awlen(7),
      I3 => I_DECODER_n_0,
      I4 => length_cntr_reg(7),
      I5 => \length_cntr[7]_i_3_n_0\,
      O => \p_0_in__0\(7)
    );
\length_cntr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => I_DECODER_n_29,
      I1 => length_cntr_reg(5),
      I2 => length_cntr_reg(6),
      O => \length_cntr[7]_i_3_n_0\
    );
\length_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => length_cntr_reg(0),
      R => clear
    );
\length_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => length_cntr_reg(1),
      R => clear
    );
\length_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => length_cntr_reg(2),
      R => clear
    );
\length_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => length_cntr_reg(3),
      R => clear
    );
\length_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => length_cntr_reg(4),
      R => clear
    );
\length_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => length_cntr_reg(5),
      R => clear
    );
\length_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => length_cntr_reg(6),
      R => clear
    );
\length_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => length_cntr_reg(7),
      R => clear
    );
rnw_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF1F11111111"
    )
        port map (
      I0 => rnw_reg_i_2_n_0,
      I1 => s_axi4_awvalid,
      I2 => rnw_reg_i_3_n_0,
      I3 => \^q\(0),
      I4 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      I5 => rnw_reg_reg_n_0,
      O => rnw_cmb
    );
rnw_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi4_arvalid,
      I1 => axi_full_sm_ps_IDLE_cmb,
      O => rnw_reg_i_2_n_0
    );
rnw_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[5]\,
      I1 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      O => rnw_reg_i_3_n_0
    );
rnw_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => rnw_cmb,
      Q => rnw_reg_reg_n_0,
      R => \^sr\(0)
    );
\s_axi4_rdata_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => ip2bus_data_int(0),
      Q => s_axi4_rdata(0),
      R => clear
    );
\s_axi4_rdata_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => ip2bus_data_int(10),
      Q => s_axi4_rdata(10),
      R => clear
    );
\s_axi4_rdata_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/intr_ip2bus_data\(20),
      Q => s_axi4_rdata(11),
      R => clear
    );
\s_axi4_rdata_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/intr_ip2bus_data\(19),
      Q => s_axi4_rdata(12),
      R => clear
    );
\s_axi4_rdata_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/intr_ip2bus_data\(18),
      Q => s_axi4_rdata(13),
      R => clear
    );
\s_axi4_rdata_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => D(0),
      Q => s_axi4_rdata(1),
      R => clear
    );
\s_axi4_rdata_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => D(1),
      Q => s_axi4_rdata(2),
      R => clear
    );
\s_axi4_rdata_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/intr_ip2bus_data\(0),
      Q => s_axi4_rdata(14),
      R => clear
    );
\s_axi4_rdata_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => D(2),
      Q => s_axi4_rdata(3),
      R => clear
    );
\s_axi4_rdata_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => ip2bus_data_int(4),
      Q => s_axi4_rdata(4),
      R => clear
    );
\s_axi4_rdata_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => ip2bus_data_int(5),
      Q => s_axi4_rdata(5),
      R => clear
    );
\s_axi4_rdata_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => ip2bus_data_int(6),
      Q => s_axi4_rdata(6),
      R => clear
    );
\s_axi4_rdata_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => D(3),
      Q => s_axi4_rdata(7),
      R => clear
    );
\s_axi4_rdata_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => ip2bus_data_int(8),
      Q => s_axi4_rdata(8),
      R => clear
    );
\s_axi4_rdata_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => ip2bus_data_int(9),
      Q => s_axi4_rdata(9),
      R => clear
    );
\s_axi4_rresp_i[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => bus2ip_be_int(0),
      I1 => s_axi4_wdata(0),
      I2 => s_axi4_wdata(3),
      I3 => s_axi4_wdata(1),
      I4 => s_axi4_wdata(2),
      O => \s_axi4_rresp_i[1]_i_2_n_0\
    );
\s_axi4_rresp_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => \^ip2bus_error_int\,
      Q => s_axi4_rresp(0),
      R => clear
    );
s_axi4_wready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => s_axi_wready_i,
      I1 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      I2 => almost_full,
      O => s_axi4_wready
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F200"
    )
        port map (
      I0 => \^s_axi4_bvalid\,
      I1 => s_axi4_bready,
      I2 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[6]\,
      I3 => s_axi4_aresetn,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi4_bvalid\,
      R => '0'
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF222F"
    )
        port map (
      I0 => \^s_axi_rvalid_i_reg_0\,
      I1 => s_axi4_rready,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      I3 => s_axi_rvalid_i_i_2_n_0,
      I4 => \FSM_onehot_axi_full_sm_ps[3]_i_1_n_0\,
      I5 => axi_full_sm_ps_IDLE_cmb,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555557"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      I1 => length_cntr_reg(7),
      I2 => length_cntr_reg(5),
      I3 => length_cntr_reg(6),
      I4 => I_DECODER_n_29,
      O => s_axi_rvalid_i_i_2_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => '0'
    );
s_axi_wready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4F4400000000"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps_reg[5]_0\,
      I1 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[5]\,
      I2 => s_axi_wready_i_i_2_n_0,
      I3 => burst_transfer_cmb,
      I4 => \FSM_onehot_axi_full_sm_ps[4]_i_2_n_0\,
      I5 => s_axi4_aresetn,
      O => s_axi_wready_i_i_1_n_0
    );
s_axi_wready_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => s_axi4_wvalid,
      I1 => s_axi4_awvalid,
      I2 => axi_full_sm_ps_IDLE_cmb,
      I3 => s_axi4_arvalid,
      O => s_axi_wready_i_i_2_n_0
    );
s_axi_wready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => s_axi_wready_i_i_1_n_0,
      Q => s_axi_wready_i,
      R => '0'
    );
\xpm_fifo_instance.xpm_fifo_async_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1FF"
    )
        port map (
      I0 => s_axi_wready_i,
      I1 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      I2 => almost_full,
      I3 => s_axi4_wvalid,
      O => \xpm_fifo_instance.xpm_fifo_async_inst_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_xpm_fifo_rst is
  port (
    \gen_rst_ic.fifo_rd_rst_ic_reg_0\ : out STD_LOGIC;
    wrst_busy : out STD_LOGIC;
    d_out_int_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gwack.wr_ack_i_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \guf.underflow_i_reg\ : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_xpm_fifo_rst : entity is "xpm_fifo_rst";
end axi_quad_spi_0_xpm_fifo_rst;

architecture STRUCTURE of axi_quad_spi_0_xpm_fifo_rst is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : signal is "yes";
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \gen_rst_ic.curr_rrst_state\ : signal is "yes";
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \^gen_rst_ic.fifo_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_wr_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_rd\ : STD_LOGIC;
  signal \gen_rst_ic.next_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.rst_seq_reentered_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_i_2_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_i__0\ : STD_LOGIC;
  signal \^wrst_busy\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_ic_i_2\ : label is "soft_lutpair45";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_rst_ic.rst_seq_reentered_i_1\ : label is "soft_lutpair45";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[4]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \guf.underflow_i_i_1\ : label is "soft_lutpair46";
begin
  \gen_rst_ic.fifo_rd_rst_ic_reg_0\ <= \^gen_rst_ic.fifo_rd_rst_ic_reg_0\;
  wrst_busy <= \^wrst_busy\;
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \/i__n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030200FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I5 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEEE"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I3 => rst,
      I4 => p_0_in,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EEE0FFFFEEE0"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C0008"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I1 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004400000044"
    )
        port map (
      I0 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I3 => rst,
      I4 => p_0_in,
      I5 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_rst_ic.curr_rrst_state\(0),
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      O => \gen_rst_ic.next_rrst_state\(1)
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(0),
      Q => \gen_rst_ic.curr_rrst_state\(0),
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(1),
      Q => \gen_rst_ic.curr_rrst_state\(1),
      R => '0'
    );
\__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.next_rrst_state\(0)
    );
\gen_rst_ic.fifo_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.fifo_rd_rst_i\
    );
\gen_rst_ic.fifo_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_i\,
      Q => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \rst_i__0\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\,
      I5 => \gen_rst_ic.fifo_wr_rst_ic\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => \rst_i__0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\,
      Q => \gen_rst_ic.fifo_wr_rst_ic\,
      R => '0'
    );
\gen_rst_ic.rrst_wr_inst\: entity work.axi_quad_spi_0_xpm_cdc_sync_rst
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\
    );
\gen_rst_ic.rst_seq_reentered_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered_i_2_n_0\,
      I1 => rst,
      I2 => p_0_in,
      O => \gen_rst_ic.rst_seq_reentered_i_1_n_0\
    );
\gen_rst_ic.rst_seq_reentered_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I5 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \gen_rst_ic.rst_seq_reentered_i_2_n_0\
    );
\gen_rst_ic.rst_seq_reentered_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.rst_seq_reentered_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.wr_rst_busy_ic_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => rst,
      I1 => p_0_in,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\,
      I4 => \^wrst_busy\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\,
      Q => \^wrst_busy\,
      R => '0'
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\axi_quad_spi_0_xpm_cdc_sync_rst__6\
     port map (
      dest_clk => rd_clk,
      dest_rst => \gen_rst_ic.fifo_wr_rst_rd\,
      src_rst => \gen_rst_ic.fifo_wr_rst_ic\
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => \^wrst_busy\,
      I3 => rst_d1,
      O => E(0)
    );
\grdc.rd_data_count_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      O => SR(0)
    );
\guf.underflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \guf.underflow_i_reg\,
      I1 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I2 => rd_en,
      O => underflow_i0
    );
\gwack.wr_ack_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => rst_d1,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => wr_en,
      I3 => \^wrst_busy\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic\,
      I5 => rst,
      O => d_out_int_reg
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_fifo_rst__xdcDup__1\ is
  port (
    \gen_rst_ic.fifo_rd_rst_ic_reg_0\ : out STD_LOGIC;
    wrst_busy : out STD_LOGIC;
    d_out_int_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gwack.wr_ack_i_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \guf.underflow_i_reg\ : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_fifo_rst__xdcDup__1\ : entity is "xpm_fifo_rst";
end \axi_quad_spi_0_xpm_fifo_rst__xdcDup__1\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_fifo_rst__xdcDup__1\ is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : signal is "yes";
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \gen_rst_ic.curr_rrst_state\ : signal is "yes";
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \^gen_rst_ic.fifo_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_wr_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_rd\ : STD_LOGIC;
  signal \gen_rst_ic.next_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.rst_seq_reentered_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_i_2_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_i__0\ : STD_LOGIC;
  signal \^wrst_busy\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_ic_i_2\ : label is "soft_lutpair20";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_rst_ic.rst_seq_reentered_i_1\ : label is "soft_lutpair20";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \guf.underflow_i_i_1\ : label is "soft_lutpair19";
begin
  \gen_rst_ic.fifo_rd_rst_ic_reg_0\ <= \^gen_rst_ic.fifo_rd_rst_ic_reg_0\;
  wrst_busy <= \^wrst_busy\;
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \/i__n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030200FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I5 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEEE"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I3 => rst,
      I4 => p_0_in,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EEE0FFFFEEE0"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C0008"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I1 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004400000044"
    )
        port map (
      I0 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I3 => rst,
      I4 => p_0_in,
      I5 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_rst_ic.curr_rrst_state\(0),
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      O => \gen_rst_ic.next_rrst_state\(1)
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(0),
      Q => \gen_rst_ic.curr_rrst_state\(0),
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(1),
      Q => \gen_rst_ic.curr_rrst_state\(1),
      R => '0'
    );
\__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.next_rrst_state\(0)
    );
\gen_rst_ic.fifo_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.fifo_rd_rst_i\
    );
\gen_rst_ic.fifo_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_i\,
      Q => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \rst_i__0\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\,
      I5 => \gen_rst_ic.fifo_wr_rst_ic\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => \rst_i__0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\,
      Q => \gen_rst_ic.fifo_wr_rst_ic\,
      R => '0'
    );
\gen_rst_ic.rrst_wr_inst\: entity work.\axi_quad_spi_0_xpm_cdc_sync_rst__5\
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\
    );
\gen_rst_ic.rst_seq_reentered_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered_i_2_n_0\,
      I1 => rst,
      I2 => p_0_in,
      O => \gen_rst_ic.rst_seq_reentered_i_1_n_0\
    );
\gen_rst_ic.rst_seq_reentered_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I5 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \gen_rst_ic.rst_seq_reentered_i_2_n_0\
    );
\gen_rst_ic.rst_seq_reentered_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.rst_seq_reentered_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.wr_rst_busy_ic_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => rst,
      I1 => p_0_in,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\,
      I4 => \^wrst_busy\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\,
      Q => \^wrst_busy\,
      R => '0'
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\axi_quad_spi_0_xpm_cdc_sync_rst__4\
     port map (
      dest_clk => rd_clk,
      dest_rst => \gen_rst_ic.fifo_wr_rst_rd\,
      src_rst => \gen_rst_ic.fifo_wr_rst_ic\
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => \^wrst_busy\,
      I3 => rst_d1,
      O => E(0)
    );
\grdc.rd_data_count_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      O => SR(0)
    );
\guf.underflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \guf.underflow_i_reg\,
      I1 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I2 => rd_en,
      O => underflow_i0
    );
\gwack.wr_ack_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => rst_d1,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => wr_en,
      I3 => \^wrst_busy\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic\,
      I5 => rst,
      O => d_out_int_reg
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
M9ERyrMNmk2Jjyg6ZCGYQpTqx5C+74+ICn/vAQ5KoRuxJNbql8tHJjFcOe3FAJX14Nokq4wtfvZP
2sPXAs/eYYzjjbnt4nx8oZRRPy0XyDpvba/qxyqBSxjChIoPMDwpXnxi+chZJU5N1zCNt9FZPAep
nLCjMCkQTlKbP3cUJIY=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
FBAg02qOh8M8uZkNvwWHoY3ELncwvHjjgL2y2qLN7xuxxaPQj3LdyD/IETTPdSjNCB/rhpJxbT1y
U5fbF28Hkp+bzDuxeTWPX251wMhiEmdm4jhyMl2z+GRf2Z6VJ4bVM5bieaJvsbjuyQ9Az6TDmueI
14citDEbyRCyJD9EiVckdS2mZcTl37oVFebKnIeJGmNjOc2XrcM84JVJIG5iv3ryS2hAG9/84hEr
u3DYC+xS2w5swJXVSf0zV+w8xZulS3PTPLELIM8O+SEFdHetZKnrgG1aJ7V5xu0RniGAsyVwVbgu
M1jPqNLyU+9kyETKfG9jcGEIM2I2gUfmOvRs+g==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
TYvdYOtu2OcY/hp0LCFlgwGgJeLJ5MSBDPjuyI3760LiXtklDVs7CUFlvRRXMgAzbHlMXbiHp/Xl
cvmN035ayt8D8gPWRXxnbQf3kRlW6EIFwFMZ1inL9b5f47gsuvCP6MaKiTg0W7+/ZeHbM4jHXvRe
b8HXvQvK5kVwtayEwt0=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
GkcGg32vdV7ZS9x4Uw9v3hZEcxD5hMmQXUqa6shDPbzqUGIxrKpTOb9W4Sgi8rq+qw7QpAZp2JW/
MkYAH1WikFlf+XWG57y55EFV7oRoKQDh2Yz0sZEwVhwTGwSAqfnjrmPITofdG5eiey1ySGprEKsT
mqWAV+ZN7TkQkKup0Ukf1O+8giYKT/7UibTRqG/CT9dgU/4atPgYh2QjNMVrsAH/uzDxh7stQMYe
nkjZBkpLWOq7mxEXTKVtYAD/8G5qCJELRcvCuUKYz4Une1wDj+L/vwRK3IAdWKQ+/5mvj0q5XEm7
IKu5HYvalbySwRWzaB00uobXZorNhfwSv45jHg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
JnT3Bfv/DUBx2mIm4+jpmHjzhKoX4mNpcc/lgscv3iYrJw8Uble396hMwPsVZ+kkAsmYtegNCiTG
Z7kqnoNeWHv+Grdizsq0QM9S2KJ5EoZhjelE+3Cii/ztNHf7Y3c0nBPnioUQ5YmWk7vgoQl3SJ3d
vwD3G0c+fGJBRpi14hTJOB2wtu4EeWcJ1f+01LjKINeucLlwacjnN0tElyRgCNKfsRDAQiMqwKqg
XCleeNY0cyLXGI30pXMpnbLizYlNKgVD6DSeNaby0dhW4phR0a+9xteo8l8eRVzTO+VSOcYSy8rU
6Uj2y0Up19vcq91C+/YeHlh24VwNI2TJeUEDwQ==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
AWr8D+IaT/X0jMJSrwmWnhWOjt0+8oyULINYaH7QGBLgqKCVtf8rqo68R3/TZ8gTkN73fZOx0QCU
3WEp7Ga1gUsqEgy+2zGlncYhOzx62FJm4Pm7S6LbE1qdg3/9Pp55JLaf1ouYlZccQJ+yawj0HgL4
zR0T347Zg2aIFxQZ28icCuJbxAZsZgAT30scXsTMMvXlQQ9NI21OjirKgHRn3dldIjpkL+BrVBkQ
Q7MMiTBhpCn/c+WXk4H9BPc3vMrVoh6r5oo+e1858Hk7osyxNI9zuACaGwdAatsW756kQBMsQoUj
TmJksSfucjrHVSuLFffpztOARH3LXrhZcCZdoQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
fPVwMHnHe1L8weZTnbBxjlAabwZZnO4DZSHaO7tHGHAw6U+w+7Rc3BwfQXtiTyGXP15rvoLhvVpo
i1Tzs4zrV1X8vlWrxhS6XA2VO4RFkpCjmnHpvdgnW9mpk7w90QOEZIWZQST/o15t0wDT/kv4J36r
Ho59mVFCGQQSSYx0209u6sG2rNpJ5HtWMM+tDEDHUArucrBmPOoZSq0VSQsTHtjJQxr3U5fv9l6q
aEBWkjnLJ6zqLkt12B3q7V3iFORPpz6XNMqA6wzArzWirzgTCw3CduiSAgbNgoGmV4eNrVb2DfOT
5V4ni19GigMG1fHCD9dNPWGiRCWpY6iiN6iE1w==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
NkQB16Pku9sdGFuAkY+DjFhWzKYvb26AsK/VO1//MS5ztnK+V9d/0K8nVee9kGDNC4zorSd1NjRc
Jkj/JJm1k/9QiQQwOSB/94zKWUyVH2Rvw3UOuaTu9pWRQsIdmPNwXBKCOF5L17HHGaNqYzvHF7YY
REIp6VR4HcyLq2beYXn09Mq0f84obUr7+CMgh8i1SaLa/ydMPS9xsm1i0NFB3qcEC0dDq6xklwsX
s198UBI5mBJTEUKi38eytWXzQPFTmqdlD3Qn4CgstxSdoLrFHchISqt+L62U4xU6aVyYXmVaeebF
I1F3MAXQZwZwGETW7RW9t/+3pJtkjPfPtdnqu/Sg+zP+vLjSV/NcONctKnTj86/z+TTehoSH8ccr
BsjV0PhAtR3+RTr3VGkKJoUNeE8yFQIHlES8UamuSNMh5XrbmcbFx22MZ9gLOa350ytm1N124jNF
V860l5gGbt/8NcGf8I3EVPrYblJ5ZLGsZkVg1cKBMUys1yMm6Ci2Mruc

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
JDELzo7luYHcwIl8sAAMR3hvm1tr+ZaD3VKTvYj1uwYFwuIPCkUfjVi8OMAgp3Hh/R1wDZSeoY7T
xpO0sKF9MsovKwwArnByLL8zZflfJIe5AmC+jE5a8qUxydp4liMdOypRTLu6U6EUYUwSj6VOR0Uj
deCoQCr/gVZ2GdNKF5sKZsGXZSvx1Wag70BiGs69qhgUvVVlpbqpNRSB0DR/2IuSKCHhkucLXiTk
zVS7zC7GiyNYE6l/Yu5Ov25Cl+lY5cMZkqKvIFm90UiTBNYk4No5ofXnH/E0rNcbydv0BvWDmgKt
NXVratbi0ztKLb27z2lw5ZZzXCihB41kx4VjqA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 816)
`protect data_block
Y10GJMshf4IwrstCORd1UHCH3/l/ZQfODiToKv9UMZxTuJ7eoNQ+DOqp4gN5Hcg0vKfjmNeBdt9F
4zy1eNzWMZ2Sgkreqi/aahjj6THqenskOHsJG2EjudXt/+ALTMnYbc0tOmQnVM5Lc3cMNv4w4LWt
MH5hiiBrwlRXaIlHr/CnJp/hpILtUk8b4H1sYqndX+v4UmCyXxCFXmjgYZ1dxG1Yl6+hgLQnV0Y4
vdHJ834ok9DHl33RYIgYERinIs2URFPXAzY1fythlovCdZG7Xkjc/GwaL3GcsoGsgLqAMyHHR/nm
NiORsvAkNbfMVeQFgL7a7SRxpDH1NyDfcfH8arCZbAmeRS5UX5AuAepCOjicIHqnMLenJPsE55Um
kvjtikwYgy6hEDAu/zmNVzfHk96XN195ll5x5z67snLIk5b2BvS5mecKpGR6oxuyOE5iA4NKCI95
cswQmEmwXLFe7VsWb6eoSjSM34ka2HedNmauGrHdE4h+yqyYqUXqmT+gWRCFkVxuMkX0MorFg1eG
noelY5dROJsOlbX1BRm22KYJHCgXdMjZnVmgXv3JQkHcDn+LLNpT1a9u2Sq/r21olTqrSRq+PY8Z
i0EumfYBQgTWrrMBv2o0iatWOUJl5R78FRPbROxlVgFlEpdvElMW7vIqiswjWS7NMHcPJZYF48Q7
8zM8q8I/Ixy34rkVPAK/QUgeu+4kWljcudOWxVn9rF7dRvJfpr6OS0tTO0GCTx9eDimLdy1gcP3q
aan4pivkj85aiP5klS+dceZRFOHrgkz6viYfhMQrpp6LEQGyfoq+IT7XH0QLv1McVV8Z/E87boLH
WNadtlQjTjgZSYEjaWn+M/LeU0uaPo/5uJANWef2GPsOBvTnrcBhdYaDJF1aYNbfCtUgw3xfSRSA
Tt11QFBOUBoJdkSfKm29DEvihrHf2sf+xbuTIfAf5/6dzCmlxPDELsUsNhD9Ef/b1QFPx+uFdUSJ
6+asDcTWdv5UyWG/7ttpHZj/3zM5ggY66Bgd7LGPcR3Grg3DTsPbTYF6xFevE3LIgHYMTY1Ckopg
/CGJ7E2cvXpCgxMkZw5LQmhw
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of axi_quad_spi_0_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of axi_quad_spi_0_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of axi_quad_spi_0_xpm_fifo_base : entity is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of axi_quad_spi_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of axi_quad_spi_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of axi_quad_spi_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of axi_quad_spi_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of axi_quad_spi_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of axi_quad_spi_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of axi_quad_spi_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of axi_quad_spi_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of axi_quad_spi_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of axi_quad_spi_0_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of axi_quad_spi_0_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of axi_quad_spi_0_xpm_fifo_base : entity is 16;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of axi_quad_spi_0_xpm_fifo_base : entity is 128;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of axi_quad_spi_0_xpm_fifo_base : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of axi_quad_spi_0_xpm_fifo_base : entity is "1'b0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_xpm_fifo_base : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of axi_quad_spi_0_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of axi_quad_spi_0_xpm_fifo_base : entity is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of axi_quad_spi_0_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of axi_quad_spi_0_xpm_fifo_base : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of axi_quad_spi_0_xpm_fifo_base : entity is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of axi_quad_spi_0_xpm_fifo_base : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of axi_quad_spi_0_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of axi_quad_spi_0_xpm_fifo_base : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of axi_quad_spi_0_xpm_fifo_base : entity is 5;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of axi_quad_spi_0_xpm_fifo_base : entity is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of axi_quad_spi_0_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of axi_quad_spi_0_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of axi_quad_spi_0_xpm_fifo_base : entity is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of axi_quad_spi_0_xpm_fifo_base : entity is 8;
  attribute READ_MODE : integer;
  attribute READ_MODE of axi_quad_spi_0_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of axi_quad_spi_0_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of axi_quad_spi_0_xpm_fifo_base : entity is "1f1f";
  attribute VERSION : integer;
  attribute VERSION of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of axi_quad_spi_0_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of axi_quad_spi_0_xpm_fifo_base : entity is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of axi_quad_spi_0_xpm_fifo_base : entity is 5;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of axi_quad_spi_0_xpm_fifo_base : entity is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of axi_quad_spi_0_xpm_fifo_base : entity is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of axi_quad_spi_0_xpm_fifo_base : entity is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of axi_quad_spi_0_xpm_fifo_base : entity is 3;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of axi_quad_spi_0_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of axi_quad_spi_0_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of axi_quad_spi_0_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of axi_quad_spi_0_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of axi_quad_spi_0_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of axi_quad_spi_0_xpm_fifo_base : entity is 1;
end axi_quad_spi_0_xpm_fifo_base;

architecture STRUCTURE of axi_quad_spi_0_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal \^almost_empty\ : STD_LOGIC;
  signal \^almost_full\ : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_5\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal \gwdc.diff_wr_rd_pntr1_out\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal overflow_i0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_full_i0 : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr_cdc_dc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_10 : STD_LOGIC;
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_12 : STD_LOGIC;
  signal rdp_inst_n_13 : STD_LOGIC;
  signal rdp_inst_n_6 : STD_LOGIC;
  signal rdp_inst_n_9 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_1 : STD_LOGIC;
  signal src_in_bin00_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal wr_pntr_plus1_pf_carry : STD_LOGIC;
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_pntr_rd_cdc_dc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wrp_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal wrst_busy : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair22";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_fwft.gae_fwft.aempty_fwft_i_i_1\ : label is "soft_lutpair21";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \gen_sdpram.xpm_memory_base_inst\ : label is "[7:0]";
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair21";
begin
  almost_empty <= \^almost_empty\;
  almost_full <= \^almost_full\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FF0"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => \^rd_rst_busy\
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => \^rd_rst_busy\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaf_wptr_p3.wrpp3_inst\: entity work.axi_quad_spi_0_xpm_counter_updn_5
     port map (
      Q(3 downto 0) => count_value_i(3 downto 0),
      wr_clk => wr_clk,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\axi_quad_spi_0_xpm_cdc_gray__parameterized1__1\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(4 downto 0) => rd_pntr_wr_cdc_dc(4 downto 0),
      src_clk => rd_clk,
      src_in_bin(4) => rdp_inst_n_10,
      src_in_bin(3) => rdp_inst_n_11,
      src_in_bin(2) => rdp_inst_n_12,
      src_in_bin(1) => src_in_bin00_out(1),
      src_in_bin(0) => rdp_inst_n_13
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.\axi_quad_spi_0_xpm_cdc_gray__2\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      src_clk => rd_clk,
      src_in_bin(3 downto 0) => rd_pntr_ext(3 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.axi_quad_spi_0_xpm_fifo_reg_vec_6
     port map (
      D(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      Q(3 downto 0) => wr_pntr_plus1_pf(4 downto 1),
      almost_full => \^almost_full\,
      diff_pntr_pf_q0(0) => diff_pntr_pf_q0(4),
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\ => \^full\,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(3 downto 0) => count_value_i(3 downto 0),
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3) => wrpp2_inst_n_0,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(2) => wrpp2_inst_n_1,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(1) => wrpp2_inst_n_2,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(0) => wrpp2_inst_n_3,
      ram_full_i0 => ram_full_i0,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rpw_gray_reg_dc\: entity work.\axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_7\
     port map (
      D(2 downto 1) => \gwdc.diff_wr_rd_pntr1_out\(4 downto 3),
      D(0) => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \gwdc.wr_data_count_i_reg[4]\(4 downto 0) => wr_pntr_ext(4 downto 0),
      \reg_out_i_reg[4]_0\(4 downto 0) => rd_pntr_wr_cdc_dc(4 downto 0),
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.axi_quad_spi_0_xpm_fifo_reg_vec_8
     port map (
      D(1 downto 0) => diff_pntr_pe(1 downto 0),
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\ => rdp_inst_n_6,
      \gen_pf_ic_rc.ram_empty_i_reg\(3 downto 0) => rd_pntr_ext(3 downto 0),
      \gen_pf_ic_rc.ram_empty_i_reg_0\(3) => rdpp1_inst_n_0,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(2) => rdpp1_inst_n_1,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(1) => rdpp1_inst_n_2,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(0) => rdpp1_inst_n_3,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[0]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[3]_0\(3 downto 0) => wr_pntr_rd_cdc(3 downto 0)
    );
\gen_cdc_pntr.wpr_gray_reg_dc\: entity work.\axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_9\
     port map (
      D(0) => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      \grdc.rd_data_count_i_reg[1]\ => \gen_fwft.rdpp1_inst_n_2\,
      \grdc.rd_data_count_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_3\,
      \grdc.rd_data_count_i_reg[4]\(2 downto 0) => rd_pntr_ext(2 downto 0),
      rd_clk => rd_clk,
      \reg_out_i_reg[2]_0\ => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      \reg_out_i_reg[4]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[4]_1\(4 downto 0) => wr_pntr_rd_cdc_dc(4 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\axi_quad_spi_0_xpm_cdc_gray__parameterized0__1\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(4 downto 0) => wr_pntr_rd_cdc_dc(4 downto 0),
      src_clk => wr_clk,
      src_in_bin(4 downto 0) => wr_pntr_ext(4 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\axi_quad_spi_0_xpm_cdc_gray__1\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(3 downto 0) => wr_pntr_rd_cdc(3 downto 0),
      src_clk => wr_clk,
      src_in_bin(3 downto 0) => wr_pntr_ext(3 downto 0)
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \^empty\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gae_fwft.aempty_fwft_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDD4000"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => ram_empty_i,
      I2 => curr_fwft_state(1),
      I3 => rd_en,
      I4 => \^almost_empty\,
      O => aempty_fwft_i0
    );
\gen_fwft.gae_fwft.aempty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => \^almost_empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \^empty\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.\axi_quad_spi_0_xpm_counter_updn__parameterized1_10\
     port map (
      D(0) => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      \count_value_i_reg[0]_0\ => \gen_fwft.rdpp1_inst_n_3\,
      \count_value_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_1\,
      \count_value_i_reg[1]_1\ => \gen_fwft.rdpp1_inst_n_2\,
      \count_value_i_reg[1]_2\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_3\ => \^rd_rst_busy\,
      \grdc.rd_data_count_i_reg[2]\(2 downto 0) => rd_pntr_ext(2 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      src_in_bin(0) => src_in_bin00_out(1)
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      Q => \^almost_full\,
      R => '0'
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888BBBBBBBBB"
    )
        port map (
      I0 => \^prog_empty\,
      I1 => \^empty\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      I4 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      I5 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\,
      Q => \^prog_empty\,
      S => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => p_1_in,
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_1,
      Q => \^prog_full\,
      R => '0'
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_full_i0,
      Q => \^full\,
      R => wrst_busy
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.\axi_quad_spi_0_xpm_memory_base__1\
     port map (
      addra(3 downto 0) => wr_pntr_ext(3 downto 0),
      addrb(3 downto 0) => rd_pntr_ext(3 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(7 downto 0) => din(7 downto 0),
      dinb(7 downto 0) => B"00000000",
      douta(7 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(7 downto 0),
      doutb(7 downto 0) => dout(7 downto 0),
      ena => wr_pntr_plus1_pf_carry,
      enb => rdp_inst_n_6,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
\gof.overflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => overflow_i0,
      Q => overflow,
      R => '0'
    );
\grdc.rd_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => rdp_inst_n_9,
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\guf.underflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\gwack.wr_ack_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_2,
      Q => wr_ack,
      R => '0'
    );
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => wrp_inst_n_1,
      Q => wr_data_count(0),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q => wr_data_count(1),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(2),
      Q => wr_data_count(2),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(3),
      Q => wr_data_count(3),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(4),
      Q => wr_data_count(4),
      R => wrst_busy
    );
rdp_inst: entity work.\axi_quad_spi_0_xpm_counter_updn__parameterized2_11\
     port map (
      D(1 downto 0) => diff_pntr_pe(3 downto 2),
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_6,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[3]_0\(3 downto 0) => rd_pntr_ext(3 downto 0),
      \count_value_i_reg[4]_0\ => \^rd_rst_busy\,
      \grdc.rd_data_count_i_reg[0]\ => \gen_fwft.rdpp1_inst_n_3\,
      \grdc.rd_data_count_i_reg[3]\ => \gen_fwft.rdpp1_inst_n_1\,
      \grdc.rd_data_count_i_reg[4]\ => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      \grdc.rd_data_count_i_reg[4]_0\(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      \grdc.rd_data_count_i_reg[4]_0\(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      \grdc.rd_data_count_i_reg[4]_0\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      \grdc.rd_data_count_i_reg[4]_0\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      \grdc.rd_data_count_i_reg[4]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[4]\(2 downto 1) => \grdc.diff_wr_rd_pntr_rdc\(4 downto 3),
      \reg_out_i_reg[4]\(0) => rdp_inst_n_9,
      \src_gray_ff_reg[4]\ => \gen_fwft.rdpp1_inst_n_2\,
      src_in_bin(3) => rdp_inst_n_10,
      src_in_bin(2) => rdp_inst_n_11,
      src_in_bin(1) => rdp_inst_n_12,
      src_in_bin(0) => rdp_inst_n_13
    );
rdpp1_inst: entity work.\axi_quad_spi_0_xpm_counter_updn__parameterized3_12\
     port map (
      E(0) => rdp_inst_n_6,
      Q(3) => rdpp1_inst_n_0,
      Q(2) => rdpp1_inst_n_1,
      Q(1) => rdpp1_inst_n_2,
      Q(0) => rdpp1_inst_n_3,
      \count_value_i_reg[0]_0\ => \^rd_rst_busy\,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.axi_quad_spi_0_xpm_fifo_reg_bit_13
     port map (
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ => rst_d1_inst_n_1,
      \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ => \^full\,
      overflow_i0 => overflow_i0,
      p_1_in => p_1_in,
      prog_full => \^prog_full\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.\axi_quad_spi_0_xpm_counter_updn__parameterized2_14\
     port map (
      D(1) => \gwdc.diff_wr_rd_pntr1_out\(2),
      D(0) => wrp_inst_n_1,
      E(0) => wr_pntr_plus1_pf_carry,
      Q(4 downto 0) => wr_pntr_ext(4 downto 0),
      \gwdc.wr_data_count_i_reg[2]\(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      \gwdc.wr_data_count_i_reg[2]\(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      \gwdc.wr_data_count_i_reg[2]\(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\axi_quad_spi_0_xpm_counter_updn__parameterized3_15\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(3 downto 0) => wr_pntr_plus1_pf(4 downto 1),
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\axi_quad_spi_0_xpm_counter_updn__parameterized0_16\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(3) => wrpp2_inst_n_0,
      Q(2) => wrpp2_inst_n_1,
      Q(1) => wrpp2_inst_n_2,
      Q(0) => wrpp2_inst_n_3,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.\axi_quad_spi_0_xpm_fifo_rst__xdcDup__1\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      SR(0) => \grdc.rd_data_count_i0\,
      d_out_int_reg => xpm_fifo_rst_inst_n_2,
      \gen_rst_ic.fifo_rd_rst_ic_reg_0\ => \^rd_rst_busy\,
      \guf.underflow_i_reg\ => \^empty\,
      \gwack.wr_ack_i_reg\ => \^full\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_fifo_base__parameterized0\ is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 16;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 128;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 5;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 8;
  attribute READ_MODE : integer;
  attribute READ_MODE of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 5;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 3;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 3;
  attribute invalid : integer;
  attribute invalid of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ : entity is 1;
end \axi_quad_spi_0_xpm_fifo_base__parameterized0\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_fifo_base__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal \^almost_empty\ : STD_LOGIC;
  signal \^almost_full\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_5\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal \gwdc.diff_wr_rd_pntr1_out\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal overflow_i0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr_cdc_dc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_10 : STD_LOGIC;
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_12 : STD_LOGIC;
  signal rdp_inst_n_13 : STD_LOGIC;
  signal rdp_inst_n_6 : STD_LOGIC;
  signal rdp_inst_n_9 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_1 : STD_LOGIC;
  signal src_in_bin00_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal wr_pntr_plus1_pf_carry : STD_LOGIC;
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_pntr_rd_cdc_dc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wrp_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal wrst_busy : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair48";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_fwft.gae_fwft.aempty_fwft_i_i_1\ : label is "soft_lutpair47";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \gen_sdpram.xpm_memory_base_inst\ : label is "[7:0]";
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair47";
begin
  almost_empty <= \^almost_empty\;
  almost_full <= \^almost_full\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FF0"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => \^rd_rst_busy\
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => \^rd_rst_busy\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaf_wptr_p3.wrpp3_inst\: entity work.axi_quad_spi_0_xpm_counter_updn
     port map (
      Q(3 downto 0) => count_value_i(3 downto 0),
      wr_clk => wr_clk,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\axi_quad_spi_0_xpm_cdc_gray__parameterized1\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(4 downto 0) => rd_pntr_wr_cdc_dc(4 downto 0),
      src_clk => rd_clk,
      src_in_bin(4) => rdp_inst_n_10,
      src_in_bin(3) => rdp_inst_n_11,
      src_in_bin(2) => rdp_inst_n_12,
      src_in_bin(1) => src_in_bin00_out(1),
      src_in_bin(0) => rdp_inst_n_13
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.axi_quad_spi_0_xpm_cdc_gray
     port map (
      dest_clk => wr_clk,
      dest_out_bin(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      src_clk => rd_clk,
      src_in_bin(3 downto 0) => rd_pntr_ext(3 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.axi_quad_spi_0_xpm_fifo_reg_vec
     port map (
      D(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      Q(3 downto 0) => wr_pntr_plus1_pf(4 downto 1),
      almost_full => \^almost_full\,
      clr_full => clr_full,
      diff_pntr_pf_q0(0) => diff_pntr_pf_q0(4),
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ => \^full\,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_0\(3 downto 0) => count_value_i(3 downto 0),
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(3) => wrpp2_inst_n_0,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(2) => wrpp2_inst_n_1,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(1) => wrpp2_inst_n_2,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg_1\(0) => wrpp2_inst_n_3,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      \reg_out_i_reg[3]_0\ => \gen_cdc_pntr.rpw_gray_reg_n_2\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rpw_gray_reg_dc\: entity work.\axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0\
     port map (
      D(2 downto 1) => \gwdc.diff_wr_rd_pntr1_out\(4 downto 3),
      D(0) => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \gwdc.wr_data_count_i_reg[4]\(4 downto 0) => wr_pntr_ext(4 downto 0),
      \reg_out_i_reg[4]_0\(4 downto 0) => rd_pntr_wr_cdc_dc(4 downto 0),
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.axi_quad_spi_0_xpm_fifo_reg_vec_1
     port map (
      D(1 downto 0) => diff_pntr_pe(1 downto 0),
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\ => rdp_inst_n_6,
      \gen_pf_ic_rc.ram_empty_i_reg\(3 downto 0) => rd_pntr_ext(3 downto 0),
      \gen_pf_ic_rc.ram_empty_i_reg_0\(3) => rdpp1_inst_n_0,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(2) => rdpp1_inst_n_1,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(1) => rdpp1_inst_n_2,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(0) => rdpp1_inst_n_3,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[0]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[3]_0\(3 downto 0) => wr_pntr_rd_cdc(3 downto 0)
    );
\gen_cdc_pntr.wpr_gray_reg_dc\: entity work.\axi_quad_spi_0_xpm_fifo_reg_vec__parameterized0_2\
     port map (
      D(0) => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      \grdc.rd_data_count_i_reg[1]\ => \gen_fwft.rdpp1_inst_n_2\,
      \grdc.rd_data_count_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_3\,
      \grdc.rd_data_count_i_reg[4]\(2 downto 0) => rd_pntr_ext(2 downto 0),
      rd_clk => rd_clk,
      \reg_out_i_reg[2]_0\ => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      \reg_out_i_reg[4]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[4]_1\(4 downto 0) => wr_pntr_rd_cdc_dc(4 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\axi_quad_spi_0_xpm_cdc_gray__parameterized0\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(4 downto 0) => wr_pntr_rd_cdc_dc(4 downto 0),
      src_clk => wr_clk,
      src_in_bin(4 downto 0) => wr_pntr_ext(4 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\axi_quad_spi_0_xpm_cdc_gray__3\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(3 downto 0) => wr_pntr_rd_cdc(3 downto 0),
      src_clk => wr_clk,
      src_in_bin(3 downto 0) => wr_pntr_ext(3 downto 0)
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \^empty\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gae_fwft.aempty_fwft_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDD4000"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => ram_empty_i,
      I2 => curr_fwft_state(1),
      I3 => rd_en,
      I4 => \^almost_empty\,
      O => aempty_fwft_i0
    );
\gen_fwft.gae_fwft.aempty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => \^almost_empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \^empty\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.\axi_quad_spi_0_xpm_counter_updn__parameterized1\
     port map (
      D(0) => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      \count_value_i_reg[0]_0\ => \gen_fwft.rdpp1_inst_n_3\,
      \count_value_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_1\,
      \count_value_i_reg[1]_1\ => \gen_fwft.rdpp1_inst_n_2\,
      \count_value_i_reg[1]_2\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[1]_3\ => \^rd_rst_busy\,
      \grdc.rd_data_count_i_reg[2]\(2 downto 0) => rd_pntr_ext(2 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      src_in_bin(0) => src_in_bin00_out(1)
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      Q => \^almost_full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_cdc_pntr.rpw_gray_reg_n_2\,
      Q => \^full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888BBBBBBBBB"
    )
        port map (
      I0 => \^prog_empty\,
      I1 => \^empty\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      I4 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      I5 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\,
      Q => \^prog_empty\,
      S => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => p_0_in,
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_1,
      Q => \^prog_full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.axi_quad_spi_0_xpm_memory_base
     port map (
      addra(3 downto 0) => wr_pntr_ext(3 downto 0),
      addrb(3 downto 0) => rd_pntr_ext(3 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(7 downto 0) => din(7 downto 0),
      dinb(7 downto 0) => B"00000000",
      douta(7 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(7 downto 0),
      doutb(7 downto 0) => dout(7 downto 0),
      ena => wr_pntr_plus1_pf_carry,
      enb => rdp_inst_n_6,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
\gof.overflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => overflow_i0,
      Q => overflow,
      R => '0'
    );
\grdc.rd_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => rdp_inst_n_9,
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\guf.underflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\gwack.wr_ack_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_2,
      Q => wr_ack,
      R => '0'
    );
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => wrp_inst_n_1,
      Q => wr_data_count(0),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q => wr_data_count(1),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(2),
      Q => wr_data_count(2),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(3),
      Q => wr_data_count(3),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(4),
      Q => wr_data_count(4),
      R => wrst_busy
    );
rdp_inst: entity work.\axi_quad_spi_0_xpm_counter_updn__parameterized2\
     port map (
      D(1 downto 0) => diff_pntr_pe(3 downto 2),
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_6,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[3]_0\(3 downto 0) => rd_pntr_ext(3 downto 0),
      \count_value_i_reg[4]_0\ => \^rd_rst_busy\,
      \grdc.rd_data_count_i_reg[0]\ => \gen_fwft.rdpp1_inst_n_3\,
      \grdc.rd_data_count_i_reg[3]\ => \gen_fwft.rdpp1_inst_n_1\,
      \grdc.rd_data_count_i_reg[4]\ => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      \grdc.rd_data_count_i_reg[4]_0\(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      \grdc.rd_data_count_i_reg[4]_0\(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      \grdc.rd_data_count_i_reg[4]_0\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      \grdc.rd_data_count_i_reg[4]_0\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      \grdc.rd_data_count_i_reg[4]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[4]\(2 downto 1) => \grdc.diff_wr_rd_pntr_rdc\(4 downto 3),
      \reg_out_i_reg[4]\(0) => rdp_inst_n_9,
      \src_gray_ff_reg[4]\ => \gen_fwft.rdpp1_inst_n_2\,
      src_in_bin(3) => rdp_inst_n_10,
      src_in_bin(2) => rdp_inst_n_11,
      src_in_bin(1) => rdp_inst_n_12,
      src_in_bin(0) => rdp_inst_n_13
    );
rdpp1_inst: entity work.\axi_quad_spi_0_xpm_counter_updn__parameterized3\
     port map (
      E(0) => rdp_inst_n_6,
      Q(3) => rdpp1_inst_n_0,
      Q(2) => rdpp1_inst_n_1,
      Q(1) => rdpp1_inst_n_2,
      Q(0) => rdpp1_inst_n_3,
      \count_value_i_reg[0]_0\ => \^rd_rst_busy\,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.axi_quad_spi_0_xpm_fifo_reg_bit
     port map (
      clr_full => clr_full,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ => rst_d1_inst_n_1,
      \gof.overflow_i_reg\ => \^full\,
      overflow_i0 => overflow_i0,
      p_0_in => p_0_in,
      prog_full => \^prog_full\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.\axi_quad_spi_0_xpm_counter_updn__parameterized2_3\
     port map (
      D(1) => \gwdc.diff_wr_rd_pntr1_out\(2),
      D(0) => wrp_inst_n_1,
      E(0) => wr_pntr_plus1_pf_carry,
      Q(4 downto 0) => wr_pntr_ext(4 downto 0),
      \gwdc.wr_data_count_i_reg[2]\(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      \gwdc.wr_data_count_i_reg[2]\(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      \gwdc.wr_data_count_i_reg[2]\(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\axi_quad_spi_0_xpm_counter_updn__parameterized3_4\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(3 downto 0) => wr_pntr_plus1_pf(4 downto 1),
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\axi_quad_spi_0_xpm_counter_updn__parameterized0\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(3) => wrpp2_inst_n_0,
      Q(2) => wrpp2_inst_n_1,
      Q(1) => wrpp2_inst_n_2,
      Q(0) => wrpp2_inst_n_3,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.axi_quad_spi_0_xpm_fifo_rst
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      SR(0) => \grdc.rd_data_count_i0\,
      d_out_int_reg => xpm_fifo_rst_inst_n_2,
      \gen_rst_ic.fifo_rd_rst_ic_reg_0\ => \^rd_rst_busy\,
      \guf.underflow_i_reg\ => \^empty\,
      \gwack.wr_ack_i_reg\ => \^full\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
M9ERyrMNmk2Jjyg6ZCGYQpTqx5C+74+ICn/vAQ5KoRuxJNbql8tHJjFcOe3FAJX14Nokq4wtfvZP
2sPXAs/eYYzjjbnt4nx8oZRRPy0XyDpvba/qxyqBSxjChIoPMDwpXnxi+chZJU5N1zCNt9FZPAep
nLCjMCkQTlKbP3cUJIY=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
FBAg02qOh8M8uZkNvwWHoY3ELncwvHjjgL2y2qLN7xuxxaPQj3LdyD/IETTPdSjNCB/rhpJxbT1y
U5fbF28Hkp+bzDuxeTWPX251wMhiEmdm4jhyMl2z+GRf2Z6VJ4bVM5bieaJvsbjuyQ9Az6TDmueI
14citDEbyRCyJD9EiVckdS2mZcTl37oVFebKnIeJGmNjOc2XrcM84JVJIG5iv3ryS2hAG9/84hEr
u3DYC+xS2w5swJXVSf0zV+w8xZulS3PTPLELIM8O+SEFdHetZKnrgG1aJ7V5xu0RniGAsyVwVbgu
M1jPqNLyU+9kyETKfG9jcGEIM2I2gUfmOvRs+g==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
TYvdYOtu2OcY/hp0LCFlgwGgJeLJ5MSBDPjuyI3760LiXtklDVs7CUFlvRRXMgAzbHlMXbiHp/Xl
cvmN035ayt8D8gPWRXxnbQf3kRlW6EIFwFMZ1inL9b5f47gsuvCP6MaKiTg0W7+/ZeHbM4jHXvRe
b8HXvQvK5kVwtayEwt0=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
GkcGg32vdV7ZS9x4Uw9v3hZEcxD5hMmQXUqa6shDPbzqUGIxrKpTOb9W4Sgi8rq+qw7QpAZp2JW/
MkYAH1WikFlf+XWG57y55EFV7oRoKQDh2Yz0sZEwVhwTGwSAqfnjrmPITofdG5eiey1ySGprEKsT
mqWAV+ZN7TkQkKup0Ukf1O+8giYKT/7UibTRqG/CT9dgU/4atPgYh2QjNMVrsAH/uzDxh7stQMYe
nkjZBkpLWOq7mxEXTKVtYAD/8G5qCJELRcvCuUKYz4Une1wDj+L/vwRK3IAdWKQ+/5mvj0q5XEm7
IKu5HYvalbySwRWzaB00uobXZorNhfwSv45jHg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
JnT3Bfv/DUBx2mIm4+jpmHjzhKoX4mNpcc/lgscv3iYrJw8Uble396hMwPsVZ+kkAsmYtegNCiTG
Z7kqnoNeWHv+Grdizsq0QM9S2KJ5EoZhjelE+3Cii/ztNHf7Y3c0nBPnioUQ5YmWk7vgoQl3SJ3d
vwD3G0c+fGJBRpi14hTJOB2wtu4EeWcJ1f+01LjKINeucLlwacjnN0tElyRgCNKfsRDAQiMqwKqg
XCleeNY0cyLXGI30pXMpnbLizYlNKgVD6DSeNaby0dhW4phR0a+9xteo8l8eRVzTO+VSOcYSy8rU
6Uj2y0Up19vcq91C+/YeHlh24VwNI2TJeUEDwQ==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
AWr8D+IaT/X0jMJSrwmWnhWOjt0+8oyULINYaH7QGBLgqKCVtf8rqo68R3/TZ8gTkN73fZOx0QCU
3WEp7Ga1gUsqEgy+2zGlncYhOzx62FJm4Pm7S6LbE1qdg3/9Pp55JLaf1ouYlZccQJ+yawj0HgL4
zR0T347Zg2aIFxQZ28icCuJbxAZsZgAT30scXsTMMvXlQQ9NI21OjirKgHRn3dldIjpkL+BrVBkQ
Q7MMiTBhpCn/c+WXk4H9BPc3vMrVoh6r5oo+e1858Hk7osyxNI9zuACaGwdAatsW756kQBMsQoUj
TmJksSfucjrHVSuLFffpztOARH3LXrhZcCZdoQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
fPVwMHnHe1L8weZTnbBxjlAabwZZnO4DZSHaO7tHGHAw6U+w+7Rc3BwfQXtiTyGXP15rvoLhvVpo
i1Tzs4zrV1X8vlWrxhS6XA2VO4RFkpCjmnHpvdgnW9mpk7w90QOEZIWZQST/o15t0wDT/kv4J36r
Ho59mVFCGQQSSYx0209u6sG2rNpJ5HtWMM+tDEDHUArucrBmPOoZSq0VSQsTHtjJQxr3U5fv9l6q
aEBWkjnLJ6zqLkt12B3q7V3iFORPpz6XNMqA6wzArzWirzgTCw3CduiSAgbNgoGmV4eNrVb2DfOT
5V4ni19GigMG1fHCD9dNPWGiRCWpY6iiN6iE1w==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
NkQB16Pku9sdGFuAkY+DjFhWzKYvb26AsK/VO1//MS5ztnK+V9d/0K8nVee9kGDNC4zorSd1NjRc
Jkj/JJm1k/9QiQQwOSB/94zKWUyVH2Rvw3UOuaTu9pWRQsIdmPNwXBKCOF5L17HHGaNqYzvHF7YY
REIp6VR4HcyLq2beYXn09Mq0f84obUr7+CMgh8i1SaLa/ydMPS9xsm1i0NFB3qcEC0dDq6xklwsX
s198UBI5mBJTEUKi38eytWXzQPFTmqdlD3Qn4CgstxSdoLrFHchISqt+L62U4xU6aVyYXmVaeebF
I1F3MAXQZwZwGETW7RW9t/+3pJtkjPfPtdnqu/Sg+zP+vLjSV/NcONctKnTj86/z+TTehoSH8ccr
BsjV0PhAtR3+RTr3VGkKJoUNeE8yFQIHlES8UamuSNMh5XrbmcbFx22MZ9gLOa350ytm1N124jNF
V860l5gGbt/8NcGf8I3EVPrYblJ5ZLGsZkVg1cKBMUys1yMm6Ci2Mruc

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
JDELzo7luYHcwIl8sAAMR3hvm1tr+ZaD3VKTvYj1uwYFwuIPCkUfjVi8OMAgp3Hh/R1wDZSeoY7T
xpO0sKF9MsovKwwArnByLL8zZflfJIe5AmC+jE5a8qUxydp4liMdOypRTLu6U6EUYUwSj6VOR0Uj
deCoQCr/gVZ2GdNKF5sKZsGXZSvx1Wag70BiGs69qhgUvVVlpbqpNRSB0DR/2IuSKCHhkucLXiTk
zVS7zC7GiyNYE6l/Yu5Ov25Cl+lY5cMZkqKvIFm90UiTBNYk4No5ofXnH/E0rNcbydv0BvWDmgKt
NXVratbi0ztKLb27z2lw5ZZzXCihB41kx4VjqA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6592)
`protect data_block
Y10GJMshf4IwrstCORd1UHCH3/l/ZQfODiToKv9UMZxTuJ7eoNQ+DOqp4gN5Hcg0vKfjmNeBdt9F
4zy1eNzWMZ2Sgkreqi/aahjj6THqenskOHsJG2EjudXt/+ALTMnYbc0tOmQnVM5Lc3cMNv4w4LWt
MH5hiiBrwlRXaIlHr/CnJp/hpILtUk8b4H1sYqnd7sVR9BOTLQa2JLtqRyfZ5uUnW+OOYyNlCs5D
8cP4hUK09H/OeGDMcOWHvW5Ey1RDN5Ebi8WvSVchvCpCbZWr2jy0k3gdemskFOTkO+GTDW6mnQ+O
Nbq6fhgFiQuefoK63Nq/9CWmkjOte/YLO4QPGSMehVL5Pqc2y9YK1ZKdGQHqG5RA35xQcJSg1Pzy
qmcgIXxk95jScSARtjt1pkmP2qxx6/+BetGL9Ilo0uVa+P0lSAr5RmDUQlQnKpwmVkIBF6H7OfGv
ovfFi5UnjW/Wwc5yvLYDQd6vxXwiDFXERT/CM35UjzHx3n0mKFWQkuGGmDiqj//gEOXggLM9ziCu
rP+zdx3kQKsdbiF9bBrJfNLhVYZQsVFXNYDwkO8QexAbkU0UnhDZthMAtNO5DXUTVmHV/NSsVJrk
9mEzO9lF3gJOCckXhobRhaNs8Oc1DkQZjMDa/wR6/q1bwso92VQRMVuwLZUrdjeU5FkHJe+JxI8R
35M2K6MuHvavXVexst5x/8UYJFCp+TaDhric6dgPunjiy807NXUJX/s2xk5H045vmqcnTW8cJz/x
hVec+6F/g4LSLbZf5G9pR8KFDWyALD+AiyJw6+6Uum3SknNy8NJ9HYUTNWbU3uNezHVFj498OLo4
LEVUL8k36OxwPy/UbiH7pGhBiJkOwEoT/GlaMVYjyJz5w1AGTSPuCtuSraHdXr64L06Blf0NQWGI
vEKtrN/8jyDvooZsnqSy+6+3CnAYKiOZVnRE6/W/jEcTN2vWa4FP60riZ5e269QZ/dGYC4lruPMM
/3l/ID7y1XCoKG+YeqmPb3mFBivI5QzI2Ql9rk6wOiqCQCLotIsiLtFshUQkW0r3P6CPKsbCrmwK
LHFdEm88SIQZyTN9q0oj05QxGfrdHgiQpMauy5G3M6HCn8TtchdIUJ7+PGpnUqmO02AKLsrQr8QP
1iK0E5EUNqd2xzZxKpZzTkBBdRjER2pJe0YJfE+UMdV76YeSZst/iFdPq2eB6UKxcLqHFsH5G98T
beQJ9o2/pedDSJKwLwL5k59fKoMkTZqBLeg1kKdBJSLcNxqMi+GDzLpt+W+ep+A6BtdhCsAhPeuf
Cd2TgaBXi2mr2rFNanMFAzDJ9q0iu8PMNABzvz5v6THxc9nvM/uuLEALRo/HyAk0MoVcu9ElyRz/
IJLtfdX1LHLnFBSGUSgf5qF5qx5jAOmSDrn+EhbTC4Iv8Z8xkXPr0BKxWlf30OLveDKchaw162rL
eROstShZoffBm72PbW5D25lv0FzotSucbjV5/dzwX0wCwnzZJsvdrZDTtID2KGqvdeYgRjzKZmbf
UWaGOk28TzXRo5Yyeqmy46TvattjP7QJczqREixFWA8/TpeHpauo/re8dTXtjwt0ScTNEMhb6sKu
CoALIv01Kp+9aomnjTwgIlPqvY07W8hOff9FGmZKEjw4L2DqoytA0NNAgjvpFLpllTPm4v1a9/jI
IGDPGbvrWeMwGNkEgZRbcyCAvohgGko46/CcKVH+6aGgKqYSZx2zXKfr/yWbu2N9HSsbcIi4eyrv
lGaW1klzNfQhw4j0rz9Pzp2CERZQCsA/+eoBk0NQyEyP7sMWdamjG56Fzz2lyGd08EiF/BetJbm3
Il2ZGUV9O74EC4EvuzUYrzOSRnqkr0LD+q4MhmKQjsp8CJAeqHNATJqQdwAuPLDF33KSOUGUoN67
yGo+YDljJiZZtyRSYj8JsLk0byt6fybcV5KF/frzhgpdsXTeAg2kDBspVN+Nuj/q2kkuEOF72zg3
SuTPVfxe2b3lHO3204u+g2DH9zz2nQ3bANL9ZkV6dTqwXYwL9x7eZNMK3gqxaDF9nsRFL2er7hT1
dCdiM/MRNyVzndG7N6m/CJaI3pgSZtZWyebZBfyDtlLIeLmm9iPUWpb1cArird6adhSIBQLIOfHg
do2DyIyUd8o6kQWkSDBe7OmoyuRMR8lUq/iMVqbzxj7ip7DFenjnSldwiDqlNnv50sB6iAvi2xur
rTC4v4/1X8npPoVWJkMv6kVsDdBJADPZMne+KeJf0qS9zGCQ9xLMPgz7PR9Fqi4pYYlte3l5mU0V
3eo7LQc4pOh3Nd/f6qyNDq+zmEgAsvIZZ1Leba1AJzhjbvj2HwCRw+I0zW2U4FIWhCFvtfc7NOX8
imlDeWtwt/x/dVSJkGdVPkGJm079jtbueB2ugCDD1LEVjT6K4nXZwzmy0deRY1TzMlBgZ9WFF2+V
b7On0ndU570g3arg8rDN0yhSJ0NMA12Gn5voYzEHIR0SDoKlkHpbiY1AFDM+N1HPES8wnOzjpbl2
EvqcwhTxjNhuRoFe2oJxIz5LJVdDp48/G8Do4ICigfaIiLKQ9KsDG2r8ZQWgU18oqgJb8KjgX5Q6
BGzYUEV7BvvnXuJ4T4FXfQGDsNBhFB+rrN1XhOd8DmMpQE8bfN3kdQCWu39e3wbO4X9/fdWHru8U
fFaEWTcz4zYTkqOw28wUJc7S0KuVlAZeyPRTCWOI9OIi4/6JUkRHphIfyadKtKhc4o8xsGgiHpfa
xLZRTRpFJm1sJpJ+Jh4wLKrUFg0CShZyz0qJ0wYeuyArdEroZmOPEWUJmu0EJ7Cf2SBLg79t3TMe
MdO63tCb22Tx/LfZeppxGfItCNfwAKhgVWiQsfXcvDZ81pA71kDeBdtl85m23J/FvOASJRcOrldI
vkymdcTnea9NCV+Zrj2OnR8lYEMouAglz7yM8+zJK+E72/sGY8CRjYzjuRP+7XPZ8UUOgJqkxe6P
ey2xU5pz7rdnFdVhus20NeIJZwz0w5ORIfAEVCapiJegqksgbgDABPvM3vvcrg8OmE5UI3RF57FX
4ykIq1wDPqW7SDGh1VC8iUQVAu6r6eHLNsGXH7viosGBTUsK6ZY231syM11imRTgUgG0D5nLB3v2
oa8feJdZ442gCNLKwOwhdZSvZ901r1GvgZRkh7fyZzmAA/2zZIMR0/XQzG0rxQDTHJFtg9XL5/0l
JiCy8QsGw5/pW1LFH+ZUbTK6CGeFqZ4SOn5xZlD0OFgDg6dlVi9ohWUIUWenrme1QoLUyvhNR9k0
YFftn3wEAiuRoSdCMTmbrylzR9S05+IOd9OvYJwyFk55n3jhmBho+tuHl7K5DCIerkhaaXo2sza+
/jnMW0WMsr9vAkBhVk7OVCoP+ry5bW2+Ve6yzHhwN000GcrDh3rum9PGLW1zXouoO6LS2mLLadS0
m9JANH52KfrXfq31Rls50hOmqEtlYIsDbl9irawMlPRSDcy7vcVGMlqzGB3847WxMCjkUdE1gDnM
jDHVO/njUkWeEHxvS8Wh/e+SJgItQx94jVOeXgaTMaFAV6ucnPUgacYpiwIQq9LmTZGkVak9UwtA
t2l2RSeN09V20TarsFtCzyPB+0/dSKl7p4bkwCJF8OvrQFcwoMpN+pzyWXl1RbtwGR6QC+b5WRuz
gLM3BU2i/obnVdFrjdNIAcQCyWz9roU4uLF1Ci9qlXXM4C3NmcoiHGqttHXptHl2nRJvkql5Ax9/
J1mUSrYPNkbuasr0c4xu5OlCUFJSDz9S7nHp+aYNPzeDOCFkuvw1pzpNcUdTcz8RYLde+KRMP2dK
2RYBLB4JUfqgdfnWcC0gKi6BIOfEquQlfYzVnZsq+ez/Fg538L/T3t+4jG87kaOPrOaq9Q3LJmVV
OnjiJ3j+w+WnYGOIRFR5IsfCsZ87XYyCIR47bOgkJnLzr2VoUV8Xyp3plAYCAKyxEHbsFUQtaMSu
VIXxdBOtv/n8J+e+2WlKXpltFbTLSJdsvWfoKswvcvZjtKYDmb2h8XCbw1HSUbQbKCS2welMnnD/
uafoW3m6UYJR3x2UEpq0D//xAdiQHnwLxwFxO9Pxl3wxlL7Us2ZRZK8V9cDlI15L3mTW5hmoOjzz
WBGvFojEBWsUJXMI4hNyiMsISYkgRgCQINkf8P2ziepGDXeXdB9vb9KPFN+q5WizuDJB1enBZAW8
YiUDtVraNhp66JFtaFJwSzFC/OkvAPg7E9clIy3oHG/lED+F+sKt6GPWWsMuikXc1mzQNwkM9bS5
ciBEi8ywt3/U5iJzKS4PfWV3FFCeYPVJvHcK65aA9jfxX9SiwkSsBdMnEDZZ3etgsSCXJ8QmJ53q
y5Qpr4YeWKQu7ilLBcfhVoKpvZA6LjrMGRgwut9Ux9bTdmiv+ZWELhAe8us/iyjdM+7vUPlbVR8c
+RnSYAFTzDNG/zUC0qkN8USP5DUpJ0aDfMHYOy7jDW3E5wheZb7qXwwNiDlIaFV9aH2BKr1XX2Tt
AMKdYREtUvBdmFguPv9EzdSHC7G9sTUvOAHa9PR4eO2GLwm6Rm4lBoTVF+h+/1GDnsjljsgEGlAy
6vZJXMhYRwghc3e05H2DdTXM/BQ6zJIC3W2GFjd5erw3NvVWiFuIwAN1QY0IfRG1PboQCs2hydNl
RMGpPzXXPUA3eqVdmEhstNzlSmr+p60nSvyIXhYxS228IjTP9Ce2QfmAnbsqt1YOm5+NvZR6oclQ
QQ8jq+zGPG68FDF/jloHajuvUvBXUOtbP/NmycwdT8PNDbXV53VVZW4h5N4bC7RjnDmkXQLcxdtX
MRlCw9WjpyoLTPbKIIEwIIgZLG07NFdw7QcNDaPqSN/xvfQDFVwnV4cdOwcWGkENf9S39Rr7tIUp
ZbJABoKWF3MK0gDQElKQBLYHRusE2bo52Hs6piqQkoF1xxMn9nRtg7KzoPHb1+vmex3VPs7DjkDL
rqTMClMR+dF4292AEEjnI4IH4YpMQyvN45VQh7aNATHiCdISzwsduru4OuaxU8+u/8l44EjcW0fV
2yQr5Z35vzEQt8/fdRihCkUpa3sBvT1sDt5awMbORmKKDkSd5dCVp7AqbpfARgwhkPEYJIcK4FOJ
+1/yXTmmY5unJ2XOjskw1UE9nU8Pxmsg4qNiL5iO0JuIMPPq/dYITO2MtJ5iwxzh+qeuYgdoehC4
EipitJ5Wbao/5VUAlUKgJ3pcxScXAUjdMvXHvhrc79Yfk/KgfE8Udp8X3peoI8IHIK3VtESFD7gt
9J3reY0+hpi5WzHGedxmgREbXZOzW4z0vV3DBKV3PaObNZ+Dvelb/z28Knof4qElFfSJME7PSDby
qtG/W8u7qsebnfxS6AB0RwW2EoxottLbtIqELAcbUkwSLMVQPaYlNY34sw7PMjXCxhOcdNq4nvmP
McfUuCDOiEVJu9ezjwOkFzFh+t/LPV+2mvxmIswwpN9fOnBzdg4YE0PIj4qrXi/EVz2HCcZbr8SA
xk5AgrUKMdunnnZ3u5Fn/PU/HcYmWDD/s+SLgRYJn0VyTk/rqhqTSrVK6sPLUI6G7NUmrv4zK+lW
KGdrQNX1b4Rt46u1eTh+FMLB8DYEXoFXecu7qhxi13GjA5GXaH2J0rWubjl0X+7S2daSoSp1TC5j
NMU7DZv/iqYS4ovPDgDJaw8AAlAbtGIRbvUgdI0aXwSt7l29oC7vDmbPT3Y3F3UAcbXDvPVW6Pj1
y8r6wqx7ZVQOhFF+pD/rUcD8JxQnQkELPkyLixxdLRTDsa9hc4leumyNCHjqRwy3lqj/Np4+KNOK
jzf51SO37y6NPSh65J3lzOMsqdtwz8n8fTqfnqf3r9fkF3qM3/Pfq2Jkrx3yIu5D7Ts6B+4LMYpb
yigs27W8ac+DebIKSLyeFzCGKfbk/nwIkacimGSYKmAzmQE1qZY2H39ipA+Av++nOa/0NVbW+F4+
kc+kVAVndEBwBK9ZP0nHvDiG4avNjZrmTkWAUh+FlEpzp/KK+ynoBsb945faOUuVYgu8fmQ1ghUg
8SADVXWMs14YLTs8xUckNDgq52kbdZs0Cvl/On5G6bYisO4i07h6B37r1QIyTcseBqN6xTa1ekuY
+xHSId84tjVM6sZKJhkBIc2e+FR4U7+dNd8kyTgWGx2XvEswXUXSUaiOD8NU5ttHlDEBMcN8HNYR
Lq2410gYmaQ+8E1ihDnoKjfZ0pkB4R7Q+mzn+Nyj3SAPcHlSSWTkb1O/sIrUpYuxhJfir8ONtNwZ
QIpEOuqJa3sILxdlZ/DVGjfoodCgxaYOslXh5PEI/wKJp5pGsR4f1ILvSpXP/N5YNrEzHqyRoydv
tiQJY+Iu26S5jjPp7md28YqJWAZbDI6/FFwQMcV7PsiL1Xzs0mFltjuwnf8+/iHSTMNRuCiv4wlD
EZBqTZf5HxoefJrXh499AYjxy33Fd6jrJtI/ZbmymntMKX6hURaXZnBDMyj0k3MAvXkjZosH/Ql8
7DYdM1C2YLSTuzJvsN2Ou92/upGC/kl/5KNd3WXQTBgns5hOs9EbxRNy9LA8zthazoA8LFyvHzS0
7nS2nOEmZrRKgBRKTgjwarjxHnJgwe/M3sDXg3ZDaIGELd6QgzIwBeePZeCrWe/qEKUckXPzEvFZ
rt3jtJ5QxVIIbslEMAHmLhPwsVor5NBj2hWuuS4ArE4SyXnYDE0rBsDLIEYSLeQ4pbMi8wohRw5V
3zpFWFmPofhJOBDXcE4HnpAaXeR6GZvqMfEl4Rd9XwT3XCOE4HCzPo3OtIwXcjE17QcnmU9bbW8b
SFsakWviSNwqcUaIRdhpvogl0eRBl07eXx+EMcQ8z39DNp+b1RV7/E6/6NUxVMo57k5xZcfd+CsW
ByH580Q9r7G46QZt5c4XJXOmWH5LEhjThoGX6JJfz/jiAwQ9PBf60/l0w6v4r/zpC40QnU64p/4g
DO4mjO4DGKhjHQjMoHO0WrazflKlT4cgsnfz7J5Z5oqYN4nSlNgFDyGh4Ai5dN6YeUkMYTbJS20G
/Jc2BpIfFf8Lyqwo1MaHrjJcW/m7MNQZurIP7zf99eBD+lXwyGr8UH7rP67GL0qdRdKqiUdPxWBR
XSCeZK3fDEXEyteesZnus/vmoXKwilHUnVK44FytvHSvDzKk085jpOaDWx5fqPyzdZo984mPTnrB
MCj5CHAZG2YmdRntKuEcQpr85tDHsgdHMs96wQozBfcPAa2/bXRbitXJUsAqIYAKeKEJ+ISmYUD6
0lmyYjkWemCf23aXpTKJUy5zcGXyRFTZApLC5ON/E94yJzj56+iyiqVAidDO1s1RnvAyZSkpHe6a
LZtc+fyWLKmkYw+KX5xnm49YS0YscNMbBXLZvWqqDAamvoejzCTOdpcFZ26EmtsUGK9K2eQoOVBz
jiMHNUlIWgLPMSKDwmVWrIjadh3HUlgHjj/G9+p+iSSUd+zZY1fMww8Nl1Cp3nR/hfN/SdNJ5/Fy
/P9J6KNScIfcz7FBYvT+TvG31rtnIxSY2FbZmFw2TOU9u+QoP7IFxU4y5c+r8MwtQkejej6ghVed
o5PvUBh7FaCeoyeD73OuWhGJ3G3qv2r5x2ykCWkLZxn3n/W+6sRwiIjpNU7b4dRCSMAwPcN7IkqM
4TdNuHs3X1H/OvWrJqvOYhVIy6sv1OqdZNE9OST4KYnTlRLiI4V0mLucreVK0yROHLjJTlhrkhEO
9q/+cFRJ1uI3ybJ34wl0pAoD0jDpUCvqTCx5bhFOoP4LphirBcHNku9h/S0D2q+Di3xa0fkLpl3Z
eYQaZ0eTPy6o0pNpUPDop4HpS6E5c22byNFu8zBV8KwSgZLpYKI4MxtZCcDJ9hUsB+ejNWT+CfkS
zkK+bAS8oNhE5307mwr+0Hh8yXI3L8V9qZCBja0mgw908MZ/Dp0+YA1IIt3iAkyH8doTAyTfvH25
1BnjonpinYsbjInAgPIqCHkeuoZ/XBT+2SJg1Jdj+ZpNsXqnK82XMbrRE4lzT1ur4kjZTlDG5Doz
By42cZIZMTd7bPwXjuDOdZ4K+mdWDcfEwylt4PcBMDEgJtKoUsrSeHGnlz3EUBn6cEr1W34kQKxh
esuA745ZOEl/lsfsBXeuu26/rkEHmKqeUhZNxN3RNOXhim7L20wT2Mac5MKWFvFijm/UwNE33W/4
rpjeFnXsvO8U0BB9jdEQFtzy6bdjAoG6upehV4o/ddgO+W1OmDQeCAreTtl6gnsT25TMDmSYHFyc
L5+I5zDkT/RSlPDCYgToNr+4FRaycgDgMDhHzpc04zgQ6KRCFJ2mwhwiS4k/3OXI0I7JvvXrTHie
FgFTbpRi8gKG0p8FjdijFmPLFpNF9op97lTOXrxNZ3eJieBO9GiyIJAwMV4wgFmIf9alCNlAHD5e
tKp64YgSA0QvcSpCuFnCs9V8F0LluLPXBYvFtjFFtiBTE+dEjANasbnpacVmqGdveCahFnaMdLBC
JmWjZY24WgPTVJ5w6OGbE6YRGI+6JM7pNjCj5A4uWODbYmFYJD9Nw8nahB0sQqUUQezItvvLG7Ht
YvAi94aA65OvUBA+OoJYY0G/0a19XRg68b5LfC6ddxKfaJKhduPc97dFIIAtztu4j8JJV1UX0Bl2
XM5D6+fLkbytyiqmTDyFZUPTBUNHWDuBynwe9yl/OCheSa4/MA8LzRDoyINay9epk34drfaKz2CN
Ig7lG3izYbZnyLyI/ZlJ229DUYDz5scuVVtMpDCeVQ77DkLpXvTaFHH8uCosvTZn2vvd8U0dHIrm
H/+WQiJGyN3+NZ8m/RcN7c7q+486X+n5qPZMmhIC2SIgrkUlkw==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_qspi_look_up_logic is
  port (
    qspo : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \receive_Data_int1__0\ : out STD_LOGIC;
    \SPIXfer_done_int130_out__0\ : out STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_reg\ : out STD_LOGIC;
    \SPIXfer_done_int132_out__0\ : out STD_LOGIC;
    \qspo_int_reg[0]\ : out STD_LOGIC;
    SPISR_0_CMD_Error_int : out STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[7]\ : out STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[6]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Serial_Dout_018_in : out STD_LOGIC;
    \mode_1__3\ : out STD_LOGIC;
    \mode_0__0\ : out STD_LOGIC;
    \qspo_int_reg[8]\ : out STD_LOGIC;
    \IO2_T_control__3\ : out STD_LOGIC;
    \FSM_sequential_qspi_cntrl_ps_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_qspi_cntrl_ps_reg[1]_0\ : out STD_LOGIC;
    \qspo_int_reg[3]\ : out STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    Rst_to_spi : in STD_LOGIC;
    R : in STD_LOGIC;
    CE : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d10\ : in STD_LOGIC;
    \QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_d10\ : in STD_LOGIC;
    io2_i_sync : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io3_i_sync : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_reg_0\ : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_reg_1\ : in STD_LOGIC;
    io2_o : in STD_LOGIC;
    SPIXfer_done_int_pulse : in STD_LOGIC;
    QSPI_IO1_T : in STD_LOGIC_VECTOR ( 2 downto 0 );
    empty : in STD_LOGIC;
    io1_i_sync : in STD_LOGIC;
    io0_i_sync : in STD_LOGIC;
    \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sck_d3 : in STD_LOGIC;
    \stop_clock134_out__3\ : in STD_LOGIC;
    \stop_clock1__3\ : in STD_LOGIC;
    QSPI_IO1_T_0 : in STD_LOGIC;
    \master_tri_state_en_control1__0\ : in STD_LOGIC;
    SPIXfer_done_int : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_qspi_look_up_logic : entity is "qspi_look_up_logic";
end axi_quad_spi_0_qspi_look_up_logic;

architecture STRUCTURE of axi_quad_spi_0_qspi_look_up_logic is
  signal \LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.CMD_decoded_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\ : STD_LOGIC;
  signal QSPI_IO1_T_i_3_n_0 : STD_LOGIC;
  signal QSPI_IO1_T_i_4_n_0 : STD_LOGIC;
  signal \QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_d1\ : STD_LOGIC;
  signal \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_op\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_3_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_6_n_0\ : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_7_n_0\ : STD_LOGIC;
  signal \^spixfer_done_int130_out__0\ : STD_LOGIC;
  signal \^spixfer_done_int132_out__0\ : STD_LOGIC;
  signal \^serial_dout_018_in\ : STD_LOGIC;
  signal \^mode_0__0\ : STD_LOGIC;
  signal \^mode_1__3\ : STD_LOGIC;
  signal \^qspo\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^qspo_int_reg[8]\ : STD_LOGIC;
  signal \^receive_data_int1__0\ : STD_LOGIC;
  signal \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I_dpo_UNCONNECTED\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I_qdpo_UNCONNECTED\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I_qspo_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I_spo_UNCONNECTED\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_qspi_cntrl_ps[2]_i_3\ : label is "soft_lutpair55";
  attribute box_type : string;
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[0].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[1].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[2].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[3].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[4].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[5].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[6].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[7].TXFIFO_FIRST_ENTRY_REG_I\ : label is "PRIMITIVE";
  attribute C_FAMILY : string;
  attribute C_FAMILY of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is "soft";
  attribute c_addr_width : integer;
  attribute c_addr_width of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 8;
  attribute c_default_data : string;
  attribute c_default_data of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is "0";
  attribute c_depth : integer;
  attribute c_depth of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 256;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 1;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 1;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 1;
  attribute c_has_spo : integer;
  attribute c_has_spo of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is "mode_2_memory_3_sp.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 1;
  attribute c_width : integer;
  attribute c_width of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is 12;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\ : label is "true";
  attribute SOFT_HLUTNM of \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_6\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_4\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_5\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of transfer_start_i_2 : label is "soft_lutpair55";
begin
  \SPIXfer_done_int130_out__0\ <= \^spixfer_done_int130_out__0\;
  \SPIXfer_done_int132_out__0\ <= \^spixfer_done_int132_out__0\;
  Serial_Dout_018_in <= \^serial_dout_018_in\;
  \mode_0__0\ <= \^mode_0__0\;
  \mode_1__3\ <= \^mode_1__3\;
  qspo(4 downto 0) <= \^qspo\(4 downto 0);
  \qspo_int_reg[8]\ <= \^qspo_int_reg[8]\;
  \receive_Data_int1__0\ <= \^receive_data_int1__0\;
\FSM_sequential_qspi_cntrl_ps[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF440F440F440F44"
    )
        port map (
      I0 => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_op\(0),
      I1 => \LOGIC_FOR_MD_12_GEN.CMD_decoded_int\,
      I2 => SPIXfer_done_int_pulse,
      I3 => QSPI_IO1_T(0),
      I4 => empty,
      I5 => \^qspo\(0),
      O => \qspo_int_reg[0]\
    );
\FSM_sequential_qspi_cntrl_ps[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^qspo\(3),
      I1 => empty,
      I2 => QSPI_IO1_T(0),
      O => \^qspo_int_reg[8]\
    );
\LOGIC_GENERATION_FDR.CMD_ERR_S2AX_1_CDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LOGIC_FOR_MD_12_GEN.CMD_decoded_int\,
      I1 => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_op\(0),
      O => SPISR_0_CMD_Error_int
    );
QSPI_IO0_T_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0000002A080808"
    )
        port map (
      I0 => QSPI_IO1_T(1),
      I1 => QSPI_IO1_T_0,
      I2 => \^qspo\(4),
      I3 => \LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int\,
      I4 => \LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int\,
      I5 => \^qspo_int_reg[8]\,
      O => \FSM_sequential_qspi_cntrl_ps_reg[1]_0\
    );
QSPI_IO1_T_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7D7D7F7FFDFDFFF"
    )
        port map (
      I0 => \master_tri_state_en_control1__0\,
      I1 => QSPI_IO1_T(1),
      I2 => QSPI_IO1_T(2),
      I3 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      I4 => \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\,
      I5 => QSPI_IO1_T_i_3_n_0,
      O => \FSM_sequential_qspi_cntrl_ps_reg[1]\
    );
QSPI_IO1_T_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEAAFFFF14000000"
    )
        port map (
      I0 => \^qspo_int_reg[8]\,
      I1 => \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\,
      I2 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      I3 => \^qspo\(4),
      I4 => QSPI_IO1_T_0,
      I5 => QSPI_IO1_T_i_4_n_0,
      O => QSPI_IO1_T_i_3_n_0
    );
QSPI_IO1_T_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int\,
      I1 => \LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int\,
      O => QSPI_IO1_T_i_4_n_0
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_d10\,
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_d1\,
      R => Rst_to_spi
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_d1\,
      Q => \LOGIC_FOR_MD_12_GEN.CMD_decoded_int\,
      R => Rst_to_spi
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d10\,
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d1\,
      R => Rst_to_spi
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[0].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(7),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(0),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[1].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(6),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(1),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[2].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(5),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(2),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[3].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(4),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(3),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[4].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(3),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(4),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[5].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(2),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(5),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[6].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(1),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(6),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.TXFIFO_ADDR_BITS_GENERATE[7].TXFIFO_FIRST_ENTRY_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => CE,
      D => dout(0),
      Q => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(7),
      R => R
    );
\QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I\: entity work.axi_quad_spi_0_dist_mem_gen_v8_0_13
     port map (
      a(7) => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(0),
      a(6) => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(1),
      a(5) => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(2),
      a(4) => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(3),
      a(3) => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(4),
      a(2) => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(5),
      a(1) => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(6),
      a(0) => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_address\(7),
      clk => ext_spi_clk,
      d(11 downto 0) => B"000000000000",
      dpo(11 downto 0) => \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I_dpo_UNCONNECTED\(11 downto 0),
      dpra(7 downto 0) => B"00000000",
      i_ce => '1',
      qdpo(11 downto 0) => \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I_qdpo_UNCONNECTED\(11 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(11) => \^qspo\(4),
      qspo(10) => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      qspo(9) => \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\,
      qspo(8 downto 7) => \^qspo\(3 downto 2),
      qspo(6) => \LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int\,
      qspo(5) => \LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int\,
      qspo(4 downto 3) => \^qspo\(1 downto 0),
      qspo(2 downto 1) => \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I_qspo_UNCONNECTED\(2 downto 1),
      qspo(0) => \QSPI_LOOK_UP_MODE_2_MEMORY_3.Look_up_op\(0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => Rst_to_spi,
      spo(11 downto 0) => \NLW_QSPI_LOOK_UP_MODE_2_MEMORY_3.dist_mem_gen_QSPI_LOOK_UP_MODE_2_MEMORY_3.C_SPI_MODE_1_MIXED_ROM_I_spo_UNCONNECTED\(11 downto 0),
      we => '0'
    );
\QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      I1 => QSPI_IO1_T(2),
      I2 => QSPI_IO1_T(1),
      I3 => \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_3_n_0\,
      O => \IO2_T_control__3\
    );
\QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DC8C8C8C"
    )
        port map (
      I0 => \^qspo_int_reg[8]\,
      I1 => \LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int\,
      I2 => QSPI_IO1_T_0,
      I3 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      I4 => \^qspo\(4),
      O => \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_i_3_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^mode_1__3\,
      I1 => \^mode_0__0\,
      O => \^serial_dout_018_in\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000005FF333305FF"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_6_n_0\,
      I1 => \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_7_n_0\,
      I3 => QSPI_IO1_T(1),
      I4 => QSPI_IO1_T(2),
      I5 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      O => \^receive_data_int1__0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mode_1__3\,
      I1 => \^mode_0__0\,
      O => \^spixfer_done_int132_out__0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A00CCCC0A00"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_6_n_0\,
      I1 => \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_7_n_0\,
      I3 => QSPI_IO1_T(1),
      I4 => QSPI_IO1_T(2),
      I5 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      O => \^spixfer_done_int130_out__0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCDDDCCC8C888CCC"
    )
        port map (
      I0 => \^qspo_int_reg[8]\,
      I1 => \LOGIC_FOR_MD_12_GEN.Addr_Mode_0_int\,
      I2 => \^qspo\(4),
      I3 => \stop_clock134_out__3\,
      I4 => \stop_clock1__3\,
      I5 => \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_6_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCDDDCCC8C888CCC"
    )
        port map (
      I0 => \^qspo_int_reg[8]\,
      I1 => \LOGIC_FOR_MD_12_GEN.Addr_Mode_1_int\,
      I2 => \^qspo\(4),
      I3 => \stop_clock134_out__3\,
      I4 => \stop_clock1__3\,
      I5 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_7_n_0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF10000000"
    )
        port map (
      I0 => \^receive_data_int1__0\,
      I1 => \^spixfer_done_int130_out__0\,
      I2 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_reg_0\,
      I3 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_reg_1\,
      I4 => \^spixfer_done_int132_out__0\,
      I5 => io2_o,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_reg\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \LOGIC_FOR_MD_12_GEN.Data_Mode_0_int\,
      I1 => QSPI_IO1_T(2),
      I2 => QSPI_IO1_T(1),
      I3 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_6_n_0\,
      O => \^mode_0__0\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_3_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \LOGIC_FOR_MD_12_GEN.Data_Mode_1_int\,
      I1 => QSPI_IO1_T(2),
      I2 => QSPI_IO1_T(1),
      I3 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_1_i_7_n_0\,
      O => \^mode_1__3\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[4]\(1),
      I1 => io3_i_sync,
      I2 => \^receive_data_int1__0\,
      I3 => \^spixfer_done_int130_out__0\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[6]\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[4]\(0),
      I1 => io2_i_sync,
      I2 => \^receive_data_int1__0\,
      I3 => \^spixfer_done_int130_out__0\,
      O => \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[7]\
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^qspo\(4),
      I1 => sck_d3,
      I2 => \^serial_dout_018_in\,
      O => E(0)
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBA5410"
    )
        port map (
      I0 => \^receive_data_int1__0\,
      I1 => \^spixfer_done_int130_out__0\,
      I2 => io3_i_sync,
      I3 => Q(1),
      I4 => Q(2),
      O => D(2)
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBA5410"
    )
        port map (
      I0 => \^receive_data_int1__0\,
      I1 => \^spixfer_done_int130_out__0\,
      I2 => io2_i_sync,
      I3 => Q(0),
      I4 => Q(1),
      O => D(1)
    );
\RATIO_OF_2_GENERATE.rx_shft_reg_mode_0011[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => io1_i_sync,
      I1 => \^receive_data_int1__0\,
      I2 => io0_i_sync,
      O => D(0)
    );
transfer_start_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^qspo\(0),
      I1 => SPIXfer_done_int,
      I2 => \^qspo\(3),
      I3 => empty,
      O => \qspo_int_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_xpm_fifo_async is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of axi_quad_spi_0_xpm_fifo_async : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of axi_quad_spi_0_xpm_fifo_async : entity is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of axi_quad_spi_0_xpm_fifo_async : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of axi_quad_spi_0_xpm_fifo_async : entity is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of axi_quad_spi_0_xpm_fifo_async : entity is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of axi_quad_spi_0_xpm_fifo_async : entity is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of axi_quad_spi_0_xpm_fifo_async : entity is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of axi_quad_spi_0_xpm_fifo_async : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of axi_quad_spi_0_xpm_fifo_async : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_xpm_fifo_async : entity is "xpm_fifo_async";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of axi_quad_spi_0_xpm_fifo_async : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of axi_quad_spi_0_xpm_fifo_async : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of axi_quad_spi_0_xpm_fifo_async : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of axi_quad_spi_0_xpm_fifo_async : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of axi_quad_spi_0_xpm_fifo_async : entity is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of axi_quad_spi_0_xpm_fifo_async : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of axi_quad_spi_0_xpm_fifo_async : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of axi_quad_spi_0_xpm_fifo_async : entity is 5;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of axi_quad_spi_0_xpm_fifo_async : entity is 8;
  attribute READ_MODE : string;
  attribute READ_MODE of axi_quad_spi_0_xpm_fifo_async : entity is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of axi_quad_spi_0_xpm_fifo_async : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of axi_quad_spi_0_xpm_fifo_async : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of axi_quad_spi_0_xpm_fifo_async : entity is "1f1f";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of axi_quad_spi_0_xpm_fifo_async : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of axi_quad_spi_0_xpm_fifo_async : entity is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of axi_quad_spi_0_xpm_fifo_async : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of axi_quad_spi_0_xpm_fifo_async : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of axi_quad_spi_0_xpm_fifo_async : entity is "true";
end axi_quad_spi_0_xpm_fifo_async;

architecture STRUCTURE of axi_quad_spi_0_xpm_fifo_async is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  attribute CASCADE_HEIGHT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute DOUT_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16;
  attribute FIFO_READ_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 128;
  attribute FIFO_WRITE_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16;
  attribute FULL_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute PROG_EMPTY_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PROG_FULL_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute RD_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute READ_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RELATED_CLOCKS of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute USE_ADV_FEATURES of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1f1f";
  attribute VERSION : integer;
  attribute VERSION of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WRITE_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute WR_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute XPM_MODULE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute invalid : integer;
  attribute invalid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
begin
  dbiterr <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gnuram_async_fifo.xpm_fifo_base_inst\: entity work.axi_quad_spi_0_xpm_fifo_base
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      data_valid => data_valid,
      dbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      full_n => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => overflow,
      prog_empty => prog_empty,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_data_count(4 downto 0) => rd_data_count(4 downto 0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      sbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\,
      sleep => sleep,
      underflow => underflow,
      wr_ack => wr_ack,
      wr_clk => wr_clk,
      wr_data_count(4 downto 0) => wr_data_count(4 downto 0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_quad_spi_0_xpm_fifo_async__parameterized1\ is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is "xpm_fifo_async";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 5;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 8;
  attribute READ_MODE : string;
  attribute READ_MODE of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ : entity is "true";
end \axi_quad_spi_0_xpm_fifo_async__parameterized1\;

architecture STRUCTURE of \axi_quad_spi_0_xpm_fifo_async__parameterized1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  attribute CASCADE_HEIGHT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute DOUT_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16;
  attribute FIFO_READ_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 128;
  attribute FIFO_WRITE_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16;
  attribute FULL_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute PROG_EMPTY_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PROG_FULL_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute RD_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute READ_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RELATED_CLOCKS of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute USE_ADV_FEATURES of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WRITE_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute WR_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute XPM_MODULE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute invalid : integer;
  attribute invalid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
begin
  dbiterr <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gnuram_async_fifo.xpm_fifo_base_inst\: entity work.\axi_quad_spi_0_xpm_fifo_base__parameterized0\
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      data_valid => data_valid,
      dbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      full_n => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => overflow,
      prog_empty => prog_empty,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_data_count(4 downto 0) => rd_data_count(4 downto 0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      sbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\,
      sleep => sleep,
      underflow => underflow,
      wr_ack => wr_ack,
      wr_clk => wr_clk,
      wr_data_count(4 downto 0) => wr_data_count(4 downto 0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_async_fifo_fg is
  port (
    almost_full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[0]\ : out STD_LOGIC;
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\ : out STD_LOGIC;
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ : in STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \s_axi4_rdata_i_reg[3]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axi4_rdata_i_reg[1]\ : in STD_LOGIC;
    rd_data_count : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axi4_rdata_i_reg[2]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[3]_1\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[1]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi4_rdata_i_reg[2]_0\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[2]_1\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \s_axi4_rdata_i_reg[3]_2\ : in STD_LOGIC;
    p_2_in : in STD_LOGIC;
    \SPIXfer_done_int130_out__0\ : in STD_LOGIC;
    \receive_Data_int1__0\ : in STD_LOGIC;
    \Shift_Reg1__0\ : in STD_LOGIC;
    io1_i_sync : in STD_LOGIC;
    io0_i_sync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_async_fifo_fg : entity is "async_fifo_fg";
end axi_quad_spi_0_async_fifo_fg;

architecture STRUCTURE of axi_quad_spi_0_async_fifo_fg is
  signal \FIFO_EXISTS.Tx_FIFO_occ_Reversed\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^dout\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal full : STD_LOGIC;
  signal \s_axi4_rdata_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[3]_i_4_n_0\ : STD_LOGIC;
  signal wr_rst_busy : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_10\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_21\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_22\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_23\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_24\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_25\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_28\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_29\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[0]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[2]_i_5\ : label is "soft_lutpair49";
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 5;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 8;
  attribute READ_MODE : string;
  attribute READ_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "TRUE";
begin
  dout(7 downto 0) <= \^dout\(7 downto 0);
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \SPIXfer_done_int130_out__0\,
      I1 => \^dout\(4),
      I2 => \^dout\(6),
      I3 => \receive_Data_int1__0\,
      I4 => \^dout\(7),
      O => \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\
    );
\RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^dout\(0),
      I1 => \Shift_Reg1__0\,
      I2 => io1_i_sync,
      I3 => \receive_Data_int1__0\,
      I4 => io0_i_sync,
      O => \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\(0)
    );
\s_axi4_rdata_i[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => rd_data_count(0),
      I1 => \s_axi4_rdata_i_reg[1]\,
      I2 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(0),
      I3 => \s_axi4_rdata_i[3]_i_3_n_0\,
      O => \grdc.rd_data_count_i_reg[0]\
    );
\s_axi4_rdata_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4F4F4F4FFF4"
    )
        port map (
      I0 => \s_axi4_rdata_i_reg[3]\,
      I1 => \s_axi4_rdata_i_reg[3]_0\(0),
      I2 => \s_axi4_rdata_i[1]_i_2_n_0\,
      I3 => \s_axi4_rdata_i_reg[1]\,
      I4 => rd_data_count(1),
      I5 => rd_data_count(0),
      O => D(0)
    );
\s_axi4_rdata_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF90FF90FFFFFF90"
    )
        port map (
      I0 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(0),
      I1 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(1),
      I2 => \s_axi4_rdata_i[3]_i_3_n_0\,
      I3 => \s_axi4_rdata_i_reg[1]_0\,
      I4 => Q(0),
      I5 => \s_axi4_rdata_i_reg[2]_0\,
      O => \s_axi4_rdata_i[1]_i_2_n_0\
    );
\s_axi4_rdata_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4F4F4F4FFF4"
    )
        port map (
      I0 => \s_axi4_rdata_i_reg[3]\,
      I1 => \s_axi4_rdata_i_reg[3]_0\(1),
      I2 => \s_axi4_rdata_i[2]_i_2_n_0\,
      I3 => \s_axi4_rdata_i_reg[1]\,
      I4 => \s_axi4_rdata_i_reg[2]\,
      I5 => rd_data_count(2),
      O => D(1)
    );
\s_axi4_rdata_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF9090FF90"
    )
        port map (
      I0 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(2),
      I1 => \s_axi4_rdata_i[2]_i_5_n_0\,
      I2 => \s_axi4_rdata_i[3]_i_3_n_0\,
      I3 => Q(1),
      I4 => \s_axi4_rdata_i_reg[2]_0\,
      I5 => \s_axi4_rdata_i_reg[2]_1\,
      O => \s_axi4_rdata_i[2]_i_2_n_0\
    );
\s_axi4_rdata_i[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(0),
      I1 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(1),
      O => \s_axi4_rdata_i[2]_i_5_n_0\
    );
\s_axi4_rdata_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4F4F4F4FFF4"
    )
        port map (
      I0 => \s_axi4_rdata_i_reg[3]\,
      I1 => \s_axi4_rdata_i_reg[3]_0\(2),
      I2 => \s_axi4_rdata_i_reg[3]_1\,
      I3 => \s_axi4_rdata_i[3]_i_3_n_0\,
      I4 => \s_axi4_rdata_i[3]_i_4_n_0\,
      I5 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(3),
      O => D(2)
    );
\s_axi4_rdata_i[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FE0000000000"
    )
        port map (
      I0 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(3),
      I1 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(4),
      I2 => \s_axi4_rdata_i[3]_i_4_n_0\,
      I3 => Bus_RNW_reg,
      I4 => \s_axi4_rdata_i_reg[3]_2\,
      I5 => p_2_in,
      O => \s_axi4_rdata_i[3]_i_3_n_0\
    );
\s_axi4_rdata_i[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(2),
      I1 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(1),
      I2 => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(0),
      O => \s_axi4_rdata_i[3]_i_4_n_0\
    );
\xpm_fifo_instance.xpm_fifo_async_inst\: entity work.\axi_quad_spi_0_xpm_fifo_async__parameterized1\
     port map (
      almost_empty => \xpm_fifo_instance.xpm_fifo_async_inst_n_28\,
      almost_full => almost_full,
      data_valid => \xpm_fifo_instance.xpm_fifo_async_inst_n_29\,
      dbiterr => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED\,
      din(7 downto 0) => s_axi4_wdata(7 downto 0),
      dout(7 downto 0) => \^dout\(7 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED\,
      prog_empty => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED\,
      prog_full => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED\,
      rd_clk => ext_spi_clk,
      rd_data_count(4) => \xpm_fifo_instance.xpm_fifo_async_inst_n_21\,
      rd_data_count(3) => \xpm_fifo_instance.xpm_fifo_async_inst_n_22\,
      rd_data_count(2) => \xpm_fifo_instance.xpm_fifo_async_inst_n_23\,
      rd_data_count(1) => \xpm_fifo_instance.xpm_fifo_async_inst_n_24\,
      rd_data_count(0) => \xpm_fifo_instance.xpm_fifo_async_inst_n_25\,
      rd_en => rd_en,
      rd_rst_busy => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED\,
      rst => rst,
      sbiterr => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED\,
      sleep => '0',
      underflow => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED\,
      wr_ack => \xpm_fifo_instance.xpm_fifo_async_inst_n_10\,
      wr_clk => s_axi4_aclk,
      wr_data_count(4 downto 0) => \FIFO_EXISTS.Tx_FIFO_occ_Reversed\(4 downto 0),
      wr_en => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_qspi_core_interface is
  port (
    SPISR_0_CMD_Error_to_axi_clk : out STD_LOGIC;
    spisel_d1_reg_to_axi_clk : out STD_LOGIC;
    Tx_FIFO_Empty_SPISR_to_axi_clk : out STD_LOGIC;
    spicr_1_spe_frm_axi_clk : out STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : out STD_LOGIC;
    spicr_3_cpol_frm_axi_clk : out STD_LOGIC;
    spicr_4_cpha_frm_axi_clk : out STD_LOGIC;
    spicr_5_txfifo_rst_frm_axi_clk : out STD_LOGIC;
    spicr_8_tr_inhibit_frm_axi_clk : out STD_LOGIC;
    SPISSR_frm_axi_clk : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    ss_t : out STD_LOGIC;
    receive_ip2bus_error : out STD_LOGIC;
    transmit_ip2bus_error : out STD_LOGIC;
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPISR_1_LOOP_Back_Error_int : out STD_LOGIC;
    SPISR_2_MSB_Error_int : out STD_LOGIC;
    sw_rst_cond_d1 : out STD_LOGIC;
    irpt_wrack_d1 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    p_1_in34_in : out STD_LOGIC;
    p_1_in31_in : out STD_LOGIC;
    p_1_in28_in : out STD_LOGIC;
    p_1_in25_in : out STD_LOGIC;
    p_1_in22_in : out STD_LOGIC;
    p_1_in19_in : out STD_LOGIC;
    p_1_in13_in : out STD_LOGIC;
    p_1_in10_in : out STD_LOGIC;
    p_1_in7_in : out STD_LOGIC;
    p_1_in4_in : out STD_LOGIC;
    p_1_in1_in : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    irpt_rdack_d1 : out STD_LOGIC;
    ip2Bus_WrAck_core_reg_d1 : out STD_LOGIC;
    ip2Bus_WrAck_core_reg : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : out STD_LOGIC;
    ip2Bus_RdAck_core_reg : out STD_LOGIC;
    SPISR_4_CPOL_CPHA_Error_int : out STD_LOGIC;
    \RESET_FLOPS[15].RST_FLOPS\ : out STD_LOGIC;
    io0_o : out STD_LOGIC;
    io1_o : out STD_LOGIC;
    io2_o : out STD_LOGIC;
    io3_o : out STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_fifo_empty_i : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg\ : out STD_LOGIC;
    intr2bus_wrack_reg : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_reg_0 : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[13]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \grdc.rd_data_count_i_reg[0]\ : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ : in STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 13 downto 0 );
    bus2ip_wrce_int : in STD_LOGIC_VECTOR ( 0 to 0 );
    Transmit_ip2bus_error0 : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\ : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    sw_rst_cond : in STD_LOGIC;
    reset_trig0 : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ : in STD_LOGIC;
    interrupt_wrce_strb : in STD_LOGIC;
    irpt_rdack : in STD_LOGIC;
    intr2bus_rdack0 : in STD_LOGIC;
    wr_ce_or_reduce_core_cmb : in STD_LOGIC;
    ip2Bus_WrAck_core_reg0 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1_reg_0 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : in STD_LOGIC;
    intr_controller_rd_ce_or_reduce : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : in STD_LOGIC;
    rd_ce_or_reduce_core_cmb : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ : in STD_LOGIC;
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : in STD_LOGIC;
    io2_i_sync : in STD_LOGIC;
    io3_i_sync : in STD_LOGIC;
    \s_axi4_rdata_i_reg[3]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi4_rdata_i_reg[31]\ : in STD_LOGIC;
    ip2bus_error_int : in STD_LOGIC;
    burst_tr_int : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]\ : in STD_LOGIC;
    p_4_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \s_axi4_rdata_i_reg[1]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[2]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[3]_0\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]_0\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]_1\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]_2\ : in STD_LOGIC;
    p_1_in_0 : in STD_LOGIC;
    p_2_in : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[13]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    io1_i_sync : in STD_LOGIC;
    io0_i_sync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_qspi_core_interface : entity is "qspi_core_interface";
end axi_quad_spi_0_qspi_core_interface;

architecture STRUCTURE of axi_quad_spi_0_qspi_core_interface is
  signal CE : STD_LOGIC;
  signal CONTROL_REG_I_n_13 : STD_LOGIC;
  signal CONTROL_REG_I_n_15 : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_12\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_13\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_14\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_17\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_18\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_20\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_21\ : STD_LOGIC;
  signal \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1\ : STD_LOGIC;
  signal \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1\ : STD_LOGIC;
  signal \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1\ : STD_LOGIC;
  signal \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1\ : STD_LOGIC;
  signal \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1\ : STD_LOGIC;
  signal \FIFO_EXISTS.FIFO_IF_MODULE_I_n_4\ : STD_LOGIC;
  signal \FIFO_EXISTS.Rx_FIFO_occ_Reversed\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_0\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_II_n_14\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_II_n_15\ : STD_LOGIC;
  signal \FIFO_EXISTS.Tx_FIFO_Empty_intr\ : STD_LOGIC;
  signal \FIFO_EXISTS.data_Exists_RcFIFO_int_d1\ : STD_LOGIC;
  signal \FIFO_EXISTS.data_Exists_RcFIFO_int_d10\ : STD_LOGIC;
  signal \FIFO_EXISTS.spiXfer_done_to_axi_1\ : STD_LOGIC;
  signal INTERRUPT_CONTROL_I_n_21 : STD_LOGIC;
  signal \IO2_T_control__3\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.Addr_Bit_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.Addr_Phase_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.Data_Dir_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.Data_Phase_int\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_11\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_13\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_15\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_16\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_17\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_21\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_23\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_24\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_25\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_19\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_20\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_21\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_23\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_30\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_35\ : STD_LOGIC;
  signal \QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_d10\ : STD_LOGIC;
  signal \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d1\ : STD_LOGIC;
  signal \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d10\ : STD_LOGIC;
  signal Quad_Phase_int : STD_LOGIC;
  signal R : STD_LOGIC;
  signal \RATIO_OF_2_GENERATE.Count_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \^reset_flops[15].rst_flops\ : STD_LOGIC;
  signal R_1 : STD_LOGIC;
  signal Rx_FIFO_Empty_Synced_in_SPI_domain : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_d1 : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_d1_synced_i : STD_LOGIC;
  signal SOFT_RESET_I_n_3 : STD_LOGIC;
  signal SPISR_0_CMD_Error_int : STD_LOGIC;
  signal \^spisr_0_cmd_error_to_axi_clk\ : STD_LOGIC;
  signal \^spisr_1_loop_back_error_int\ : STD_LOGIC;
  signal \^spisr_2_msb_error_int\ : STD_LOGIC;
  signal SPISR_3_Slave_Mode_Error_int : STD_LOGIC;
  signal \^spisr_4_cpol_cpha_error_int\ : STD_LOGIC;
  signal \^spissr_frm_axi_clk\ : STD_LOGIC;
  signal SPIXfer_done_int : STD_LOGIC;
  signal \SPIXfer_done_int130_out__0\ : STD_LOGIC;
  signal \SPIXfer_done_int132_out__0\ : STD_LOGIC;
  signal SPIXfer_done_int_pulse : STD_LOGIC;
  signal SPIXfer_done_rd_tx_en : STD_LOGIC;
  signal Serial_Dout_018_in : STD_LOGIC;
  signal Shift_Reg : STD_LOGIC_VECTOR ( 6 to 7 );
  signal \Shift_Reg1__0\ : STD_LOGIC;
  signal \^tx_fifo_empty_spisr_to_axi_clk\ : STD_LOGIC;
  signal almost_full_0 : STD_LOGIC;
  signal bus2IP_Data_for_interrupt_core : STD_LOGIC_VECTOR ( 23 to 23 );
  signal data_from_rx_fifo : STD_LOGIC_VECTOR ( 0 to 6 );
  signal data_from_txfifo : STD_LOGIC_VECTOR ( 0 to 7 );
  signal data_to_rx_fifo : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^data_valid\ : STD_LOGIC;
  signal drr_Overrun_int : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal \^io2_o\ : STD_LOGIC;
  signal \^ip2bus_rdack_core_reg\ : STD_LOGIC;
  signal ip2Bus_RdAck_core_reg0 : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole : STD_LOGIC;
  signal \^ip2bus_wrack_core_reg\ : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole : STD_LOGIC;
  signal \master_tri_state_en_control1__0\ : STD_LOGIC;
  signal \mode_0__0\ : STD_LOGIC;
  signal \mode_1__3\ : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in17_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal \^p_1_in10_in\ : STD_LOGIC;
  signal \^p_1_in13_in\ : STD_LOGIC;
  signal p_1_in16_in : STD_LOGIC;
  signal \^p_1_in22_in\ : STD_LOGIC;
  signal \^p_1_in31_in\ : STD_LOGIC;
  signal qspi_cntrl_ps : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rc_FIFO_Full_d1 : STD_LOGIC;
  signal read_ack_delay_1 : STD_LOGIC;
  signal read_ack_delay_2 : STD_LOGIC;
  signal read_ack_delay_3 : STD_LOGIC;
  signal read_ack_delay_4 : STD_LOGIC;
  signal read_ack_delay_5 : STD_LOGIC;
  signal read_ack_delay_6 : STD_LOGIC;
  signal read_ack_delay_7 : STD_LOGIC;
  signal \receive_Data_int1__0\ : STD_LOGIC;
  signal register_Data_slvsel_int : STD_LOGIC;
  signal reset_TxFIFO_ptr_int : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal rst_to_spi_int : STD_LOGIC;
  signal \^rx_fifo_empty_i\ : STD_LOGIC;
  signal rx_shft_reg_mode_0011 : STD_LOGIC_VECTOR ( 4 to 7 );
  signal \s_axi4_rdata_i[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[3]_i_5_n_0\ : STD_LOGIC;
  signal sck_d3 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  signal spiXfer_done_d2 : STD_LOGIC;
  signal spiXfer_done_d3 : STD_LOGIC;
  signal \^spixfer_done_int\ : STD_LOGIC;
  signal \^spicr_1_spe_frm_axi_clk\ : STD_LOGIC;
  signal \^spicr_2_mst_n_slv_frm_axi_clk\ : STD_LOGIC;
  signal \^spicr_3_cpol_frm_axi_clk\ : STD_LOGIC;
  signal spicr_3_cpol_to_spi_clk : STD_LOGIC;
  signal \^spicr_4_cpha_frm_axi_clk\ : STD_LOGIC;
  signal spicr_4_cpha_to_spi_clk : STD_LOGIC;
  signal \^spicr_5_txfifo_rst_frm_axi_clk\ : STD_LOGIC;
  signal spicr_5_txfifo_to_spi_clk : STD_LOGIC;
  signal \^spicr_6_rxfifo_rst_frm_axi_clk\ : STD_LOGIC;
  signal \^spicr_8_tr_inhibit_frm_axi_clk\ : STD_LOGIC;
  signal spicr_8_tr_inhibit_to_spi_clk : STD_LOGIC;
  signal spicr_bits_7_8_frm_axi_clk : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal spicr_bits_7_8_to_spi_clk : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \^spisel_d1_reg_to_axi_clk\ : STD_LOGIC;
  signal stop_clock : STD_LOGIC;
  signal \stop_clock134_out__3\ : STD_LOGIC;
  signal \stop_clock1__3\ : STD_LOGIC;
  signal transfer_start_d2 : STD_LOGIC;
  signal tx_FIFO_Occpncy_MSB_d1 : STD_LOGIC;
  signal tx_fifo_empty : STD_LOGIC;
  signal tx_occ_msb : STD_LOGIC;
  signal tx_occ_msb_1 : STD_LOGIC;
  signal tx_occ_msb_2 : STD_LOGIC;
  signal tx_occ_msb_3 : STD_LOGIC;
  signal tx_occ_msb_4 : STD_LOGIC;
  signal wrack : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_almost_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_wr_ack_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_wr_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_FIFO_EXISTS.RX_FIFO_II_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \FIFO_EXISTS.RX_FIFO_II\ : label is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \FIFO_EXISTS.RX_FIFO_II\ : label is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \FIFO_EXISTS.RX_FIFO_II\ : label is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of \FIFO_EXISTS.RX_FIFO_II\ : label is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \FIFO_EXISTS.RX_FIFO_II\ : label is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \FIFO_EXISTS.RX_FIFO_II\ : label is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \FIFO_EXISTS.RX_FIFO_II\ : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \FIFO_EXISTS.RX_FIFO_II\ : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of \FIFO_EXISTS.RX_FIFO_II\ : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of \FIFO_EXISTS.RX_FIFO_II\ : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \FIFO_EXISTS.RX_FIFO_II\ : label is 5;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \FIFO_EXISTS.RX_FIFO_II\ : label is 8;
  attribute READ_MODE : string;
  attribute READ_MODE of \FIFO_EXISTS.RX_FIFO_II\ : label is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \FIFO_EXISTS.RX_FIFO_II\ : label is "1f1f";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \FIFO_EXISTS.RX_FIFO_II\ : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \FIFO_EXISTS.RX_FIFO_II\ : label is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \FIFO_EXISTS.RX_FIFO_II\ : label is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \FIFO_EXISTS.RX_FIFO_II\ : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[2]_i_4\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[3]_i_5\ : label is "soft_lutpair78";
begin
  \RESET_FLOPS[15].RST_FLOPS\ <= \^reset_flops[15].rst_flops\;
  SPISR_0_CMD_Error_to_axi_clk <= \^spisr_0_cmd_error_to_axi_clk\;
  SPISR_1_LOOP_Back_Error_int <= \^spisr_1_loop_back_error_int\;
  SPISR_2_MSB_Error_int <= \^spisr_2_msb_error_int\;
  SPISR_4_CPOL_CPHA_Error_int <= \^spisr_4_cpol_cpha_error_int\;
  SPISSR_frm_axi_clk <= \^spissr_frm_axi_clk\;
  Tx_FIFO_Empty_SPISR_to_axi_clk <= \^tx_fifo_empty_spisr_to_axi_clk\;
  data_valid <= \^data_valid\;
  empty <= \^empty\;
  io2_o <= \^io2_o\;
  ip2Bus_RdAck_core_reg <= \^ip2bus_rdack_core_reg\;
  ip2Bus_WrAck_core_reg <= \^ip2bus_wrack_core_reg\;
  p_1_in10_in <= \^p_1_in10_in\;
  p_1_in13_in <= \^p_1_in13_in\;
  p_1_in22_in <= \^p_1_in22_in\;
  p_1_in31_in <= \^p_1_in31_in\;
  rx_fifo_empty_i <= \^rx_fifo_empty_i\;
  scndry_out <= \^scndry_out\;
  spicr_1_spe_frm_axi_clk <= \^spicr_1_spe_frm_axi_clk\;
  spicr_2_mst_n_slv_frm_axi_clk <= \^spicr_2_mst_n_slv_frm_axi_clk\;
  spicr_3_cpol_frm_axi_clk <= \^spicr_3_cpol_frm_axi_clk\;
  spicr_4_cpha_frm_axi_clk <= \^spicr_4_cpha_frm_axi_clk\;
  spicr_5_txfifo_rst_frm_axi_clk <= \^spicr_5_txfifo_rst_frm_axi_clk\;
  spicr_6_rxfifo_rst_frm_axi_clk <= \^spicr_6_rxfifo_rst_frm_axi_clk\;
  spicr_8_tr_inhibit_frm_axi_clk <= \^spicr_8_tr_inhibit_frm_axi_clk\;
  spisel_d1_reg_to_axi_clk <= \^spisel_d1_reg_to_axi_clk\;
CONTROL_REG_I: entity work.axi_quad_spi_0_qspi_cntrl_reg
     port map (
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_1\ => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\,
      \CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]_0\ => \^spicr_4_cpha_frm_axi_clk\,
      \CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]_0\ => \^spicr_3_cpol_frm_axi_clk\,
      \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0\ => \^spicr_2_mst_n_slv_frm_axi_clk\,
      \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\ => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\,
      D(0) => D(3),
      \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1\ => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1\,
      \FIFO_EXISTS.data_Exists_RcFIFO_int_d1\ => \FIFO_EXISTS.data_Exists_RcFIFO_int_d1\,
      \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\ => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]\,
      \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\ => \^rx_fifo_empty_i\,
      Q(0) => p_0_in17_in,
      SPISR_1_LOOP_Back_Error_int => \^spisr_1_loop_back_error_int\,
      SPISR_2_MSB_Error_int => \^spisr_2_msb_error_int\,
      SPISR_3_Slave_Mode_Error_int => SPISR_3_Slave_Mode_Error_int,
      SPISR_4_CPOL_CPHA_Error_int => \^spisr_4_cpol_cpha_error_int\,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(0),
      dout(0) => data_from_rx_fifo(0),
      \gen_rst_ic.wr_rst_busy_ic_reg\ => \^reset_flops[15].rst_flops\,
      \ip_irpt_enable_reg_reg[8]\ => \^spisel_d1_reg_to_axi_clk\,
      p_1_in10_in => \^p_1_in10_in\,
      p_1_in13_in => \^p_1_in13_in\,
      p_1_in16_in => p_1_in16_in,
      reset2ip_reset_int => reset2ip_reset_int,
      rst => reset_TxFIFO_ptr_int,
      s_axi4_aclk => s_axi4_aclk,
      \s_axi4_rdata_i_reg[7]\ => \s_axi4_rdata_i_reg[3]\,
      \s_axi4_rdata_i_reg[7]_0\ => \s_axi4_rdata_i_reg[7]\,
      \s_axi4_rdata_i_reg[7]_1\ => \s_axi4_rdata_i_reg[7]_0\,
      \s_axi4_rdata_i_reg[7]_2\ => \s_axi4_rdata_i_reg[7]_1\,
      \s_axi4_rdata_i_reg[7]_3\ => \s_axi4_rdata_i_reg[7]_2\,
      s_axi4_wdata(7 downto 5) => s_axi4_wdata(9 downto 7),
      s_axi4_wdata(4 downto 0) => s_axi4_wdata(4 downto 0),
      \s_axi4_wdata[8]\ => CONTROL_REG_I_n_15,
      \s_axi4_wdata[8]_0\(0) => bus2IP_Data_for_interrupt_core(23),
      \s_axi4_wdata[9]\ => CONTROL_REG_I_n_13,
      spicr_1_spe_frm_axi_clk => \^spicr_1_spe_frm_axi_clk\,
      spicr_6_rxfifo_rst_frm_axi_clk => \^spicr_6_rxfifo_rst_frm_axi_clk\,
      spicr_8_tr_inhibit_frm_axi_clk => \^spicr_8_tr_inhibit_frm_axi_clk\,
      spicr_bits_7_8_frm_axi_clk(1 downto 0) => spicr_bits_7_8_frm_axi_clk(1 downto 0)
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_ack_delay_6,
      I1 => read_ack_delay_7,
      O => ip2Bus_RdAck_core_reg0
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => ip2Bus_RdAck_core_reg0,
      Q => \^ip2bus_rdack_core_reg\,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => wr_ce_or_reduce_core_cmb,
      Q => ip2Bus_WrAck_core_reg_d1,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => ip2Bus_WrAck_core_reg0,
      Q => \^ip2bus_wrack_core_reg\,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => rd_ce_or_reduce_core_cmb,
      Q => read_ack_delay_1,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => read_ack_delay_1,
      Q => read_ack_delay_2,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => read_ack_delay_2,
      Q => read_ack_delay_3,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => read_ack_delay_3,
      Q => read_ack_delay_4,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => read_ack_delay_4,
      Q => read_ack_delay_5,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_6_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => read_ack_delay_5,
      Q => read_ack_delay_6,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_7_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => read_ack_delay_6,
      Q => read_ack_delay_7,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.CLK_CROSS_I\: entity work.axi_quad_spi_0_cross_clk_sync_fifo_1
     port map (
      Bus2IP_Reset_i_reg => \FIFO_EXISTS.CLK_CROSS_I_n_13\,
      D => D_0,
      E(0) => \FIFO_EXISTS.CLK_CROSS_I_n_20\,
      \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg\ => \^reset_flops[15].rst_flops\,
      \FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg_0\ => \^rx_fifo_empty_i\,
      \FIFO_EXISTS.spiXfer_done_to_axi_1\ => \FIFO_EXISTS.spiXfer_done_to_axi_1\,
      \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\ => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]\,
      \IO2_T_control__3\ => \IO2_T_control__3\,
      \LOGIC_GENERATION_FDR.SPICR_5_TXFIFO_AX2S_1_CDC_0\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_12\,
      \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_21\,
      \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_14\,
      \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0\ => \^tx_fifo_empty_spisr_to_axi_clk\,
      Q(0) => \RATIO_OF_2_GENERATE.Count_reg\(4),
      R => R,
      Rst_to_spi => rst_to_spi_int,
      SPISR_0_CMD_Error_int => SPISR_0_CMD_Error_int,
      SPISR_0_CMD_Error_to_axi_clk => \^spisr_0_cmd_error_to_axi_clk\,
      SPISSR_frm_axi_clk => \^spissr_frm_axi_clk\,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      drr_Overrun_int => drr_Overrun_int,
      empty => tx_fifo_empty,
      ext_spi_clk => ext_spi_clk,
      \master_tri_state_en_control1__0\ => \master_tri_state_en_control1__0\,
      p_1_in16_in => p_1_in16_in,
      p_1_in22_in => \^p_1_in22_in\,
      register_Data_slvsel_int => register_Data_slvsel_int,
      reset2ip_reset_int => reset2ip_reset_int,
      rst => rst,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_wdata(1) => s_axi4_wdata(7),
      s_axi4_wdata(0) => s_axi4_wdata(5),
      \s_axi4_wdata[5]\ => \FIFO_EXISTS.CLK_CROSS_I_n_18\,
      \s_axi4_wdata[7]\ => \FIFO_EXISTS.CLK_CROSS_I_n_17\,
      spiXfer_done_d2 => spiXfer_done_d2,
      spiXfer_done_d3 => spiXfer_done_d3,
      spicr_1_spe_frm_axi_clk => \^spicr_1_spe_frm_axi_clk\,
      spicr_2_mst_n_slv_frm_axi_clk => \^spicr_2_mst_n_slv_frm_axi_clk\,
      spicr_3_cpol_frm_axi_clk => \^spicr_3_cpol_frm_axi_clk\,
      spicr_3_cpol_to_spi_clk => spicr_3_cpol_to_spi_clk,
      spicr_4_cpha_frm_axi_clk => \^spicr_4_cpha_frm_axi_clk\,
      spicr_4_cpha_to_spi_clk => spicr_4_cpha_to_spi_clk,
      spicr_5_txfifo_to_spi_clk => spicr_5_txfifo_to_spi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => \^spicr_6_rxfifo_rst_frm_axi_clk\,
      spicr_8_tr_inhibit_frm_axi_clk => \^spicr_8_tr_inhibit_frm_axi_clk\,
      spicr_8_tr_inhibit_to_spi_clk => spicr_8_tr_inhibit_to_spi_clk,
      spicr_bits_7_8_frm_axi_clk(1 downto 0) => spicr_bits_7_8_frm_axi_clk(1 downto 0),
      spicr_bits_7_8_to_spi_clk(0 to 1) => spicr_bits_7_8_to_spi_clk(0 to 1),
      spisel_d1_reg_to_axi_clk => \^spisel_d1_reg_to_axi_clk\,
      stop_clock => stop_clock,
      transfer_start_d2 => transfer_start_d2,
      transfer_start_reg => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_25\,
      tx_occ_msb => tx_occ_msb,
      tx_occ_msb_4 => tx_occ_msb_4,
      wr_en => \^spixfer_done_int\
    );
\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \^spisr_0_cmd_error_to_axi_clk\,
      Q => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1\,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \^spisr_1_loop_back_error_int\,
      Q => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1\,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \^spisr_2_msb_error_int\,
      Q => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1\,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => SPISR_3_Slave_Mode_Error_int,
      Q => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1\,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \^spisr_4_cpol_cpha_error_int\,
      Q => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_4_CPOL_CPHA_Error_d1\,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.FIFO_IF_MODULE_I\: entity work.axi_quad_spi_0_qspi_fifo_ifmodule
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \FIFO_EXISTS.Tx_FIFO_Empty_intr\ => \FIFO_EXISTS.Tx_FIFO_Empty_intr\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]\,
      Receive_ip2bus_error_reg_0 => \^rx_fifo_empty_i\,
      Rx_FIFO_Full_Fifo_d1_synced_i => Rx_FIFO_Full_Fifo_d1_synced_i,
      Transmit_ip2bus_error0 => Transmit_ip2bus_error0,
      p_1_in31_in => \^p_1_in31_in\,
      p_4_in => p_4_in,
      prmry_in => \^empty\,
      rc_FIFO_Full_d1 => rc_FIFO_Full_d1,
      receive_ip2bus_error => receive_ip2bus_error,
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_wdata(0) => s_axi4_wdata(2),
      transmit_ip2bus_error => transmit_ip2bus_error,
      tx_FIFO_Empty_d1_reg_0 => \FIFO_EXISTS.FIFO_IF_MODULE_I_n_4\,
      tx_FIFO_Occpncy_MSB_d1 => tx_FIFO_Occpncy_MSB_d1,
      tx_occ_msb => tx_occ_msb
    );
\FIFO_EXISTS.RX_FIFO_EMPTY_SYNC_AXI_2_SPI_CDC\: entity work.axi_quad_spi_0_cdc_sync
     port map (
      Rx_FIFO_Full_Fifo => Rx_FIFO_Full_Fifo,
      almost_full => almost_full_0,
      ext_spi_clk => ext_spi_clk,
      prmry_in => \^empty\,
      scndry_out => Rx_FIFO_Empty_Synced_in_SPI_domain
    );
\FIFO_EXISTS.RX_FIFO_FULL_SYNCED_SPI_2_AXI_CDC\: entity work.axi_quad_spi_0_cdc_sync_0
     port map (
      Rx_FIFO_Full_Fifo_d1_synced_i => Rx_FIFO_Full_Fifo_d1_synced_i,
      empty => \^empty\,
      prmry_in => Rx_FIFO_Full_Fifo_d1,
      s_axi4_aclk => s_axi4_aclk,
      scndry_out => \^scndry_out\
    );
\FIFO_EXISTS.RX_FIFO_II\: entity work.axi_quad_spi_0_xpm_fifo_async
     port map (
      almost_empty => \NLW_FIFO_EXISTS.RX_FIFO_II_almost_empty_UNCONNECTED\,
      almost_full => almost_full_0,
      data_valid => \^data_valid\,
      dbiterr => \NLW_FIFO_EXISTS.RX_FIFO_II_dbiterr_UNCONNECTED\,
      din(7) => data_to_rx_fifo(0),
      din(6) => data_to_rx_fifo(1),
      din(5) => data_to_rx_fifo(2),
      din(4) => data_to_rx_fifo(3),
      din(3) => data_to_rx_fifo(4),
      din(2) => data_to_rx_fifo(5),
      din(1) => data_to_rx_fifo(6),
      din(0) => data_to_rx_fifo(7),
      dout(7) => data_from_rx_fifo(0),
      dout(6 downto 4) => dout(3 downto 1),
      dout(3) => data_from_rx_fifo(4),
      dout(2) => data_from_rx_fifo(5),
      dout(1) => data_from_rx_fifo(6),
      dout(0) => dout(0),
      empty => \^empty\,
      full => \NLW_FIFO_EXISTS.RX_FIFO_II_full_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => \NLW_FIFO_EXISTS.RX_FIFO_II_overflow_UNCONNECTED\,
      prog_empty => \NLW_FIFO_EXISTS.RX_FIFO_II_prog_empty_UNCONNECTED\,
      prog_full => \NLW_FIFO_EXISTS.RX_FIFO_II_prog_full_UNCONNECTED\,
      rd_clk => s_axi4_aclk,
      rd_data_count(4 downto 0) => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(4 downto 0),
      rd_en => rd_en,
      rd_rst_busy => \NLW_FIFO_EXISTS.RX_FIFO_II_rd_rst_busy_UNCONNECTED\,
      rst => rst,
      sbiterr => \NLW_FIFO_EXISTS.RX_FIFO_II_sbiterr_UNCONNECTED\,
      sleep => '0',
      underflow => \NLW_FIFO_EXISTS.RX_FIFO_II_underflow_UNCONNECTED\,
      wr_ack => \NLW_FIFO_EXISTS.RX_FIFO_II_wr_ack_UNCONNECTED\,
      wr_clk => ext_spi_clk,
      wr_data_count(4 downto 0) => \NLW_FIFO_EXISTS.RX_FIFO_II_wr_data_count_UNCONNECTED\(4 downto 0),
      wr_en => \^spixfer_done_int\,
      wr_rst_busy => \NLW_FIFO_EXISTS.RX_FIFO_II_wr_rst_busy_UNCONNECTED\
    );
\FIFO_EXISTS.RX_FULL_EMP_MD_12_INTR_GEN.rx_fifo_empty_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FIFO_EXISTS.CLK_CROSS_I_n_14\,
      Q => \^rx_fifo_empty_i\,
      R => '0'
    );
\FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => Rx_FIFO_Full_Fifo,
      Q => Rx_FIFO_Full_Fifo_d1,
      R => rst_to_spi_int
    );
\FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I\: entity work.axi_quad_spi_0_counter_f
     port map (
      \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      \FIFO_EXISTS.Tx_FIFO_Empty_intr\ => \FIFO_EXISTS.Tx_FIFO_Empty_intr\,
      \FIFO_EXISTS.spiXfer_done_to_axi_1\ => \FIFO_EXISTS.spiXfer_done_to_axi_1\,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      \icount_out_reg[0]_0\ => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_0\,
      \icount_out_reg[0]_1\ => SOFT_RESET_I_n_3,
      \icount_out_reg[3]_0\ => \^reset_flops[15].rst_flops\,
      \icount_out_reg[3]_1\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      \icount_out_reg[3]_2\ => \FIFO_EXISTS.CLK_CROSS_I_n_13\,
      rst => reset_TxFIFO_ptr_int,
      s_axi4_aclk => s_axi4_aclk,
      spiXfer_done_d2 => spiXfer_done_d2,
      spiXfer_done_d3 => spiXfer_done_d3,
      tx_FIFO_Empty_d1_reg => \^tx_fifo_empty_spisr_to_axi_clk\,
      tx_occ_msb_1 => tx_occ_msb_1
    );
\FIFO_EXISTS.TX_FIFO_II\: entity work.axi_quad_spi_0_async_fifo_fg
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      D(2 downto 0) => D(2 downto 0),
      \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      Q(1) => p_0_in2_in,
      Q(0) => p_0_in0_in,
      \SPIXfer_done_int130_out__0\ => \SPIXfer_done_int130_out__0\,
      \Shift_Reg1__0\ => \Shift_Reg1__0\,
      almost_full => almost_full,
      dout(7) => data_from_txfifo(0),
      dout(6) => data_from_txfifo(1),
      dout(5) => data_from_txfifo(2),
      dout(4) => data_from_txfifo(3),
      dout(3) => data_from_txfifo(4),
      dout(2) => data_from_txfifo(5),
      dout(1) => data_from_txfifo(6),
      dout(0) => data_from_txfifo(7),
      empty => tx_fifo_empty,
      ext_spi_clk => ext_spi_clk,
      \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0]\(0) => \FIFO_EXISTS.TX_FIFO_II_n_15\,
      \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4]\ => \FIFO_EXISTS.TX_FIFO_II_n_14\,
      \grdc.rd_data_count_i_reg[0]\ => \grdc.rd_data_count_i_reg[0]\,
      io0_i_sync => io0_i_sync,
      io1_i_sync => io1_i_sync,
      p_2_in => p_2_in,
      rd_data_count(2 downto 0) => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(2 downto 0),
      rd_en => SPIXfer_done_rd_tx_en,
      \receive_Data_int1__0\ => \receive_Data_int1__0\,
      rst => reset_TxFIFO_ptr_int,
      s_axi4_aclk => s_axi4_aclk,
      \s_axi4_rdata_i_reg[1]\ => \s_axi4_rdata_i[2]_i_3_n_0\,
      \s_axi4_rdata_i_reg[1]_0\ => \s_axi4_rdata_i_reg[1]\,
      \s_axi4_rdata_i_reg[2]\ => \s_axi4_rdata_i[2]_i_4_n_0\,
      \s_axi4_rdata_i_reg[2]_0\ => \s_axi4_rdata_i_reg[7]\,
      \s_axi4_rdata_i_reg[2]_1\ => \s_axi4_rdata_i_reg[2]\,
      \s_axi4_rdata_i_reg[3]\ => \s_axi4_rdata_i_reg[3]\,
      \s_axi4_rdata_i_reg[3]_0\(2) => data_from_rx_fifo(4),
      \s_axi4_rdata_i_reg[3]_0\(1) => data_from_rx_fifo(5),
      \s_axi4_rdata_i_reg[3]_0\(0) => data_from_rx_fifo(6),
      \s_axi4_rdata_i_reg[3]_1\ => INTERRUPT_CONTROL_I_n_21,
      \s_axi4_rdata_i_reg[3]_2\ => \^tx_fifo_empty_spisr_to_axi_clk\,
      s_axi4_wdata(7 downto 0) => s_axi4_wdata(7 downto 0)
    );
\FIFO_EXISTS.data_Exists_RcFIFO_int_d1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_fifo_empty_i\,
      O => \FIFO_EXISTS.data_Exists_RcFIFO_int_d10\
    );
\FIFO_EXISTS.data_Exists_RcFIFO_int_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FIFO_EXISTS.data_Exists_RcFIFO_int_d10\,
      Q => \FIFO_EXISTS.data_Exists_RcFIFO_int_d1\,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.tx_occ_msb_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_occ_msb_1,
      Q => tx_occ_msb_2,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.tx_occ_msb_3_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_occ_msb_2,
      Q => tx_occ_msb_3,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.tx_occ_msb_4_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_occ_msb_3,
      Q => tx_occ_msb_4,
      R => reset2ip_reset_int
    );
INTERRUPT_CONTROL_I: entity work.axi_quad_spi_0_interrupt_control
     port map (
      D(0) => bus2IP_Data_for_interrupt_core(23),
      E(0) => E(0),
      \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1\ => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_0_CMD_Error_d1\,
      \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1\ => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_1_LOOP_Back_Error_d1\,
      \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1\ => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_2_MSB_Error_d1\,
      \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1\ => \FIFO_EXISTS.DUAL_MD_INTR_GEN.SPISR_3_Slave_Mode_Error_d1\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\,
      \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]_0\ => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]_0\ => \FIFO_EXISTS.FIFO_IF_MODULE_I_n_4\,
      \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]_0\ => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\,
      \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_18\,
      \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]_0\ => \^tx_fifo_empty_spisr_to_axi_clk\,
      \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_17\,
      \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\ => CONTROL_REG_I_n_15,
      \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9]_0\ => CONTROL_REG_I_n_13,
      Q(0) => Q(0),
      SPISR_0_CMD_Error_to_axi_clk => \^spisr_0_cmd_error_to_axi_clk\,
      SPISR_1_LOOP_Back_Error_int => \^spisr_1_loop_back_error_int\,
      SPISR_2_MSB_Error_int => \^spisr_2_msb_error_int\,
      burst_tr_int => burst_tr_int,
      data_valid => \^data_valid\,
      empty => \^empty\,
      \gen_fwft.gdvld_fwft.data_valid_fwft_reg\ => \gen_fwft.gdvld_fwft.data_valid_fwft_reg\,
      \grdc.rd_data_count_i_reg[3]\ => INTERRUPT_CONTROL_I_n_21,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr2bus_wrack_reg_0 => intr2bus_wrack_reg,
      ip2Bus_RdAck_core_reg => \^ip2bus_rdack_core_reg\,
      ip2Bus_RdAck_intr_reg_hole => ip2Bus_RdAck_intr_reg_hole,
      ip2Bus_RdAck_intr_reg_hole_reg => ip2Bus_RdAck_intr_reg_hole_reg_0,
      ip2Bus_WrAck_core_reg => \^ip2bus_wrack_core_reg\,
      ip2Bus_WrAck_intr_reg_hole => ip2Bus_WrAck_intr_reg_hole,
      ip2bus_error_int => ip2bus_error_int,
      ip2intc_irpt => ip2intc_irpt,
      \ip_irpt_enable_reg_reg[13]_0\(12 downto 7) => \ip_irpt_enable_reg_reg[13]\(9 downto 4),
      \ip_irpt_enable_reg_reg[13]_0\(6) => p_0_in17_in,
      \ip_irpt_enable_reg_reg[13]_0\(5 downto 3) => \ip_irpt_enable_reg_reg[13]\(3 downto 1),
      \ip_irpt_enable_reg_reg[13]_0\(2) => p_0_in2_in,
      \ip_irpt_enable_reg_reg[13]_0\(1) => p_0_in0_in,
      \ip_irpt_enable_reg_reg[13]_0\(0) => \ip_irpt_enable_reg_reg[13]\(0),
      \ip_irpt_enable_reg_reg[13]_1\(0) => \ip_irpt_enable_reg_reg[13]_0\(0),
      ipif_glbl_irpt_enable_reg_reg_0 => ipif_glbl_irpt_enable_reg_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_0_in(0) => p_0_in(0),
      p_1_in => p_1_in,
      p_1_in10_in => \^p_1_in10_in\,
      p_1_in13_in => \^p_1_in13_in\,
      p_1_in16_in => p_1_in16_in,
      p_1_in19_in => p_1_in19_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in22_in => \^p_1_in22_in\,
      p_1_in25_in => p_1_in25_in,
      p_1_in28_in => p_1_in28_in,
      p_1_in31_in => \^p_1_in31_in\,
      p_1_in34_in => p_1_in34_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      rc_FIFO_Full_d1 => rc_FIFO_Full_d1,
      rd_data_count(0) => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(3),
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi4_aclk => s_axi4_aclk,
      \s_axi4_rdata_i_reg[31]\ => \s_axi4_rdata_i_reg[31]\,
      \s_axi4_rdata_i_reg[3]\ => \s_axi4_rdata_i[3]_i_5_n_0\,
      \s_axi4_rdata_i_reg[3]_0\ => \s_axi4_rdata_i[2]_i_3_n_0\,
      \s_axi4_rdata_i_reg[3]_1\ => \s_axi4_rdata_i_reg[3]_0\,
      \s_axi4_rdata_i_reg[3]_2\ => \s_axi4_rdata_i_reg[7]\,
      s_axi4_rready => s_axi4_rready,
      s_axi4_wdata(12 downto 8) => s_axi4_wdata(13 downto 9),
      s_axi4_wdata(7 downto 0) => s_axi4_wdata(7 downto 0),
      scndry_out => \^scndry_out\,
      spicr_2_mst_n_slv_frm_axi_clk => \^spicr_2_mst_n_slv_frm_axi_clk\,
      tx_FIFO_Occpncy_MSB_d1 => tx_FIFO_Occpncy_MSB_d1,
      tx_occ_msb_4 => tx_occ_msb_4,
      wrack => wrack
    );
\LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I\: entity work.axi_quad_spi_0_qspi_look_up_logic
     port map (
      CE => CE,
      D(2) => rx_shft_reg_mode_0011(4),
      D(1) => rx_shft_reg_mode_0011(5),
      D(0) => rx_shft_reg_mode_0011(7),
      E(0) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_17\,
      \FSM_sequential_qspi_cntrl_ps_reg[1]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_23\,
      \FSM_sequential_qspi_cntrl_ps_reg[1]_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_24\,
      \IO2_T_control__3\ => \IO2_T_control__3\,
      Q(2) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_19\,
      Q(1) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_20\,
      Q(0) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_21\,
      QSPI_IO1_T(2 downto 0) => qspi_cntrl_ps(2 downto 0),
      QSPI_IO1_T_0 => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_30\,
      \QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_d10\ => \QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_d10\,
      \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d1\ => \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d1\,
      \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d10\ => \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d10\,
      R => R_1,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_reg\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_11\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_reg_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_35\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_reg_1\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_23\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[4]\(1) => Shift_Reg(6),
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[4]\(0) => Shift_Reg(7),
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[6]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_16\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[7]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_15\,
      Rst_to_spi => rst_to_spi_int,
      SPISR_0_CMD_Error_int => SPISR_0_CMD_Error_int,
      SPIXfer_done_int => SPIXfer_done_int,
      \SPIXfer_done_int130_out__0\ => \SPIXfer_done_int130_out__0\,
      \SPIXfer_done_int132_out__0\ => \SPIXfer_done_int132_out__0\,
      SPIXfer_done_int_pulse => SPIXfer_done_int_pulse,
      Serial_Dout_018_in => Serial_Dout_018_in,
      dout(7) => data_from_txfifo(0),
      dout(6) => data_from_txfifo(1),
      dout(5) => data_from_txfifo(2),
      dout(4) => data_from_txfifo(3),
      dout(3) => data_from_txfifo(4),
      dout(2) => data_from_txfifo(5),
      dout(1) => data_from_txfifo(6),
      dout(0) => data_from_txfifo(7),
      empty => tx_fifo_empty,
      ext_spi_clk => ext_spi_clk,
      io0_i_sync => io0_i_sync,
      io1_i_sync => io1_i_sync,
      io2_i_sync => io2_i_sync,
      io2_o => \^io2_o\,
      io3_i_sync => io3_i_sync,
      \master_tri_state_en_control1__0\ => \master_tri_state_en_control1__0\,
      \mode_0__0\ => \mode_0__0\,
      \mode_1__3\ => \mode_1__3\,
      qspo(4) => \LOGIC_FOR_MD_12_GEN.Data_Dir_int\,
      qspo(3) => \LOGIC_FOR_MD_12_GEN.Data_Phase_int\,
      qspo(2) => Quad_Phase_int,
      qspo(1) => \LOGIC_FOR_MD_12_GEN.Addr_Bit_int\,
      qspo(0) => \LOGIC_FOR_MD_12_GEN.Addr_Phase_int\,
      \qspo_int_reg[0]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_13\,
      \qspo_int_reg[3]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_25\,
      \qspo_int_reg[8]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_21\,
      \receive_Data_int1__0\ => \receive_Data_int1__0\,
      sck_d3 => sck_d3,
      \stop_clock134_out__3\ => \stop_clock134_out__3\,
      \stop_clock1__3\ => \stop_clock1__3\
    );
\LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I\: entity work.axi_quad_spi_0_qspi_mode_control_logic
     port map (
      CE => CE,
      D(2) => rx_shft_reg_mode_0011(4),
      D(1) => rx_shft_reg_mode_0011(5),
      D(0) => rx_shft_reg_mode_0011(7),
      D_0 => D_0,
      E(0) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_17\,
      \FSM_sequential_qspi_cntrl_ps_reg[0]_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_13\,
      \FSM_sequential_qspi_cntrl_ps_reg[1]_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_21\,
      \FSM_sequential_qspi_cntrl_ps_reg[2]_0\(2 downto 0) => qspi_cntrl_ps(2 downto 0),
      \IO2_T_control__3\ => \IO2_T_control__3\,
      Q(2) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_19\,
      Q(1) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_20\,
      Q(0) => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_21\,
      QSPI_IO0_T_0 => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_24\,
      QSPI_IO1_T_0 => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_23\,
      \QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_d10\ => \QSPI_LOOK_UP_MODE_2_MEMORY_3.CMD_decoded_int_d10\,
      \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d1\ => \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d1\,
      \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d10\ => \QSPI_LOOK_UP_MODE_2_MEMORY_3.DTR_FIFO_Data_Exists_d10\,
      \QSPI_MODE_2_T_CONTROL.QSPI_IO2_T_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_21\,
      R => R,
      \RATIO_OF_2_GENERATE.Count_reg[0]_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_23\,
      \RATIO_OF_2_GENERATE.Count_reg[4]_0\(0) => \RATIO_OF_2_GENERATE.Count_reg\(4),
      \RATIO_OF_2_GENERATE.Count_reg[4]_1\(0) => \FIFO_EXISTS.CLK_CROSS_I_n_20\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_0_reg_0\ => \FIFO_EXISTS.TX_FIFO_II_n_14\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Serial_Dout_2_reg_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_11\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[4]_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_16\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[5]_0\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_1_LUT_LOGIC_I_n_15\,
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[6]_0\(1) => Shift_Reg(6),
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[6]_0\(0) => Shift_Reg(7),
      \RATIO_OF_2_GENERATE.RATIO_2_CAP_QSPI_QUAD_MODE_SP_MEM_GEN.Shift_Reg_reg[7]_0\(0) => \FIFO_EXISTS.TX_FIFO_II_n_15\,
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(7) => data_to_rx_fifo(0),
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(6) => data_to_rx_fifo(1),
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(5) => data_to_rx_fifo(2),
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(4) => data_to_rx_fifo(3),
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(3) => data_to_rx_fifo(4),
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(2) => data_to_rx_fifo(5),
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(1) => data_to_rx_fifo(6),
      \RX_DATA_SCK_RATIO_2_GEN1.receive_Data_int_reg[0]_0\(0) => data_to_rx_fifo(7),
      Rst_to_spi => rst_to_spi_int,
      SPIXfer_done_int => SPIXfer_done_int,
      \SPIXfer_done_int130_out__0\ => \SPIXfer_done_int130_out__0\,
      \SPIXfer_done_int132_out__0\ => \SPIXfer_done_int132_out__0\,
      SPIXfer_done_int_pulse => SPIXfer_done_int_pulse,
      Serial_Dout_018_in => Serial_Dout_018_in,
      \Shift_Reg1__0\ => \Shift_Reg1__0\,
      almost_full => almost_full_0,
      dout(6) => data_from_txfifo(0),
      dout(5) => data_from_txfifo(1),
      dout(4) => data_from_txfifo(2),
      dout(3) => data_from_txfifo(3),
      dout(2) => data_from_txfifo(4),
      dout(1) => data_from_txfifo(5),
      dout(0) => data_from_txfifo(6),
      drr_Overrun_int => drr_Overrun_int,
      empty => tx_fifo_empty,
      ext_spi_clk => ext_spi_clk,
      \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_35\,
      io0_o => io0_o,
      io0_t => io0_t,
      io1_i_sync => io1_i_sync,
      io1_o => io1_o,
      io1_t => io1_t,
      io2_o => \^io2_o\,
      io2_t => io2_t,
      io3_o => io3_o,
      io3_t => io3_t,
      \master_tri_state_en_control1__0\ => \master_tri_state_en_control1__0\,
      \mode_0__0\ => \mode_0__0\,
      \mode_1__3\ => \mode_1__3\,
      qspo(4) => \LOGIC_FOR_MD_12_GEN.Data_Dir_int\,
      qspo(3) => \LOGIC_FOR_MD_12_GEN.Data_Phase_int\,
      qspo(2) => Quad_Phase_int,
      qspo(1) => \LOGIC_FOR_MD_12_GEN.Addr_Bit_int\,
      qspo(0) => \LOGIC_FOR_MD_12_GEN.Addr_Phase_int\,
      \qspo_int_reg[4]\ => \LOGIC_FOR_MD_12_GEN.SPI_MODE_CONTROL_LOGIC_I_n_30\,
      rd_en => SPIXfer_done_rd_tx_en,
      \receive_Data_int1__0\ => \receive_Data_int1__0\,
      register_Data_slvsel_int => register_Data_slvsel_int,
      sck_d3 => sck_d3,
      sck_o => sck_o,
      sck_t => sck_t,
      scndry_out => Rx_FIFO_Empty_Synced_in_SPI_domain,
      spicr_3_cpol_to_spi_clk => spicr_3_cpol_to_spi_clk,
      spicr_4_cpha_to_spi_clk => spicr_4_cpha_to_spi_clk,
      spicr_8_tr_inhibit_to_spi_clk => spicr_8_tr_inhibit_to_spi_clk,
      spicr_bits_7_8_to_spi_clk(0 to 1) => spicr_bits_7_8_to_spi_clk(0 to 1),
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      stop_clock => stop_clock,
      \stop_clock134_out__3\ => \stop_clock134_out__3\,
      \stop_clock1__3\ => \stop_clock1__3\,
      transfer_start_d2 => transfer_start_d2,
      transfer_start_reg_0 => \FIFO_EXISTS.CLK_CROSS_I_n_12\,
      wr_en => \^spixfer_done_int\
    );
RESET_SYNC_AXI_SPI_CLK_INST: entity work.axi_quad_spi_0_reset_sync_module
     port map (
      R => R_1,
      Rst_to_spi => rst_to_spi_int,
      ext_spi_clk => ext_spi_clk,
      reset2ip_reset_int => reset2ip_reset_int,
      spicr_5_txfifo_to_spi_clk => spicr_5_txfifo_to_spi_clk
    );
SOFT_RESET_I: entity work.axi_quad_spi_0_soft_reset
     port map (
      Bus2IP_Reset_i_reg => SOFT_RESET_I_n_3,
      \RESET_FLOPS[15].RST_FLOPS_0\ => \^reset_flops[15].rst_flops\,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      \icount_out_reg[0]\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      \icount_out_reg[0]_0\ => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_0\,
      reset_trig0 => reset_trig0,
      s_axi4_aclk => s_axi4_aclk,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      wrack => wrack
    );
\STATUS_REG_MODE_12_GEN.STATUS_SLAVE_SEL_REG_I\: entity work.axi_quad_spi_0_qspi_status_slave_sel_reg
     port map (
      \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]_0\ => \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\,
      SPISSR_frm_axi_clk => \^spissr_frm_axi_clk\,
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi4_aclk => s_axi4_aclk
    );
ip2Bus_RdAck_intr_reg_hole_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => intr_controller_rd_ce_or_reduce,
      Q => ip2Bus_RdAck_intr_reg_hole_d1,
      R => reset2ip_reset_int
    );
ip2Bus_RdAck_intr_reg_hole_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => ip2Bus_RdAck_intr_reg_hole0,
      Q => ip2Bus_RdAck_intr_reg_hole,
      R => reset2ip_reset_int
    );
ip2Bus_WrAck_intr_reg_hole_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => ip2Bus_WrAck_intr_reg_hole_d1_reg_0,
      Q => ip2Bus_WrAck_intr_reg_hole_d1,
      R => reset2ip_reset_int
    );
ip2Bus_WrAck_intr_reg_hole_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => ip2Bus_WrAck_intr_reg_hole0,
      Q => ip2Bus_WrAck_intr_reg_hole,
      R => reset2ip_reset_int
    );
\s_axi4_rdata_i[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FE0000000000"
    )
        port map (
      I0 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(3),
      I1 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(4),
      I2 => \s_axi4_rdata_i[3]_i_5_n_0\,
      I3 => Bus_RNW_reg,
      I4 => \^empty\,
      I5 => p_1_in_0,
      O => \s_axi4_rdata_i[2]_i_3_n_0\
    );
\s_axi4_rdata_i[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(0),
      I1 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(1),
      O => \s_axi4_rdata_i[2]_i_4_n_0\
    );
\s_axi4_rdata_i[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(2),
      I1 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(1),
      I2 => \FIFO_EXISTS.Rx_FIFO_occ_Reversed\(0),
      O => \s_axi4_rdata_i[3]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_axi_quad_spi_top is
  port (
    s_axi4_rlast : out STD_LOGIC;
    io2_o : out STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    ss_t : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi4_awready : out STD_LOGIC;
    s_axi4_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_wready : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    s_axi4_bvalid : out STD_LOGIC;
    io0_o : out STD_LOGIC;
    io1_o : out STD_LOGIC;
    io3_o : out STD_LOGIC;
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 14 downto 0 );
    io0_i : in STD_LOGIC;
    io1_i : in STD_LOGIC;
    io2_i : in STD_LOGIC;
    io3_i : in STD_LOGIC;
    s_axi4_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_bready : in STD_LOGIC;
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_axi_quad_spi_top : entity is "axi_quad_spi_top";
end axi_quad_spi_0_axi_quad_spi_top;

architecture STRUCTURE of axi_quad_spi_0_axi_quad_spi_top is
  signal \FIFO_EXISTS.FIFO_IF_MODULE_I/Transmit_ip2bus_error0\ : STD_LOGIC;
  signal \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/interrupt_wrce_strb\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/intr2bus_rdack0\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_rdack\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_rdack_d1\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_wrack\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_wrack_d1\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \INTERRUPT_CONTROL_I/p_0_in11_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in14_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in20_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in23_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in26_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in29_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in32_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in35_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in8_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in10_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in13_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in19_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in1_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in22_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in25_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in28_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in31_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in34_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in4_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in7_in\ : STD_LOGIC;
  signal \I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_DECODER/p_1_in\ : STD_LOGIC;
  signal \I_DECODER/p_2_in\ : STD_LOGIC;
  signal \I_DECODER/p_4_in\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_31\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_51\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_64\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_65\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_66\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_78\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_79\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_12\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_13\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_14\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_20\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_22\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_23\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_24\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_31\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_32\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_34\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_39\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_40\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_41\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_42\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_43\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_44\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_45\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_48\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_49\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_50\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_51\ : STD_LOGIC;
  signal Rx_FIFO_Empty : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_d1_synced : STD_LOGIC;
  signal \SOFT_RESET_I/reset_trig0\ : STD_LOGIC;
  signal \SOFT_RESET_I/sw_rst_cond\ : STD_LOGIC;
  signal \SOFT_RESET_I/sw_rst_cond_d1\ : STD_LOGIC;
  signal SPISR_0_CMD_Error_to_axi_clk : STD_LOGIC;
  signal SPISR_1_LOOP_Back_Error_int : STD_LOGIC;
  signal SPISR_2_MSB_Error_int : STD_LOGIC;
  signal SPISR_4_CPOL_CPHA_Error_int : STD_LOGIC;
  signal SPISSR_frm_axi_clk : STD_LOGIC;
  signal TX_Fifo_full_indication : STD_LOGIC;
  signal Tx_FIFO_Empty_SPISR_to_axi_clk : STD_LOGIC;
  signal burst_tr_int : STD_LOGIC;
  signal bus2ip_reset_ipif_inverted : STD_LOGIC;
  signal bus2ip_wrce_int : STD_LOGIC_VECTOR ( 7 to 7 );
  signal data_from_rx_fifo : STD_LOGIC_VECTOR ( 1 to 7 );
  signal data_valid : STD_LOGIC;
  signal intr_controller_rd_ce_or_reduce : STD_LOGIC;
  signal io0_i_sync : STD_LOGIC;
  signal io1_i_sync : STD_LOGIC;
  signal io2_i_sync : STD_LOGIC;
  signal io3_i_sync : STD_LOGIC;
  signal ip2Bus_RdAck_core_reg : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole0 : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole_d1 : STD_LOGIC;
  signal ip2Bus_WrAck_core_reg : STD_LOGIC;
  signal ip2Bus_WrAck_core_reg0 : STD_LOGIC;
  signal ip2Bus_WrAck_core_reg_d1 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1 : STD_LOGIC;
  signal ip2bus_data_int : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal ip2bus_error_int : STD_LOGIC;
  signal rd_ce_or_reduce_core_cmb : STD_LOGIC;
  signal rd_en : STD_LOGIC;
  signal receive_ip2bus_error : STD_LOGIC;
  signal reset2ip_reset_int : STD_LOGIC;
  signal rx_fifo_empty_i : STD_LOGIC;
  signal s_axi4_rresp_i0 : STD_LOGIC;
  signal spicr_1_spe_frm_axi_clk : STD_LOGIC;
  signal spicr_2_mst_n_slv_frm_axi_clk : STD_LOGIC;
  signal spicr_3_cpol_frm_axi_clk : STD_LOGIC;
  signal spicr_4_cpha_frm_axi_clk : STD_LOGIC;
  signal spicr_5_txfifo_rst_frm_axi_clk : STD_LOGIC;
  signal spicr_6_rxfifo_rst_frm_axi_clk : STD_LOGIC;
  signal spicr_8_tr_inhibit_frm_axi_clk : STD_LOGIC;
  signal spisel_d1_reg_to_axi_clk : STD_LOGIC;
  signal transmit_ip2bus_error : STD_LOGIC;
  signal wr_ce_or_reduce_core_cmb : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of IO0_I_REG : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of IO0_I_REG : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of IO0_I_REG : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of IO1_I_REG : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of IO1_I_REG : label is "VCC:CE GND:R";
  attribute box_type of IO1_I_REG : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of IO2_I_REG : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of IO2_I_REG : label is "VCC:CE GND:R";
  attribute box_type of IO2_I_REG : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of IO3_I_REG : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of IO3_I_REG : label is "VCC:CE GND:R";
  attribute box_type of IO3_I_REG : label is "PRIMITIVE";
begin
IO0_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io0_i,
      Q => io0_i_sync,
      R => '0'
    );
IO1_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io1_i,
      Q => io1_i_sync,
      R => '0'
    );
IO2_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io2_i,
      Q => io2_i_sync,
      R => '0'
    );
IO3_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io3_i,
      Q => io3_i_sync,
      R => '0'
    );
\QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I\: entity work.axi_quad_spi_0_qspi_core_interface
     port map (
      Bus_RNW_reg => \I_DECODER/Bus_RNW_reg\,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_50\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_51\,
      \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_12\,
      D(3) => ip2bus_data_int(7),
      D(2 downto 0) => ip2bus_data_int(3 downto 1),
      E(0) => s_axi4_rresp_i0,
      \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_31\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_41\,
      \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_42\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_40\,
      \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_39\,
      Q(0) => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_20\,
      \RESET_FLOPS[15].RST_FLOPS\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_51\,
      SPISR_0_CMD_Error_to_axi_clk => SPISR_0_CMD_Error_to_axi_clk,
      SPISR_1_LOOP_Back_Error_int => SPISR_1_LOOP_Back_Error_int,
      SPISR_2_MSB_Error_int => SPISR_2_MSB_Error_int,
      SPISR_4_CPOL_CPHA_Error_int => SPISR_4_CPOL_CPHA_Error_int,
      \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_48\,
      SPISSR_frm_axi_clk => SPISSR_frm_axi_clk,
      Transmit_ip2bus_error0 => \FIFO_EXISTS.FIFO_IF_MODULE_I/Transmit_ip2bus_error0\,
      Tx_FIFO_Empty_SPISR_to_axi_clk => Tx_FIFO_Empty_SPISR_to_axi_clk,
      almost_full => TX_Fifo_full_indication,
      burst_tr_int => burst_tr_int,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(7),
      data_valid => data_valid,
      dout(3) => data_from_rx_fifo(1),
      dout(2) => data_from_rx_fifo(2),
      dout(1) => data_from_rx_fifo(3),
      dout(0) => data_from_rx_fifo(7),
      empty => Rx_FIFO_Empty,
      ext_spi_clk => ext_spi_clk,
      \gen_fwft.gdvld_fwft.data_valid_fwft_reg\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_64\,
      \grdc.rd_data_count_i_reg[0]\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_79\,
      interrupt_wrce_strb => \INTERRUPT_CONTROL_I/interrupt_wrce_strb\,
      intr2bus_rdack0 => \INTERRUPT_CONTROL_I/intr2bus_rdack0\,
      intr2bus_wrack_reg => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_65\,
      intr_controller_rd_ce_or_reduce => intr_controller_rd_ce_or_reduce,
      io0_i_sync => io0_i_sync,
      io0_o => io0_o,
      io0_t => io0_t,
      io1_i_sync => io1_i_sync,
      io1_o => io1_o,
      io1_t => io1_t,
      io2_i_sync => io2_i_sync,
      io2_o => io2_o,
      io2_t => io2_t,
      io3_i_sync => io3_i_sync,
      io3_o => io3_o,
      io3_t => io3_t,
      ip2Bus_RdAck_core_reg => ip2Bus_RdAck_core_reg,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_RdAck_intr_reg_hole_reg_0 => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_66\,
      ip2Bus_WrAck_core_reg => ip2Bus_WrAck_core_reg,
      ip2Bus_WrAck_core_reg0 => ip2Bus_WrAck_core_reg0,
      ip2Bus_WrAck_core_reg_d1 => ip2Bus_WrAck_core_reg_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole_d1_reg_0 => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_14\,
      ip2bus_error_int => ip2bus_error_int,
      ip2intc_irpt => ip2intc_irpt,
      \ip_irpt_enable_reg_reg[13]\(9) => \INTERRUPT_CONTROL_I/p_0_in35_in\,
      \ip_irpt_enable_reg_reg[13]\(8) => \INTERRUPT_CONTROL_I/p_0_in32_in\,
      \ip_irpt_enable_reg_reg[13]\(7) => \INTERRUPT_CONTROL_I/p_0_in29_in\,
      \ip_irpt_enable_reg_reg[13]\(6) => \INTERRUPT_CONTROL_I/p_0_in26_in\,
      \ip_irpt_enable_reg_reg[13]\(5) => \INTERRUPT_CONTROL_I/p_0_in23_in\,
      \ip_irpt_enable_reg_reg[13]\(4) => \INTERRUPT_CONTROL_I/p_0_in20_in\,
      \ip_irpt_enable_reg_reg[13]\(3) => \INTERRUPT_CONTROL_I/p_0_in14_in\,
      \ip_irpt_enable_reg_reg[13]\(2) => \INTERRUPT_CONTROL_I/p_0_in11_in\,
      \ip_irpt_enable_reg_reg[13]\(1) => \INTERRUPT_CONTROL_I/p_0_in8_in\,
      \ip_irpt_enable_reg_reg[13]\(0) => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_78\,
      \ip_irpt_enable_reg_reg[13]_0\(0) => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_13\,
      ipif_glbl_irpt_enable_reg_reg => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_49\,
      irpt_rdack => \INTERRUPT_CONTROL_I/irpt_rdack\,
      irpt_rdack_d1 => \INTERRUPT_CONTROL_I/irpt_rdack_d1\,
      irpt_wrack => \INTERRUPT_CONTROL_I/irpt_wrack\,
      irpt_wrack_d1 => \INTERRUPT_CONTROL_I/irpt_wrack_d1\,
      p_0_in(0) => \INTERRUPT_CONTROL_I/p_0_in\(31),
      p_1_in => \INTERRUPT_CONTROL_I/p_1_in\,
      p_1_in10_in => \INTERRUPT_CONTROL_I/p_1_in10_in\,
      p_1_in13_in => \INTERRUPT_CONTROL_I/p_1_in13_in\,
      p_1_in19_in => \INTERRUPT_CONTROL_I/p_1_in19_in\,
      p_1_in1_in => \INTERRUPT_CONTROL_I/p_1_in1_in\,
      p_1_in22_in => \INTERRUPT_CONTROL_I/p_1_in22_in\,
      p_1_in25_in => \INTERRUPT_CONTROL_I/p_1_in25_in\,
      p_1_in28_in => \INTERRUPT_CONTROL_I/p_1_in28_in\,
      p_1_in31_in => \INTERRUPT_CONTROL_I/p_1_in31_in\,
      p_1_in34_in => \INTERRUPT_CONTROL_I/p_1_in34_in\,
      p_1_in4_in => \INTERRUPT_CONTROL_I/p_1_in4_in\,
      p_1_in7_in => \INTERRUPT_CONTROL_I/p_1_in7_in\,
      p_1_in_0 => \I_DECODER/p_1_in\,
      p_2_in => \I_DECODER/p_2_in\,
      p_4_in => \I_DECODER/p_4_in\,
      rd_ce_or_reduce_core_cmb => rd_ce_or_reduce_core_cmb,
      rd_en => rd_en,
      receive_ip2bus_error => receive_ip2bus_error,
      reset2ip_reset_int => reset2ip_reset_int,
      reset_trig0 => \SOFT_RESET_I/reset_trig0\,
      rx_fifo_empty_i => rx_fifo_empty_i,
      s_axi4_aclk => s_axi4_aclk,
      \s_axi4_rdata_i_reg[1]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_43\,
      \s_axi4_rdata_i_reg[2]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_44\,
      \s_axi4_rdata_i_reg[31]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_24\,
      \s_axi4_rdata_i_reg[3]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_22\,
      \s_axi4_rdata_i_reg[3]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_45\,
      \s_axi4_rdata_i_reg[7]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_23\,
      \s_axi4_rdata_i_reg[7]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_34\,
      \s_axi4_rdata_i_reg[7]_1\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_32\,
      \s_axi4_rdata_i_reg[7]_2\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_31\,
      s_axi4_rready => s_axi4_rready,
      s_axi4_wdata(13 downto 0) => s_axi4_wdata(13 downto 0),
      sck_o => sck_o,
      sck_t => sck_t,
      scndry_out => Rx_FIFO_Full_Fifo_d1_synced,
      spicr_1_spe_frm_axi_clk => spicr_1_spe_frm_axi_clk,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spicr_3_cpol_frm_axi_clk => spicr_3_cpol_frm_axi_clk,
      spicr_4_cpha_frm_axi_clk => spicr_4_cpha_frm_axi_clk,
      spicr_5_txfifo_rst_frm_axi_clk => spicr_5_txfifo_rst_frm_axi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => spicr_6_rxfifo_rst_frm_axi_clk,
      spicr_8_tr_inhibit_frm_axi_clk => spicr_8_tr_inhibit_frm_axi_clk,
      spisel_d1_reg_to_axi_clk => spisel_d1_reg_to_axi_clk,
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      sw_rst_cond => \SOFT_RESET_I/sw_rst_cond\,
      sw_rst_cond_d1 => \SOFT_RESET_I/sw_rst_cond_d1\,
      transmit_ip2bus_error => transmit_ip2bus_error,
      wr_ce_or_reduce_core_cmb => wr_ce_or_reduce_core_cmb
    );
\QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I\: entity work.axi_quad_spi_0_axi_qspi_enhanced_mode
     port map (
      Bus_RNW_reg => \I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_12\,
      Bus_RNW_reg_reg_0(0) => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_13\,
      Bus_RNW_reg_reg_1 => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_14\,
      Bus_RNW_reg_reg_2 => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_31\,
      Bus_RNW_reg_reg_3 => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_32\,
      Bus_RNW_reg_reg_4 => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_34\,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_50\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_51\,
      D(3) => ip2bus_data_int(7),
      D(2 downto 0) => ip2bus_data_int(3 downto 1),
      E(0) => s_axi4_rresp_i0,
      \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\ => \FIFO_EXISTS.IP2Bus_WrAck_transmit_enable\,
      \FSM_onehot_axi_full_sm_ps_reg[2]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_24\,
      \FSM_onehot_axi_full_sm_ps_reg[3]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_66\,
      \FSM_onehot_axi_full_sm_ps_reg[5]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_65\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_64\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_22\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_23\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_41\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_31\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_40\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_43\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_44\,
      \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_39\,
      \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_45\,
      Q(0) => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_20\,
      SPISR_0_CMD_Error_to_axi_clk => SPISR_0_CMD_Error_to_axi_clk,
      SPISR_1_LOOP_Back_Error_int => SPISR_1_LOOP_Back_Error_int,
      SPISR_2_MSB_Error_int => SPISR_2_MSB_Error_int,
      SPISR_4_CPOL_CPHA_Error_int => SPISR_4_CPOL_CPHA_Error_int,
      \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_51\,
      SPISSR_frm_axi_clk => SPISSR_frm_axi_clk,
      SR(0) => bus2ip_reset_ipif_inverted,
      Transmit_ip2bus_error0 => \FIFO_EXISTS.FIFO_IF_MODULE_I/Transmit_ip2bus_error0\,
      Tx_FIFO_Empty_SPISR_to_axi_clk => Tx_FIFO_Empty_SPISR_to_axi_clk,
      almost_full => TX_Fifo_full_indication,
      burst_tr_int => burst_tr_int,
      \bus2ip_BE_reg_reg[3]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_42\,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(7),
      data_valid => data_valid,
      dout(3) => data_from_rx_fifo(1),
      dout(2) => data_from_rx_fifo(2),
      dout(1) => data_from_rx_fifo(3),
      dout(0) => data_from_rx_fifo(7),
      empty => Rx_FIFO_Empty,
      interrupt_wrce_strb => \INTERRUPT_CONTROL_I/interrupt_wrce_strb\,
      intr2bus_rdack0 => \INTERRUPT_CONTROL_I/intr2bus_rdack0\,
      intr_controller_rd_ce_or_reduce => intr_controller_rd_ce_or_reduce,
      ip2Bus_RdAck_core_reg => ip2Bus_RdAck_core_reg,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_core_reg => ip2Bus_WrAck_core_reg,
      ip2Bus_WrAck_core_reg0 => ip2Bus_WrAck_core_reg0,
      ip2Bus_WrAck_core_reg_d1 => ip2Bus_WrAck_core_reg_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2bus_error_int => ip2bus_error_int,
      irpt_rdack => \INTERRUPT_CONTROL_I/irpt_rdack\,
      irpt_rdack_d1 => \INTERRUPT_CONTROL_I/irpt_rdack_d1\,
      irpt_wrack => \INTERRUPT_CONTROL_I/irpt_wrack\,
      irpt_wrack_d1 => \INTERRUPT_CONTROL_I/irpt_wrack_d1\,
      p_0_in(0) => \INTERRUPT_CONTROL_I/p_0_in\(31),
      p_1_in => \I_DECODER/p_1_in\,
      p_1_in10_in => \INTERRUPT_CONTROL_I/p_1_in10_in\,
      p_1_in13_in => \INTERRUPT_CONTROL_I/p_1_in13_in\,
      p_1_in19_in => \INTERRUPT_CONTROL_I/p_1_in19_in\,
      p_1_in1_in => \INTERRUPT_CONTROL_I/p_1_in1_in\,
      p_1_in22_in => \INTERRUPT_CONTROL_I/p_1_in22_in\,
      p_1_in25_in => \INTERRUPT_CONTROL_I/p_1_in25_in\,
      p_1_in28_in => \INTERRUPT_CONTROL_I/p_1_in28_in\,
      p_1_in31_in => \INTERRUPT_CONTROL_I/p_1_in31_in\,
      p_1_in34_in => \INTERRUPT_CONTROL_I/p_1_in34_in\,
      p_1_in4_in => \INTERRUPT_CONTROL_I/p_1_in4_in\,
      p_1_in7_in => \INTERRUPT_CONTROL_I/p_1_in7_in\,
      p_1_in_0 => \INTERRUPT_CONTROL_I/p_1_in\,
      p_2_in => \I_DECODER/p_2_in\,
      p_4_in => \I_DECODER/p_4_in\,
      rd_ce_or_reduce_core_cmb => rd_ce_or_reduce_core_cmb,
      rd_en => rd_en,
      receive_ip2bus_error => receive_ip2bus_error,
      reset2ip_reset_int => reset2ip_reset_int,
      reset_trig0 => \SOFT_RESET_I/reset_trig0\,
      rx_fifo_empty_i => rx_fifo_empty_i,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_araddr(4 downto 0) => s_axi4_araddr(4 downto 0),
      s_axi4_aresetn => s_axi4_aresetn,
      s_axi4_arid(5 downto 0) => s_axi4_arid(5 downto 0),
      s_axi4_arlen(7 downto 0) => s_axi4_arlen(7 downto 0),
      s_axi4_arready => s_axi4_arready,
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_awaddr(4 downto 0) => s_axi4_awaddr(4 downto 0),
      s_axi4_awid(5 downto 0) => s_axi4_awid(5 downto 0),
      s_axi4_awlen(7 downto 0) => s_axi4_awlen(7 downto 0),
      s_axi4_awready => s_axi4_awready,
      s_axi4_awvalid => s_axi4_awvalid,
      s_axi4_bid(5 downto 0) => s_axi4_bid(5 downto 0),
      s_axi4_bready => s_axi4_bready,
      s_axi4_bresp(0) => s_axi4_bresp(0),
      s_axi4_bvalid => s_axi4_bvalid,
      s_axi4_rdata(14 downto 0) => s_axi4_rdata(14 downto 0),
      \s_axi4_rdata_i_reg[0]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_79\,
      \s_axi4_rdata_i_reg[13]_0\(9) => \INTERRUPT_CONTROL_I/p_0_in35_in\,
      \s_axi4_rdata_i_reg[13]_0\(8) => \INTERRUPT_CONTROL_I/p_0_in32_in\,
      \s_axi4_rdata_i_reg[13]_0\(7) => \INTERRUPT_CONTROL_I/p_0_in29_in\,
      \s_axi4_rdata_i_reg[13]_0\(6) => \INTERRUPT_CONTROL_I/p_0_in26_in\,
      \s_axi4_rdata_i_reg[13]_0\(5) => \INTERRUPT_CONTROL_I/p_0_in23_in\,
      \s_axi4_rdata_i_reg[13]_0\(4) => \INTERRUPT_CONTROL_I/p_0_in20_in\,
      \s_axi4_rdata_i_reg[13]_0\(3) => \INTERRUPT_CONTROL_I/p_0_in14_in\,
      \s_axi4_rdata_i_reg[13]_0\(2) => \INTERRUPT_CONTROL_I/p_0_in11_in\,
      \s_axi4_rdata_i_reg[13]_0\(1) => \INTERRUPT_CONTROL_I/p_0_in8_in\,
      \s_axi4_rdata_i_reg[13]_0\(0) => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_78\,
      s_axi4_rid(5 downto 0) => s_axi4_rid(5 downto 0),
      s_axi4_rlast => s_axi4_rlast,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rresp(0) => s_axi4_rresp(0),
      s_axi4_wdata(6) => s_axi4_wdata(14),
      s_axi4_wdata(5 downto 4) => s_axi4_wdata(6 downto 5),
      s_axi4_wdata(3 downto 0) => s_axi4_wdata(3 downto 0),
      \s_axi4_wdata[31]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_49\,
      s_axi4_wdata_0_sp_1 => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_48\,
      s_axi4_wready => s_axi4_wready,
      s_axi4_wstrb(1 downto 0) => s_axi4_wstrb(1 downto 0),
      s_axi4_wvalid => s_axi4_wvalid,
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      scndry_out => Rx_FIFO_Full_Fifo_d1_synced,
      spicr_1_spe_frm_axi_clk => spicr_1_spe_frm_axi_clk,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spicr_3_cpol_frm_axi_clk => spicr_3_cpol_frm_axi_clk,
      spicr_4_cpha_frm_axi_clk => spicr_4_cpha_frm_axi_clk,
      spicr_5_txfifo_rst_frm_axi_clk => spicr_5_txfifo_rst_frm_axi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => spicr_6_rxfifo_rst_frm_axi_clk,
      spicr_8_tr_inhibit_frm_axi_clk => spicr_8_tr_inhibit_frm_axi_clk,
      spisel_d1_reg_to_axi_clk => spisel_d1_reg_to_axi_clk,
      sw_rst_cond => \SOFT_RESET_I/sw_rst_cond\,
      sw_rst_cond_d1 => \SOFT_RESET_I/sw_rst_cond_d1\,
      transmit_ip2bus_error => transmit_ip2bus_error,
      wr_ce_or_reduce_core_cmb => wr_ce_or_reduce_core_cmb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0_axi_quad_spi is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    s_axi4_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi4_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_awlock : in STD_LOGIC;
    s_axi4_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_awready : out STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_wlast : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_wready : out STD_LOGIC;
    s_axi4_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arlock : in STD_LOGIC;
    s_axi4_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_i : in STD_LOGIC;
    io2_o : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_i : in STD_LOGIC;
    io3_o : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    io0_1_i : in STD_LOGIC;
    io0_1_o : out STD_LOGIC;
    io0_1_t : out STD_LOGIC;
    io1_1_i : in STD_LOGIC;
    io1_1_o : out STD_LOGIC;
    io1_1_t : out STD_LOGIC;
    io2_1_i : in STD_LOGIC;
    io2_1_o : out STD_LOGIC;
    io2_1_t : out STD_LOGIC;
    io3_1_i : in STD_LOGIC;
    io3_1_o : out STD_LOGIC;
    io3_1_t : out STD_LOGIC;
    spisel : in STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    ss_1_i : in STD_LOGIC;
    ss_1_o : out STD_LOGIC;
    ss_1_t : out STD_LOGIC;
    cfgclk : out STD_LOGIC;
    cfgmclk : out STD_LOGIC;
    eos : out STD_LOGIC;
    preq : out STD_LOGIC;
    clk : in STD_LOGIC;
    gsr : in STD_LOGIC;
    gts : in STD_LOGIC;
    keyclearb : in STD_LOGIC;
    usrcclkts : in STD_LOGIC;
    usrdoneo : in STD_LOGIC;
    usrdonets : in STD_LOGIC;
    pack : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  attribute Async_Clk : integer;
  attribute Async_Clk of axi_quad_spi_0_axi_quad_spi : entity is 0;
  attribute C_BYTE_LEVEL_INTERRUPT_EN : integer;
  attribute C_BYTE_LEVEL_INTERRUPT_EN of axi_quad_spi_0_axi_quad_spi : entity is 0;
  attribute C_DUAL_QUAD_MODE : integer;
  attribute C_DUAL_QUAD_MODE of axi_quad_spi_0_axi_quad_spi : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of axi_quad_spi_0_axi_quad_spi : entity is "artix7";
  attribute C_FIFO_DEPTH : integer;
  attribute C_FIFO_DEPTH of axi_quad_spi_0_axi_quad_spi : entity is 16;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of axi_quad_spi_0_axi_quad_spi : entity is "axi_quad_spi_inst";
  attribute C_LSB_STUP : integer;
  attribute C_LSB_STUP of axi_quad_spi_0_axi_quad_spi : entity is 0;
  attribute C_NEW_SEQ_EN : integer;
  attribute C_NEW_SEQ_EN of axi_quad_spi_0_axi_quad_spi : entity is 1;
  attribute C_NUM_SS_BITS : integer;
  attribute C_NUM_SS_BITS of axi_quad_spi_0_axi_quad_spi : entity is 1;
  attribute C_NUM_TRANSFER_BITS : integer;
  attribute C_NUM_TRANSFER_BITS of axi_quad_spi_0_axi_quad_spi : entity is 8;
  attribute C_SCK_RATIO : integer;
  attribute C_SCK_RATIO of axi_quad_spi_0_axi_quad_spi : entity is 2;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of axi_quad_spi_0_axi_quad_spi : entity is 0;
  attribute C_SHARED_STARTUP : integer;
  attribute C_SHARED_STARTUP of axi_quad_spi_0_axi_quad_spi : entity is 0;
  attribute C_SPI_MEMORY : integer;
  attribute C_SPI_MEMORY of axi_quad_spi_0_axi_quad_spi : entity is 3;
  attribute C_SPI_MEM_ADDR_BITS : integer;
  attribute C_SPI_MEM_ADDR_BITS of axi_quad_spi_0_axi_quad_spi : entity is 24;
  attribute C_SPI_MODE : integer;
  attribute C_SPI_MODE of axi_quad_spi_0_axi_quad_spi : entity is 2;
  attribute C_SUB_FAMILY : string;
  attribute C_SUB_FAMILY of axi_quad_spi_0_axi_quad_spi : entity is "artix7";
  attribute C_S_AXI4_ADDR_WIDTH : integer;
  attribute C_S_AXI4_ADDR_WIDTH of axi_quad_spi_0_axi_quad_spi : entity is 24;
  attribute C_S_AXI4_BASEADDR : string;
  attribute C_S_AXI4_BASEADDR of axi_quad_spi_0_axi_quad_spi : entity is "32'b11111111111111111111111111111111";
  attribute C_S_AXI4_DATA_WIDTH : integer;
  attribute C_S_AXI4_DATA_WIDTH of axi_quad_spi_0_axi_quad_spi : entity is 32;
  attribute C_S_AXI4_HIGHADDR : string;
  attribute C_S_AXI4_HIGHADDR of axi_quad_spi_0_axi_quad_spi : entity is "32'b00000000000000000000000000000000";
  attribute C_S_AXI4_ID_WIDTH : integer;
  attribute C_S_AXI4_ID_WIDTH of axi_quad_spi_0_axi_quad_spi : entity is 6;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of axi_quad_spi_0_axi_quad_spi : entity is 7;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of axi_quad_spi_0_axi_quad_spi : entity is 32;
  attribute C_TYPE_OF_AXI4_INTERFACE : integer;
  attribute C_TYPE_OF_AXI4_INTERFACE of axi_quad_spi_0_axi_quad_spi : entity is 1;
  attribute C_UC_FAMILY : integer;
  attribute C_UC_FAMILY of axi_quad_spi_0_axi_quad_spi : entity is 0;
  attribute C_USE_STARTUP : integer;
  attribute C_USE_STARTUP of axi_quad_spi_0_axi_quad_spi : entity is 0;
  attribute C_USE_STARTUP_EXT : integer;
  attribute C_USE_STARTUP_EXT of axi_quad_spi_0_axi_quad_spi : entity is 0;
  attribute C_XIP_MODE : integer;
  attribute C_XIP_MODE of axi_quad_spi_0_axi_quad_spi : entity is 0;
  attribute C_XIP_PERF_MODE : integer;
  attribute C_XIP_PERF_MODE of axi_quad_spi_0_axi_quad_spi : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_quad_spi_0_axi_quad_spi : entity is "axi_quad_spi";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axi_quad_spi_0_axi_quad_spi : entity is "yes";
end axi_quad_spi_0_axi_quad_spi;

architecture STRUCTURE of axi_quad_spi_0_axi_quad_spi is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi4_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi4_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi4_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute initialval : string;
  attribute initialval of spisel : signal is "VCC";
begin
  cfgclk <= \<const0>\;
  cfgmclk <= \<const0>\;
  eos <= \<const0>\;
  io0_1_o <= \<const0>\;
  io0_1_t <= \<const0>\;
  io1_1_o <= \<const0>\;
  io1_1_t <= \<const0>\;
  io2_1_o <= \<const0>\;
  io2_1_t <= \<const0>\;
  io3_1_o <= \<const0>\;
  io3_1_t <= \<const0>\;
  preq <= \<const0>\;
  s_axi4_bresp(1) <= \^s_axi4_bresp\(1);
  s_axi4_bresp(0) <= \<const0>\;
  s_axi4_rdata(31) <= \^s_axi4_rdata\(31);
  s_axi4_rdata(30) <= \<const0>\;
  s_axi4_rdata(29) <= \<const0>\;
  s_axi4_rdata(28) <= \<const0>\;
  s_axi4_rdata(27) <= \<const0>\;
  s_axi4_rdata(26) <= \<const0>\;
  s_axi4_rdata(25) <= \<const0>\;
  s_axi4_rdata(24) <= \<const0>\;
  s_axi4_rdata(23) <= \<const0>\;
  s_axi4_rdata(22) <= \<const0>\;
  s_axi4_rdata(21) <= \<const0>\;
  s_axi4_rdata(20) <= \<const0>\;
  s_axi4_rdata(19) <= \<const0>\;
  s_axi4_rdata(18) <= \<const0>\;
  s_axi4_rdata(17) <= \<const0>\;
  s_axi4_rdata(16) <= \<const0>\;
  s_axi4_rdata(15) <= \<const0>\;
  s_axi4_rdata(14) <= \<const0>\;
  s_axi4_rdata(13 downto 0) <= \^s_axi4_rdata\(13 downto 0);
  s_axi4_rresp(1) <= \^s_axi4_rresp\(1);
  s_axi4_rresp(0) <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  ss_1_o <= \<const0>\;
  ss_1_t <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\NO_DUAL_QUAD_MODE.QSPI_NORMAL\: entity work.axi_quad_spi_0_axi_quad_spi_top
     port map (
      ext_spi_clk => ext_spi_clk,
      io0_i => io0_i,
      io0_o => io0_o,
      io0_t => io0_t,
      io1_i => io1_i,
      io1_o => io1_o,
      io1_t => io1_t,
      io2_i => io2_i,
      io2_o => io2_o,
      io2_t => io2_t,
      io3_i => io3_i,
      io3_o => io3_o,
      io3_t => io3_t,
      ip2intc_irpt => ip2intc_irpt,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_araddr(4 downto 0) => s_axi4_araddr(6 downto 2),
      s_axi4_aresetn => s_axi4_aresetn,
      s_axi4_arid(5 downto 0) => s_axi4_arid(5 downto 0),
      s_axi4_arlen(7 downto 0) => s_axi4_arlen(7 downto 0),
      s_axi4_arready => s_axi4_arready,
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_awaddr(4 downto 0) => s_axi4_awaddr(6 downto 2),
      s_axi4_awid(5 downto 0) => s_axi4_awid(5 downto 0),
      s_axi4_awlen(7 downto 0) => s_axi4_awlen(7 downto 0),
      s_axi4_awready => s_axi4_awready,
      s_axi4_awvalid => s_axi4_awvalid,
      s_axi4_bid(5 downto 0) => s_axi4_bid(5 downto 0),
      s_axi4_bready => s_axi4_bready,
      s_axi4_bresp(0) => \^s_axi4_bresp\(1),
      s_axi4_bvalid => s_axi4_bvalid,
      s_axi4_rdata(14) => \^s_axi4_rdata\(31),
      s_axi4_rdata(13 downto 0) => \^s_axi4_rdata\(13 downto 0),
      s_axi4_rid(5 downto 0) => s_axi4_rid(5 downto 0),
      s_axi4_rlast => s_axi4_rlast,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rresp(0) => \^s_axi4_rresp\(1),
      s_axi4_wdata(14) => s_axi4_wdata(31),
      s_axi4_wdata(13 downto 0) => s_axi4_wdata(13 downto 0),
      s_axi4_wready => s_axi4_wready,
      s_axi4_wstrb(1) => s_axi4_wstrb(3),
      s_axi4_wstrb(0) => s_axi4_wstrb(0),
      s_axi4_wvalid => s_axi4_wvalid,
      s_axi_rvalid_i_reg => s_axi4_rvalid,
      sck_o => sck_o,
      sck_t => sck_t,
      ss_o(0) => ss_o(0),
      ss_t => ss_t
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_quad_spi_0 is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    s_axi4_aresetn : in STD_LOGIC;
    s_axi4_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_awlock : in STD_LOGIC;
    s_axi4_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_awready : out STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_wlast : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_wready : out STD_LOGIC;
    s_axi4_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arlock : in STD_LOGIC;
    s_axi4_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_i : in STD_LOGIC;
    io2_o : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_i : in STD_LOGIC;
    io3_o : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_quad_spi_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_quad_spi_0 : entity is "axi_quad_spi_0,axi_quad_spi,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axi_quad_spi_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of axi_quad_spi_0 : entity is "axi_quad_spi,Vivado 2022.2";
end axi_quad_spi_0;

architecture STRUCTURE of axi_quad_spi_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi4_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi4_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi4_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_U0_cfgclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_cfgmclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_eos_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io0_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io0_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io1_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io1_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io2_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io2_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io3_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io3_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_preq_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ss_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ss_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi4_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 30 downto 14 );
  signal NLW_U0_s_axi4_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute Async_Clk : integer;
  attribute Async_Clk of U0 : label is 0;
  attribute C_BYTE_LEVEL_INTERRUPT_EN : integer;
  attribute C_BYTE_LEVEL_INTERRUPT_EN of U0 : label is 0;
  attribute C_DUAL_QUAD_MODE : integer;
  attribute C_DUAL_QUAD_MODE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FIFO_DEPTH : integer;
  attribute C_FIFO_DEPTH of U0 : label is 16;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of U0 : label is "axi_quad_spi_inst";
  attribute C_LSB_STUP : integer;
  attribute C_LSB_STUP of U0 : label is 0;
  attribute C_NEW_SEQ_EN : integer;
  attribute C_NEW_SEQ_EN of U0 : label is 1;
  attribute C_NUM_SS_BITS : integer;
  attribute C_NUM_SS_BITS of U0 : label is 1;
  attribute C_NUM_TRANSFER_BITS : integer;
  attribute C_NUM_TRANSFER_BITS of U0 : label is 8;
  attribute C_SCK_RATIO : integer;
  attribute C_SCK_RATIO of U0 : label is 2;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SHARED_STARTUP : integer;
  attribute C_SHARED_STARTUP of U0 : label is 0;
  attribute C_SPI_MEMORY : integer;
  attribute C_SPI_MEMORY of U0 : label is 3;
  attribute C_SPI_MEM_ADDR_BITS : integer;
  attribute C_SPI_MEM_ADDR_BITS of U0 : label is 24;
  attribute C_SPI_MODE : integer;
  attribute C_SPI_MODE of U0 : label is 2;
  attribute C_SUB_FAMILY : string;
  attribute C_SUB_FAMILY of U0 : label is "artix7";
  attribute C_S_AXI4_ADDR_WIDTH : integer;
  attribute C_S_AXI4_ADDR_WIDTH of U0 : label is 24;
  attribute C_S_AXI4_BASEADDR : string;
  attribute C_S_AXI4_BASEADDR of U0 : label is "32'b11111111111111111111111111111111";
  attribute C_S_AXI4_DATA_WIDTH : integer;
  attribute C_S_AXI4_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI4_HIGHADDR : string;
  attribute C_S_AXI4_HIGHADDR of U0 : label is "32'b00000000000000000000000000000000";
  attribute C_S_AXI4_ID_WIDTH : integer;
  attribute C_S_AXI4_ID_WIDTH of U0 : label is 6;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 7;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TYPE_OF_AXI4_INTERFACE : integer;
  attribute C_TYPE_OF_AXI4_INTERFACE of U0 : label is 1;
  attribute C_UC_FAMILY : integer;
  attribute C_UC_FAMILY of U0 : label is 0;
  attribute C_USE_STARTUP : integer;
  attribute C_USE_STARTUP of U0 : label is 0;
  attribute C_USE_STARTUP_EXT : integer;
  attribute C_USE_STARTUP_EXT of U0 : label is 0;
  attribute C_XIP_MODE : integer;
  attribute C_XIP_MODE of U0 : label is 0;
  attribute C_XIP_PERF_MODE : integer;
  attribute C_XIP_PERF_MODE of U0 : label is 1;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of ext_spi_clk : signal is "xilinx.com:signal:clock:1.0 spi_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ext_spi_clk : signal is "XIL_INTERFACENAME spi_clk, ASSOCIATED_BUSIF SPI_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of io0_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO0_I";
  attribute x_interface_parameter of io0_i : signal is "XIL_INTERFACENAME SPI_0, BOARD.ASSOCIATED_PARAM QSPI_BOARD_INTERFACE";
  attribute x_interface_info of io0_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO0_O";
  attribute x_interface_info of io0_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO0_T";
  attribute x_interface_info of io1_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO1_I";
  attribute x_interface_info of io1_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO1_O";
  attribute x_interface_info of io1_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO1_T";
  attribute x_interface_info of io2_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO2_I";
  attribute x_interface_info of io2_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO2_O";
  attribute x_interface_info of io2_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO2_T";
  attribute x_interface_info of io3_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO3_I";
  attribute x_interface_info of io3_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO3_O";
  attribute x_interface_info of io3_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO3_T";
  attribute x_interface_info of ip2intc_irpt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute x_interface_parameter of ip2intc_irpt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY EDGE_RISING, PORTWIDTH 1";
  attribute x_interface_info of s_axi4_aclk : signal is "xilinx.com:signal:clock:1.0 full_clk CLK";
  attribute x_interface_parameter of s_axi4_aclk : signal is "XIL_INTERFACENAME full_clk, ASSOCIATED_BUSIF AXI_FULL, ASSOCIATED_RESET s_axi4_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of s_axi4_aresetn : signal is "xilinx.com:signal:reset:1.0 full_reset RST";
  attribute x_interface_parameter of s_axi4_aresetn : signal is "XIL_INTERFACENAME full_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi4_arlock : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARLOCK";
  attribute x_interface_info of s_axi4_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARREADY";
  attribute x_interface_info of s_axi4_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARVALID";
  attribute x_interface_info of s_axi4_awlock : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWLOCK";
  attribute x_interface_info of s_axi4_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWREADY";
  attribute x_interface_info of s_axi4_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWVALID";
  attribute x_interface_info of s_axi4_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL BREADY";
  attribute x_interface_info of s_axi4_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL BVALID";
  attribute x_interface_info of s_axi4_rlast : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RLAST";
  attribute x_interface_info of s_axi4_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RREADY";
  attribute x_interface_info of s_axi4_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RVALID";
  attribute x_interface_info of s_axi4_wlast : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WLAST";
  attribute x_interface_info of s_axi4_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WREADY";
  attribute x_interface_info of s_axi4_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WVALID";
  attribute x_interface_info of sck_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 SCK_I";
  attribute x_interface_info of sck_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 SCK_O";
  attribute x_interface_info of sck_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 SCK_T";
  attribute x_interface_info of ss_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 SS_T";
  attribute x_interface_info of s_axi4_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARADDR";
  attribute x_interface_info of s_axi4_arburst : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARBURST";
  attribute x_interface_info of s_axi4_arcache : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARCACHE";
  attribute x_interface_info of s_axi4_arid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARID";
  attribute x_interface_info of s_axi4_arlen : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARLEN";
  attribute x_interface_info of s_axi4_arprot : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARPROT";
  attribute x_interface_info of s_axi4_arsize : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARSIZE";
  attribute x_interface_info of s_axi4_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWADDR";
  attribute x_interface_info of s_axi4_awburst : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWBURST";
  attribute x_interface_info of s_axi4_awcache : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWCACHE";
  attribute x_interface_info of s_axi4_awid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWID";
  attribute x_interface_parameter of s_axi4_awid : signal is "XIL_INTERFACENAME AXI_FULL, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 6, ADDR_WIDTH 24, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi4_awlen : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWLEN";
  attribute x_interface_info of s_axi4_awprot : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWPROT";
  attribute x_interface_info of s_axi4_awsize : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWSIZE";
  attribute x_interface_info of s_axi4_bid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL BID";
  attribute x_interface_info of s_axi4_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL BRESP";
  attribute x_interface_info of s_axi4_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RDATA";
  attribute x_interface_info of s_axi4_rid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RID";
  attribute x_interface_info of s_axi4_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RRESP";
  attribute x_interface_info of s_axi4_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WDATA";
  attribute x_interface_info of s_axi4_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WSTRB";
  attribute x_interface_info of ss_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 SS_I";
  attribute x_interface_info of ss_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 SS_O";
begin
  s_axi4_bresp(1) <= \^s_axi4_bresp\(1);
  s_axi4_bresp(0) <= \<const0>\;
  s_axi4_rdata(31) <= \^s_axi4_rdata\(31);
  s_axi4_rdata(30) <= \<const0>\;
  s_axi4_rdata(29) <= \<const0>\;
  s_axi4_rdata(28) <= \<const0>\;
  s_axi4_rdata(27) <= \<const0>\;
  s_axi4_rdata(26) <= \<const0>\;
  s_axi4_rdata(25) <= \<const0>\;
  s_axi4_rdata(24) <= \<const0>\;
  s_axi4_rdata(23) <= \<const0>\;
  s_axi4_rdata(22) <= \<const0>\;
  s_axi4_rdata(21) <= \<const0>\;
  s_axi4_rdata(20) <= \<const0>\;
  s_axi4_rdata(19) <= \<const0>\;
  s_axi4_rdata(18) <= \<const0>\;
  s_axi4_rdata(17) <= \<const0>\;
  s_axi4_rdata(16) <= \<const0>\;
  s_axi4_rdata(15) <= \<const0>\;
  s_axi4_rdata(14) <= \<const0>\;
  s_axi4_rdata(13 downto 0) <= \^s_axi4_rdata\(13 downto 0);
  s_axi4_rresp(1) <= \^s_axi4_rresp\(1);
  s_axi4_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.axi_quad_spi_0_axi_quad_spi
     port map (
      cfgclk => NLW_U0_cfgclk_UNCONNECTED,
      cfgmclk => NLW_U0_cfgmclk_UNCONNECTED,
      clk => '0',
      eos => NLW_U0_eos_UNCONNECTED,
      ext_spi_clk => ext_spi_clk,
      gsr => '0',
      gts => '0',
      io0_1_i => '0',
      io0_1_o => NLW_U0_io0_1_o_UNCONNECTED,
      io0_1_t => NLW_U0_io0_1_t_UNCONNECTED,
      io0_i => io0_i,
      io0_o => io0_o,
      io0_t => io0_t,
      io1_1_i => '0',
      io1_1_o => NLW_U0_io1_1_o_UNCONNECTED,
      io1_1_t => NLW_U0_io1_1_t_UNCONNECTED,
      io1_i => io1_i,
      io1_o => io1_o,
      io1_t => io1_t,
      io2_1_i => '0',
      io2_1_o => NLW_U0_io2_1_o_UNCONNECTED,
      io2_1_t => NLW_U0_io2_1_t_UNCONNECTED,
      io2_i => io2_i,
      io2_o => io2_o,
      io2_t => io2_t,
      io3_1_i => '0',
      io3_1_o => NLW_U0_io3_1_o_UNCONNECTED,
      io3_1_t => NLW_U0_io3_1_t_UNCONNECTED,
      io3_i => io3_i,
      io3_o => io3_o,
      io3_t => io3_t,
      ip2intc_irpt => ip2intc_irpt,
      keyclearb => '0',
      pack => '0',
      preq => NLW_U0_preq_UNCONNECTED,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_araddr(23 downto 7) => B"00000000000000000",
      s_axi4_araddr(6 downto 2) => s_axi4_araddr(6 downto 2),
      s_axi4_araddr(1 downto 0) => B"00",
      s_axi4_arburst(1 downto 0) => B"00",
      s_axi4_arcache(3 downto 0) => B"0000",
      s_axi4_aresetn => s_axi4_aresetn,
      s_axi4_arid(5 downto 0) => s_axi4_arid(5 downto 0),
      s_axi4_arlen(7 downto 0) => s_axi4_arlen(7 downto 0),
      s_axi4_arlock => '0',
      s_axi4_arprot(2 downto 0) => B"000",
      s_axi4_arready => s_axi4_arready,
      s_axi4_arsize(2 downto 0) => B"000",
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_awaddr(23 downto 7) => B"00000000000000000",
      s_axi4_awaddr(6 downto 2) => s_axi4_awaddr(6 downto 2),
      s_axi4_awaddr(1 downto 0) => B"00",
      s_axi4_awburst(1 downto 0) => B"00",
      s_axi4_awcache(3 downto 0) => B"0000",
      s_axi4_awid(5 downto 0) => s_axi4_awid(5 downto 0),
      s_axi4_awlen(7 downto 0) => s_axi4_awlen(7 downto 0),
      s_axi4_awlock => '0',
      s_axi4_awprot(2 downto 0) => B"000",
      s_axi4_awready => s_axi4_awready,
      s_axi4_awsize(2 downto 0) => B"000",
      s_axi4_awvalid => s_axi4_awvalid,
      s_axi4_bid(5 downto 0) => s_axi4_bid(5 downto 0),
      s_axi4_bready => s_axi4_bready,
      s_axi4_bresp(1) => \^s_axi4_bresp\(1),
      s_axi4_bresp(0) => NLW_U0_s_axi4_bresp_UNCONNECTED(0),
      s_axi4_bvalid => s_axi4_bvalid,
      s_axi4_rdata(31) => \^s_axi4_rdata\(31),
      s_axi4_rdata(30 downto 14) => NLW_U0_s_axi4_rdata_UNCONNECTED(30 downto 14),
      s_axi4_rdata(13 downto 0) => \^s_axi4_rdata\(13 downto 0),
      s_axi4_rid(5 downto 0) => s_axi4_rid(5 downto 0),
      s_axi4_rlast => s_axi4_rlast,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rresp(1) => \^s_axi4_rresp\(1),
      s_axi4_rresp(0) => NLW_U0_s_axi4_rresp_UNCONNECTED(0),
      s_axi4_rvalid => s_axi4_rvalid,
      s_axi4_wdata(31) => s_axi4_wdata(31),
      s_axi4_wdata(30 downto 14) => B"00000000000000000",
      s_axi4_wdata(13 downto 0) => s_axi4_wdata(13 downto 0),
      s_axi4_wlast => '0',
      s_axi4_wready => s_axi4_wready,
      s_axi4_wstrb(3) => s_axi4_wstrb(3),
      s_axi4_wstrb(2 downto 1) => B"00",
      s_axi4_wstrb(0) => s_axi4_wstrb(0),
      s_axi4_wvalid => s_axi4_wvalid,
      s_axi_aclk => '0',
      s_axi_araddr(6 downto 0) => B"0000000",
      s_axi_aresetn => '0',
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arvalid => '0',
      s_axi_awaddr(6 downto 0) => B"0000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => '0',
      sck_i => '0',
      sck_o => sck_o,
      sck_t => sck_t,
      spisel => '1',
      ss_1_i => '0',
      ss_1_o => NLW_U0_ss_1_o_UNCONNECTED,
      ss_1_t => NLW_U0_ss_1_t_UNCONNECTED,
      ss_i(0) => '0',
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      usrcclkts => '0',
      usrdoneo => '1',
      usrdonets => '0'
    );
end STRUCTURE;
