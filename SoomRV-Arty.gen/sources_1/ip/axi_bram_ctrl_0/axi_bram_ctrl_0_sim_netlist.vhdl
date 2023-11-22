-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Nov  3 18:07:49 2023
-- Host        : m-desktop running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode funcsim
--               SoomRV-Arty.gen/sources_1/ip/axi_bram_ctrl_0/axi_bram_ctrl_0_sim_netlist.vhdl
-- Design      : axi_bram_ctrl_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_0_SRL_FIFO is
  port (
    bid_gets_fifo_load : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ : out STD_LOGIC;
    s_axi_awid_1_sp_1 : out STD_LOGIC;
    s_axi_awid_0_sp_1 : out STD_LOGIC;
    \Addr_Counters[3].FDRE_I_0\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bid_gets_fifo_load_d1_reg : in STD_LOGIC;
    bid_gets_fifo_load_d1_reg_0 : in STD_LOGIC;
    bid_gets_fifo_load_d1_reg_1 : in STD_LOGIC;
    aw_active_re : in STD_LOGIC;
    bid_gets_fifo_load_d1 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    Data_Exists_DFF_0 : in STD_LOGIC;
    bid_gets_fifo_load_d1_reg_2 : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    axi_wdata_full_reg : in STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ : in STD_LOGIC;
    axi_wr_burst : in STD_LOGIC;
    AW2Arb_BVALID_Cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_0_SRL_FIFO : entity is "SRL_FIFO";
end axi_bram_ctrl_0_SRL_FIFO;

architecture STRUCTURE of axi_bram_ctrl_0_SRL_FIFO is
  signal \Addr_Counters[0].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal Data_Exists_DFF_i_2_n_0 : STD_LOGIC;
  signal Data_Exists_DFF_i_3_n_0 : STD_LOGIC;
  signal \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[0]\ : STD_LOGIC;
  signal \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal \axi_bid_int[1]_i_2_n_0\ : STD_LOGIC;
  signal bid_fifo_not_empty : STD_LOGIC;
  signal bid_fifo_rd : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^bid_gets_fifo_load\ : STD_LOGIC;
  signal bid_gets_fifo_load_d1_i_2_n_0 : STD_LOGIC;
  signal s_axi_awid_0_sn_1 : STD_LOGIC;
  signal s_axi_awid_1_sn_1 : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute BOX_TYPE of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of Data_Exists_DFF : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of Data_Exists_DFF : label is "VCC:CE";
  attribute BOX_TYPE of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gint_inst.abcv4_0_int_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gint_inst.abcv4_0_int_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\gint_inst.abcv4_0_int_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "U0/\gint_inst.abcv4_0_int_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I ";
begin
  \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ <= \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[0]\;
  \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ <= \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]\;
  bid_gets_fifo_load <= \^bid_gets_fifo_load\;
  s_axi_awid_0_sp_1 <= s_axi_awid_0_sn_1;
  s_axi_awid_1_sp_1 <= s_axi_awid_1_sn_1;
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_3,
      Q => \Addr_Counters[0].FDRE_I_n_0\,
      R => \Addr_Counters[3].FDRE_I_0\
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      CYINIT => CI,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \Addr_Counters[2].FDRE_I_n_0\,
      DI(1) => \Addr_Counters[1].FDRE_I_n_0\,
      DI(0) => \Addr_Counters[0].FDRE_I_n_0\,
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(3) => \Addr_Counters[3].XORCY_I_i_1_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[1]_i_2_n_0\,
      I5 => \Addr_Counters[0].FDRE_I_n_0\,
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => aw_active_re,
      I1 => \axi_bid_int[1]_i_2_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      I4 => \Addr_Counters[3].FDRE_I_n_0\,
      I5 => \Addr_Counters[2].FDRE_I_n_0\,
      O => CI
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_2,
      Q => \Addr_Counters[1].FDRE_I_n_0\,
      R => \Addr_Counters[3].FDRE_I_0\
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[0].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[1]_i_2_n_0\,
      I5 => \Addr_Counters[1].FDRE_I_n_0\,
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_1,
      Q => \Addr_Counters[2].FDRE_I_n_0\,
      R => \Addr_Counters[3].FDRE_I_0\
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[0].FDRE_I_n_0\,
      I1 => \Addr_Counters[1].FDRE_I_n_0\,
      I2 => \Addr_Counters[3].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[1]_i_2_n_0\,
      I5 => \Addr_Counters[2].FDRE_I_n_0\,
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_0,
      Q => \Addr_Counters[3].FDRE_I_n_0\,
      R => \Addr_Counters[3].FDRE_I_0\
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[0].FDRE_I_n_0\,
      I1 => \Addr_Counters[1].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[1]_i_2_n_0\,
      I5 => \Addr_Counters[3].FDRE_I_n_0\,
      O => \Addr_Counters[3].XORCY_I_i_1_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => bid_fifo_not_empty,
      R => \Addr_Counters[3].FDRE_I_0\
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF20022"
    )
        port map (
      I0 => bid_gets_fifo_load_d1_reg_1,
      I1 => bid_gets_fifo_load_d1_reg_0,
      I2 => Data_Exists_DFF_i_2_n_0,
      I3 => Data_Exists_DFF_i_3_n_0,
      I4 => bid_fifo_not_empty,
      O => D
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA3F"
    )
        port map (
      I0 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]\,
      I1 => Data_Exists_DFF_0,
      I2 => s_axi_bready,
      I3 => bid_gets_fifo_load_d1_i_2_n_0,
      I4 => bid_gets_fifo_load_d1,
      O => Data_Exists_DFF_i_2_n_0
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Addr_Counters[0].FDRE_I_n_0\,
      I1 => \Addr_Counters[1].FDRE_I_n_0\,
      I2 => \Addr_Counters[3].FDRE_I_n_0\,
      I3 => \Addr_Counters[2].FDRE_I_n_0\,
      O => Data_Exists_DFF_i_3_n_0
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(1),
      Q => bid_fifo_rd(1)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(0),
      Q => bid_fifo_rd(0)
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08A8"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\,
      I1 => s_axi_wlast,
      I2 => axi_wdata_full_reg,
      I3 => axi_wr_burst,
      O => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[0]\
    );
\axi_bid_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACAFACA0"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => bid_fifo_rd(0),
      I2 => \^bid_gets_fifo_load\,
      I3 => \axi_bid_int[1]_i_2_n_0\,
      I4 => s_axi_bid(0),
      O => s_axi_awid_0_sn_1
    );
\axi_bid_int[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACAFACA0"
    )
        port map (
      I0 => s_axi_awid(1),
      I1 => bid_fifo_rd(1),
      I2 => \^bid_gets_fifo_load\,
      I3 => \axi_bid_int[1]_i_2_n_0\,
      I4 => s_axi_bid(1),
      O => s_axi_awid_1_sn_1
    );
\axi_bid_int[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888888AAA8A8A8"
    )
        port map (
      I0 => bid_fifo_not_empty,
      I1 => bid_gets_fifo_load_d1,
      I2 => bid_gets_fifo_load_d1_i_2_n_0,
      I3 => s_axi_bready,
      I4 => Data_Exists_DFF_0,
      I5 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]\,
      O => \axi_bid_int[1]_i_2_n_0\
    );
axi_bvalid_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F7F7F7F7F7F7F"
    )
        port map (
      I0 => bid_gets_fifo_load_d1_reg_2,
      I1 => s_axi_wlast,
      I2 => s_axi_wvalid,
      I3 => axi_wdata_full_reg,
      I4 => bid_gets_fifo_load_d1_reg_1,
      I5 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[0]\,
      O => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]\
    );
bid_gets_fifo_load_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010000000100"
    )
        port map (
      I0 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[1]\,
      I1 => bid_gets_fifo_load_d1_reg,
      I2 => bid_gets_fifo_load_d1_reg_0,
      I3 => bid_gets_fifo_load_d1_reg_1,
      I4 => bid_fifo_not_empty,
      I5 => bid_gets_fifo_load_d1_i_2_n_0,
      O => \^bid_gets_fifo_load\
    );
bid_gets_fifo_load_d1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(2),
      I1 => AW2Arb_BVALID_Cnt(1),
      I2 => AW2Arb_BVALID_Cnt(0),
      O => bid_gets_fifo_load_d1_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_0_sng_port_arb is
  port (
    s_axi_awready : out STD_LOGIC;
    axi_awready_cmb : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    axi_arready_cmb : out STD_LOGIC;
    last_arb_won_reg_0 : out STD_LOGIC;
    aw_active_reg_0 : out STD_LOGIC;
    ar_active_reg_0 : out STD_LOGIC;
    s_axi_awburst_0_sp_1 : out STD_LOGIC;
    aw_active_re : out STD_LOGIC;
    curr_narrow_burst_en : out STD_LOGIC;
    s_axi_arlen_0_sp_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_arb_sm_cs_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_arb_sm_cs_reg[1]_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ : out STD_LOGIC;
    last_arb_won_reg_1 : out STD_LOGIC;
    last_arb_won_cmb : out STD_LOGIC;
    wea : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aw_active_reg_1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    last_arb_won_reg_2 : in STD_LOGIC;
    aw_active_reg_2 : in STD_LOGIC;
    ar_active_reg_1 : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_6_0\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NARROW_EN.curr_narrow_burst_reg\ : in STD_LOGIC;
    \GEN_NARROW_EN.curr_narrow_burst_reg_0\ : in STD_LOGIC;
    \wrap_burst_total_reg[0]\ : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NO_RD_CMD_OPT.brst_zero_reg\ : in STD_LOGIC;
    \save_init_bram_addr_ld_reg[13]\ : in STD_LOGIC;
    \FSM_sequential_arb_sm_cs_reg[0]_1\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    axi_awready_int_reg_0 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \FSM_sequential_arb_sm_cs_reg[0]_2\ : in STD_LOGIC;
    axi_arready_int_reg_0 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_0_sng_port_arb : entity is "sng_port_arb";
end axi_bram_ctrl_0_sng_port_arb;

architecture STRUCTURE of axi_bram_ctrl_0_sng_port_arb is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_arb_sm_cs_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_sequential_arb_sm_cs_reg[1]_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.axi_rlast_int_reg\ : STD_LOGIC;
  signal \^ar_active_reg_0\ : STD_LOGIC;
  signal \^aw_active_re\ : STD_LOGIC;
  signal \^aw_active_reg_0\ : STD_LOGIC;
  signal \^axi_arready_cmb\ : STD_LOGIC;
  signal axi_arready_int_i_4_n_0 : STD_LOGIC;
  signal \^axi_awready_cmb\ : STD_LOGIC;
  signal \^last_arb_won_reg_0\ : STD_LOGIC;
  signal s_axi_arlen_0_sn_1 : STD_LOGIC;
  signal s_axi_awburst_0_sn_1 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_arb_sm_cs_reg[0]\ : label is "wr_data:01,idle:00,rd_data:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_arb_sm_cs_reg[1]\ : label is "wr_data:01,idle:00,rd_data:10";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_int_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_arready_int_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_arready_int_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of last_arb_won_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_10 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_11 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_12 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_13 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_14 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_15 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_16 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_5 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_6 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_7 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_8 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of xpm_memory_base_inst_i_9 : label is "soft_lutpair6";
begin
  E(0) <= \^e\(0);
  \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ <= \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]\;
  \FSM_sequential_arb_sm_cs_reg[0]_0\ <= \^fsm_sequential_arb_sm_cs_reg[0]_0\;
  \FSM_sequential_arb_sm_cs_reg[1]_0\ <= \^fsm_sequential_arb_sm_cs_reg[1]_0\;
  \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ <= \^gen_no_rd_cmd_opt.axi_rlast_int_reg\;
  ar_active_reg_0 <= \^ar_active_reg_0\;
  aw_active_re <= \^aw_active_re\;
  aw_active_reg_0 <= \^aw_active_reg_0\;
  axi_arready_cmb <= \^axi_arready_cmb\;
  axi_awready_cmb <= \^axi_awready_cmb\;
  last_arb_won_reg_0 <= \^last_arb_won_reg_0\;
  s_axi_arlen_0_sp_1 <= s_axi_arlen_0_sn_1;
  s_axi_awburst_0_sp_1 <= s_axi_awburst_0_sn_1;
\FSM_sequential_arb_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA08F008FAF8F0F8"
    )
        port map (
      I0 => axi_awready_int_reg_0,
      I1 => \FSM_sequential_arb_sm_cs[0]_i_2_n_0\,
      I2 => \^fsm_sequential_arb_sm_cs_reg[0]_0\,
      I3 => \^fsm_sequential_arb_sm_cs_reg[1]_0\,
      I4 => \FSM_sequential_arb_sm_cs_reg[0]_1\,
      I5 => \FSM_sequential_arb_sm_cs_reg[0]_2\,
      O => \FSM_sequential_arb_sm_cs[0]_i_1_n_0\
    );
\FSM_sequential_arb_sm_cs[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^last_arb_won_reg_0\,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      O => \FSM_sequential_arb_sm_cs[0]_i_2_n_0\
    );
\FSM_sequential_arb_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CFFFFC4CC0000"
    )
        port map (
      I0 => \^last_arb_won_reg_0\,
      I1 => s_axi_arvalid,
      I2 => \^fsm_sequential_arb_sm_cs_reg[0]_0\,
      I3 => s_axi_awvalid,
      I4 => \FSM_sequential_arb_sm_cs[1]_i_2_n_0\,
      I5 => \^fsm_sequential_arb_sm_cs_reg[1]_0\,
      O => \FSM_sequential_arb_sm_cs[1]_i_1_n_0\
    );
\FSM_sequential_arb_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFECCFECFCECCCE"
    )
        port map (
      I0 => axi_awready_int_reg_0,
      I1 => axi_arready_int_i_4_n_0,
      I2 => \^fsm_sequential_arb_sm_cs_reg[0]_0\,
      I3 => \^fsm_sequential_arb_sm_cs_reg[1]_0\,
      I4 => \FSM_sequential_arb_sm_cs_reg[0]_1\,
      I5 => \FSM_sequential_arb_sm_cs_reg[0]_2\,
      O => \FSM_sequential_arb_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_arb_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_arb_sm_cs[0]_i_1_n_0\,
      Q => \^fsm_sequential_arb_sm_cs_reg[0]_0\,
      R => aw_active_reg_1
    );
\FSM_sequential_arb_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_arb_sm_cs[1]_i_1_n_0\,
      Q => \^fsm_sequential_arb_sm_cs_reg[1]_0\,
      R => aw_active_reg_1
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_6_0\,
      I1 => \^aw_active_re\,
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(2),
      I4 => s_axi_awaddr(3),
      I5 => s_axi_awaddr(0),
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2828282828280828"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0\,
      I1 => s_axi_awburst(0),
      I2 => s_axi_awburst(1),
      I3 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1\,
      O => s_axi_awburst_0_sn_1
    );
\GEN_NARROW_EN.curr_narrow_burst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E000E000E00000"
    )
        port map (
      I0 => \GEN_NARROW_EN.curr_narrow_burst_reg\,
      I1 => \GEN_NARROW_EN.curr_narrow_burst_reg_0\,
      I2 => \^aw_active_reg_0\,
      I3 => \wrap_burst_total_reg[0]\,
      I4 => s_axi_awburst(0),
      I5 => s_axi_awburst(1),
      O => curr_narrow_burst_en
    );
\GEN_NO_RD_CMD_OPT.brst_zero_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => \^e\(0),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(3),
      I4 => s_axi_arlen(2),
      I5 => \GEN_NO_RD_CMD_OPT.brst_zero_reg\,
      O => s_axi_arlen_0_sn_1
    );
ar_active_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF007000000070"
    )
        port map (
      I0 => \^last_arb_won_reg_0\,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \^fsm_sequential_arb_sm_cs_reg[0]_0\,
      I4 => \^fsm_sequential_arb_sm_cs_reg[1]_0\,
      I5 => \FSM_sequential_arb_sm_cs_reg[0]_1\,
      O => last_arb_won_reg_1
    );
ar_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ar_active_reg_1,
      Q => \^ar_active_reg_0\,
      R => aw_active_reg_1
    );
aw_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_active_reg_2,
      Q => \^aw_active_reg_0\,
      R => aw_active_reg_1
    );
axi_arready_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF020"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg\,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]\,
      I4 => axi_arready_int_i_4_n_0,
      O => \^axi_arready_cmb\
    );
axi_arready_int_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => axi_arready_int_reg_0,
      I1 => s_axi_rready,
      I2 => \^fsm_sequential_arb_sm_cs_reg[1]_0\,
      I3 => \^fsm_sequential_arb_sm_cs_reg[0]_0\,
      O => \^gen_no_rd_cmd_opt.axi_rlast_int_reg\
    );
axi_arready_int_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_sequential_arb_sm_cs_reg[0]_2\,
      I1 => \^fsm_sequential_arb_sm_cs_reg[0]_0\,
      I2 => \^fsm_sequential_arb_sm_cs_reg[1]_0\,
      O => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]\
    );
axi_arready_int_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101010"
    )
        port map (
      I0 => \^fsm_sequential_arb_sm_cs_reg[0]_0\,
      I1 => \^fsm_sequential_arb_sm_cs_reg[1]_0\,
      I2 => s_axi_arvalid,
      I3 => s_axi_awvalid,
      I4 => \^last_arb_won_reg_0\,
      O => axi_arready_int_i_4_n_0
    );
axi_arready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^axi_arready_cmb\,
      Q => s_axi_arready,
      R => aw_active_reg_1
    );
axi_awready_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA000000F300"
    )
        port map (
      I0 => \FSM_sequential_arb_sm_cs_reg[0]_1\,
      I1 => s_axi_arvalid,
      I2 => \^last_arb_won_reg_0\,
      I3 => axi_awready_int_reg_0,
      I4 => \^fsm_sequential_arb_sm_cs_reg[0]_0\,
      I5 => \^fsm_sequential_arb_sm_cs_reg[1]_0\,
      O => \^axi_awready_cmb\
    );
axi_awready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^axi_awready_cmb\,
      Q => s_axi_awready,
      R => aw_active_reg_1
    );
last_arb_won_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C40CCC"
    )
        port map (
      I0 => \^last_arb_won_reg_0\,
      I1 => s_axi_arvalid,
      I2 => \^fsm_sequential_arb_sm_cs_reg[0]_0\,
      I3 => \^fsm_sequential_arb_sm_cs_reg[1]_0\,
      I4 => s_axi_awvalid,
      O => last_arb_won_cmb
    );
last_arb_won_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_arb_won_reg_2,
      Q => \^last_arb_won_reg_0\,
      R => aw_active_reg_1
    );
\save_init_bram_addr_ld[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => \wrap_burst_total_reg[0]\,
      O => \^aw_active_re\
    );
\save_init_bram_addr_ld[13]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ar_active_reg_0\,
      I1 => \save_init_bram_addr_ld_reg[13]\,
      O => \^e\(0)
    );
xpm_memory_base_inst_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(7),
      O => wea(7)
    );
xpm_memory_base_inst_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(6),
      O => wea(6)
    );
xpm_memory_base_inst_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(5),
      O => wea(5)
    );
xpm_memory_base_inst_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(4),
      O => wea(4)
    );
xpm_memory_base_inst_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(3),
      O => wea(3)
    );
xpm_memory_base_inst_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(2),
      O => wea(2)
    );
xpm_memory_base_inst_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(1),
      O => wea(1)
    );
xpm_memory_base_inst_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(0),
      O => wea(0)
    );
xpm_memory_base_inst_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(15),
      O => wea(15)
    );
xpm_memory_base_inst_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(14),
      O => wea(14)
    );
xpm_memory_base_inst_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(13),
      O => wea(13)
    );
xpm_memory_base_inst_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(12),
      O => wea(12)
    );
xpm_memory_base_inst_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(11),
      O => wea(11)
    );
xpm_memory_base_inst_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(10),
      O => wea(10)
    );
xpm_memory_base_inst_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(9),
      O => wea(9)
    );
xpm_memory_base_inst_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aw_active_reg_0\,
      I1 => Q(8),
      O => wea(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_0_ua_narrow is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize_2_sp_1 : out STD_LOGIC;
    s_axi_awsize_0_sp_1 : out STD_LOGIC;
    s_axi_awsize_1_sp_1 : out STD_LOGIC;
    \s_axi_awsize[2]_0\ : out STD_LOGIC;
    \s_axi_awsize[1]_0\ : out STD_LOGIC;
    \s_axi_awsize[0]_0\ : out STD_LOGIC;
    \s_axi_awsize[0]_1\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    ua_narrow_load1_carry_i_8_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]\ : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NARROW_CNT.narrow_addr_int_reg[2]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_0_ua_narrow : entity is "ua_narrow";
end axi_bram_ctrl_0_ua_narrow;

architecture STRUCTURE of axi_bram_ctrl_0_ua_narrow is
  signal \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0\ : STD_LOGIC;
  signal \^s_axi_awsize[0]_0\ : STD_LOGIC;
  signal \^s_axi_awsize[0]_1\ : STD_LOGIC;
  signal \^s_axi_awsize[1]_0\ : STD_LOGIC;
  signal \^s_axi_awsize[2]_0\ : STD_LOGIC;
  signal s_axi_awsize_0_sn_1 : STD_LOGIC;
  signal s_axi_awsize_1_sn_1 : STD_LOGIC;
  signal s_axi_awsize_2_sn_1 : STD_LOGIC;
  signal size_plus_lsb : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \ua_narrow_load1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry__0_n_3\ : STD_LOGIC;
  signal ua_narrow_load1_carry_i_11_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_14_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_14_n_1 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_14_n_2 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_14_n_3 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_16_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_17_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_18_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_19_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_1_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_20_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_21_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_21_n_1 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_21_n_2 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_21_n_3 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_2_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_34_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_35_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_36_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_3_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_4_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_5_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_6_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_7_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_8_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_9_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_n_1 : STD_LOGIC;
  signal ua_narrow_load1_carry_n_2 : STD_LOGIC;
  signal ua_narrow_load1_carry_n_3 : STD_LOGIC;
  signal NLW_ua_narrow_load1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ua_narrow_load1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ua_narrow_load1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ua_narrow_load1_carry_i_13_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ua_narrow_load1_carry_i_13_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ua_narrow_load1_carry_i_10 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of ua_narrow_load1_carry_i_17 : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of ua_narrow_load1_carry_i_18 : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of ua_narrow_load1_carry_i_26 : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of ua_narrow_load1_carry_i_27 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of ua_narrow_load1_carry_i_28 : label is "soft_lutpair97";
begin
  \s_axi_awsize[0]_0\ <= \^s_axi_awsize[0]_0\;
  \s_axi_awsize[0]_1\ <= \^s_axi_awsize[0]_1\;
  \s_axi_awsize[1]_0\ <= \^s_axi_awsize[1]_0\;
  \s_axi_awsize[2]_0\ <= \^s_axi_awsize[2]_0\;
  s_axi_awsize_0_sp_1 <= s_axi_awsize_0_sn_1;
  s_axi_awsize_1_sp_1 <= s_axi_awsize_1_sn_1;
  s_axi_awsize_2_sp_1 <= s_axi_awsize_2_sn_1;
\GEN_NARROW_CNT.narrow_addr_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4474777744744444"
    )
        port map (
      I0 => Q(0),
      I1 => \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\,
      I2 => \ua_narrow_load1_carry__0_n_3\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int_reg[3]_2\(0),
      O => D(0)
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => s_axi_awsize_0_sn_1,
      I1 => ua_narrow_load1_carry_i_8_n_0,
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(2),
      O => \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int_reg[3]_2\(1),
      O => D(1)
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8828888822822222"
    )
        port map (
      I0 => \ua_narrow_load1_carry__0_n_3\,
      I1 => s_axi_awsize_0_sn_1,
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awsize_2_sn_1,
      O => \GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int_reg[2]\,
      I1 => Q(2),
      I2 => \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int_reg[3]_2\(2),
      O => D(2)
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA02228000A888"
    )
        port map (
      I0 => \ua_narrow_load1_carry__0_n_3\,
      I1 => s_axi_awsize_0_sn_1,
      I2 => \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\,
      I3 => s_axi_awsize(0),
      I4 => s_axi_awsize_2_sn_1,
      I5 => ua_narrow_load1_carry_i_16_n_0,
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F001FFF"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => ua_narrow_load1_carry_i_8_n_0,
      I3 => s_axi_awsize(2),
      I4 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0\,
      O => s_axi_awsize_0_sn_1
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => size_plus_lsb(3),
      I1 => size_plus_lsb(2),
      I2 => s_axi_awsize(1),
      I3 => size_plus_lsb(1),
      I4 => s_axi_awsize(0),
      I5 => size_plus_lsb(0),
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int_reg[3]\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\,
      I2 => \ua_narrow_load1_carry__0_n_3\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1\,
      I4 => \GEN_NARROW_CNT.narrow_addr_int_reg[1]\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int_reg[3]_2\(3),
      O => D(3)
    );
ua_narrow_load1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ua_narrow_load1_carry_n_0,
      CO(2) => ua_narrow_load1_carry_n_1,
      CO(1) => ua_narrow_load1_carry_n_2,
      CO(0) => ua_narrow_load1_carry_n_3,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => ua_narrow_load1_carry_i_1_n_0,
      DI(1) => ua_narrow_load1_carry_i_2_n_0,
      DI(0) => ua_narrow_load1_carry_i_3_n_0,
      O(3 downto 0) => NLW_ua_narrow_load1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ua_narrow_load1_carry_i_4_n_0,
      S(2) => ua_narrow_load1_carry_i_5_n_0,
      S(1) => ua_narrow_load1_carry_i_6_n_0,
      S(0) => ua_narrow_load1_carry_i_7_n_0
    );
\ua_narrow_load1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ua_narrow_load1_carry_n_0,
      CO(3 downto 1) => \NLW_ua_narrow_load1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \ua_narrow_load1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ua_narrow_load1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \ua_narrow_load1_carry__0_i_1_n_0\
    );
\ua_narrow_load1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => size_plus_lsb(8),
      O => \ua_narrow_load1_carry__0_i_1_n_0\
    );
ua_narrow_load1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => ua_narrow_load1_carry_i_8_n_0,
      I3 => s_axi_awsize(2),
      I4 => ua_narrow_load1_carry_i_9_n_0,
      O => ua_narrow_load1_carry_i_1_n_0
    );
ua_narrow_load1_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => size_plus_lsb(4),
      I3 => s_axi_awsize(0),
      O => s_axi_awsize_1_sn_1
    );
ua_narrow_load1_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F530F53F"
    )
        port map (
      I0 => ua_narrow_load1_carry_i_17_n_0,
      I1 => ua_narrow_load1_carry_i_18_n_0,
      I2 => s_axi_awsize(2),
      I3 => s_axi_awsize(1),
      I4 => ua_narrow_load1_carry_i_19_n_0,
      O => ua_narrow_load1_carry_i_11_n_0
    );
ua_narrow_load1_carry_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ua_narrow_load1_carry_i_9_n_0,
      I1 => s_axi_awsize(2),
      I2 => ua_narrow_load1_carry_i_20_n_0,
      O => s_axi_awsize_2_sn_1
    );
ua_narrow_load1_carry_i_13: unisim.vcomponents.CARRY4
     port map (
      CI => ua_narrow_load1_carry_i_14_n_0,
      CO(3 downto 1) => NLW_ua_narrow_load1_carry_i_13_CO_UNCONNECTED(3 downto 1),
      CO(0) => size_plus_lsb(8),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_ua_narrow_load1_carry_i_13_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
ua_narrow_load1_carry_i_14: unisim.vcomponents.CARRY4
     port map (
      CI => ua_narrow_load1_carry_i_21_n_0,
      CO(3) => ua_narrow_load1_carry_i_14_n_0,
      CO(2) => ua_narrow_load1_carry_i_14_n_1,
      CO(1) => ua_narrow_load1_carry_i_14_n_2,
      CO(0) => ua_narrow_load1_carry_i_14_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => size_plus_lsb(7 downto 4),
      S(3 downto 0) => ua_narrow_load1_carry_i_8_0(3 downto 0)
    );
ua_narrow_load1_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F33AAFF0F3355"
    )
        port map (
      I0 => ua_narrow_load1_carry_i_19_n_0,
      I1 => ua_narrow_load1_carry_i_18_n_0,
      I2 => ua_narrow_load1_carry_i_17_n_0,
      I3 => s_axi_awsize(2),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(0),
      O => \^s_axi_awsize[2]_0\
    );
ua_narrow_load1_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5350535F5C505C5F"
    )
        port map (
      I0 => \^s_axi_awsize[1]_0\,
      I1 => \^s_axi_awsize[0]_0\,
      I2 => s_axi_awsize(2),
      I3 => s_axi_awsize(1),
      I4 => \^s_axi_awsize[0]_1\,
      I5 => s_axi_awsize(0),
      O => ua_narrow_load1_carry_i_16_n_0
    );
ua_narrow_load1_carry_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => size_plus_lsb(6),
      I1 => s_axi_awsize(0),
      I2 => size_plus_lsb(5),
      O => ua_narrow_load1_carry_i_17_n_0
    );
ua_narrow_load1_carry_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => size_plus_lsb(8),
      I1 => s_axi_awsize(0),
      I2 => size_plus_lsb(7),
      O => ua_narrow_load1_carry_i_18_n_0
    );
ua_narrow_load1_carry_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => size_plus_lsb(4),
      I1 => s_axi_awsize(0),
      I2 => size_plus_lsb(3),
      O => ua_narrow_load1_carry_i_19_n_0
    );
ua_narrow_load1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888E8888"
    )
        port map (
      I0 => s_axi_awsize_1_sn_1,
      I1 => ua_narrow_load1_carry_i_11_n_0,
      I2 => s_axi_awsize(2),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(0),
      O => ua_narrow_load1_carry_i_2_n_0
    );
ua_narrow_load1_carry_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => size_plus_lsb(4),
      I1 => size_plus_lsb(3),
      I2 => s_axi_awsize(1),
      I3 => size_plus_lsb(2),
      I4 => s_axi_awsize(0),
      I5 => size_plus_lsb(1),
      O => ua_narrow_load1_carry_i_20_n_0
    );
ua_narrow_load1_carry_i_21: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ua_narrow_load1_carry_i_21_n_0,
      CO(2) => ua_narrow_load1_carry_i_21_n_1,
      CO(1) => ua_narrow_load1_carry_i_21_n_2,
      CO(0) => ua_narrow_load1_carry_i_21_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => size_plus_lsb(3 downto 0),
      S(3) => S(0),
      S(2) => ua_narrow_load1_carry_i_34_n_0,
      S(1) => ua_narrow_load1_carry_i_35_n_0,
      S(0) => ua_narrow_load1_carry_i_36_n_0
    );
ua_narrow_load1_carry_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => size_plus_lsb(8),
      I1 => s_axi_awsize(1),
      I2 => size_plus_lsb(7),
      I3 => s_axi_awsize(0),
      I4 => size_plus_lsb(6),
      O => \^s_axi_awsize[1]_0\
    );
ua_narrow_load1_carry_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => size_plus_lsb(5),
      I1 => s_axi_awsize(0),
      I2 => size_plus_lsb(4),
      O => \^s_axi_awsize[0]_0\
    );
ua_narrow_load1_carry_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => size_plus_lsb(3),
      I1 => s_axi_awsize(0),
      I2 => size_plus_lsb(2),
      O => \^s_axi_awsize[0]_1\
    );
ua_narrow_load1_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004042"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => ua_narrow_load1_carry_i_8_n_0,
      I4 => s_axi_awsize_2_sn_1,
      O => ua_narrow_load1_carry_i_3_n_0
    );
ua_narrow_load1_carry_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB04"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awaddr(2),
      O => ua_narrow_load1_carry_i_34_n_0
    );
ua_narrow_load1_carry_i_35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awaddr(1),
      O => ua_narrow_load1_carry_i_35_n_0
    );
ua_narrow_load1_carry_i_36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awaddr(0),
      O => ua_narrow_load1_carry_i_36_n_0
    );
ua_narrow_load1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFBBABAFAFBBABF"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => size_plus_lsb(8),
      I2 => s_axi_awsize(1),
      I3 => size_plus_lsb(7),
      I4 => s_axi_awsize(0),
      I5 => size_plus_lsb(6),
      O => ua_narrow_load1_carry_i_4_n_0
    );
ua_narrow_load1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC01FF01FC54FF54"
    )
        port map (
      I0 => ua_narrow_load1_carry_i_9_n_0,
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      I4 => size_plus_lsb(8),
      I5 => ua_narrow_load1_carry_i_8_n_0,
      O => ua_narrow_load1_carry_i_5_n_0
    );
ua_narrow_load1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_awsize[2]_0\,
      I1 => ua_narrow_load1_carry_i_16_n_0,
      O => ua_narrow_load1_carry_i_6_n_0
    );
ua_narrow_load1_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59550000"
    )
        port map (
      I0 => s_axi_awsize_2_sn_1,
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awsize(1),
      I4 => \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\,
      O => ua_narrow_load1_carry_i_7_n_0
    );
ua_narrow_load1_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => size_plus_lsb(7),
      I1 => size_plus_lsb(6),
      I2 => s_axi_awsize(1),
      I3 => size_plus_lsb(5),
      I4 => s_axi_awsize(0),
      I5 => size_plus_lsb(4),
      O => ua_narrow_load1_carry_i_8_n_0
    );
ua_narrow_load1_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => size_plus_lsb(8),
      I1 => size_plus_lsb(7),
      I2 => s_axi_awsize(1),
      I3 => size_plus_lsb(6),
      I4 => s_axi_awsize(0),
      I5 => size_plus_lsb(5),
      O => ua_narrow_load1_carry_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_0_ua_narrow_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize_0_sp_1 : out STD_LOGIC;
    s_axi_arsize_2_sp_1 : out STD_LOGIC;
    s_axi_arsize_1_sp_1 : out STD_LOGIC;
    \s_axi_arsize[1]_0\ : out STD_LOGIC;
    \s_axi_arsize[1]_1\ : out STD_LOGIC;
    \s_axi_arsize[0]_0\ : out STD_LOGIC;
    \s_axi_arsize[0]_1\ : out STD_LOGIC;
    \s_axi_arsize[1]_2\ : out STD_LOGIC;
    \s_axi_arsize[1]_3\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ua_narrow_load1_carry_i_8__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_3\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]\ : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_0_ua_narrow_0 : entity is "ua_narrow";
end axi_bram_ctrl_0_ua_narrow_0;

architecture STRUCTURE of axi_bram_ctrl_0_ua_narrow_0 is
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\ : STD_LOGIC;
  signal \^s_axi_arsize[0]_0\ : STD_LOGIC;
  signal \^s_axi_arsize[0]_1\ : STD_LOGIC;
  signal \^s_axi_arsize[1]_0\ : STD_LOGIC;
  signal \^s_axi_arsize[1]_1\ : STD_LOGIC;
  signal \^s_axi_arsize[1]_2\ : STD_LOGIC;
  signal \^s_axi_arsize[1]_3\ : STD_LOGIC;
  signal s_axi_arsize_0_sn_1 : STD_LOGIC;
  signal s_axi_arsize_1_sn_1 : STD_LOGIC;
  signal s_axi_arsize_2_sn_1 : STD_LOGIC;
  signal size_plus_lsb : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \ua_narrow_load1_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry__0_n_3\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_11__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_14__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_14__0_n_1\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_14__0_n_2\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_14__0_n_3\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_16__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_17__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_18__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_19__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_20__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_21__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_21__0_n_1\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_21__0_n_2\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_21__0_n_3\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_i_34_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_35_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_i_36_n_0 : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_7__0_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_n_0 : STD_LOGIC;
  signal ua_narrow_load1_carry_n_1 : STD_LOGIC;
  signal ua_narrow_load1_carry_n_2 : STD_LOGIC;
  signal ua_narrow_load1_carry_n_3 : STD_LOGIC;
  signal NLW_ua_narrow_load1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ua_narrow_load1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ua_narrow_load1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ua_narrow_load1_carry_i_13__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ua_narrow_load1_carry_i_13__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ua_narrow_load1_carry_i_10__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ua_narrow_load1_carry_i_18__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ua_narrow_load1_carry_i_19__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ua_narrow_load1_carry_i_20__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ua_narrow_load1_carry_i_27__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ua_narrow_load1_carry_i_28__0\ : label is "soft_lutpair10";
begin
  \s_axi_arsize[0]_0\ <= \^s_axi_arsize[0]_0\;
  \s_axi_arsize[0]_1\ <= \^s_axi_arsize[0]_1\;
  \s_axi_arsize[1]_0\ <= \^s_axi_arsize[1]_0\;
  \s_axi_arsize[1]_1\ <= \^s_axi_arsize[1]_1\;
  \s_axi_arsize[1]_2\ <= \^s_axi_arsize[1]_2\;
  \s_axi_arsize[1]_3\ <= \^s_axi_arsize[1]_3\;
  s_axi_arsize_0_sp_1 <= s_axi_arsize_0_sn_1;
  s_axi_arsize_1_sp_1 <= s_axi_arsize_1_sn_1;
  s_axi_arsize_2_sp_1 <= s_axi_arsize_2_sn_1;
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7477744474447444"
    )
        port map (
      I0 => Q(0),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1\(0),
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\,
      I5 => \ua_narrow_load1_carry__0_n_3\,
      O => D(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B874"
    )
        port map (
      I0 => \^s_axi_arsize[1]_0\,
      I1 => s_axi_arsize(2),
      I2 => \^s_axi_arsize[1]_3\,
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(0),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => size_plus_lsb(3),
      I1 => size_plus_lsb(2),
      I2 => s_axi_arsize(1),
      I3 => size_plus_lsb(1),
      I4 => s_axi_arsize(0),
      I5 => size_plus_lsb(0),
      O => \^s_axi_arsize[1]_3\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\,
      O => D(1)
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB88888"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1\(1),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]\,
      I3 => \ua_narrow_load1_carry_i_17__0_n_0\,
      I4 => \ua_narrow_load1_carry__0_n_3\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]\,
      I1 => Q(2),
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1\(2),
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\,
      I5 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\,
      O => D(2)
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080882A2A2A22"
    )
        port map (
      I0 => \ua_narrow_load1_carry__0_n_3\,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\,
      I4 => \^s_axi_arsize[1]_1\,
      I5 => \ua_narrow_load1_carry_i_16__0_n_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAEAFBEA"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]\,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1\(3),
      I3 => \ua_narrow_load1_carry__0_n_3\,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2\,
      I5 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_3\,
      O => D(3)
    );
ua_narrow_load1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ua_narrow_load1_carry_n_0,
      CO(2) => ua_narrow_load1_carry_n_1,
      CO(1) => ua_narrow_load1_carry_n_2,
      CO(0) => ua_narrow_load1_carry_n_3,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => \ua_narrow_load1_carry_i_1__0_n_0\,
      DI(1) => \ua_narrow_load1_carry_i_2__0_n_0\,
      DI(0) => \ua_narrow_load1_carry_i_3__0_n_0\,
      O(3 downto 0) => NLW_ua_narrow_load1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \ua_narrow_load1_carry_i_4__0_n_0\,
      S(2) => \ua_narrow_load1_carry_i_5__0_n_0\,
      S(1) => \ua_narrow_load1_carry_i_6__0_n_0\,
      S(0) => \ua_narrow_load1_carry_i_7__0_n_0\
    );
\ua_narrow_load1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ua_narrow_load1_carry_n_0,
      CO(3 downto 1) => \NLW_ua_narrow_load1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \ua_narrow_load1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ua_narrow_load1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \ua_narrow_load1_carry__0_i_1__0_n_0\
    );
\ua_narrow_load1_carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => size_plus_lsb(8),
      O => \ua_narrow_load1_carry__0_i_1__0_n_0\
    );
\ua_narrow_load1_carry_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => size_plus_lsb(4),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      O => s_axi_arsize_2_sn_1
    );
\ua_narrow_load1_carry_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F530F53F"
    )
        port map (
      I0 => \ua_narrow_load1_carry_i_18__0_n_0\,
      I1 => \ua_narrow_load1_carry_i_19__0_n_0\,
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(1),
      I4 => \ua_narrow_load1_carry_i_20__0_n_0\,
      O => \ua_narrow_load1_carry_i_11__0_n_0\
    );
\ua_narrow_load1_carry_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => size_plus_lsb(4),
      I1 => size_plus_lsb(3),
      I2 => s_axi_arsize(1),
      I3 => size_plus_lsb(2),
      I4 => s_axi_arsize(0),
      I5 => size_plus_lsb(1),
      O => \^s_axi_arsize[1]_1\
    );
\ua_narrow_load1_carry_i_13__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ua_narrow_load1_carry_i_14__0_n_0\,
      CO(3 downto 1) => \NLW_ua_narrow_load1_carry_i_13__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => size_plus_lsb(8),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ua_narrow_load1_carry_i_13__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\ua_narrow_load1_carry_i_14__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ua_narrow_load1_carry_i_21__0_n_0\,
      CO(3) => \ua_narrow_load1_carry_i_14__0_n_0\,
      CO(2) => \ua_narrow_load1_carry_i_14__0_n_1\,
      CO(1) => \ua_narrow_load1_carry_i_14__0_n_2\,
      CO(0) => \ua_narrow_load1_carry_i_14__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => size_plus_lsb(7 downto 4),
      S(3 downto 0) => \ua_narrow_load1_carry_i_8__0_0\(3 downto 0)
    );
\ua_narrow_load1_carry_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3D310D013E320E02"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => \ua_narrow_load1_carry_i_18__0_n_0\,
      I4 => \ua_narrow_load1_carry_i_19__0_n_0\,
      I5 => \ua_narrow_load1_carry_i_20__0_n_0\,
      O => s_axi_arsize_0_sn_1
    );
\ua_narrow_load1_carry_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFAF3FA0C0A030A"
    )
        port map (
      I0 => \^s_axi_arsize[0]_0\,
      I1 => \^s_axi_arsize[0]_1\,
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(0),
      I5 => \^s_axi_arsize[1]_2\,
      O => \ua_narrow_load1_carry_i_16__0_n_0\
    );
\ua_narrow_load1_carry_i_17__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0087FF87"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => \^s_axi_arsize[1]_1\,
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize_1_sn_1,
      O => \ua_narrow_load1_carry_i_17__0_n_0\
    );
\ua_narrow_load1_carry_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => size_plus_lsb(6),
      I1 => s_axi_arsize(0),
      I2 => size_plus_lsb(5),
      O => \ua_narrow_load1_carry_i_18__0_n_0\
    );
\ua_narrow_load1_carry_i_19__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => size_plus_lsb(8),
      I1 => s_axi_arsize(0),
      I2 => size_plus_lsb(7),
      O => \ua_narrow_load1_carry_i_19__0_n_0\
    );
\ua_narrow_load1_carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => \^s_axi_arsize[1]_0\,
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize_1_sn_1,
      O => \ua_narrow_load1_carry_i_1__0_n_0\
    );
\ua_narrow_load1_carry_i_20__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => size_plus_lsb(4),
      I1 => s_axi_arsize(0),
      I2 => size_plus_lsb(3),
      O => \ua_narrow_load1_carry_i_20__0_n_0\
    );
\ua_narrow_load1_carry_i_21__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ua_narrow_load1_carry_i_21__0_n_0\,
      CO(2) => \ua_narrow_load1_carry_i_21__0_n_1\,
      CO(1) => \ua_narrow_load1_carry_i_21__0_n_2\,
      CO(0) => \ua_narrow_load1_carry_i_21__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0\(3 downto 0),
      O(3 downto 0) => size_plus_lsb(3 downto 0),
      S(3) => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_1\(0),
      S(2) => ua_narrow_load1_carry_i_34_n_0,
      S(1) => ua_narrow_load1_carry_i_35_n_0,
      S(0) => ua_narrow_load1_carry_i_36_n_0
    );
\ua_narrow_load1_carry_i_26__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => size_plus_lsb(3),
      I1 => s_axi_arsize(0),
      I2 => size_plus_lsb(2),
      O => \^s_axi_arsize[0]_0\
    );
\ua_narrow_load1_carry_i_27__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => size_plus_lsb(5),
      I1 => s_axi_arsize(0),
      I2 => size_plus_lsb(4),
      O => \^s_axi_arsize[0]_1\
    );
\ua_narrow_load1_carry_i_28__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => size_plus_lsb(8),
      I1 => s_axi_arsize(1),
      I2 => size_plus_lsb(7),
      I3 => s_axi_arsize(0),
      I4 => size_plus_lsb(6),
      O => \^s_axi_arsize[1]_2\
    );
\ua_narrow_load1_carry_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555D0004"
    )
        port map (
      I0 => s_axi_arsize_2_sn_1,
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(2),
      I4 => \ua_narrow_load1_carry_i_11__0_n_0\,
      O => \ua_narrow_load1_carry_i_2__0_n_0\
    );
ua_narrow_load1_carry_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB04"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_araddr(2),
      O => ua_narrow_load1_carry_i_34_n_0
    );
ua_narrow_load1_carry_i_35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_araddr(1),
      O => ua_narrow_load1_carry_i_35_n_0
    );
ua_narrow_load1_carry_i_36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_araddr(0),
      O => ua_narrow_load1_carry_i_36_n_0
    );
\ua_narrow_load1_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000100C000C10"
    )
        port map (
      I0 => s_axi_arsize_1_sn_1,
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(0),
      I4 => \^s_axi_arsize[1]_0\,
      I5 => \^s_axi_arsize[1]_1\,
      O => \ua_narrow_load1_carry_i_3__0_n_0\
    );
\ua_narrow_load1_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFBBABAFAFBBABF"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => size_plus_lsb(8),
      I2 => s_axi_arsize(1),
      I3 => size_plus_lsb(7),
      I4 => s_axi_arsize(0),
      I5 => size_plus_lsb(6),
      O => \ua_narrow_load1_carry_i_4__0_n_0\
    );
\ua_narrow_load1_carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC01FF01FC54FF54"
    )
        port map (
      I0 => s_axi_arsize_1_sn_1,
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(2),
      I4 => size_plus_lsb(8),
      I5 => \^s_axi_arsize[1]_0\,
      O => \ua_narrow_load1_carry_i_5__0_n_0\
    );
\ua_narrow_load1_carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arsize_0_sn_1,
      I1 => \ua_narrow_load1_carry_i_16__0_n_0\,
      O => \ua_narrow_load1_carry_i_6__0_n_0\
    );
\ua_narrow_load1_carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ua_narrow_load1_carry_i_17__0_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0\,
      O => \ua_narrow_load1_carry_i_7__0_n_0\
    );
\ua_narrow_load1_carry_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => size_plus_lsb(7),
      I1 => size_plus_lsb(6),
      I2 => s_axi_arsize(1),
      I3 => size_plus_lsb(5),
      I4 => s_axi_arsize(0),
      I5 => size_plus_lsb(4),
      O => \^s_axi_arsize[1]_0\
    );
\ua_narrow_load1_carry_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => size_plus_lsb(8),
      I1 => size_plus_lsb(7),
      I2 => s_axi_arsize(1),
      I3 => size_plus_lsb(6),
      I4 => s_axi_arsize(0),
      I5 => size_plus_lsb(5),
      O => s_axi_arsize_1_sn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_0_wrap_brst is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \save_init_bram_addr_ld_reg[11]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    aw_active_d1_reg : out STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[2]\ : out STD_LOGIC;
    s_axi_awsize_0_sp_1 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[13]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \save_init_bram_addr_ld_reg[11]_1\ : in STD_LOGIC;
    \save_init_bram_addr_ld_reg[11]_2\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[4]\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_0\ : in STD_LOGIC;
    \save_init_bram_addr_ld_reg[11]_3\ : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    curr_narrow_burst : in STD_LOGIC;
    \save_init_bram_addr_ld[11]_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    narrow_bram_addr_inc_d1 : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_1\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_2\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \wrap_burst_total_reg[0]_0\ : in STD_LOGIC;
    aw_active_re : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_0_wrap_brst : entity is "wrap_brst";
end axi_bram_ctrl_0_wrap_brst;

architecture STRUCTURE of axi_bram_ctrl_0_wrap_brst is
  signal \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \^gen_narrow_cnt.narrow_addr_int_reg[2]\ : STD_LOGIC;
  signal WrChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal \^aw_active_d1_reg\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal s_axi_awsize_0_sn_1 : STD_LOGIC;
  signal \save_init_bram_addr_ld[11]_i_2_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[11]_i_3_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[11]_i_4_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[11]_i_5_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[13]_i_3__0_n_0\ : STD_LOGIC;
  signal \^save_init_bram_addr_ld_reg[11]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal wrap_burst_total : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wrap_burst_total[0]_i_2_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[0]_i_3_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[0]_i_4_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_2_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_3_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_4_n_0\ : STD_LOGIC;
  signal wrap_burst_total_cmb : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[12]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[13]_i_3\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[13]_i_4\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[10]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[12]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[13]_i_2\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[13]_i_3__0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[9]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_3\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_4\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \wrap_burst_total[1]_i_4\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_2__0\ : label is "soft_lutpair103";
begin
  \GEN_NARROW_CNT.narrow_addr_int_reg[2]\ <= \^gen_narrow_cnt.narrow_addr_int_reg[2]\;
  aw_active_d1_reg <= \^aw_active_d1_reg\;
  s_axi_awsize_0_sp_1 <= s_axi_awsize_0_sn_1;
  \save_init_bram_addr_ld_reg[11]_0\(6 downto 0) <= \^save_init_bram_addr_ld_reg[11]_0\(6 downto 0);
\ADDR_SNG_PORT.bram_addr_int[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[13]\(0),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\,
      I2 => data0(8),
      I3 => \save_init_bram_addr_ld[13]_i_3__0_n_0\,
      I4 => s_axi_awaddr(8),
      O => D(1)
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => \^aw_active_d1_reg\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[4]_1\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[4]_2\,
      I3 => s_axi_aresetn,
      O => SR(0)
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[13]\(1),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\,
      I2 => data0(9),
      I3 => \save_init_bram_addr_ld[13]_i_3__0_n_0\,
      I4 => s_axi_awaddr(9),
      O => D(2)
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg[11]_1\,
      I1 => \save_init_bram_addr_ld_reg[11]_2\,
      I2 => \save_init_bram_addr_ld[11]_i_2_n_0\,
      I3 => s_axi_wvalid,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[4]_0\,
      O => \^aw_active_d1_reg\
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \save_init_bram_addr_ld[11]_i_2_0\(2),
      I1 => \save_init_bram_addr_ld[11]_i_2_0\(0),
      I2 => \save_init_bram_addr_ld[11]_i_2_0\(1),
      O => \^gen_narrow_cnt.narrow_addr_int_reg[2]\
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\,
      I1 => E(0),
      I2 => Q(0),
      O => D(0)
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0404F404"
    )
        port map (
      I0 => \save_init_bram_addr_ld[13]_i_3__0_n_0\,
      I1 => s_axi_awaddr(0),
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\,
      I3 => s_axi_araddr(0),
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[4]\,
      O => \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\
    );
\save_init_bram_addr_ld[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(6),
      I1 => \save_init_bram_addr_ld[13]_i_3__0_n_0\,
      I2 => s_axi_awaddr(6),
      O => \^save_init_bram_addr_ld_reg[11]_0\(5)
    );
\save_init_bram_addr_ld[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBA008A"
    )
        port map (
      I0 => data0(7),
      I1 => \save_init_bram_addr_ld_reg[11]_1\,
      I2 => \save_init_bram_addr_ld_reg[11]_2\,
      I3 => \save_init_bram_addr_ld[11]_i_2_n_0\,
      I4 => s_axi_awaddr(7),
      O => \^save_init_bram_addr_ld_reg[11]_0\(6)
    );
\save_init_bram_addr_ld[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBAFFFF"
    )
        port map (
      I0 => \save_init_bram_addr_ld[11]_i_3_n_0\,
      I1 => \save_init_bram_addr_ld[11]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld[11]_i_5_n_0\,
      I3 => \save_init_bram_addr_ld_reg[11]_3\,
      I4 => curr_wrap_burst_reg,
      O => \save_init_bram_addr_ld[11]_i_2_n_0\
    );
\save_init_bram_addr_ld[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA2A"
    )
        port map (
      I0 => curr_narrow_burst,
      I1 => s_axi_wvalid,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[4]_0\,
      I3 => \^gen_narrow_cnt.narrow_addr_int_reg[2]\,
      I4 => \save_init_bram_addr_ld[11]_i_2_0\(3),
      I5 => narrow_bram_addr_inc_d1,
      O => \save_init_bram_addr_ld[11]_i_3_n_0\
    );
\save_init_bram_addr_ld[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008FA00000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => wrap_burst_total(1),
      I3 => wrap_burst_total(0),
      I4 => Q(0),
      I5 => wrap_burst_total(2),
      O => \save_init_bram_addr_ld[11]_i_4_n_0\
    );
\save_init_bram_addr_ld[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => wrap_burst_total(0),
      I1 => wrap_burst_total(2),
      I2 => wrap_burst_total(1),
      O => \save_init_bram_addr_ld[11]_i_5_n_0\
    );
\save_init_bram_addr_ld[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(8),
      I1 => \save_init_bram_addr_ld[13]_i_3__0_n_0\,
      I2 => s_axi_awaddr(8),
      O => WrChnl_BRAM_Addr_Ld(12)
    );
\save_init_bram_addr_ld[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(9),
      I1 => \save_init_bram_addr_ld[13]_i_3__0_n_0\,
      I2 => s_axi_awaddr(9),
      O => WrChnl_BRAM_Addr_Ld(13)
    );
\save_init_bram_addr_ld[13]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg[11]_1\,
      I1 => \save_init_bram_addr_ld_reg[11]_2\,
      I2 => \save_init_bram_addr_ld[11]_i_2_n_0\,
      O => \save_init_bram_addr_ld[13]_i_3__0_n_0\
    );
\save_init_bram_addr_ld[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C80CFFFFC80C0000"
    )
        port map (
      I0 => wrap_burst_total(0),
      I1 => data0(1),
      I2 => wrap_burst_total(1),
      I3 => wrap_burst_total(2),
      I4 => \save_init_bram_addr_ld[13]_i_3__0_n_0\,
      I5 => s_axi_awaddr(1),
      O => \^save_init_bram_addr_ld_reg[11]_0\(0)
    );
\save_init_bram_addr_ld[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A28AFFFFA28A0000"
    )
        port map (
      I0 => data0(2),
      I1 => wrap_burst_total(0),
      I2 => wrap_burst_total(2),
      I3 => wrap_burst_total(1),
      I4 => \save_init_bram_addr_ld[13]_i_3__0_n_0\,
      I5 => s_axi_awaddr(2),
      O => \^save_init_bram_addr_ld_reg[11]_0\(1)
    );
\save_init_bram_addr_ld[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AFFFFAA8A0000"
    )
        port map (
      I0 => data0(3),
      I1 => wrap_burst_total(1),
      I2 => wrap_burst_total(2),
      I3 => wrap_burst_total(0),
      I4 => \save_init_bram_addr_ld[13]_i_3__0_n_0\,
      I5 => s_axi_awaddr(3),
      O => \^save_init_bram_addr_ld_reg[11]_0\(2)
    );
\save_init_bram_addr_ld[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(4),
      I1 => \save_init_bram_addr_ld[13]_i_3__0_n_0\,
      I2 => s_axi_awaddr(4),
      O => \^save_init_bram_addr_ld_reg[11]_0\(3)
    );
\save_init_bram_addr_ld[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(5),
      I1 => \save_init_bram_addr_ld[13]_i_3__0_n_0\,
      I2 => s_axi_awaddr(5),
      O => \^save_init_bram_addr_ld_reg[11]_0\(4)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^save_init_bram_addr_ld_reg[11]_0\(5),
      Q => data0(6),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^save_init_bram_addr_ld_reg[11]_0\(6),
      Q => data0(7),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => WrChnl_BRAM_Addr_Ld(12),
      Q => data0(8),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => WrChnl_BRAM_Addr_Ld(13),
      Q => data0(9),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^save_init_bram_addr_ld_reg[11]_0\(0),
      Q => data0(1),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^save_init_bram_addr_ld_reg[11]_0\(1),
      Q => data0(2),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^save_init_bram_addr_ld_reg[11]_0\(2),
      Q => data0(3),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^save_init_bram_addr_ld_reg[11]_0\(3),
      Q => data0(4),
      R => \wrap_burst_total_reg[0]_0\
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^save_init_bram_addr_ld_reg[11]_0\(4),
      Q => data0(5),
      R => \wrap_burst_total_reg[0]_0\
    );
\wrap_burst_total[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF82AA2000"
    )
        port map (
      I0 => \wrap_burst_total[1]_i_4_n_0\,
      I1 => s_axi_awlen(3),
      I2 => s_axi_awlen(2),
      I3 => s_axi_awvalid,
      I4 => s_axi_awsize(0),
      I5 => \wrap_burst_total[0]_i_2_n_0\,
      O => wrap_burst_total_cmb(0)
    );
\wrap_burst_total[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88228C2288228822"
    )
        port map (
      I0 => \wrap_burst_total[1]_i_2_n_0\,
      I1 => s_axi_awlen(1),
      I2 => \wrap_burst_total[0]_i_3_n_0\,
      I3 => s_axi_awlen(2),
      I4 => \wrap_burst_total[1]_i_3_n_0\,
      I5 => \wrap_burst_total[0]_i_4_n_0\,
      O => \wrap_burst_total[0]_i_2_n_0\
    );
\wrap_burst_total[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awlen(0),
      O => \wrap_burst_total[0]_i_3_n_0\
    );
\wrap_burst_total[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => \wrap_burst_total[0]_i_4_n_0\
    );
\wrap_burst_total[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FF888888888888"
    )
        port map (
      I0 => \wrap_burst_total[1]_i_2_n_0\,
      I1 => s_axi_awlen(1),
      I2 => s_axi_awsize(0),
      I3 => \wrap_burst_total[1]_i_3_n_0\,
      I4 => s_axi_awlen(2),
      I5 => \wrap_burst_total[1]_i_4_n_0\,
      O => wrap_burst_total_cmb(1)
    );
\wrap_burst_total[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awvalid,
      I4 => s_axi_awlen(0),
      I5 => s_axi_awlen(3),
      O => \wrap_burst_total[1]_i_2_n_0\
    );
\wrap_burst_total[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awlen(3),
      O => \wrap_burst_total[1]_i_3_n_0\
    );
\wrap_burst_total[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awlen(1),
      I3 => s_axi_awvalid,
      I4 => s_axi_awlen(0),
      O => \wrap_burst_total[1]_i_4_n_0\
    );
\wrap_burst_total[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_awsize_0_sn_1,
      I1 => s_axi_awlen(3),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(2),
      I4 => s_axi_awlen(0),
      I5 => s_axi_awlen(1),
      O => wrap_burst_total_cmb(2)
    );
\wrap_burst_total[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => s_axi_awsize_0_sn_1
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => wrap_burst_total_cmb(0),
      Q => wrap_burst_total(0),
      R => \wrap_burst_total_reg[0]_0\
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => wrap_burst_total_cmb(1),
      Q => wrap_burst_total(1),
      R => \wrap_burst_total_reg[0]_0\
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => wrap_burst_total_cmb(2),
      Q => wrap_burst_total(2),
      R => \wrap_burst_total_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_0_wrap_brst_1 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ar_active_reg : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg\ : out STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]\ : out STD_LOGIC;
    ar_active_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \save_init_bram_addr_ld_reg[13]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]\ : out STD_LOGIC;
    curr_narrow_burst_cmb : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[9]\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[10]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[10]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[7]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]\ : in STD_LOGIC;
    curr_fixed_burst_reg : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[13]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\ : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    narrow_bram_addr_inc_d1 : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_2\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_1\ : in STD_LOGIC;
    end_brst_rd : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_2\ : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_3\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_0_wrap_brst_1 : entity is "wrap_brst";
end axi_bram_ctrl_0_wrap_brst_1;

architecture STRUCTURE of axi_bram_ctrl_0_wrap_brst_1 is
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_3_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0\ : STD_LOGIC;
  signal \^addr_sng_port.bram_addr_int_reg[5]\ : STD_LOGIC;
  signal \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[2]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.curr_wrap_burst_reg_reg\ : STD_LOGIC;
  signal RdChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 11 downto 5 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ar_active_reg\ : STD_LOGIC;
  signal \^curr_narrow_burst_cmb\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \save_init_bram_addr_ld[13]_i_4_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[13]_i_5_n_0\ : STD_LOGIC;
  signal \^save_init_bram_addr_ld_reg[13]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wrap_burst_total : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wrap_burst_total[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[2]_i_1__0_n_0\ : STD_LOGIC;
  signal wrap_burst_total_cmb : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[11]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[10]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[12]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[8]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[9]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_4__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \wrap_burst_total[1]_i_2__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \wrap_burst_total[1]_i_4__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_2\ : label is "soft_lutpair14";
begin
  \ADDR_SNG_PORT.bram_addr_int_reg[5]\ <= \^addr_sng_port.bram_addr_int_reg[5]\;
  \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]\ <= \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[2]\;
  \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg\ <= \^gen_no_rd_cmd_opt.curr_wrap_burst_reg_reg\;
  SR(0) <= \^sr\(0);
  ar_active_reg <= \^ar_active_reg\;
  curr_narrow_burst_cmb <= \^curr_narrow_burst_cmb\;
  \save_init_bram_addr_ld_reg[13]_0\(1 downto 0) <= \^save_init_bram_addr_ld_reg[13]_0\(1 downto 0);
\ADDR_SNG_PORT.bram_addr_int[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(10),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(5),
      I3 => \^ar_active_reg\,
      I4 => Q(6),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[10]_0\,
      O => D(5)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFEFAAEA"
    )
        port map (
      I0 => \^ar_active_reg\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[11]_i_3_n_0\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I3 => curr_fixed_burst_reg,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\,
      O => ar_active_reg_0(0)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\,
      I1 => \^ar_active_reg\,
      I2 => Q(7),
      I3 => Q(5),
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[9]\,
      I5 => Q(6),
      O => D(6)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000100FF"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\(3),
      I2 => narrow_bram_addr_inc_d1,
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[2]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_2\,
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_3_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data0(7),
      I1 => \^gen_no_rd_cmd_opt.curr_wrap_burst_reg_reg\,
      I2 => s_axi_araddr(6),
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(6),
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\(2),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\(0),
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\(1),
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEFE"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.curr_wrap_burst_reg_reg\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[13]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\,
      O => \^ar_active_reg\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(5),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(0),
      I3 => \^ar_active_reg\,
      I4 => Q(1),
      I5 => Q(0),
      O => D(0)
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(6),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(1),
      I3 => \^ar_active_reg\,
      I4 => Q(2),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[6]\,
      O => D(1)
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(7),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(2),
      I3 => \^ar_active_reg\,
      I4 => Q(3),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[7]\,
      O => D(2)
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(8),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(3),
      I3 => \^ar_active_reg\,
      I4 => \^addr_sng_port.bram_addr_int_reg[5]\,
      I5 => Q(4),
      O => D(3)
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      O => \^addr_sng_port.bram_addr_int_reg[5]\
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(9),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(4),
      I3 => \^ar_active_reg\,
      I4 => Q(5),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[9]\,
      O => D(4)
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FEF4F0F0FFF5"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0\(2),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0\,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0\(0),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0\(1),
      O => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[2]\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEEFFFF2024"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0\(1),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0\(0),
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_3\,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0\(3),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0\(2),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_1\,
      I2 => end_brst_rd,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_2\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0\
    );
axi_awready_int_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
\save_init_bram_addr_ld[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(6),
      I1 => \^gen_no_rd_cmd_opt.curr_wrap_burst_reg_reg\,
      I2 => s_axi_araddr(5),
      O => RdChnl_BRAM_Addr_Ld(10)
    );
\save_init_bram_addr_ld[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(7),
      I1 => \^gen_no_rd_cmd_opt.curr_wrap_burst_reg_reg\,
      I2 => s_axi_araddr(6),
      O => RdChnl_BRAM_Addr_Ld(11)
    );
\save_init_bram_addr_ld[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(8),
      I1 => \^gen_no_rd_cmd_opt.curr_wrap_burst_reg_reg\,
      I2 => s_axi_araddr(7),
      O => \^save_init_bram_addr_ld_reg[13]_0\(0)
    );
\save_init_bram_addr_ld[13]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(9),
      I1 => \^gen_no_rd_cmd_opt.curr_wrap_burst_reg_reg\,
      I2 => s_axi_araddr(8),
      O => \^save_init_bram_addr_ld_reg[13]_0\(1)
    );
\save_init_bram_addr_ld[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88A80000"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[11]_i_3_n_0\,
      I1 => \save_init_bram_addr_ld[13]_i_4_n_0\,
      I2 => \save_init_bram_addr_ld[13]_i_5_n_0\,
      I3 => \^addr_sng_port.bram_addr_int_reg[5]\,
      I4 => curr_wrap_burst_reg,
      O => \^gen_no_rd_cmd_opt.curr_wrap_burst_reg_reg\
    );
\save_init_bram_addr_ld[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F00A000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => wrap_burst_total(1),
      I3 => Q(0),
      I4 => wrap_burst_total(0),
      I5 => wrap_burst_total(2),
      O => \save_init_bram_addr_ld[13]_i_4_n_0\
    );
\save_init_bram_addr_ld[13]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => wrap_burst_total(1),
      I1 => wrap_burst_total(2),
      I2 => wrap_burst_total(0),
      O => \save_init_bram_addr_ld[13]_i_5_n_0\
    );
\save_init_bram_addr_ld[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A08AFFFFA08A0000"
    )
        port map (
      I0 => data0(1),
      I1 => wrap_burst_total(0),
      I2 => wrap_burst_total(2),
      I3 => wrap_burst_total(1),
      I4 => \^gen_no_rd_cmd_opt.curr_wrap_burst_reg_reg\,
      I5 => s_axi_araddr(0),
      O => RdChnl_BRAM_Addr_Ld(5)
    );
\save_init_bram_addr_ld[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A28AFFFFA28A0000"
    )
        port map (
      I0 => data0(2),
      I1 => wrap_burst_total(0),
      I2 => wrap_burst_total(2),
      I3 => wrap_burst_total(1),
      I4 => \^gen_no_rd_cmd_opt.curr_wrap_burst_reg_reg\,
      I5 => s_axi_araddr(1),
      O => RdChnl_BRAM_Addr_Ld(6)
    );
\save_init_bram_addr_ld[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AFFFFAA8A0000"
    )
        port map (
      I0 => data0(3),
      I1 => wrap_burst_total(0),
      I2 => wrap_burst_total(2),
      I3 => wrap_burst_total(1),
      I4 => \^gen_no_rd_cmd_opt.curr_wrap_burst_reg_reg\,
      I5 => s_axi_araddr(2),
      O => RdChnl_BRAM_Addr_Ld(7)
    );
\save_init_bram_addr_ld[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(4),
      I1 => \^gen_no_rd_cmd_opt.curr_wrap_burst_reg_reg\,
      I2 => s_axi_araddr(3),
      O => RdChnl_BRAM_Addr_Ld(8)
    );
\save_init_bram_addr_ld[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data0(5),
      I1 => \^gen_no_rd_cmd_opt.curr_wrap_burst_reg_reg\,
      I2 => s_axi_araddr(4),
      O => RdChnl_BRAM_Addr_Ld(9)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => RdChnl_BRAM_Addr_Ld(10),
      Q => data0(6),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => RdChnl_BRAM_Addr_Ld(11),
      Q => data0(7),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^save_init_bram_addr_ld_reg[13]_0\(0),
      Q => data0(8),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^save_init_bram_addr_ld_reg[13]_0\(1),
      Q => data0(9),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => RdChnl_BRAM_Addr_Ld(5),
      Q => data0(1),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => RdChnl_BRAM_Addr_Ld(6),
      Q => data0(2),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => RdChnl_BRAM_Addr_Ld(7),
      Q => data0(3),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => RdChnl_BRAM_Addr_Ld(8),
      Q => data0(4),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => RdChnl_BRAM_Addr_Ld(9),
      Q => data0(5),
      R => \^sr\(0)
    );
\wrap_burst_total[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => \wrap_burst_total[0]_i_2__0_n_0\,
      I3 => \wrap_burst_total[0]_i_3__0_n_0\,
      O => wrap_burst_total_cmb(0)
    );
\wrap_burst_total[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80004080"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(2),
      I4 => s_axi_arlen(3),
      O => \wrap_burst_total[0]_i_2__0_n_0\
    );
\wrap_burst_total[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800000008000C300"
    )
        port map (
      I0 => \wrap_burst_total[0]_i_4__0_n_0\,
      I1 => s_axi_arlen(2),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(0),
      I4 => s_axi_arlen(3),
      I5 => \^curr_narrow_burst_cmb\,
      O => \wrap_burst_total[0]_i_3__0_n_0\
    );
\wrap_burst_total[0]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => \wrap_burst_total[0]_i_4__0_n_0\
    );
\wrap_burst_total[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8888888888"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => \wrap_burst_total[1]_i_2__0_n_0\,
      I2 => \wrap_burst_total[1]_i_3__0_n_0\,
      I3 => s_axi_arsize(0),
      I4 => s_axi_arlen(3),
      I5 => \wrap_burst_total[1]_i_4__0_n_0\,
      O => wrap_burst_total_cmb(1)
    );
\wrap_burst_total[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(0),
      O => \wrap_burst_total[1]_i_2__0_n_0\
    );
\wrap_burst_total[1]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      O => \wrap_burst_total[1]_i_3__0_n_0\
    );
\wrap_burst_total[1]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(2),
      O => \wrap_burst_total[1]_i_4__0_n_0\
    );
\wrap_burst_total[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^curr_narrow_burst_cmb\,
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(2),
      I4 => s_axi_arlen(3),
      O => \wrap_burst_total[2]_i_1__0_n_0\
    );
\wrap_burst_total[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      O => \^curr_narrow_burst_cmb\
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wrap_burst_total_cmb(0),
      Q => wrap_burst_total(0),
      R => \^sr\(0)
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => wrap_burst_total_cmb(1),
      Q => wrap_burst_total(1),
      R => \^sr\(0)
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \wrap_burst_total[2]_i_1__0_n_0\,
      Q => wrap_burst_total(2),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_0_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 127 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 127 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 127 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of axi_bram_ctrl_0_xpm_memory_base : entity is 10;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of axi_bram_ctrl_0_xpm_memory_base : entity is 10;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of axi_bram_ctrl_0_xpm_memory_base : entity is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of axi_bram_ctrl_0_xpm_memory_base : entity is 128;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of axi_bram_ctrl_0_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of axi_bram_ctrl_0_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of axi_bram_ctrl_0_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of axi_bram_ctrl_0_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of axi_bram_ctrl_0_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of axi_bram_ctrl_0_xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of axi_bram_ctrl_0_xpm_memory_base : entity is 131072;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_0_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of axi_bram_ctrl_0_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of axi_bram_ctrl_0_xpm_memory_base : entity is 1;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of axi_bram_ctrl_0_xpm_memory_base : entity is 1024;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of axi_bram_ctrl_0_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of axi_bram_ctrl_0_xpm_memory_base : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of axi_bram_ctrl_0_xpm_memory_base : entity is 128;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of axi_bram_ctrl_0_xpm_memory_base : entity is 128;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of axi_bram_ctrl_0_xpm_memory_base : entity is 128;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of axi_bram_ctrl_0_xpm_memory_base : entity is 128;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of axi_bram_ctrl_0_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of axi_bram_ctrl_0_xpm_memory_base : entity is 128;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of axi_bram_ctrl_0_xpm_memory_base : entity is 16;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of axi_bram_ctrl_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of axi_bram_ctrl_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of axi_bram_ctrl_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of axi_bram_ctrl_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of axi_bram_ctrl_0_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of axi_bram_ctrl_0_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of axi_bram_ctrl_0_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of axi_bram_ctrl_0_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of axi_bram_ctrl_0_xpm_memory_base : entity is 10;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of axi_bram_ctrl_0_xpm_memory_base : entity is 10;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of axi_bram_ctrl_0_xpm_memory_base : entity is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of axi_bram_ctrl_0_xpm_memory_base : entity is 128;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of axi_bram_ctrl_0_xpm_memory_base : entity is 128;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of axi_bram_ctrl_0_xpm_memory_base : entity is 128;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of axi_bram_ctrl_0_xpm_memory_base : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of axi_bram_ctrl_0_xpm_memory_base : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of axi_bram_ctrl_0_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of axi_bram_ctrl_0_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of axi_bram_ctrl_0_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of axi_bram_ctrl_0_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of axi_bram_ctrl_0_xpm_memory_base : entity is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of axi_bram_ctrl_0_xpm_memory_base : entity is 128;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of axi_bram_ctrl_0_xpm_memory_base : entity is 128;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of axi_bram_ctrl_0_xpm_memory_base : entity is 0;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of axi_bram_ctrl_0_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of axi_bram_ctrl_0_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of axi_bram_ctrl_0_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of axi_bram_ctrl_0_xpm_memory_base : entity is 128;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of axi_bram_ctrl_0_xpm_memory_base : entity is 128;
end axi_bram_ctrl_0_xpm_memory_base;

architecture STRUCTURE of axi_bram_ctrl_0_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_3_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_4_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_3_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_4_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_3_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_4_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_3_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_4_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_5_n_0\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : label is 1023;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : label is "p0_d8_p0_d8_p0_d8_p0_d8";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : label is 131072;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : label is "U0/gint_inst.xpm_spram_mem_gen.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : label is 31;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\ : label is 1023;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\ : label is "p0_d8_p0_d8_p0_d8_p0_d8";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\ : label is 32;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\ : label is 63;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\ : label is 131072;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\ : label is "U0/gint_inst.xpm_spram_mem_gen.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\ : label is 1023;
  attribute ram_offset of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\ : label is 32;
  attribute ram_slice_end of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\ : label is 63;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\ : label is 1023;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\ : label is "p0_d8_p0_d8_p0_d8_p0_d8";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\ : label is 64;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\ : label is 95;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\ : label is 131072;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\ : label is "U0/gint_inst.xpm_spram_mem_gen.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\ : label is 1023;
  attribute ram_offset of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\ : label is 64;
  attribute ram_slice_end of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\ : label is 95;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\ : label is 1023;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\ : label is "p0_d8_p0_d8_p0_d8_p0_d8";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\ : label is 96;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\ : label is 127;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\ : label is 131072;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\ : label is "U0/gint_inst.xpm_spram_mem_gen.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\ : label is "RAM_SP";
  attribute ram_addr_begin of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\ : label is 1023;
  attribute ram_offset of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\ : label is 96;
  attribute ram_slice_end of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\ : label is 127;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  doutb(127) <= \<const0>\;
  doutb(126) <= \<const0>\;
  doutb(125) <= \<const0>\;
  doutb(124) <= \<const0>\;
  doutb(123) <= \<const0>\;
  doutb(122) <= \<const0>\;
  doutb(121) <= \<const0>\;
  doutb(120) <= \<const0>\;
  doutb(119) <= \<const0>\;
  doutb(118) <= \<const0>\;
  doutb(117) <= \<const0>\;
  doutb(116) <= \<const0>\;
  doutb(115) <= \<const0>\;
  doutb(114) <= \<const0>\;
  doutb(113) <= \<const0>\;
  doutb(112) <= \<const0>\;
  doutb(111) <= \<const0>\;
  doutb(110) <= \<const0>\;
  doutb(109) <= \<const0>\;
  doutb(108) <= \<const0>\;
  doutb(107) <= \<const0>\;
  doutb(106) <= \<const0>\;
  doutb(105) <= \<const0>\;
  doutb(104) <= \<const0>\;
  doutb(103) <= \<const0>\;
  doutb(102) <= \<const0>\;
  doutb(101) <= \<const0>\;
  doutb(100) <= \<const0>\;
  doutb(99) <= \<const0>\;
  doutb(98) <= \<const0>\;
  doutb(97) <= \<const0>\;
  doutb(96) <= \<const0>\;
  doutb(95) <= \<const0>\;
  doutb(94) <= \<const0>\;
  doutb(93) <= \<const0>\;
  doutb(92) <= \<const0>\;
  doutb(91) <= \<const0>\;
  doutb(90) <= \<const0>\;
  doutb(89) <= \<const0>\;
  doutb(88) <= \<const0>\;
  doutb(87) <= \<const0>\;
  doutb(86) <= \<const0>\;
  doutb(85) <= \<const0>\;
  doutb(84) <= \<const0>\;
  doutb(83) <= \<const0>\;
  doutb(82) <= \<const0>\;
  doutb(81) <= \<const0>\;
  doutb(80) <= \<const0>\;
  doutb(79) <= \<const0>\;
  doutb(78) <= \<const0>\;
  doutb(77) <= \<const0>\;
  doutb(76) <= \<const0>\;
  doutb(75) <= \<const0>\;
  doutb(74) <= \<const0>\;
  doutb(73) <= \<const0>\;
  doutb(72) <= \<const0>\;
  doutb(71) <= \<const0>\;
  doutb(70) <= \<const0>\;
  doutb(69) <= \<const0>\;
  doutb(68) <= \<const0>\;
  doutb(67) <= \<const0>\;
  doutb(66) <= \<const0>\;
  doutb(65) <= \<const0>\;
  doutb(64) <= \<const0>\;
  doutb(63) <= \<const0>\;
  doutb(62) <= \<const0>\;
  doutb(61) <= \<const0>\;
  doutb(60) <= \<const0>\;
  doutb(59) <= \<const0>\;
  doutb(58) <= \<const0>\;
  doutb(57) <= \<const0>\;
  doutb(56) <= \<const0>\;
  doutb(55) <= \<const0>\;
  doutb(54) <= \<const0>\;
  doutb(53) <= \<const0>\;
  doutb(52) <= \<const0>\;
  doutb(51) <= \<const0>\;
  doutb(50) <= \<const0>\;
  doutb(49) <= \<const0>\;
  doutb(48) <= \<const0>\;
  doutb(47) <= \<const0>\;
  doutb(46) <= \<const0>\;
  doutb(45) <= \<const0>\;
  doutb(44) <= \<const0>\;
  doutb(43) <= \<const0>\;
  doutb(42) <= \<const0>\;
  doutb(41) <= \<const0>\;
  doutb(40) <= \<const0>\;
  doutb(39) <= \<const0>\;
  doutb(38) <= \<const0>\;
  doutb(37) <= \<const0>\;
  doutb(36) <= \<const0>\;
  doutb(35) <= \<const0>\;
  doutb(34) <= \<const0>\;
  doutb(33) <= \<const0>\;
  doutb(32) <= \<const0>\;
  doutb(31) <= \<const0>\;
  doutb(30) <= \<const0>\;
  doutb(29) <= \<const0>\;
  doutb(28) <= \<const0>\;
  doutb(27) <= \<const0>\;
  doutb(26) <= \<const0>\;
  doutb(25) <= \<const0>\;
  doutb(24) <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => dina(31 downto 0),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"1111",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 0) => douta(31 downto 0),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_1_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => rsta,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_2_n_0\,
      WEA(1) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_3_n_0\,
      WEA(0) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_4_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(3),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_1_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(2),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_2_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(1),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_3_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_4_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => dina(63 downto 32),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"1111",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 0) => douta(63 downto 32),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_1_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => rsta,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_2_n_0\,
      WEA(1) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_3_n_0\,
      WEA(0) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_4_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(7),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_1_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(6),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_2_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(5),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_3_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(4),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_4_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => dina(95 downto 64),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"1111",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 0) => douta(95 downto 64),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_1_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => rsta,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_1_n_0\,
      WEA(2) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_2_n_0\,
      WEA(1) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_3_n_0\,
      WEA(0) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_4_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(11),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_1_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(10),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_2_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(9),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_3_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(8),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_4_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => '0',
      DBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => dina(127 downto 96),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"1111",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 0) => douta(127 downto 96),
      DOBDO(31 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_1_n_0\,
      ENBWREN => '0',
      INJECTDBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => rsta,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_SBITERR_UNCONNECTED\,
      WEA(3) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_2_n_0\,
      WEA(2) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_3_n_0\,
      WEA(1) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_4_n_0\,
      WEA(0) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_5_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rsta,
      I1 => ena,
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_1_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(15),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_2_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(14),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_3_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(13),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_4_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(12),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_0_rd_chnl is
  port (
    s_axi_aresetn_0 : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.brst_zero_reg_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.act_rd_burst_reg_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0\ : out STD_LOGIC;
    end_brst_rd_clr : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0\ : out STD_LOGIC;
    BRAM_En_B_i : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \ADDR_SNG_PORT.sng_bram_addr_ld_en\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg_0\ : out STD_LOGIC;
    \save_init_bram_addr_ld_reg[13]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[5]\ : out STD_LOGIC;
    ar_active_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_rd_burst_two : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_1\ : out STD_LOGIC;
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0\ : out STD_LOGIC;
    act_rd_burst_set : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_1\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\ : out STD_LOGIC;
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.end_brst_rd_reg_0\ : out STD_LOGIC;
    s_axi_arlen_2_sp_1 : out STD_LOGIC;
    s_axi_arlen_4_sp_1 : out STD_LOGIC;
    s_axi_rready_0 : out STD_LOGIC;
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_2\ : out STD_LOGIC;
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0\ : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_1\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_2\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.act_rd_burst_reg_1\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_2\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_1\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_2\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg_0\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_1\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.bram_en_int_reg_0\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ua_narrow_load1_carry_i_8__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[10]\ : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_NO_RD_CMD_OPT.brst_zero_reg_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[9]\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[11]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[10]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[7]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[13]\ : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_1\ : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\ : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_0_rd_chnl : entity is "rd_chnl";
end axi_bram_ctrl_0_rd_chnl;

architecture STRUCTURE of axi_bram_ctrl_0_rd_chnl is
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.gen_brst_max_w_narrow.brst_cnt_max_reg_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_10_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_12_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_13_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_14_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.gen_narrow_cnt.narrow_addr_int_reg[2]_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_1\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_two_reg_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_10\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_11\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_12\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_3\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_4\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_5\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_6\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_7\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_8\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.act_rd_burst_reg_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.act_rd_burst_two_reg_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.axi_rlast_int_reg_1\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_cnt_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.brst_zero_reg_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.pend_rd_op_reg_0\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\ : STD_LOGIC;
  signal \^axi_rd_burst_two\ : STD_LOGIC;
  signal axi_rdata_en : STD_LOGIC;
  signal axi_rid_temp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_rvalid_clr_ok : STD_LOGIC;
  signal axi_rvalid_set : STD_LOGIC;
  signal axi_rvalid_set_cmb : STD_LOGIC;
  signal brst_cnt_max_d1 : STD_LOGIC;
  signal brst_one : STD_LOGIC;
  signal curr_fixed_burst : STD_LOGIC;
  signal curr_fixed_burst_reg : STD_LOGIC;
  signal curr_narrow_burst_cmb : STD_LOGIC;
  signal curr_wrap_burst : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal disable_b2b_brst : STD_LOGIC;
  signal disable_b2b_brst_cmb : STD_LOGIC;
  signal end_brst_rd : STD_LOGIC;
  signal \^end_brst_rd_clr\ : STD_LOGIC;
  signal end_brst_rd_clr_cmb : STD_LOGIC;
  signal last_bram_addr : STD_LOGIC;
  signal last_bram_addr0 : STD_LOGIC;
  signal narrow_addr_int : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal narrow_bram_addr_inc : STD_LOGIC;
  signal narrow_bram_addr_inc_d1 : STD_LOGIC;
  signal narrow_burst_cnt_ld_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC;
  signal rd_data_sm_ns : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_skid_buf : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal rd_skid_buf_ld : STD_LOGIC;
  signal rd_skid_buf_ld_cmb : STD_LOGIC;
  signal rd_skid_buf_ld_reg : STD_LOGIC;
  signal rlast_sm_cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal s_axi_arlen_2_sn_1 : STD_LOGIC;
  signal s_axi_arlen_4_sn_1 : STD_LOGIC;
  signal \^s_axi_rid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5\ : label is "soft_lutpair26";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]\ : label is "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\ : label is "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]\ : label is "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]\ : label is "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[0]\ : label is "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1]\ : label is "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2]\ : label is "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_13\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_14\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_21\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_3\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.axi_rvalid_set_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.brst_zero_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.last_bram_addr_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.last_bram_addr_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of axi_awready_int_i_3 : label is "soft_lutpair22";
begin
  \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0\(3 downto 0) <= \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3 downto 0);
  \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0\ <= \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\;
  \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0\ <= \^gen_no_rd_cmd_opt.gen_brst_max_w_narrow.brst_cnt_max_reg_0\;
  \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\ <= \^gen_no_rd_cmd_opt.gen_narrow_cnt.narrow_addr_int_reg[2]_0\;
  \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0\ <= \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg_0\;
  \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0\ <= \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_0\;
  \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_1\ <= \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_1\;
  \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0\ <= \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_two_reg_0\;
  \GEN_NO_RD_CMD_OPT.act_rd_burst_reg_0\ <= \^gen_no_rd_cmd_opt.act_rd_burst_reg_0\;
  \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_0\ <= \^gen_no_rd_cmd_opt.act_rd_burst_two_reg_0\;
  \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0\ <= \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\;
  \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1\ <= \^gen_no_rd_cmd_opt.axi_rlast_int_reg_1\;
  \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0\ <= \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\;
  \GEN_NO_RD_CMD_OPT.brst_zero_reg_0\ <= \^gen_no_rd_cmd_opt.brst_zero_reg_0\;
  \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0\ <= \^gen_no_rd_cmd_opt.pend_rd_op_reg_0\;
  \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0\ <= \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\;
  axi_rd_burst_two <= \^axi_rd_burst_two\;
  end_brst_rd_clr <= \^end_brst_rd_clr\;
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
  s_axi_arlen_2_sp_1 <= s_axi_arlen_2_sn_1;
  s_axi_arlen_4_sp_1 <= s_axi_arlen_4_sn_1;
  s_axi_rid(1 downto 0) <= \^s_axi_rid\(1 downto 0);
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000E05FF05FF"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I1 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_1\,
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I4 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0\,
      I5 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0\,
      O => rd_data_sm_ns(0)
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_0\,
      I1 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_two_reg_0\,
      O => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_1\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700F700F7000000"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I1 => s_axi_rready,
      I2 => E(0),
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I4 => \^gen_no_rd_cmd_opt.act_rd_burst_two_reg_0\,
      I5 => \^gen_no_rd_cmd_opt.act_rd_burst_reg_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB00BB00BB00FB00"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I4 => \^gen_no_rd_cmd_opt.pend_rd_op_reg_0\,
      I5 => E(0),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4445444444444444"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\,
      I2 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0\,
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I5 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FAFF0F3300"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_0\,
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\,
      I2 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_two_reg_0\,
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I5 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4445444444444444"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0\,
      I2 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0\,
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I5 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F303C343F003C04"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_0\,
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I4 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_two_reg_0\,
      I5 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008000800000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I3 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I4 => \^gen_no_rd_cmd_opt.act_rd_burst_two_reg_0\,
      I5 => \^gen_no_rd_cmd_opt.act_rd_burst_reg_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0705070507050735"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I5 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000200000"
    )
        port map (
      I0 => E(0),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4_n_0\,
      I2 => end_brst_rd_clr_cmb,
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      O => rd_data_sm_ns(3)
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFF110000FF000F"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      I2 => E(0),
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I5 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      O => end_brst_rd_clr_cmb
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.brst_zero_reg_0\,
      I1 => end_brst_rd,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\,
      D => rd_data_sm_ns(0),
      Q => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\,
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0\,
      Q => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\,
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0\,
      Q => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0\,
      D => rd_data_sm_ns(3),
      Q => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F4F005F004"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0\,
      I1 => last_bram_addr,
      I2 => rlast_sm_cs(0),
      I3 => rlast_sm_cs(2),
      I4 => rlast_sm_cs(1),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001500550055"
    )
        port map (
      I0 => rlast_sm_cs(1),
      I1 => s_axi_rready,
      I2 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I3 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_two_reg_0\,
      I4 => \^gen_no_rd_cmd_opt.act_rd_burst_two_reg_0\,
      I5 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0004FF050004"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0\,
      I1 => last_bram_addr,
      I2 => rlast_sm_cs(0),
      I3 => rlast_sm_cs(2),
      I4 => rlast_sm_cs(1),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515150015551555"
    )
        port map (
      I0 => rlast_sm_cs(1),
      I1 => s_axi_rready,
      I2 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I3 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_two_reg_0\,
      I4 => \^gen_no_rd_cmd_opt.act_rd_burst_two_reg_0\,
      I5 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF08FFF0F008"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_1\,
      I1 => last_bram_addr,
      I2 => rlast_sm_cs(0),
      I3 => rlast_sm_cs(2),
      I4 => rlast_sm_cs(1),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0\,
      Q => rlast_sm_cs(0),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0\,
      Q => rlast_sm_cs(1),
      R => \^s_axi_aresetn_0\
    );
\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0\,
      Q => rlast_sm_cs(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_1\,
      Q => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B00000"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => s_axi_aresetn,
      I3 => \^end_brst_rd_clr\,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_1\,
      O => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0\,
      Q => \^gen_no_rd_cmd_opt.gen_brst_max_w_narrow.brst_cnt_max_reg_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => narrow_addr_int(1),
      I1 => narrow_addr_int(0),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14\,
      I1 => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg_0\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047FFFF47"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(5),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(1),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_10_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEEFEFEFFEE"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0\,
      I2 => s_axi_arlen(5),
      I3 => s_axi_arlen(4),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arlen(3),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111111111111111F"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(3),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_12_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBFBB"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(0),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_13_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_8\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_14_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"110FFF0F"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_12\,
      I3 => s_axi_arsize(2),
      I4 => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_7\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008FFF8F"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_8\,
      I3 => s_axi_arsize(2),
      I4 => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_6\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553055F0553F55FF"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_11\,
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(2),
      I4 => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_10\,
      I5 => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22FAFAFA"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(7),
      I3 => s_axi_arsize(2),
      I4 => s_axi_arsize(1),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAA8AAA8AA888"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0\,
      I1 => s_axi_arlen(2),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arlen(4),
      I4 => s_axi_arlen(3),
      I5 => s_axi_arlen(5),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC8888"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arlen(1),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FF04FF04FF0000"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => E(0),
      I4 => \^gen_no_rd_cmd_opt.gen_narrow_cnt.narrow_addr_int_reg[2]_0\,
      I5 => narrow_bram_addr_inc_d1,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF200"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_10_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0\,
      I2 => s_axi_arburst(0),
      I3 => s_axi_arburst(1),
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_12_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_13_n_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55959999AAAAAAAA"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_4\,
      I1 => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_5\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_14_n_0\,
      I3 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0\,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000777777770"
    )
        port map (
      I0 => curr_narrow_burst_cmb,
      I1 => E(0),
      I2 => narrow_addr_int(2),
      I3 => narrow_addr_int(0),
      I4 => narrow_addr_int(1),
      I5 => narrow_addr_int(3),
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_3\,
      Q => narrow_addr_int(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2\,
      Q => narrow_addr_int(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1\,
      Q => narrow_addr_int(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0\,
      D => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0\,
      Q => narrow_addr_int(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.gen_narrow_cnt.narrow_addr_int_reg[2]_0\,
      O => narrow_bram_addr_inc
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => narrow_addr_int(2),
      I1 => narrow_addr_int(0),
      I2 => narrow_addr_int(1),
      I3 => narrow_addr_int(3),
      I4 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14\,
      I5 => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg_0\,
      O => \^gen_no_rd_cmd_opt.gen_narrow_cnt.narrow_addr_int_reg[2]_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_bram_addr_inc,
      Q => narrow_bram_addr_inc_d1,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3A"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\,
      I1 => s_axi_arsize(2),
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I3 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      O => narrow_burst_cnt_ld_reg(0)
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF07FF00000700"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I4 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I5 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\,
      O => narrow_burst_cnt_ld_reg(1)
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1F0010"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I3 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\,
      O => narrow_burst_cnt_ld_reg(2)
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01FF00000100"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I4 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I5 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3]\,
      O => narrow_burst_cnt_ld_reg(3)
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(0),
      Q => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(1),
      Q => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(2),
      Q => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(3),
      Q => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3]\,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EFEE"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0\,
      I1 => \^gen_no_rd_cmd_opt.pend_rd_op_reg_0\,
      I2 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55577777FFF77777"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg_0\,
      I2 => s_axi_arburst(0),
      I3 => s_axi_arburst(1),
      I4 => \GEN_NO_RD_CMD_OPT.brst_zero_reg_1\,
      I5 => curr_narrow_burst_cmb,
      O => \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\,
      Q => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(0),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(0),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0\,
      Q => s_axi_rdata(0),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(100),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(100),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1_n_0\,
      Q => s_axi_rdata(100),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(101),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(101),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1_n_0\,
      Q => s_axi_rdata(101),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(102),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(102),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1_n_0\,
      Q => s_axi_rdata(102),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(103),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(103),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1_n_0\,
      Q => s_axi_rdata(103),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(104),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(104),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1_n_0\,
      Q => s_axi_rdata(104),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(105),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(105),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1_n_0\,
      Q => s_axi_rdata(105),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(106),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(106),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1_n_0\,
      Q => s_axi_rdata(106),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(107),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(107),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1_n_0\,
      Q => s_axi_rdata(107),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(108),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(108),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1_n_0\,
      Q => s_axi_rdata(108),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(109),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(109),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1_n_0\,
      Q => s_axi_rdata(109),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(10),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(10),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0\,
      Q => s_axi_rdata(10),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(110),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(110),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1_n_0\,
      Q => s_axi_rdata(110),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(111),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(111),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1_n_0\,
      Q => s_axi_rdata(111),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(112),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(112),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1_n_0\,
      Q => s_axi_rdata(112),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(113),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(113),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1_n_0\,
      Q => s_axi_rdata(113),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(114),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(114),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1_n_0\,
      Q => s_axi_rdata(114),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(115),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(115),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1_n_0\,
      Q => s_axi_rdata(115),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(116),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(116),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1_n_0\,
      Q => s_axi_rdata(116),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(117),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(117),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1_n_0\,
      Q => s_axi_rdata(117),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(118),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(118),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1_n_0\,
      Q => s_axi_rdata(118),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(119),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(119),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1_n_0\,
      Q => s_axi_rdata(119),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(11),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(11),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0\,
      Q => s_axi_rdata(11),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(120),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(120),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1_n_0\,
      Q => s_axi_rdata(120),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(121),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(121),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1_n_0\,
      Q => s_axi_rdata(121),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(122),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(122),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1_n_0\,
      Q => s_axi_rdata(122),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(123),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(123),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1_n_0\,
      Q => s_axi_rdata(123),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(124),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(124),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1_n_0\,
      Q => s_axi_rdata(124),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(125),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(125),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1_n_0\,
      Q => s_axi_rdata(125),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(126),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(126),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1_n_0\,
      Q => s_axi_rdata(126),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_1\,
      I1 => s_axi_rready,
      I2 => s_axi_aresetn,
      O => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02040004070C070C"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I4 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      O => axi_rdata_en
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(127),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(127),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.act_rd_burst_two_reg_0\,
      I1 => \^gen_no_rd_cmd_opt.act_rd_burst_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I1 => s_axi_rready,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_3_n_0\,
      Q => s_axi_rdata(127),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(12),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(12),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0\,
      Q => s_axi_rdata(12),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(13),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(13),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0\,
      Q => s_axi_rdata(13),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(14),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(14),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0\,
      Q => s_axi_rdata(14),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(15),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(15),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0\,
      Q => s_axi_rdata(15),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(16),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(16),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0\,
      Q => s_axi_rdata(16),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(17),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(17),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0\,
      Q => s_axi_rdata(17),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(18),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(18),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0\,
      Q => s_axi_rdata(18),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(19),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(19),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0\,
      Q => s_axi_rdata(19),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(1),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(1),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \p_0_in__0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \p_0_in__0\,
      Q => s_axi_rdata(1),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(20),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(20),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0\,
      Q => s_axi_rdata(20),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(21),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(21),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0\,
      Q => s_axi_rdata(21),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(22),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(22),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0\,
      Q => s_axi_rdata(22),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(23),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(23),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0\,
      Q => s_axi_rdata(23),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(24),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(24),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0\,
      Q => s_axi_rdata(24),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(25),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(25),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0\,
      Q => s_axi_rdata(25),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(26),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(26),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0\,
      Q => s_axi_rdata(26),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(27),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(27),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0\,
      Q => s_axi_rdata(27),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(28),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(28),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0\,
      Q => s_axi_rdata(28),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(29),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(29),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0\,
      Q => s_axi_rdata(29),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(2),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(2),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0\,
      Q => s_axi_rdata(2),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(30),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(30),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0\,
      Q => s_axi_rdata(30),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(31),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(31),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\,
      Q => s_axi_rdata(31),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(32),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(32),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1_n_0\,
      Q => s_axi_rdata(32),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(33),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(33),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1_n_0\,
      Q => s_axi_rdata(33),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(34),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(34),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1_n_0\,
      Q => s_axi_rdata(34),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(35),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(35),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1_n_0\,
      Q => s_axi_rdata(35),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(36),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(36),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1_n_0\,
      Q => s_axi_rdata(36),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(37),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(37),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1_n_0\,
      Q => s_axi_rdata(37),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(38),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(38),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1_n_0\,
      Q => s_axi_rdata(38),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(39),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(39),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1_n_0\,
      Q => s_axi_rdata(39),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(3),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(3),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0\,
      Q => s_axi_rdata(3),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(40),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(40),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1_n_0\,
      Q => s_axi_rdata(40),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(41),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(41),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1_n_0\,
      Q => s_axi_rdata(41),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(42),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(42),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1_n_0\,
      Q => s_axi_rdata(42),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(43),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(43),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1_n_0\,
      Q => s_axi_rdata(43),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(44),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(44),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1_n_0\,
      Q => s_axi_rdata(44),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(45),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(45),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1_n_0\,
      Q => s_axi_rdata(45),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(46),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(46),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1_n_0\,
      Q => s_axi_rdata(46),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(47),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(47),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1_n_0\,
      Q => s_axi_rdata(47),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(48),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(48),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1_n_0\,
      Q => s_axi_rdata(48),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(49),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(49),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1_n_0\,
      Q => s_axi_rdata(49),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(4),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(4),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0\,
      Q => s_axi_rdata(4),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(50),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(50),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1_n_0\,
      Q => s_axi_rdata(50),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(51),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(51),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1_n_0\,
      Q => s_axi_rdata(51),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(52),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(52),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1_n_0\,
      Q => s_axi_rdata(52),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(53),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(53),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1_n_0\,
      Q => s_axi_rdata(53),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(54),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(54),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1_n_0\,
      Q => s_axi_rdata(54),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(55),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(55),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1_n_0\,
      Q => s_axi_rdata(55),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(56),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(56),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1_n_0\,
      Q => s_axi_rdata(56),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(57),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(57),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1_n_0\,
      Q => s_axi_rdata(57),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(58),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(58),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1_n_0\,
      Q => s_axi_rdata(58),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(59),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(59),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1_n_0\,
      Q => s_axi_rdata(59),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(5),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(5),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0\,
      Q => s_axi_rdata(5),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(60),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(60),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1_n_0\,
      Q => s_axi_rdata(60),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(61),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(61),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1_n_0\,
      Q => s_axi_rdata(61),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(62),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(62),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1_n_0\,
      Q => s_axi_rdata(62),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(63),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(63),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1_n_0\,
      Q => s_axi_rdata(63),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(64),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(64),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1_n_0\,
      Q => s_axi_rdata(64),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(65),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(65),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1_n_0\,
      Q => s_axi_rdata(65),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(66),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(66),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1_n_0\,
      Q => s_axi_rdata(66),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(67),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(67),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1_n_0\,
      Q => s_axi_rdata(67),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(68),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(68),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1_n_0\,
      Q => s_axi_rdata(68),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(69),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(69),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1_n_0\,
      Q => s_axi_rdata(69),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(6),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(6),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0\,
      Q => s_axi_rdata(6),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(70),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(70),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1_n_0\,
      Q => s_axi_rdata(70),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(71),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(71),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1_n_0\,
      Q => s_axi_rdata(71),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(72),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(72),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1_n_0\,
      Q => s_axi_rdata(72),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(73),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(73),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1_n_0\,
      Q => s_axi_rdata(73),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(74),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(74),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1_n_0\,
      Q => s_axi_rdata(74),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(75),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(75),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1_n_0\,
      Q => s_axi_rdata(75),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(76),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(76),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1_n_0\,
      Q => s_axi_rdata(76),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(77),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(77),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1_n_0\,
      Q => s_axi_rdata(77),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(78),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(78),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1_n_0\,
      Q => s_axi_rdata(78),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(79),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(79),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1_n_0\,
      Q => s_axi_rdata(79),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(7),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(7),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0\,
      Q => s_axi_rdata(7),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(80),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(80),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1_n_0\,
      Q => s_axi_rdata(80),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(81),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(81),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1_n_0\,
      Q => s_axi_rdata(81),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(82),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(82),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1_n_0\,
      Q => s_axi_rdata(82),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(83),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(83),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1_n_0\,
      Q => s_axi_rdata(83),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(84),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(84),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1_n_0\,
      Q => s_axi_rdata(84),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(85),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(85),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1_n_0\,
      Q => s_axi_rdata(85),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(86),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(86),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1_n_0\,
      Q => s_axi_rdata(86),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(87),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(87),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1_n_0\,
      Q => s_axi_rdata(87),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(88),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(88),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1_n_0\,
      Q => s_axi_rdata(88),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(89),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(89),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1_n_0\,
      Q => s_axi_rdata(89),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(8),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(8),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0\,
      Q => s_axi_rdata(8),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(90),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(90),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1_n_0\,
      Q => s_axi_rdata(90),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(91),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(91),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1_n_0\,
      Q => s_axi_rdata(91),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(92),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(92),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1_n_0\,
      Q => s_axi_rdata(92),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(93),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(93),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1_n_0\,
      Q => s_axi_rdata(93),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(94),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(94),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1_n_0\,
      Q => s_axi_rdata(94),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(95),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(95),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1_n_0\,
      Q => s_axi_rdata(95),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(96),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(96),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1_n_0\,
      Q => s_axi_rdata(96),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(97),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(97),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1_n_0\,
      Q => s_axi_rdata(97),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(98),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(98),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1_n_0\,
      Q => s_axi_rdata(98),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(99),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(99),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1_n_0\,
      Q => s_axi_rdata(99),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(9),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(9),
      I2 => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0\,
      Q => s_axi_rdata(9),
      R => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf[127]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => rd_skid_buf_ld_reg,
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I3 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I5 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      O => rd_skid_buf_ld
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(0),
      Q => rd_skid_buf(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(100),
      Q => rd_skid_buf(100),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(101),
      Q => rd_skid_buf(101),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(102),
      Q => rd_skid_buf(102),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(103),
      Q => rd_skid_buf(103),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(104),
      Q => rd_skid_buf(104),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(105),
      Q => rd_skid_buf(105),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(106),
      Q => rd_skid_buf(106),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(107),
      Q => rd_skid_buf(107),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(108),
      Q => rd_skid_buf(108),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(109),
      Q => rd_skid_buf(109),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(10),
      Q => rd_skid_buf(10),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(110),
      Q => rd_skid_buf(110),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(111),
      Q => rd_skid_buf(111),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(112),
      Q => rd_skid_buf(112),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(113),
      Q => rd_skid_buf(113),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(114),
      Q => rd_skid_buf(114),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(115),
      Q => rd_skid_buf(115),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(116),
      Q => rd_skid_buf(116),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(117),
      Q => rd_skid_buf(117),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(118),
      Q => rd_skid_buf(118),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(119),
      Q => rd_skid_buf(119),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(11),
      Q => rd_skid_buf(11),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(120),
      Q => rd_skid_buf(120),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(121),
      Q => rd_skid_buf(121),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(122),
      Q => rd_skid_buf(122),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(123),
      Q => rd_skid_buf(123),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(124),
      Q => rd_skid_buf(124),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(125),
      Q => rd_skid_buf(125),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(126),
      Q => rd_skid_buf(126),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(127),
      Q => rd_skid_buf(127),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(12),
      Q => rd_skid_buf(12),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(13),
      Q => rd_skid_buf(13),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(14),
      Q => rd_skid_buf(14),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(15),
      Q => rd_skid_buf(15),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(16),
      Q => rd_skid_buf(16),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(17),
      Q => rd_skid_buf(17),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(18),
      Q => rd_skid_buf(18),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(19),
      Q => rd_skid_buf(19),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(1),
      Q => rd_skid_buf(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(20),
      Q => rd_skid_buf(20),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(21),
      Q => rd_skid_buf(21),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(22),
      Q => rd_skid_buf(22),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(23),
      Q => rd_skid_buf(23),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(24),
      Q => rd_skid_buf(24),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(25),
      Q => rd_skid_buf(25),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(26),
      Q => rd_skid_buf(26),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(27),
      Q => rd_skid_buf(27),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(28),
      Q => rd_skid_buf(28),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(29),
      Q => rd_skid_buf(29),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(2),
      Q => rd_skid_buf(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(30),
      Q => rd_skid_buf(30),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(31),
      Q => rd_skid_buf(31),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(32),
      Q => rd_skid_buf(32),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(33),
      Q => rd_skid_buf(33),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(34),
      Q => rd_skid_buf(34),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(35),
      Q => rd_skid_buf(35),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(36),
      Q => rd_skid_buf(36),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(37),
      Q => rd_skid_buf(37),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(38),
      Q => rd_skid_buf(38),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(39),
      Q => rd_skid_buf(39),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(3),
      Q => rd_skid_buf(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(40),
      Q => rd_skid_buf(40),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(41),
      Q => rd_skid_buf(41),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(42),
      Q => rd_skid_buf(42),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(43),
      Q => rd_skid_buf(43),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(44),
      Q => rd_skid_buf(44),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(45),
      Q => rd_skid_buf(45),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(46),
      Q => rd_skid_buf(46),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(47),
      Q => rd_skid_buf(47),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(48),
      Q => rd_skid_buf(48),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(49),
      Q => rd_skid_buf(49),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(4),
      Q => rd_skid_buf(4),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(50),
      Q => rd_skid_buf(50),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(51),
      Q => rd_skid_buf(51),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(52),
      Q => rd_skid_buf(52),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(53),
      Q => rd_skid_buf(53),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(54),
      Q => rd_skid_buf(54),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(55),
      Q => rd_skid_buf(55),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(56),
      Q => rd_skid_buf(56),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(57),
      Q => rd_skid_buf(57),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(58),
      Q => rd_skid_buf(58),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(59),
      Q => rd_skid_buf(59),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(5),
      Q => rd_skid_buf(5),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(60),
      Q => rd_skid_buf(60),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(61),
      Q => rd_skid_buf(61),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(62),
      Q => rd_skid_buf(62),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(63),
      Q => rd_skid_buf(63),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(64),
      Q => rd_skid_buf(64),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(65),
      Q => rd_skid_buf(65),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(66),
      Q => rd_skid_buf(66),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(67),
      Q => rd_skid_buf(67),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(68),
      Q => rd_skid_buf(68),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(69),
      Q => rd_skid_buf(69),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(6),
      Q => rd_skid_buf(6),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(70),
      Q => rd_skid_buf(70),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(71),
      Q => rd_skid_buf(71),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(72),
      Q => rd_skid_buf(72),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(73),
      Q => rd_skid_buf(73),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(74),
      Q => rd_skid_buf(74),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(75),
      Q => rd_skid_buf(75),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(76),
      Q => rd_skid_buf(76),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(77),
      Q => rd_skid_buf(77),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(78),
      Q => rd_skid_buf(78),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(79),
      Q => rd_skid_buf(79),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(7),
      Q => rd_skid_buf(7),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(80),
      Q => rd_skid_buf(80),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(81),
      Q => rd_skid_buf(81),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(82),
      Q => rd_skid_buf(82),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(83),
      Q => rd_skid_buf(83),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(84),
      Q => rd_skid_buf(84),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(85),
      Q => rd_skid_buf(85),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(86),
      Q => rd_skid_buf(86),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(87),
      Q => rd_skid_buf(87),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(88),
      Q => rd_skid_buf(88),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(89),
      Q => rd_skid_buf(89),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(8),
      Q => rd_skid_buf(8),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(90),
      Q => rd_skid_buf(90),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(91),
      Q => rd_skid_buf(91),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(92),
      Q => rd_skid_buf(92),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(93),
      Q => rd_skid_buf(93),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(94),
      Q => rd_skid_buf(94),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(95),
      Q => rd_skid_buf(95),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(96),
      Q => rd_skid_buf(96),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(97),
      Q => rd_skid_buf(97),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(98),
      Q => rd_skid_buf(98),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(99),
      Q => rd_skid_buf(99),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(9),
      Q => rd_skid_buf(9),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axi_arlen_4_sn_1,
      I1 => s_axi_arlen(2),
      I2 => s_axi_arlen(3),
      I3 => s_axi_arlen(1),
      I4 => s_axi_arlen(0),
      O => s_axi_arlen_2_sn_1
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => s_axi_arlen_4_sn_1,
      I1 => s_axi_arlen(2),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(0),
      I4 => s_axi_arlen(3),
      O => \^axi_rd_burst_two\
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_2\,
      Q => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_2\,
      Q => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_two_reg_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE3202"
    )
        port map (
      I0 => \^s_axi_rid\(0),
      I1 => E(0),
      I2 => axi_rvalid_set,
      I3 => axi_rid_temp(0),
      I4 => s_axi_arid(0),
      I5 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE3202"
    )
        port map (
      I0 => \^s_axi_rid\(1),
      I1 => E(0),
      I2 => axi_rvalid_set,
      I3 => axi_rid_temp(1),
      I4 => s_axi_arid(1),
      I5 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\,
      Q => \^s_axi_rid\(0),
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0\,
      Q => \^s_axi_rid\(1),
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_arid(0),
      Q => axi_rid_temp(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_arid(1),
      Q => axi_rid_temp(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW\: entity work.axi_bram_ctrl_0_ua_narrow_0
     port map (
      D(3) => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0\,
      D(2) => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1\,
      D(1) => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2\,
      D(0) => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_3\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0\(3 downto 0) => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3\(3 downto 0),
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_1\(0) => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0\(0),
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1\(3 downto 0) => narrow_burst_cnt_ld_reg(3 downto 0),
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_3\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0\,
      Q(2 downto 0) => narrow_addr_int(2 downto 0),
      s_axi_araddr(2 downto 0) => s_axi_araddr(2 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      \s_axi_arsize[0]_0\ => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9\,
      \s_axi_arsize[0]_1\ => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_10\,
      \s_axi_arsize[1]_0\ => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_7\,
      \s_axi_arsize[1]_1\ => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_8\,
      \s_axi_arsize[1]_2\ => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_11\,
      \s_axi_arsize[1]_3\ => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_12\,
      s_axi_arsize_0_sp_1 => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_4\,
      s_axi_arsize_1_sp_1 => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_6\,
      s_axi_arsize_2_sp_1 => \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_5\,
      \ua_narrow_load1_carry_i_8__0_0\(3 downto 0) => \ua_narrow_load1_carry_i_8__0\(3 downto 0)
    );
\GEN_NO_RD_CMD_OPT.I_WRAP_BRST\: entity work.axi_bram_ctrl_0_wrap_brst_1
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[10]\ => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[10]_0\ => \ADDR_SNG_PORT.bram_addr_int_reg[10]_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\(6 downto 0) => \ADDR_SNG_PORT.bram_addr_int_reg[11]\(6 downto 0),
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ => \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_1\(3 downto 0) => narrow_addr_int(3 downto 0),
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_2\ => \^gen_no_rd_cmd_opt.gen_narrow_en.curr_narrow_burst_reg_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[13]\ => \ADDR_SNG_PORT.bram_addr_int_reg[13]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\ => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]\ => \ADDR_SNG_PORT.bram_addr_int_reg[5]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]\ => \ADDR_SNG_PORT.bram_addr_int_reg[6]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[7]\ => \ADDR_SNG_PORT.bram_addr_int_reg[7]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[9]\ => \ADDR_SNG_PORT.bram_addr_int_reg[9]\,
      D(6 downto 0) => D(6 downto 0),
      E(0) => E(0),
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]\ => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0\(3 downto 0) => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3 downto 0),
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_1\ => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_2\ => \^gen_no_rd_cmd_opt.brst_zero_reg_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_3\ => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]\ => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_two_reg_0\,
      \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg\ => \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg_0\,
      Q(7 downto 0) => Q(7 downto 0),
      SR(0) => \^s_axi_aresetn_0\,
      ar_active_reg => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      ar_active_reg_0(0) => ar_active_reg(0),
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      curr_narrow_burst_cmb => curr_narrow_burst_cmb,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      end_brst_rd => end_brst_rd,
      narrow_bram_addr_inc_d1 => narrow_bram_addr_inc_d1,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(12 downto 4),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_rready => s_axi_rready,
      \save_init_bram_addr_ld_reg[13]_0\(1 downto 0) => \save_init_bram_addr_ld_reg[13]\(1 downto 0)
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010001010100"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I3 => \GEN_NO_RD_CMD_OPT.brst_zero_reg_1\,
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I5 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_1\,
      O => act_rd_burst_set
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040400FFFFFFFF"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I5 => s_axi_aresetn,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0\
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      O => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.act_rd_burst_reg_1\,
      Q => \^gen_no_rd_cmd_opt.act_rd_burst_reg_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_1\,
      Q => \^gen_no_rd_cmd_opt.act_rd_burst_two_reg_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0DF0000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0\,
      I2 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_1\,
      I3 => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0\,
      I4 => s_axi_aresetn,
      O => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I2 => rlast_sm_cs(0),
      I3 => rlast_sm_cs(2),
      O => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF77FFFFFF77F0FF"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I1 => s_axi_rready,
      I2 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_1\,
      I3 => rlast_sm_cs(2),
      I4 => rlast_sm_cs(0),
      I5 => rlast_sm_cs(1),
      O => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0\,
      Q => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_1\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEAA"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0\,
      I2 => disable_b2b_brst,
      I3 => last_bram_addr,
      I4 => axi_rvalid_clr_ok,
      O => \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F444444444444"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I5 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      O => \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0\,
      Q => axi_rvalid_clr_ok,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F0000000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_1\,
      I2 => axi_rvalid_clr_ok,
      I3 => axi_rvalid_set,
      I4 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I5 => s_axi_aresetn,
      O => \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0\,
      Q => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_set_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      O => axi_rvalid_set_cmb
    );
\GEN_NO_RD_CMD_OPT.axi_rvalid_set_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_set_cmb,
      Q => axi_rvalid_set,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBA000000"
    )
        port map (
      I0 => E(0),
      I1 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      I2 => \^gen_no_rd_cmd_opt.pend_rd_op_reg_0\,
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I5 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0\,
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_1\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFFFE00FEFF"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      I1 => end_brst_rd,
      I2 => \^gen_no_rd_cmd_opt.brst_zero_reg_0\,
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I5 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_two_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.end_brst_rd_reg_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2FAA2FAA2FA0000"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0\,
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0\,
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I5 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3403370304000700"
    )
        port map (
      I0 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\,
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I4 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_1\,
      I5 => E(0),
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DDDDDDFD"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I2 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      I3 => end_brst_rd,
      I4 => \^gen_no_rd_cmd_opt.brst_zero_reg_0\,
      I5 => \GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0\,
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000000000005555"
    )
        port map (
      I0 => E(0),
      I1 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\,
      I2 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      I3 => brst_one,
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I5 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880000000"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I2 => \^gen_no_rd_cmd_opt.pend_rd_op_reg_0\,
      I3 => s_axi_rready,
      I4 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I5 => E(0),
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.bram_en_int_reg_0\,
      Q => BRAM_En_B_i,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FB"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      O => p_0_in(0)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      O => p_0_in(1)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FB08FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      O => p_0_in(2)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => E(0),
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      O => p_0_in(3)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB0808FBFB08FB08"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\,
      O => p_0_in(4)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B88BB8B8"
    )
        port map (
      I0 => s_axi_arlen(5),
      I1 => E(0),
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(5),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      O => p_0_in(5)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB0808FBFB08FB08"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(6),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(5),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0\,
      O => p_0_in(6)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14\,
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB0808FBFB08FB08"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \^gen_no_rd_cmd_opt.gen_ar_sng.ar_active_d1_reg_0\,
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(7),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\,
      O => p_0_in(7)
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(6),
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(5),
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      O => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_max_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gen_no_rd_cmd_opt.gen_brst_max_w_narrow.brst_cnt_max_reg_0\,
      Q => brst_cnt_max_d1,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(3),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(4),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(5),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(6),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(7),
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.brst_one_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444004444400040"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0\,
      I1 => s_axi_aresetn,
      I2 => brst_one,
      I3 => E(0),
      I4 => \^axi_rd_burst_two\,
      I5 => \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0\,
      O => \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_one_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14\,
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0\,
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(7),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      O => \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_one_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0\,
      Q => brst_one,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.brst_zero_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0\,
      I1 => \^gen_no_rd_cmd_opt.brst_zero_reg_0\,
      I2 => s_axi_aresetn,
      I3 => \GEN_NO_RD_CMD_OPT.brst_zero_reg_1\,
      O => \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.brst_zero_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => s_axi_arlen(5),
      I2 => s_axi_arlen(6),
      I3 => s_axi_arlen(7),
      O => s_axi_arlen_4_sn_1
    );
\GEN_NO_RD_CMD_OPT.brst_zero_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0\,
      Q => \^gen_no_rd_cmd_opt.brst_zero_reg_0\,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_arburst(1),
      O => curr_fixed_burst
    );
\GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => curr_fixed_burst,
      Q => curr_fixed_burst_reg,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      O => curr_wrap_burst
    );
\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => curr_wrap_burst,
      Q => curr_wrap_burst_reg,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAFAAAAAAEFAA"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0\,
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I3 => disable_b2b_brst,
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I5 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      O => disable_b2b_brst_cmb
    );
\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FBFBFBBB"
    )
        port map (
      I0 => disable_b2b_brst,
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I2 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      I3 => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0\,
      I4 => brst_one,
      I5 => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0\,
      O => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF10FF"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_two_reg_0\,
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I2 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_0\,
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I5 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      O => \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.disable_b2b_brst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => disable_b2b_brst_cmb,
      Q => disable_b2b_brst,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg_0\,
      Q => \^end_brst_rd_clr\,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55300000"
    )
        port map (
      I0 => \^end_brst_rd_clr\,
      I1 => brst_cnt_max_d1,
      I2 => \^gen_no_rd_cmd_opt.gen_brst_max_w_narrow.brst_cnt_max_reg_0\,
      I3 => end_brst_rd,
      I4 => s_axi_aresetn,
      O => \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.end_brst_rd_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0\,
      Q => end_brst_rd,
      R => '0'
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4001"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0\,
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I4 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0\,
      O => last_bram_addr0
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBB00BBBBBBAB"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0\,
      I1 => E(0),
      I2 => \^gen_no_rd_cmd_opt.pend_rd_op_reg_0\,
      I3 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_0\,
      I4 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_two_reg_0\,
      I5 => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0\,
      O => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14\,
      I1 => \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0\,
      I2 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(7),
      I3 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(2),
      I4 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(1),
      I5 => \GEN_NO_RD_CMD_OPT.brst_cnt_reg\(0),
      O => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0\
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEFEFEEFFFFFFF"
    )
        port map (
      I0 => \GEN_NO_RD_CMD_OPT.brst_zero_reg_1\,
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I3 => s_axi_rready,
      I4 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I5 => E(0),
      O => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I2 => s_axi_rready,
      I3 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      O => \GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0\
    );
\GEN_NO_RD_CMD_OPT.last_bram_addr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_bram_addr0,
      Q => last_bram_addr,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_2\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101010000000"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I3 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_1\,
      I4 => \^gen_no_rd_cmd_opt.pend_rd_op_reg_0\,
      I5 => E(0),
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00004000"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I3 => \^gen_no_rd_cmd_opt.pend_rd_op_reg_0\,
      I4 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      I5 => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0\,
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000200030000"
    )
        port map (
      I0 => E(0),
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I4 => \^gen_no_rd_cmd_opt.pend_rd_op_reg_0\,
      I5 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_reg_1\,
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_2\,
      Q => \^gen_no_rd_cmd_opt.pend_rd_op_reg_0\,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0\,
      I1 => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]_0\,
      S => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0)
    );
\GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000F000F0000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I2 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(3),
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I5 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      O => rd_skid_buf_ld_cmb
    );
\GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rd_skid_buf_ld_cmb,
      Q => rd_skid_buf_ld_reg,
      R => \^s_axi_aresetn_0\
    );
\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF55FFFC00FFFF"
    )
        port map (
      I0 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I1 => \^gen_no_rd_cmd_opt.act_rd_burst_reg_0\,
      I2 => \^gen_no_rd_cmd_opt.act_rd_burst_two_reg_0\,
      I3 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I5 => \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0\,
      O => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1\
    );
\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC00000FFF7777"
    )
        port map (
      I0 => \^gen_no_rd_cmd_opt.gen_rd_burst_norl.axi_rd_burst_two_reg_0\,
      I1 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(1),
      I2 => \^gen_no_rd_cmd_opt.axi_rvalid_int_reg_0\,
      I3 => s_axi_rready,
      I4 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(2),
      I5 => \^fsm_sequential_gen_no_rd_cmd_opt.rd_data_sm_cs_reg[3]_0\(0),
      O => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1\
    );
\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_1\,
      Q => \^gen_no_rd_cmd_opt.rddata_mux_sel_reg_0\,
      R => \^s_axi_aresetn_0\
    );
axi_awready_int_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_1\,
      O => s_axi_rready_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_0_wr_chnl is
  port (
    aw_active_d1_reg_0 : out STD_LOGIC;
    BRAM_En_A_i : out STD_LOGIC;
    dina : out STD_LOGIC_VECTOR ( 127 downto 0 );
    axi_wr_burst : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    axi_bvalid_int_reg_0 : out STD_LOGIC;
    curr_fixed_burst_reg : out STD_LOGIC;
    curr_wrap_burst_reg : out STD_LOGIC;
    s_axi_awsize_0_sp_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \save_init_bram_addr_ld_reg[11]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    aw_active_d1_reg_1 : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0\ : out STD_LOGIC;
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0\ : out STD_LOGIC;
    \s_axi_awsize[0]_0\ : out STD_LOGIC;
    s_axi_awsize_1_sp_1 : out STD_LOGIC;
    s_axi_awlen_2_sp_1 : out STD_LOGIC;
    s_axi_awlen_3_sp_1 : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1\ : out STD_LOGIC;
    \bvalid_cnt_reg[2]_0\ : out STD_LOGIC;
    s_axi_awvalid_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_awsize[0]_1\ : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \wrap_burst_total_reg[0]\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aw_active_d1_reg_2 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    axi_wr_burst_reg_0 : in STD_LOGIC;
    curr_fixed_burst_reg_reg_0 : in STD_LOGIC;
    curr_wrap_burst_reg_reg_0 : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    ua_narrow_load1_carry_i_8 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    curr_narrow_burst_en : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\ : in STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[13]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[4]\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    aw_active_re : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \save_init_bram_addr_ld_reg[11]_0\ : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    arb_sm_cs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_0_wr_chnl : entity is "wr_chnl";
end axi_bram_ctrl_0_wr_chnl;

architecture STRUCTURE of axi_bram_ctrl_0_wr_chnl is
  signal AW2Arb_BVALID_Cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal BID_FIFO_n_1 : STD_LOGIC;
  signal BID_FIFO_n_2 : STD_LOGIC;
  signal BID_FIFO_n_3 : STD_LOGIC;
  signal BID_FIFO_n_4 : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_22_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_23_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_24_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_25_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0\ : STD_LOGIC;
  signal \^gen_narrow_cnt.narrow_bram_addr_inc_d1_reg_0\ : STD_LOGIC;
  signal \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_0\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_1\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_10\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_2\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_3\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_4\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_5\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_6\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_7\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_8\ : STD_LOGIC;
  signal \GEN_UA_NARROW.I_UA_NARROW_n_9\ : STD_LOGIC;
  signal \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0\ : STD_LOGIC;
  signal \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\ : STD_LOGIC;
  signal I_WRAP_BRST_n_11 : STD_LOGIC;
  signal \^aw_active_d1_reg_0\ : STD_LOGIC;
  signal axi_bvalid_int_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_int_i_2_n_0 : STD_LOGIC;
  signal \^axi_bvalid_int_reg_0\ : STD_LOGIC;
  signal axi_wdata_full_cmb : STD_LOGIC;
  signal axi_wdata_full_reg : STD_LOGIC;
  signal axi_wlast_d1 : STD_LOGIC;
  signal \^axi_wr_burst\ : STD_LOGIC;
  signal axi_wready_int_mod_i_1_n_0 : STD_LOGIC;
  signal bid_gets_fifo_load : STD_LOGIC;
  signal bid_gets_fifo_load_d1 : STD_LOGIC;
  signal \bvalid_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal bvalid_cnt_inc : STD_LOGIC;
  signal clr_bram_we : STD_LOGIC;
  signal \^curr_fixed_burst_reg\ : STD_LOGIC;
  signal curr_narrow_burst : STD_LOGIC;
  signal \^curr_wrap_burst_reg\ : STD_LOGIC;
  signal narrow_addr_int : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal narrow_bram_addr_inc : STD_LOGIC;
  signal narrow_bram_addr_inc_d1 : STD_LOGIC;
  signal narrow_burst_cnt_ld_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_8_in : STD_LOGIC;
  signal s_axi_awlen_2_sn_1 : STD_LOGIC;
  signal s_axi_awlen_3_sn_1 : STD_LOGIC;
  signal s_axi_awsize_0_sn_1 : STD_LOGIC;
  signal s_axi_awsize_1_sn_1 : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_wready\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3\ : label is "soft_lutpair106";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ : label is "idle:001,brst_wr_data:010,sng_wr_data:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ : label is "idle:001,brst_wr_data:010,sng_wr_data:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ : label is "idle:001,brst_wr_data:010,sng_wr_data:100";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_2\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[2]_i_4\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_16\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_17\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_22\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_25\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[3]_i_4\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of axi_bvalid_int_i_1 : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of axi_wready_int_mod_i_1 : label is "soft_lutpair110";
begin
  \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0\ <= \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[0]_0\;
  \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0\ <= \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_0\;
  \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0\ <= \^gen_narrow_cnt.narrow_bram_addr_inc_d1_reg_0\;
  aw_active_d1_reg_0 <= \^aw_active_d1_reg_0\;
  axi_bvalid_int_reg_0 <= \^axi_bvalid_int_reg_0\;
  axi_wr_burst <= \^axi_wr_burst\;
  curr_fixed_burst_reg <= \^curr_fixed_burst_reg\;
  curr_wrap_burst_reg <= \^curr_wrap_burst_reg\;
  s_axi_awlen_2_sp_1 <= s_axi_awlen_2_sn_1;
  s_axi_awlen_3_sp_1 <= s_axi_awlen_3_sn_1;
  s_axi_awsize_0_sp_1 <= s_axi_awsize_0_sn_1;
  s_axi_awsize_1_sp_1 <= s_axi_awsize_1_sn_1;
  s_axi_bid(1 downto 0) <= \^s_axi_bid\(1 downto 0);
  s_axi_wready <= \^s_axi_wready\;
\ADDR_SNG_PORT.bram_addr_int[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000100FF"
    )
        port map (
      I0 => narrow_bram_addr_inc_d1,
      I1 => narrow_addr_int(3),
      I2 => I_WRAP_BRST_n_11,
      I3 => \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0\,
      I4 => curr_narrow_burst,
      I5 => \^curr_fixed_burst_reg\,
      O => \^gen_narrow_cnt.narrow_bram_addr_inc_d1_reg_0\
    );
BID_FIFO: entity work.axi_bram_ctrl_0_SRL_FIFO
     port map (
      AW2Arb_BVALID_Cnt(2 downto 0) => AW2Arb_BVALID_Cnt(2 downto 0),
      \Addr_Counters[3].FDRE_I_0\ => \wrap_burst_total_reg[0]\,
      Data_Exists_DFF_0 => \^axi_bvalid_int_reg_0\,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ => BID_FIFO_n_2,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ => BID_FIFO_n_1,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      aw_active_re => aw_active_re,
      axi_wdata_full_reg => axi_wdata_full_reg,
      axi_wr_burst => \^axi_wr_burst\,
      bid_gets_fifo_load => bid_gets_fifo_load,
      bid_gets_fifo_load_d1 => bid_gets_fifo_load_d1,
      bid_gets_fifo_load_d1_reg => axi_bvalid_int_i_2_n_0,
      bid_gets_fifo_load_d1_reg_0 => \^aw_active_d1_reg_0\,
      bid_gets_fifo_load_d1_reg_1 => aw_active_d1_reg_2,
      bid_gets_fifo_load_d1_reg_2 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      s_axi_aclk => s_axi_aclk,
      s_axi_awid(1 downto 0) => s_axi_awid(1 downto 0),
      s_axi_awid_0_sp_1 => BID_FIFO_n_4,
      s_axi_awid_1_sp_1 => BID_FIFO_n_3,
      s_axi_bid(1 downto 0) => \^s_axi_bid\(1 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1555FFFF0000"
    )
        port map (
      I0 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[0]_0\,
      I1 => s_axi_wlast,
      I2 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      I3 => s_axi_wvalid,
      I4 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_0\,
      I5 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A202FFFFA2020000"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I1 => s_axi_wlast,
      I2 => axi_wdata_full_reg,
      I3 => \^axi_wr_burst\,
      I4 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0\,
      I5 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
        port map (
      I0 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[0]_0\,
      I1 => s_axi_wlast,
      I2 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      I3 => s_axi_wvalid,
      I4 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_0\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFAAFC88CC88"
    )
        port map (
      I0 => BID_FIFO_n_2,
      I1 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[0]_0\,
      I2 => s_axi_wlast,
      I3 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      I4 => s_axi_wvalid,
      I5 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_0\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I1 => aw_active_d1_reg_2,
      I2 => axi_wdata_full_reg,
      I3 => s_axi_wvalid,
      O => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[0]_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\,
      Q => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      S => \wrap_burst_total_reg[0]\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\,
      Q => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      R => \wrap_burst_total_reg[0]\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0\,
      Q => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_0\,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => narrow_addr_int(1),
      I1 => narrow_addr_int(0),
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      O => \GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => curr_narrow_burst,
      I1 => s_axi_wvalid,
      I2 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF00A800CF00FFFF"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0\,
      I2 => s_axi_awsize(0),
      I3 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0\,
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(2),
      O => \s_axi_awsize[0]_1\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553F5F0F3F5F0F0F"
    )
        port map (
      I0 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0\,
      I2 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0\,
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(2),
      I5 => s_axi_awsize(0),
      O => s_axi_awsize_1_sn_1
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4F4F8FF"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0\,
      I2 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_22_n_0\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_23_n_0\,
      I4 => s_axi_awsize(1),
      I5 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_24_n_0\,
      O => \s_axi_awsize[0]_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47FF"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(5),
      I3 => s_axi_awvalid,
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(0),
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"37F7000037F737F7"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awvalid,
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(2),
      I4 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_23_n_0\,
      I5 => \GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(2),
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFFF3F7700003F"
    )
        port map (
      I0 => s_axi_awlen(7),
      I1 => s_axi_awvalid,
      I2 => s_axi_awlen(6),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(0),
      I5 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_25_n_0\,
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FA00CC00FA00"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awlen(3),
      I2 => s_axi_awlen(6),
      I3 => s_axi_awvalid,
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(7),
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0800080"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awlen(1),
      I2 => s_axi_awvalid,
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(0),
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_22_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => s_axi_awlen(6),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(7),
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_23_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8002200F800BA00"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(5),
      I3 => s_axi_awvalid,
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(2),
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_24_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(4),
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_25_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FF10FF10FF0000"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => aw_active_re,
      I4 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0\,
      I5 => narrow_bram_addr_inc_d1,
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => narrow_addr_int(2),
      I1 => narrow_addr_int(0),
      I2 => narrow_addr_int(1),
      I3 => narrow_addr_int(3),
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA59995559"
    )
        port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW_n_7\,
      I1 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0\,
      I2 => \GEN_UA_NARROW.I_UA_NARROW_n_4\,
      I3 => \GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0\,
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_5\,
      I5 => \GEN_UA_NARROW.I_UA_NARROW_n_6\,
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => curr_narrow_burst,
      I1 => \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0\,
      I2 => narrow_addr_int(2),
      I3 => narrow_addr_int(0),
      I4 => narrow_addr_int(1),
      I5 => narrow_addr_int(3),
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4474747447777777"
    )
        port map (
      I0 => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(0),
      I4 => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      I5 => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      O => \GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0\,
      D => \GEN_UA_NARROW.I_UA_NARROW_n_3\,
      Q => narrow_addr_int(0),
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0\,
      D => \GEN_UA_NARROW.I_UA_NARROW_n_2\,
      Q => narrow_addr_int(1),
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0\,
      D => \GEN_UA_NARROW.I_UA_NARROW_n_1\,
      Q => narrow_addr_int(2),
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0\,
      D => \GEN_UA_NARROW.I_UA_NARROW_n_0\,
      Q => narrow_addr_int(3),
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => narrow_addr_int(3),
      I1 => narrow_addr_int(1),
      I2 => narrow_addr_int(0),
      I3 => narrow_addr_int(2),
      I4 => \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0\,
      I5 => curr_narrow_burst,
      O => narrow_bram_addr_inc
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      O => \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0\
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_bram_addr_inc,
      Q => narrow_bram_addr_inc_d1,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => aw_active_d1_reg_2,
      I2 => \^aw_active_d1_reg_0\,
      I3 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\,
      O => narrow_burst_cnt_ld_reg(0)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF15FF00001500"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => aw_active_d1_reg_2,
      I4 => \^aw_active_d1_reg_0\,
      I5 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\,
      O => narrow_burst_cnt_ld_reg(1)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1F0010"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => aw_active_d1_reg_2,
      I3 => \^aw_active_d1_reg_0\,
      I4 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\,
      O => narrow_burst_cnt_ld_reg(2)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01FF00000100"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => aw_active_d1_reg_2,
      I4 => \^aw_active_d1_reg_0\,
      I5 => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3]\,
      O => narrow_burst_cnt_ld_reg(3)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(0),
      Q => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0]\,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(1),
      Q => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1]\,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(2),
      Q => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2]\,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(3),
      Q => \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3]\,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_EN.axi_wlast_d1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_wvalid,
      I2 => s_axi_wlast,
      O => p_8_in
    );
\GEN_NARROW_EN.axi_wlast_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_in,
      Q => axi_wlast_d1,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FBB0F0000000000"
    )
        port map (
      I0 => axi_wlast_d1,
      I1 => p_8_in,
      I2 => s_axi_awsize_0_sn_1,
      I3 => curr_narrow_burst_en,
      I4 => curr_narrow_burst,
      I5 => s_axi_aresetn,
      O => \GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F0E0"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awlen(6),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(1),
      I4 => s_axi_awlen(4),
      O => s_axi_awlen_2_sn_1
    );
\GEN_NARROW_EN.curr_narrow_burst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F0E0"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awlen(5),
      I2 => s_axi_awvalid,
      I3 => s_axi_awlen(7),
      I4 => s_axi_awlen(0),
      O => s_axi_awlen_3_sn_1
    );
\GEN_NARROW_EN.curr_narrow_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_NARROW_EN.curr_narrow_burst_i_1_n_0\,
      Q => curr_narrow_burst,
      R => '0'
    );
\GEN_UA_NARROW.I_UA_NARROW\: entity work.axi_bram_ctrl_0_ua_narrow
     port map (
      D(3) => \GEN_UA_NARROW.I_UA_NARROW_n_0\,
      D(2) => \GEN_UA_NARROW.I_UA_NARROW_n_1\,
      D(1) => \GEN_UA_NARROW.I_UA_NARROW_n_2\,
      D(0) => \GEN_UA_NARROW.I_UA_NARROW_n_3\,
      DI(3 downto 0) => DI(3 downto 0),
      \GEN_NARROW_CNT.narrow_addr_int_reg[1]\ => \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[2]\ => \GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\ => \GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[3]\ => \GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0\ => \GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1\ => \GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[3]_2\(3 downto 0) => narrow_burst_cnt_ld_reg(3 downto 0),
      Q(2 downto 0) => narrow_addr_int(2 downto 0),
      S(0) => S(0),
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(2 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      \s_axi_awsize[0]_0\ => \GEN_UA_NARROW.I_UA_NARROW_n_9\,
      \s_axi_awsize[0]_1\ => \GEN_UA_NARROW.I_UA_NARROW_n_10\,
      \s_axi_awsize[1]_0\ => \GEN_UA_NARROW.I_UA_NARROW_n_8\,
      \s_axi_awsize[2]_0\ => \GEN_UA_NARROW.I_UA_NARROW_n_7\,
      s_axi_awsize_0_sp_1 => \GEN_UA_NARROW.I_UA_NARROW_n_5\,
      s_axi_awsize_1_sp_1 => \GEN_UA_NARROW.I_UA_NARROW_n_6\,
      s_axi_awsize_2_sp_1 => \GEN_UA_NARROW.I_UA_NARROW_n_4\,
      ua_narrow_load1_carry_i_8_0(3 downto 0) => ua_narrow_load1_carry_i_8(3 downto 0)
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF020F222F020"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I1 => aw_active_d1_reg_2,
      I2 => axi_wdata_full_reg,
      I3 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      I4 => s_axi_wvalid,
      I5 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_0\,
      O => axi_wdata_full_cmb
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wdata_full_cmb,
      Q => axi_wdata_full_reg,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC08080"
    )
        port map (
      I0 => axi_wdata_full_reg,
      I1 => aw_active_d1_reg_2,
      I2 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I3 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      I4 => s_axi_wvalid,
      O => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0\,
      Q => BRAM_En_A_i,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BID_FIFO_n_1,
      O => bvalid_cnt_inc
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bvalid_cnt_inc,
      Q => clr_bram_we,
      R => \wrap_burst_total_reg[0]\
    );
\GEN_WRDATA[0].bram_wrdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(0),
      Q => dina(0),
      R => '0'
    );
\GEN_WRDATA[100].bram_wrdata_int_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(100),
      Q => dina(100),
      R => '0'
    );
\GEN_WRDATA[101].bram_wrdata_int_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(101),
      Q => dina(101),
      R => '0'
    );
\GEN_WRDATA[102].bram_wrdata_int_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(102),
      Q => dina(102),
      R => '0'
    );
\GEN_WRDATA[103].bram_wrdata_int_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(103),
      Q => dina(103),
      R => '0'
    );
\GEN_WRDATA[104].bram_wrdata_int_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(104),
      Q => dina(104),
      R => '0'
    );
\GEN_WRDATA[105].bram_wrdata_int_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(105),
      Q => dina(105),
      R => '0'
    );
\GEN_WRDATA[106].bram_wrdata_int_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(106),
      Q => dina(106),
      R => '0'
    );
\GEN_WRDATA[107].bram_wrdata_int_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(107),
      Q => dina(107),
      R => '0'
    );
\GEN_WRDATA[108].bram_wrdata_int_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(108),
      Q => dina(108),
      R => '0'
    );
\GEN_WRDATA[109].bram_wrdata_int_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(109),
      Q => dina(109),
      R => '0'
    );
\GEN_WRDATA[10].bram_wrdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(10),
      Q => dina(10),
      R => '0'
    );
\GEN_WRDATA[110].bram_wrdata_int_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(110),
      Q => dina(110),
      R => '0'
    );
\GEN_WRDATA[111].bram_wrdata_int_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(111),
      Q => dina(111),
      R => '0'
    );
\GEN_WRDATA[112].bram_wrdata_int_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(112),
      Q => dina(112),
      R => '0'
    );
\GEN_WRDATA[113].bram_wrdata_int_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(113),
      Q => dina(113),
      R => '0'
    );
\GEN_WRDATA[114].bram_wrdata_int_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(114),
      Q => dina(114),
      R => '0'
    );
\GEN_WRDATA[115].bram_wrdata_int_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(115),
      Q => dina(115),
      R => '0'
    );
\GEN_WRDATA[116].bram_wrdata_int_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(116),
      Q => dina(116),
      R => '0'
    );
\GEN_WRDATA[117].bram_wrdata_int_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(117),
      Q => dina(117),
      R => '0'
    );
\GEN_WRDATA[118].bram_wrdata_int_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(118),
      Q => dina(118),
      R => '0'
    );
\GEN_WRDATA[119].bram_wrdata_int_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(119),
      Q => dina(119),
      R => '0'
    );
\GEN_WRDATA[11].bram_wrdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(11),
      Q => dina(11),
      R => '0'
    );
\GEN_WRDATA[120].bram_wrdata_int_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(120),
      Q => dina(120),
      R => '0'
    );
\GEN_WRDATA[121].bram_wrdata_int_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(121),
      Q => dina(121),
      R => '0'
    );
\GEN_WRDATA[122].bram_wrdata_int_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(122),
      Q => dina(122),
      R => '0'
    );
\GEN_WRDATA[123].bram_wrdata_int_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(123),
      Q => dina(123),
      R => '0'
    );
\GEN_WRDATA[124].bram_wrdata_int_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(124),
      Q => dina(124),
      R => '0'
    );
\GEN_WRDATA[125].bram_wrdata_int_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(125),
      Q => dina(125),
      R => '0'
    );
\GEN_WRDATA[126].bram_wrdata_int_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(126),
      Q => dina(126),
      R => '0'
    );
\GEN_WRDATA[127].bram_wrdata_int_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(127),
      Q => dina(127),
      R => '0'
    );
\GEN_WRDATA[12].bram_wrdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(12),
      Q => dina(12),
      R => '0'
    );
\GEN_WRDATA[13].bram_wrdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(13),
      Q => dina(13),
      R => '0'
    );
\GEN_WRDATA[14].bram_wrdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(14),
      Q => dina(14),
      R => '0'
    );
\GEN_WRDATA[15].bram_wrdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(15),
      Q => dina(15),
      R => '0'
    );
\GEN_WRDATA[16].bram_wrdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(16),
      Q => dina(16),
      R => '0'
    );
\GEN_WRDATA[17].bram_wrdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(17),
      Q => dina(17),
      R => '0'
    );
\GEN_WRDATA[18].bram_wrdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(18),
      Q => dina(18),
      R => '0'
    );
\GEN_WRDATA[19].bram_wrdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(19),
      Q => dina(19),
      R => '0'
    );
\GEN_WRDATA[1].bram_wrdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(1),
      Q => dina(1),
      R => '0'
    );
\GEN_WRDATA[20].bram_wrdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(20),
      Q => dina(20),
      R => '0'
    );
\GEN_WRDATA[21].bram_wrdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(21),
      Q => dina(21),
      R => '0'
    );
\GEN_WRDATA[22].bram_wrdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(22),
      Q => dina(22),
      R => '0'
    );
\GEN_WRDATA[23].bram_wrdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(23),
      Q => dina(23),
      R => '0'
    );
\GEN_WRDATA[24].bram_wrdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(24),
      Q => dina(24),
      R => '0'
    );
\GEN_WRDATA[25].bram_wrdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(25),
      Q => dina(25),
      R => '0'
    );
\GEN_WRDATA[26].bram_wrdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(26),
      Q => dina(26),
      R => '0'
    );
\GEN_WRDATA[27].bram_wrdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(27),
      Q => dina(27),
      R => '0'
    );
\GEN_WRDATA[28].bram_wrdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(28),
      Q => dina(28),
      R => '0'
    );
\GEN_WRDATA[29].bram_wrdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(29),
      Q => dina(29),
      R => '0'
    );
\GEN_WRDATA[2].bram_wrdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(2),
      Q => dina(2),
      R => '0'
    );
\GEN_WRDATA[30].bram_wrdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(30),
      Q => dina(30),
      R => '0'
    );
\GEN_WRDATA[31].bram_wrdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(31),
      Q => dina(31),
      R => '0'
    );
\GEN_WRDATA[32].bram_wrdata_int_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(32),
      Q => dina(32),
      R => '0'
    );
\GEN_WRDATA[33].bram_wrdata_int_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(33),
      Q => dina(33),
      R => '0'
    );
\GEN_WRDATA[34].bram_wrdata_int_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(34),
      Q => dina(34),
      R => '0'
    );
\GEN_WRDATA[35].bram_wrdata_int_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(35),
      Q => dina(35),
      R => '0'
    );
\GEN_WRDATA[36].bram_wrdata_int_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(36),
      Q => dina(36),
      R => '0'
    );
\GEN_WRDATA[37].bram_wrdata_int_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(37),
      Q => dina(37),
      R => '0'
    );
\GEN_WRDATA[38].bram_wrdata_int_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(38),
      Q => dina(38),
      R => '0'
    );
\GEN_WRDATA[39].bram_wrdata_int_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(39),
      Q => dina(39),
      R => '0'
    );
\GEN_WRDATA[3].bram_wrdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(3),
      Q => dina(3),
      R => '0'
    );
\GEN_WRDATA[40].bram_wrdata_int_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(40),
      Q => dina(40),
      R => '0'
    );
\GEN_WRDATA[41].bram_wrdata_int_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(41),
      Q => dina(41),
      R => '0'
    );
\GEN_WRDATA[42].bram_wrdata_int_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(42),
      Q => dina(42),
      R => '0'
    );
\GEN_WRDATA[43].bram_wrdata_int_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(43),
      Q => dina(43),
      R => '0'
    );
\GEN_WRDATA[44].bram_wrdata_int_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(44),
      Q => dina(44),
      R => '0'
    );
\GEN_WRDATA[45].bram_wrdata_int_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(45),
      Q => dina(45),
      R => '0'
    );
\GEN_WRDATA[46].bram_wrdata_int_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(46),
      Q => dina(46),
      R => '0'
    );
\GEN_WRDATA[47].bram_wrdata_int_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(47),
      Q => dina(47),
      R => '0'
    );
\GEN_WRDATA[48].bram_wrdata_int_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(48),
      Q => dina(48),
      R => '0'
    );
\GEN_WRDATA[49].bram_wrdata_int_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(49),
      Q => dina(49),
      R => '0'
    );
\GEN_WRDATA[4].bram_wrdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(4),
      Q => dina(4),
      R => '0'
    );
\GEN_WRDATA[50].bram_wrdata_int_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(50),
      Q => dina(50),
      R => '0'
    );
\GEN_WRDATA[51].bram_wrdata_int_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(51),
      Q => dina(51),
      R => '0'
    );
\GEN_WRDATA[52].bram_wrdata_int_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(52),
      Q => dina(52),
      R => '0'
    );
\GEN_WRDATA[53].bram_wrdata_int_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(53),
      Q => dina(53),
      R => '0'
    );
\GEN_WRDATA[54].bram_wrdata_int_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(54),
      Q => dina(54),
      R => '0'
    );
\GEN_WRDATA[55].bram_wrdata_int_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(55),
      Q => dina(55),
      R => '0'
    );
\GEN_WRDATA[56].bram_wrdata_int_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(56),
      Q => dina(56),
      R => '0'
    );
\GEN_WRDATA[57].bram_wrdata_int_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(57),
      Q => dina(57),
      R => '0'
    );
\GEN_WRDATA[58].bram_wrdata_int_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(58),
      Q => dina(58),
      R => '0'
    );
\GEN_WRDATA[59].bram_wrdata_int_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(59),
      Q => dina(59),
      R => '0'
    );
\GEN_WRDATA[5].bram_wrdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(5),
      Q => dina(5),
      R => '0'
    );
\GEN_WRDATA[60].bram_wrdata_int_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(60),
      Q => dina(60),
      R => '0'
    );
\GEN_WRDATA[61].bram_wrdata_int_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(61),
      Q => dina(61),
      R => '0'
    );
\GEN_WRDATA[62].bram_wrdata_int_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(62),
      Q => dina(62),
      R => '0'
    );
\GEN_WRDATA[63].bram_wrdata_int_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(63),
      Q => dina(63),
      R => '0'
    );
\GEN_WRDATA[64].bram_wrdata_int_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(64),
      Q => dina(64),
      R => '0'
    );
\GEN_WRDATA[65].bram_wrdata_int_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(65),
      Q => dina(65),
      R => '0'
    );
\GEN_WRDATA[66].bram_wrdata_int_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(66),
      Q => dina(66),
      R => '0'
    );
\GEN_WRDATA[67].bram_wrdata_int_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(67),
      Q => dina(67),
      R => '0'
    );
\GEN_WRDATA[68].bram_wrdata_int_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(68),
      Q => dina(68),
      R => '0'
    );
\GEN_WRDATA[69].bram_wrdata_int_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(69),
      Q => dina(69),
      R => '0'
    );
\GEN_WRDATA[6].bram_wrdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(6),
      Q => dina(6),
      R => '0'
    );
\GEN_WRDATA[70].bram_wrdata_int_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(70),
      Q => dina(70),
      R => '0'
    );
\GEN_WRDATA[71].bram_wrdata_int_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(71),
      Q => dina(71),
      R => '0'
    );
\GEN_WRDATA[72].bram_wrdata_int_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(72),
      Q => dina(72),
      R => '0'
    );
\GEN_WRDATA[73].bram_wrdata_int_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(73),
      Q => dina(73),
      R => '0'
    );
\GEN_WRDATA[74].bram_wrdata_int_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(74),
      Q => dina(74),
      R => '0'
    );
\GEN_WRDATA[75].bram_wrdata_int_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(75),
      Q => dina(75),
      R => '0'
    );
\GEN_WRDATA[76].bram_wrdata_int_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(76),
      Q => dina(76),
      R => '0'
    );
\GEN_WRDATA[77].bram_wrdata_int_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(77),
      Q => dina(77),
      R => '0'
    );
\GEN_WRDATA[78].bram_wrdata_int_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(78),
      Q => dina(78),
      R => '0'
    );
\GEN_WRDATA[79].bram_wrdata_int_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(79),
      Q => dina(79),
      R => '0'
    );
\GEN_WRDATA[7].bram_wrdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(7),
      Q => dina(7),
      R => '0'
    );
\GEN_WRDATA[80].bram_wrdata_int_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(80),
      Q => dina(80),
      R => '0'
    );
\GEN_WRDATA[81].bram_wrdata_int_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(81),
      Q => dina(81),
      R => '0'
    );
\GEN_WRDATA[82].bram_wrdata_int_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(82),
      Q => dina(82),
      R => '0'
    );
\GEN_WRDATA[83].bram_wrdata_int_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(83),
      Q => dina(83),
      R => '0'
    );
\GEN_WRDATA[84].bram_wrdata_int_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(84),
      Q => dina(84),
      R => '0'
    );
\GEN_WRDATA[85].bram_wrdata_int_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(85),
      Q => dina(85),
      R => '0'
    );
\GEN_WRDATA[86].bram_wrdata_int_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(86),
      Q => dina(86),
      R => '0'
    );
\GEN_WRDATA[87].bram_wrdata_int_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(87),
      Q => dina(87),
      R => '0'
    );
\GEN_WRDATA[88].bram_wrdata_int_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(88),
      Q => dina(88),
      R => '0'
    );
\GEN_WRDATA[89].bram_wrdata_int_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(89),
      Q => dina(89),
      R => '0'
    );
\GEN_WRDATA[8].bram_wrdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(8),
      Q => dina(8),
      R => '0'
    );
\GEN_WRDATA[90].bram_wrdata_int_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(90),
      Q => dina(90),
      R => '0'
    );
\GEN_WRDATA[91].bram_wrdata_int_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(91),
      Q => dina(91),
      R => '0'
    );
\GEN_WRDATA[92].bram_wrdata_int_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(92),
      Q => dina(92),
      R => '0'
    );
\GEN_WRDATA[93].bram_wrdata_int_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(93),
      Q => dina(93),
      R => '0'
    );
\GEN_WRDATA[94].bram_wrdata_int_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(94),
      Q => dina(94),
      R => '0'
    );
\GEN_WRDATA[95].bram_wrdata_int_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(95),
      Q => dina(95),
      R => '0'
    );
\GEN_WRDATA[96].bram_wrdata_int_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(96),
      Q => dina(96),
      R => '0'
    );
\GEN_WRDATA[97].bram_wrdata_int_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(97),
      Q => dina(97),
      R => '0'
    );
\GEN_WRDATA[98].bram_wrdata_int_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(98),
      Q => dina(98),
      R => '0'
    );
\GEN_WRDATA[99].bram_wrdata_int_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(99),
      Q => dina(99),
      R => '0'
    );
\GEN_WRDATA[9].bram_wrdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wdata(9),
      Q => dina(9),
      R => '0'
    );
\GEN_WR_NO_ECC.bram_we_int[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      I1 => clr_bram_we,
      I2 => s_axi_aresetn,
      O => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF40000"
    )
        port map (
      I0 => axi_wdata_full_reg,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I2 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_0\,
      I3 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      I4 => s_axi_wvalid,
      O => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(0),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(0),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(10),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(10),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(11),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(11),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(12),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(12),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(13),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(13),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(14),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(14),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(15),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(15),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(1),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(1),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(2),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(2),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(3),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(3),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(4),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(4),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(5),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(5),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(6),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(6),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(7),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(7),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(8),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(8),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0\,
      D => s_axi_wstrb(9),
      Q => \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(9),
      R => \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0\
    );
I_WRAP_BRST: entity work.axi_bram_ctrl_0_wrap_brst
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[13]\(1 downto 0) => \ADDR_SNG_PORT.bram_addr_int_reg[13]\(1 downto 0),
      \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\ => \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]\ => \ADDR_SNG_PORT.bram_addr_int_reg[4]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]_0\ => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]_1\ => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]_2\ => \^gen_narrow_cnt.narrow_bram_addr_inc_d1_reg_0\,
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      \GEN_NARROW_CNT.narrow_addr_int_reg[2]\ => I_WRAP_BRST_n_11,
      Q(2 downto 0) => Q(2 downto 0),
      SR(0) => SR(0),
      aw_active_d1_reg => aw_active_d1_reg_1,
      aw_active_re => aw_active_re,
      curr_narrow_burst => curr_narrow_burst,
      curr_wrap_burst_reg => \^curr_wrap_burst_reg\,
      narrow_bram_addr_inc_d1 => narrow_bram_addr_inc_d1,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(0) => s_axi_araddr(0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(9 downto 0) => s_axi_awaddr(12 downto 3),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awsize_0_sp_1 => s_axi_awsize_0_sn_1,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wvalid => s_axi_wvalid,
      \save_init_bram_addr_ld[11]_i_2_0\(3 downto 0) => narrow_addr_int(3 downto 0),
      \save_init_bram_addr_ld_reg[11]_0\(6 downto 0) => \save_init_bram_addr_ld_reg[11]\(6 downto 0),
      \save_init_bram_addr_ld_reg[11]_1\ => \^aw_active_d1_reg_0\,
      \save_init_bram_addr_ld_reg[11]_2\ => aw_active_d1_reg_2,
      \save_init_bram_addr_ld_reg[11]_3\ => \save_init_bram_addr_ld_reg[11]_0\,
      \wrap_burst_total_reg[0]_0\ => \wrap_burst_total_reg[0]\
    );
aw_active_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_active_d1_reg_2,
      Q => \^aw_active_d1_reg_0\,
      R => \wrap_burst_total_reg[0]\
    );
axi_awready_int_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => AW2Arb_BVALID_Cnt(0),
      I2 => AW2Arb_BVALID_Cnt(1),
      I3 => AW2Arb_BVALID_Cnt(2),
      O => s_axi_awvalid_0
    );
\axi_bid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => BID_FIFO_n_4,
      Q => \^s_axi_bid\(0),
      R => \wrap_burst_total_reg[0]\
    );
\axi_bid_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => BID_FIFO_n_3,
      Q => \^s_axi_bid\(1),
      R => \wrap_burst_total_reg[0]\
    );
axi_bvalid_int_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => axi_bvalid_int_i_2_n_0,
      I2 => BID_FIFO_n_1,
      O => axi_bvalid_int_i_1_n_0
    );
axi_bvalid_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF70"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^axi_bvalid_int_reg_0\,
      I2 => AW2Arb_BVALID_Cnt(0),
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => AW2Arb_BVALID_Cnt(2),
      O => axi_bvalid_int_i_2_n_0
    );
axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_int_i_1_n_0,
      Q => \^axi_bvalid_int_reg_0\,
      R => '0'
    );
axi_wr_burst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0E0"
    )
        port map (
      I0 => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_0\,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I2 => s_axi_wvalid,
      I3 => axi_wdata_full_reg,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1\
    );
axi_wr_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wr_burst_reg_0,
      Q => \^axi_wr_burst\,
      R => \wrap_burst_total_reg[0]\
    );
axi_wready_int_mod_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => axi_wdata_full_cmb,
      O => axi_wready_int_mod_i_1_n_0
    );
axi_wready_int_mod_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready_int_mod_i_1_n_0,
      Q => \^s_axi_wready\,
      R => '0'
    );
bid_gets_fifo_load_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bid_gets_fifo_load,
      Q => bid_gets_fifo_load_d1,
      R => \wrap_burst_total_reg[0]\
    );
\bvalid_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777788888880777F"
    )
        port map (
      I0 => \^axi_bvalid_int_reg_0\,
      I1 => s_axi_bready,
      I2 => AW2Arb_BVALID_Cnt(1),
      I3 => AW2Arb_BVALID_Cnt(2),
      I4 => BID_FIFO_n_1,
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \bvalid_cnt[0]_i_1_n_0\
    );
\bvalid_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F058A5F0A5F0A5F0"
    )
        port map (
      I0 => BID_FIFO_n_1,
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(1),
      I3 => AW2Arb_BVALID_Cnt(0),
      I4 => s_axi_bready,
      I5 => \^axi_bvalid_int_reg_0\,
      O => \bvalid_cnt[1]_i_1_n_0\
    );
\bvalid_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC49CCC9CCC9CCC"
    )
        port map (
      I0 => BID_FIFO_n_1,
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(1),
      I3 => AW2Arb_BVALID_Cnt(0),
      I4 => s_axi_bready,
      I5 => \^axi_bvalid_int_reg_0\,
      O => \bvalid_cnt[2]_i_1_n_0\
    );
\bvalid_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[0]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(0),
      R => \wrap_burst_total_reg[0]\
    );
\bvalid_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[1]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(1),
      R => \wrap_burst_total_reg[0]\
    );
\bvalid_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[2]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(2),
      R => \wrap_burst_total_reg[0]\
    );
curr_fixed_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => curr_fixed_burst_reg_reg_0,
      Q => \^curr_fixed_burst_reg\,
      R => '0'
    );
curr_wrap_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => curr_wrap_burst_reg_reg_0,
      Q => \^curr_wrap_burst_reg\,
      R => '0'
    );
last_arb_won_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007F00"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(2),
      I1 => AW2Arb_BVALID_Cnt(1),
      I2 => AW2Arb_BVALID_Cnt(0),
      I3 => s_axi_awvalid,
      I4 => arb_sm_cs(0),
      I5 => arb_sm_cs(1),
      O => \bvalid_cnt_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_0_xpm_memory_spram is
  port (
    douta : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_0_xpm_memory_spram : entity is "xpm_memory_spram";
end axi_bram_ctrl_0_xpm_memory_spram;

architecture STRUCTURE of axi_bram_ctrl_0_xpm_memory_spram is
  signal NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of xpm_memory_base_inst : label is 10;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_base_inst : label is 10;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of xpm_memory_base_inst : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base_inst : label is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base_inst : label is 128;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of xpm_memory_base_inst : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of xpm_memory_base_inst : label is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of xpm_memory_base_inst : label is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_memory_base_inst : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of xpm_memory_base_inst : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of xpm_memory_base_inst : label is 0;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_memory_base_inst : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of xpm_memory_base_inst : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of xpm_memory_base_inst : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of xpm_memory_base_inst : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of xpm_memory_base_inst : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of xpm_memory_base_inst : label is 127;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of xpm_memory_base_inst : label is 1023;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of xpm_memory_base_inst : label is 128;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of xpm_memory_base_inst : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of xpm_memory_base_inst : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of xpm_memory_base_inst : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of xpm_memory_base_inst : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 131072;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of xpm_memory_base_inst : label is 0;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of xpm_memory_base_inst : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of xpm_memory_base_inst : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of xpm_memory_base_inst : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 1024;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xpm_memory_base_inst : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of xpm_memory_base_inst : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of xpm_memory_base_inst : label is 128;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of xpm_memory_base_inst : label is 128;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of xpm_memory_base_inst : label is 128;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of xpm_memory_base_inst : label is 128;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of xpm_memory_base_inst : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of xpm_memory_base_inst : label is 128;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of xpm_memory_base_inst : label is 16;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of xpm_memory_base_inst : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of xpm_memory_base_inst : label is 10;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xpm_memory_base_inst : label is 10;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xpm_memory_base_inst : label is 10;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xpm_memory_base_inst : label is 10;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of xpm_memory_base_inst : label is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of xpm_memory_base_inst : label is 128;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of xpm_memory_base_inst : label is 128;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of xpm_memory_base_inst : label is 128;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of xpm_memory_base_inst : label is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of xpm_memory_base_inst : label is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of xpm_memory_base_inst : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of xpm_memory_base_inst : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of xpm_memory_base_inst : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of xpm_memory_base_inst : label is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_memory_base_inst : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of xpm_memory_base_inst : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of xpm_memory_base_inst : label is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of xpm_memory_base_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_memory_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_memory_base_inst : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base_inst : label is 128;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base_inst : label is 128;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of xpm_memory_base_inst : label is 0;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of xpm_memory_base_inst : label is 0;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of xpm_memory_base_inst : label is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_memory_base_inst : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of xpm_memory_base_inst : label is 128;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of xpm_memory_base_inst : label is 128;
begin
xpm_memory_base_inst: entity work.axi_bram_ctrl_0_xpm_memory_base
     port map (
      addra(9 downto 0) => Q(9 downto 0),
      addrb(9 downto 0) => B"0000000000",
      clka => s_axi_aclk,
      clkb => '0',
      dbiterra => NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED,
      dbiterrb => NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED,
      dina(127 downto 0) => dina(127 downto 0),
      dinb(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      douta(127 downto 0) => douta(127 downto 0),
      doutb(127 downto 0) => NLW_xpm_memory_base_inst_doutb_UNCONNECTED(127 downto 0),
      ena => ena,
      enb => '0',
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '1',
      regceb => '0',
      rsta => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\,
      rstb => '0',
      sbiterra => NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED,
      sbiterrb => NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED,
      sleep => '0',
      wea(15 downto 0) => wea(15 downto 0),
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_0_full_axi is
  port (
    s_axi_awready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_awready_cmb : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    axi_arready_cmb : out STD_LOGIC;
    aw_active_d1 : out STD_LOGIC;
    Arb2AW_Active : out STD_LOGIC;
    BRAM_En_A_i : out STD_LOGIC;
    dina : out STD_LOGIC_VECTOR ( 127 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ : out STD_LOGIC;
    ar_active_re : out STD_LOGIC;
    last_arb_won : out STD_LOGIC;
    Arb2AR_Active : out STD_LOGIC;
    axi_wr_burst : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    axi_bvalid_int_reg : out STD_LOGIC;
    curr_fixed_burst_reg : out STD_LOGIC;
    curr_wrap_burst_reg : out STD_LOGIC;
    ar_active_d1 : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\ : out STD_LOGIC;
    brst_zero : out STD_LOGIC;
    axi_rd_burst : out STD_LOGIC;
    act_rd_burst : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg\ : out STD_LOGIC;
    act_rd_burst_two : out STD_LOGIC;
    pend_rd_op : out STD_LOGIC;
    curr_narrow_burst : out STD_LOGIC;
    end_brst_rd_clr : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0\ : out STD_LOGIC;
    rddata_mux_sel : out STD_LOGIC;
    BRAM_En_B_i : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    AW2Arb_Active_Clr : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_rd_burst_two : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg\ : out STD_LOGIC;
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\ : out STD_LOGIC;
    act_rd_burst_set : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.end_brst_rd_reg\ : out STD_LOGIC;
    s_axi_arlen_2_sp_1 : out STD_LOGIC;
    s_axi_awvalid_0 : out STD_LOGIC;
    arb_sm_cs : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1\ : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ : out STD_LOGIC;
    last_arb_won_reg : out STD_LOGIC;
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1\ : out STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0\ : out STD_LOGIC;
    last_arb_won_cmb : out STD_LOGIC;
    \bvalid_cnt_reg[2]\ : out STD_LOGIC;
    wea : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]\ : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    last_arb_won_reg_0 : in STD_LOGIC;
    aw_active_reg : in STD_LOGIC;
    ar_active_reg : in STD_LOGIC;
    axi_wr_burst_reg : in STD_LOGIC;
    curr_fixed_burst_reg_reg : in STD_LOGIC;
    curr_wrap_burst_reg_reg : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.act_rd_burst_reg\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg\ : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.bram_en_int_reg\ : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    ua_narrow_load1_carry_i_8 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ua_narrow_load1_carry_i_8__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0\ : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_0_full_axi : entity is "full_axi";
end axi_bram_ctrl_0_full_axi;

architecture STRUCTURE of axi_bram_ctrl_0_full_axi is
  signal \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.sng_bram_addr_ld_en\ : STD_LOGIC;
  signal \^aw2arb_active_clr\ : STD_LOGIC;
  signal \^arb2ar_active\ : STD_LOGIC;
  signal \^arb2aw_active\ : STD_LOGIC;
  signal BRAM_WE_A_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \GEN_ARB.I_SNG_PORT_n_10\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_7\ : STD_LOGIC;
  signal \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\ : STD_LOGIC;
  signal I_RD_CHNL_n_152 : STD_LOGIC;
  signal I_RD_CHNL_n_155 : STD_LOGIC;
  signal I_RD_CHNL_n_156 : STD_LOGIC;
  signal I_RD_CHNL_n_172 : STD_LOGIC;
  signal I_RD_CHNL_n_173 : STD_LOGIC;
  signal I_WR_CHNL_n_135 : STD_LOGIC;
  signal I_WR_CHNL_n_146 : STD_LOGIC;
  signal I_WR_CHNL_n_149 : STD_LOGIC;
  signal I_WR_CHNL_n_150 : STD_LOGIC;
  signal I_WR_CHNL_n_151 : STD_LOGIC;
  signal I_WR_CHNL_n_152 : STD_LOGIC;
  signal I_WR_CHNL_n_153 : STD_LOGIC;
  signal I_WR_CHNL_n_158 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal RdChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal WrChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 11 downto 5 );
  signal \^ar_active_d1\ : STD_LOGIC;
  signal \^ar_active_re\ : STD_LOGIC;
  signal \^arb_sm_cs\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^aw_active_d1\ : STD_LOGIC;
  signal aw_active_re : STD_LOGIC;
  signal curr_narrow_burst_en : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal s_axi_arlen_2_sn_1 : STD_LOGIC;
  signal \^s_axi_awvalid_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[11]_i_5\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[7]_i_2\ : label is "soft_lutpair111";
begin
  AW2Arb_Active_Clr <= \^aw2arb_active_clr\;
  Arb2AR_Active <= \^arb2ar_active\;
  Arb2AW_Active <= \^arb2aw_active\;
  \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1\(0) <= \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_1\(0);
  \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0\ <= \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\;
  Q(9 downto 0) <= \^q\(9 downto 0);
  SR(0) <= \^sr\(0);
  ar_active_d1 <= \^ar_active_d1\;
  ar_active_re <= \^ar_active_re\;
  arb_sm_cs(1 downto 0) <= \^arb_sm_cs\(1 downto 0);
  aw_active_d1 <= \^aw_active_d1\;
  s_axi_arlen_2_sp_1 <= s_axi_arlen_2_sn_1;
  s_axi_awvalid_0 <= \^s_axi_awvalid_0\;
\ADDR_SNG_PORT.bram_addr_int[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_156,
      D => p_1_in(6),
      Q => \^q\(6),
      R => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_1\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_156,
      D => p_1_in(7),
      Q => \^q\(7),
      R => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_1\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => p_1_in(8),
      Q => \^q\(8),
      R => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_1\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      D => p_1_in(9),
      Q => \^q\(9),
      R => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_1\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_156,
      D => p_1_in(0),
      Q => \^q\(0),
      R => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_1\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_156,
      D => p_1_in(1),
      Q => \^q\(1),
      R => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_1\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_156,
      D => p_1_in(2),
      Q => \^q\(2),
      R => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_1\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_156,
      D => p_1_in(3),
      Q => \^q\(3),
      R => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_1\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_156,
      D => p_1_in(4),
      Q => \^q\(4),
      R => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_1\(0)
    );
\ADDR_SNG_PORT.bram_addr_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_156,
      D => p_1_in(5),
      Q => \^q\(5),
      R => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_1\(0)
    );
\GEN_ARB.I_SNG_PORT\: entity work.axi_bram_ctrl_0_sng_port_arb
     port map (
      E(0) => \^ar_active_re\,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\,
      \FSM_sequential_arb_sm_cs_reg[0]_0\ => \^arb_sm_cs\(0),
      \FSM_sequential_arb_sm_cs_reg[0]_1\ => I_RD_CHNL_n_173,
      \FSM_sequential_arb_sm_cs_reg[0]_2\ => \^aw2arb_active_clr\,
      \FSM_sequential_arb_sm_cs_reg[1]_0\ => \^arb_sm_cs\(1),
      \GEN_NARROW_CNT.narrow_addr_int[3]_i_6_0\ => I_WR_CHNL_n_135,
      \GEN_NARROW_CNT.narrow_addr_int_reg[1]\ => I_WR_CHNL_n_158,
      \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\ => I_WR_CHNL_n_151,
      \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1\ => I_WR_CHNL_n_150,
      \GEN_NARROW_EN.curr_narrow_burst_reg\ => I_WR_CHNL_n_152,
      \GEN_NARROW_EN.curr_narrow_burst_reg_0\ => I_WR_CHNL_n_153,
      \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ => \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1\,
      \GEN_NO_RD_CMD_OPT.brst_zero_reg\ => I_RD_CHNL_n_172,
      Q(15 downto 0) => BRAM_WE_A_i(15 downto 0),
      ar_active_reg_0 => \^arb2ar_active\,
      ar_active_reg_1 => ar_active_reg,
      aw_active_re => aw_active_re,
      aw_active_reg_0 => \^arb2aw_active\,
      aw_active_reg_1 => \^sr\(0),
      aw_active_reg_2 => aw_active_reg,
      axi_arready_cmb => axi_arready_cmb,
      axi_arready_int_reg_0 => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      axi_awready_cmb => axi_awready_cmb,
      axi_awready_int_reg_0 => \^s_axi_awvalid_0\,
      curr_narrow_burst_en => curr_narrow_burst_en,
      last_arb_won_cmb => last_arb_won_cmb,
      last_arb_won_reg_0 => last_arb_won,
      last_arb_won_reg_1 => last_arb_won_reg,
      last_arb_won_reg_2 => last_arb_won_reg_0,
      s_axi_aclk => s_axi_aclk,
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_arlen_0_sp_1 => \GEN_ARB.I_SNG_PORT_n_10\,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awburst_0_sp_1 => \GEN_ARB.I_SNG_PORT_n_7\,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_rready => s_axi_rready,
      \save_init_bram_addr_ld_reg[13]\ => \^ar_active_d1\,
      wea(15 downto 0) => wea(15 downto 0),
      \wrap_burst_total_reg[0]\ => \^aw_active_d1\
    );
I_RD_CHNL: entity work.axi_bram_ctrl_0_rd_chnl
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[10]\ => \^arb2ar_active\,
      \ADDR_SNG_PORT.bram_addr_int_reg[10]_0\ => \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\(6 downto 0) => WrChnl_BRAM_Addr_Ld(11 downto 5),
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ => I_WR_CHNL_n_149,
      \ADDR_SNG_PORT.bram_addr_int_reg[13]\ => I_WR_CHNL_n_146,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]\ => I_RD_CHNL_n_155,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]\ => \ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[7]\ => \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[9]\ => \ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0\,
      \ADDR_SNG_PORT.sng_bram_addr_ld_en\ => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      BRAM_En_B_i => BRAM_En_B_i,
      D(6 downto 0) => p_1_in(7 downto 1),
      E(0) => \^ar_active_re\,
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]_0\ => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]\,
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0\ => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\,
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1\ => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0\,
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_2\ => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1\,
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0\ => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]\,
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0\(3 downto 0) => \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]\(3 downto 0),
      \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0\ => \^ar_active_d1\,
      \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_1\ => \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\,
      \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0\ => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\,
      \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_1\ => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3\(3 downto 0) => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3\(3 downto 0),
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0\(0) => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0\(0),
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0\ => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0\ => curr_narrow_burst,
      \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0\(127 downto 0) => D(127 downto 0),
      \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0\ => axi_rd_burst,
      \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_1\ => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg\,
      \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_2\ => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0\,
      \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0\ => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg\,
      \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1\ => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0\,
      \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_2\ => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1\,
      \GEN_NO_RD_CMD_OPT.act_rd_burst_reg_0\ => act_rd_burst,
      \GEN_NO_RD_CMD_OPT.act_rd_burst_reg_1\ => \GEN_NO_RD_CMD_OPT.act_rd_burst_reg\,
      \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_0\ => act_rd_burst_two,
      \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_1\ => \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg\,
      \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0\ => \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\,
      \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1\ => \^gen_no_rd_cmd_opt.axi_rlast_int_reg_0\,
      \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0\ => \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\,
      \GEN_NO_RD_CMD_OPT.bram_en_int_reg_0\ => \GEN_NO_RD_CMD_OPT.bram_en_int_reg\,
      \GEN_NO_RD_CMD_OPT.brst_zero_reg_0\ => brst_zero,
      \GEN_NO_RD_CMD_OPT.brst_zero_reg_1\ => \GEN_ARB.I_SNG_PORT_n_10\,
      \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg_0\ => I_RD_CHNL_n_152,
      \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg_0\ => \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg\,
      \GEN_NO_RD_CMD_OPT.end_brst_rd_reg_0\ => \GEN_NO_RD_CMD_OPT.end_brst_rd_reg\,
      \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0\ => pend_rd_op,
      \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_1\ => \GEN_NO_RD_CMD_OPT.pend_rd_op_reg\,
      \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_2\ => \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0\,
      \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0\ => rddata_mux_sel,
      \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_1\ => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg\,
      Q(7 downto 0) => \^q\(7 downto 0),
      act_rd_burst_set => act_rd_burst_set,
      ar_active_reg(0) => I_RD_CHNL_n_156,
      axi_rd_burst_two => axi_rd_burst_two,
      end_brst_rd_clr => end_brst_rd_clr,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(12 downto 4) => s_axi_araddr(13 downto 5),
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \^sr\(0),
      s_axi_arid(1 downto 0) => s_axi_arid(1 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlen_2_sp_1 => s_axi_arlen_2_sn_1,
      s_axi_arlen_4_sp_1 => I_RD_CHNL_n_172,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_rdata(127 downto 0) => s_axi_rdata(127 downto 0),
      s_axi_rid(1 downto 0) => s_axi_rid(1 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rready_0 => I_RD_CHNL_n_173,
      \save_init_bram_addr_ld_reg[13]\(1 downto 0) => RdChnl_BRAM_Addr_Ld(13 downto 12),
      \ua_narrow_load1_carry_i_8__0\(3 downto 0) => \ua_narrow_load1_carry_i_8__0\(3 downto 0)
    );
I_WR_CHNL: entity work.axi_bram_ctrl_0_wr_chnl
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[13]\(1 downto 0) => RdChnl_BRAM_Addr_Ld(13 downto 12),
      \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\ => \^arb2ar_active\,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]\ => I_RD_CHNL_n_152,
      BRAM_En_A_i => BRAM_En_A_i,
      D(2 downto 1) => p_1_in(9 downto 8),
      D(0) => p_1_in(0),
      DI(3 downto 0) => DI(3 downto 0),
      E(0) => \ADDR_SNG_PORT.sng_bram_addr_ld_en\,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0\ => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0\ => \^aw2arb_active_clr\,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1\ => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0\,
      \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0\ => \GEN_ARB.I_SNG_PORT_n_7\,
      \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0\ => I_WR_CHNL_n_149,
      \GEN_WR_NO_ECC.bram_we_int_reg[15]_0\(15 downto 0) => BRAM_WE_A_i(15 downto 0),
      Q(2 downto 0) => \^q\(2 downto 0),
      S(0) => S(0),
      SR(0) => \^fsm_onehot_gen_wdata_sm_no_ecc_sng_reg_wready.wr_data_sng_sm_cs_reg[2]_1\(0),
      arb_sm_cs(1 downto 0) => \^arb_sm_cs\(1 downto 0),
      aw_active_d1_reg_0 => \^aw_active_d1\,
      aw_active_d1_reg_1 => I_WR_CHNL_n_146,
      aw_active_d1_reg_2 => \^arb2aw_active\,
      aw_active_re => aw_active_re,
      axi_bvalid_int_reg_0 => axi_bvalid_int_reg,
      axi_wr_burst => axi_wr_burst,
      axi_wr_burst_reg_0 => axi_wr_burst_reg,
      \bvalid_cnt_reg[2]_0\ => \bvalid_cnt_reg[2]\,
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      curr_fixed_burst_reg_reg_0 => curr_fixed_burst_reg_reg,
      curr_narrow_burst_en => curr_narrow_burst_en,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      curr_wrap_burst_reg_reg_0 => curr_wrap_burst_reg_reg,
      dina(127 downto 0) => dina(127 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(0) => s_axi_araddr(4),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(12 downto 3) => s_axi_awaddr(13 downto 4),
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(2 downto 0),
      s_axi_awid(1 downto 0) => s_axi_awid(1 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlen_2_sp_1 => I_WR_CHNL_n_152,
      s_axi_awlen_3_sp_1 => I_WR_CHNL_n_153,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      \s_axi_awsize[0]_0\ => I_WR_CHNL_n_150,
      \s_axi_awsize[0]_1\ => I_WR_CHNL_n_158,
      s_axi_awsize_0_sp_1 => I_WR_CHNL_n_135,
      s_axi_awsize_1_sp_1 => I_WR_CHNL_n_151,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awvalid_0 => \^s_axi_awvalid_0\,
      s_axi_bid(1 downto 0) => s_axi_bid(1 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \save_init_bram_addr_ld_reg[11]\(6 downto 0) => WrChnl_BRAM_Addr_Ld(11 downto 5),
      \save_init_bram_addr_ld_reg[11]_0\ => I_RD_CHNL_n_155,
      ua_narrow_load1_carry_i_8(3 downto 0) => ua_narrow_load1_carry_i_8(3 downto 0),
      \wrap_burst_total_reg[0]\ => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_0_axi_bram_ctrl_top is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    dina : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    ena : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    axi_bvalid_int_reg : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\ : out STD_LOGIC;
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wea : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    ua_narrow_load1_carry_i_8 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ua_narrow_load1_carry_i_8__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_0_axi_bram_ctrl_top : entity is "axi_bram_ctrl_top";
end axi_bram_ctrl_0_axi_bram_ctrl_top;

architecture STRUCTURE of axi_bram_ctrl_0_axi_bram_ctrl_top is
  signal AW2Arb_Active_Clr : STD_LOGIC;
  signal Arb2AR_Active : STD_LOGIC;
  signal Arb2AW_Active : STD_LOGIC;
  signal BRAM_En_A_i : STD_LOGIC;
  signal BRAM_En_B_i : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT/arb_sm_cs\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \GEN_ARB.I_SNG_PORT/axi_arready_cmb\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT/axi_awready_cmb\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT/last_arb_won\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT/last_arb_won_cmb\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_136\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_265\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_279\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_298\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_304\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_305\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_307\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_308\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_309\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_310\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_311\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_312\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_313\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_314\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_317\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_318\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_319\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_320\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_321\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_323\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_340\ : STD_LOGIC;
  signal \GEN_AXI4.I_FULL_AXI_n_341\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0\ : STD_LOGIC;
  signal \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0\ : STD_LOGIC;
  signal \I_RD_CHNL/act_rd_burst\ : STD_LOGIC;
  signal \I_RD_CHNL/act_rd_burst_set\ : STD_LOGIC;
  signal \I_RD_CHNL/act_rd_burst_two\ : STD_LOGIC;
  signal \I_RD_CHNL/ar_active_d1\ : STD_LOGIC;
  signal \I_RD_CHNL/ar_active_re\ : STD_LOGIC;
  signal \I_RD_CHNL/axi_rd_burst\ : STD_LOGIC;
  signal \I_RD_CHNL/axi_rd_burst_two\ : STD_LOGIC;
  signal \I_RD_CHNL/brst_zero\ : STD_LOGIC;
  signal \I_RD_CHNL/curr_narrow_burst\ : STD_LOGIC;
  signal \I_RD_CHNL/end_brst_rd_clr\ : STD_LOGIC;
  signal \I_RD_CHNL/pend_rd_op\ : STD_LOGIC;
  signal \I_RD_CHNL/rd_data_sm_cs\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \I_RD_CHNL/rddata_mux_sel\ : STD_LOGIC;
  signal \I_WR_CHNL/aw_active_d1\ : STD_LOGIC;
  signal \I_WR_CHNL/axi_wr_burst\ : STD_LOGIC;
  signal \I_WR_CHNL/curr_fixed_burst_reg\ : STD_LOGIC;
  signal \I_WR_CHNL/curr_wrap_burst_reg\ : STD_LOGIC;
  signal ar_active_i_1_n_0 : STD_LOGIC;
  signal aw_active_i_1_n_0 : STD_LOGIC;
  signal axi_wr_burst_i_1_n_0 : STD_LOGIC;
  signal curr_fixed_burst_reg_i_1_n_0 : STD_LOGIC;
  signal curr_wrap_burst_reg_i_1_n_0 : STD_LOGIC;
  signal last_arb_won_i_1_n_0 : STD_LOGIC;
begin
\GEN_AXI4.I_FULL_AXI\: entity work.axi_bram_ctrl_0_full_axi
     port map (
      AW2Arb_Active_Clr => AW2Arb_Active_Clr,
      Arb2AR_Active => Arb2AR_Active,
      Arb2AW_Active => Arb2AW_Active,
      BRAM_En_A_i => BRAM_En_A_i,
      BRAM_En_B_i => BRAM_En_B_i,
      D(127 downto 0) => D(127 downto 0),
      DI(3 downto 0) => DI(3 downto 0),
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ => \GEN_AXI4.I_FULL_AXI_n_298\,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ => \GEN_AXI4.I_FULL_AXI_n_318\,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0\ => \GEN_AXI4.I_FULL_AXI_n_321\,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1\(0) => \GEN_AXI4.I_FULL_AXI_n_340\,
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]\ => \GEN_AXI4.I_FULL_AXI_n_309\,
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]\ => \GEN_AXI4.I_FULL_AXI_n_305\,
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0\ => \GEN_AXI4.I_FULL_AXI_n_310\,
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1\ => \GEN_AXI4.I_FULL_AXI_n_320\,
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]\ => \GEN_AXI4.I_FULL_AXI_n_341\,
      \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]\(3 downto 0) => \I_RD_CHNL/rd_data_sm_cs\(3 downto 0),
      \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg\ => \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_i_1_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\ => \GEN_AXI4.I_FULL_AXI_n_136\,
      \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0\ => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3\(3 downto 0) => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3\(3 downto 0),
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0\(0) => \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0\(0),
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]\ => \GEN_AXI4.I_FULL_AXI_n_308\,
      \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg\ => \GEN_AXI4.I_FULL_AXI_n_307\,
      \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0\ => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg\ => \GEN_AXI4.I_FULL_AXI_n_279\,
      \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0\ => \GEN_AXI4.I_FULL_AXI_n_311\,
      \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1\ => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0\,
      \GEN_NO_RD_CMD_OPT.act_rd_burst_reg\ => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0\,
      \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg\ => \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0\,
      \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ => \GEN_AXI4.I_FULL_AXI_n_265\,
      \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0\ => \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\,
      \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1\ => \GEN_AXI4.I_FULL_AXI_n_317\,
      \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\ => \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\,
      \GEN_NO_RD_CMD_OPT.bram_en_int_reg\ => \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0\,
      \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg\ => \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0\,
      \GEN_NO_RD_CMD_OPT.end_brst_rd_reg\ => \GEN_AXI4.I_FULL_AXI_n_312\,
      \GEN_NO_RD_CMD_OPT.pend_rd_op_reg\ => \GEN_AXI4.I_FULL_AXI_n_304\,
      \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0\ => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0\,
      \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg\ => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0\,
      Q(9 downto 0) => Q(9 downto 0),
      S(0) => S(0),
      SR(0) => s_axi_aresetn_0,
      act_rd_burst => \I_RD_CHNL/act_rd_burst\,
      act_rd_burst_set => \I_RD_CHNL/act_rd_burst_set\,
      act_rd_burst_two => \I_RD_CHNL/act_rd_burst_two\,
      ar_active_d1 => \I_RD_CHNL/ar_active_d1\,
      ar_active_re => \I_RD_CHNL/ar_active_re\,
      ar_active_reg => ar_active_i_1_n_0,
      arb_sm_cs(1 downto 0) => \GEN_ARB.I_SNG_PORT/arb_sm_cs\(1 downto 0),
      aw_active_d1 => \I_WR_CHNL/aw_active_d1\,
      aw_active_reg => aw_active_i_1_n_0,
      axi_arready_cmb => \GEN_ARB.I_SNG_PORT/axi_arready_cmb\,
      axi_awready_cmb => \GEN_ARB.I_SNG_PORT/axi_awready_cmb\,
      axi_bvalid_int_reg => axi_bvalid_int_reg,
      axi_rd_burst => \I_RD_CHNL/axi_rd_burst\,
      axi_rd_burst_two => \I_RD_CHNL/axi_rd_burst_two\,
      axi_wr_burst => \I_WR_CHNL/axi_wr_burst\,
      axi_wr_burst_reg => axi_wr_burst_i_1_n_0,
      brst_zero => \I_RD_CHNL/brst_zero\,
      \bvalid_cnt_reg[2]\ => \GEN_AXI4.I_FULL_AXI_n_323\,
      curr_fixed_burst_reg => \I_WR_CHNL/curr_fixed_burst_reg\,
      curr_fixed_burst_reg_reg => curr_fixed_burst_reg_i_1_n_0,
      curr_narrow_burst => \I_RD_CHNL/curr_narrow_burst\,
      curr_wrap_burst_reg => \I_WR_CHNL/curr_wrap_burst_reg\,
      curr_wrap_burst_reg_reg => curr_wrap_burst_reg_i_1_n_0,
      dina(127 downto 0) => dina(127 downto 0),
      end_brst_rd_clr => \I_RD_CHNL/end_brst_rd_clr\,
      last_arb_won => \GEN_ARB.I_SNG_PORT/last_arb_won\,
      last_arb_won_cmb => \GEN_ARB.I_SNG_PORT/last_arb_won_cmb\,
      last_arb_won_reg => \GEN_AXI4.I_FULL_AXI_n_319\,
      last_arb_won_reg_0 => last_arb_won_i_1_n_0,
      pend_rd_op => \I_RD_CHNL/pend_rd_op\,
      rddata_mux_sel => \I_RD_CHNL/rddata_mux_sel\,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(13 downto 0) => s_axi_araddr(13 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(1 downto 0) => s_axi_arid(1 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlen_2_sp_1 => \GEN_AXI4.I_FULL_AXI_n_313\,
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(13 downto 0) => s_axi_awaddr(13 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(1 downto 0) => s_axi_awid(1 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awvalid_0 => \GEN_AXI4.I_FULL_AXI_n_314\,
      s_axi_bid(1 downto 0) => s_axi_bid(1 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(127 downto 0) => s_axi_rdata(127 downto 0),
      s_axi_rid(1 downto 0) => s_axi_rid(1 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      ua_narrow_load1_carry_i_8(3 downto 0) => ua_narrow_load1_carry_i_8(3 downto 0),
      \ua_narrow_load1_carry_i_8__0\(3 downto 0) => \ua_narrow_load1_carry_i_8__0\(3 downto 0),
      wea(15 downto 0) => wea(15 downto 0)
    );
\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Arb2AR_Active,
      I1 => \GEN_AXI4.I_FULL_AXI_n_265\,
      O => \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00202020"
    )
        port map (
      I0 => \I_RD_CHNL/brst_zero\,
      I1 => \I_RD_CHNL/pend_rd_op\,
      I2 => Arb2AR_Active,
      I3 => \I_RD_CHNL/curr_narrow_burst\,
      I4 => \GEN_AXI4.I_FULL_AXI_n_308\,
      I5 => \GEN_AXI4.I_FULL_AXI_n_136\,
      O => \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030003000000AA00"
    )
        port map (
      I0 => \I_RD_CHNL/axi_rd_burst\,
      I1 => \GEN_AXI4.I_FULL_AXI_n_313\,
      I2 => \I_RD_CHNL/axi_rd_burst_two\,
      I3 => s_axi_aresetn,
      I4 => \I_RD_CHNL/brst_zero\,
      I5 => \I_RD_CHNL/ar_active_re\,
      O => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0C0C000A000A0"
    )
        port map (
      I0 => \GEN_AXI4.I_FULL_AXI_n_279\,
      I1 => \I_RD_CHNL/axi_rd_burst_two\,
      I2 => s_axi_aresetn,
      I3 => \I_RD_CHNL/brst_zero\,
      I4 => \I_RD_CHNL/ar_active_d1\,
      I5 => Arb2AR_Active,
      O => \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002EEE2E22"
    )
        port map (
      I0 => \I_RD_CHNL/act_rd_burst\,
      I1 => \I_RD_CHNL/act_rd_burst_set\,
      I2 => \I_RD_CHNL/axi_rd_burst_two\,
      I3 => \I_RD_CHNL/ar_active_re\,
      I4 => \I_RD_CHNL/axi_rd_burst\,
      I5 => \GEN_AXI4.I_FULL_AXI_n_341\,
      O => \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \I_RD_CHNL/act_rd_burst_two\,
      I1 => \I_RD_CHNL/act_rd_burst_set\,
      I2 => \GEN_AXI4.I_FULL_AXI_n_279\,
      I3 => \I_RD_CHNL/ar_active_re\,
      I4 => \I_RD_CHNL/axi_rd_burst_two\,
      I5 => \GEN_AXI4.I_FULL_AXI_n_341\,
      O => \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.bram_en_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAB000000AB"
    )
        port map (
      I0 => \GEN_AXI4.I_FULL_AXI_n_304\,
      I1 => \I_RD_CHNL/rd_data_sm_cs\(0),
      I2 => \GEN_AXI4.I_FULL_AXI_n_312\,
      I3 => \I_RD_CHNL/rd_data_sm_cs\(3),
      I4 => \GEN_AXI4.I_FULL_AXI_n_305\,
      I5 => BRAM_En_B_i,
      O => \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFD03000000"
    )
        port map (
      I0 => \I_RD_CHNL/ar_active_re\,
      I1 => \I_RD_CHNL/rd_data_sm_cs\(1),
      I2 => \I_RD_CHNL/rd_data_sm_cs\(3),
      I3 => \I_RD_CHNL/rd_data_sm_cs\(2),
      I4 => \I_RD_CHNL/rd_data_sm_cs\(0),
      I5 => \I_RD_CHNL/end_brst_rd_clr\,
      O => \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000FFFFE0000000"
    )
        port map (
      I0 => \I_RD_CHNL/rd_data_sm_cs\(2),
      I1 => \GEN_AXI4.I_FULL_AXI_n_307\,
      I2 => \GEN_AXI4.I_FULL_AXI_n_320\,
      I3 => \I_RD_CHNL/ar_active_re\,
      I4 => \GEN_AXI4.I_FULL_AXI_n_309\,
      I5 => \I_RD_CHNL/pend_rd_op\,
      O => \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0\
    );
\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD01"
    )
        port map (
      I0 => \GEN_AXI4.I_FULL_AXI_n_310\,
      I1 => \I_RD_CHNL/rd_data_sm_cs\(3),
      I2 => \GEN_AXI4.I_FULL_AXI_n_311\,
      I3 => \I_RD_CHNL/rddata_mux_sel\,
      O => \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0\
    );
ar_active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => \GEN_ARB.I_SNG_PORT/last_arb_won_cmb\,
      I1 => \GEN_AXI4.I_FULL_AXI_n_319\,
      I2 => \GEN_AXI4.I_FULL_AXI_n_318\,
      I3 => s_axi_arvalid,
      I4 => Arb2AR_Active,
      O => ar_active_i_1_n_0
    );
aw_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0ACFFF0A0A0000"
    )
        port map (
      I0 => \GEN_AXI4.I_FULL_AXI_n_314\,
      I1 => \GEN_ARB.I_SNG_PORT/arb_sm_cs\(1),
      I2 => \GEN_ARB.I_SNG_PORT/arb_sm_cs\(0),
      I3 => AW2Arb_Active_Clr,
      I4 => \GEN_ARB.I_SNG_PORT/axi_awready_cmb\,
      I5 => Arb2AW_Active,
      O => aw_active_i_1_n_0
    );
axi_wr_burst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5754"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => \GEN_AXI4.I_FULL_AXI_n_321\,
      I2 => \GEN_AXI4.I_FULL_AXI_n_298\,
      I3 => \I_WR_CHNL/axi_wr_burst\,
      O => axi_wr_burst_i_1_n_0
    );
curr_fixed_burst_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008A8A8ABA"
    )
        port map (
      I0 => \I_WR_CHNL/curr_fixed_burst_reg\,
      I1 => \I_WR_CHNL/aw_active_d1\,
      I2 => Arb2AW_Active,
      I3 => s_axi_awburst(1),
      I4 => s_axi_awburst(0),
      I5 => \GEN_AXI4.I_FULL_AXI_n_340\,
      O => curr_fixed_burst_reg_i_1_n_0
    );
curr_wrap_burst_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008ABA8A8A"
    )
        port map (
      I0 => \I_WR_CHNL/curr_wrap_burst_reg\,
      I1 => \I_WR_CHNL/aw_active_d1\,
      I2 => Arb2AW_Active,
      I3 => s_axi_awburst(0),
      I4 => s_axi_awburst(1),
      I5 => \GEN_AXI4.I_FULL_AXI_n_340\,
      O => curr_wrap_burst_reg_i_1_n_0
    );
last_arb_won_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABFAAAAAA80"
    )
        port map (
      I0 => \GEN_ARB.I_SNG_PORT/last_arb_won_cmb\,
      I1 => \GEN_AXI4.I_FULL_AXI_n_317\,
      I2 => \GEN_AXI4.I_FULL_AXI_n_314\,
      I3 => \GEN_ARB.I_SNG_PORT/axi_arready_cmb\,
      I4 => \GEN_AXI4.I_FULL_AXI_n_323\,
      I5 => \GEN_ARB.I_SNG_PORT/last_arb_won\,
      O => last_arb_won_i_1_n_0
    );
xpm_memory_base_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => BRAM_En_A_i,
      I1 => BRAM_En_B_i,
      O => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_0_axi_bram_ctrl is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ecc_interrupt : out STD_LOGIC;
    ecc_ue : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 13 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 127 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 127 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 13 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 127 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of axi_bram_ctrl_0_axi_bram_ctrl : entity is 10;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of axi_bram_ctrl_0_axi_bram_ctrl : entity is "INTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of axi_bram_ctrl_0_axi_bram_ctrl : entity is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of axi_bram_ctrl_0_axi_bram_ctrl : entity is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of axi_bram_ctrl_0_axi_bram_ctrl : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of axi_bram_ctrl_0_axi_bram_ctrl : entity is "artix7";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of axi_bram_ctrl_0_axi_bram_ctrl : entity is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of axi_bram_ctrl_0_axi_bram_ctrl : entity is 1024;
  attribute C_RD_CMD_OPTIMIZATION : integer;
  attribute C_RD_CMD_OPTIMIZATION of axi_bram_ctrl_0_axi_bram_ctrl : entity is 0;
  attribute C_READ_LATENCY : integer;
  attribute C_READ_LATENCY of axi_bram_ctrl_0_axi_bram_ctrl : entity is 1;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of axi_bram_ctrl_0_axi_bram_ctrl : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of axi_bram_ctrl_0_axi_bram_ctrl : entity is 14;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of axi_bram_ctrl_0_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of axi_bram_ctrl_0_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of axi_bram_ctrl_0_axi_bram_ctrl : entity is 128;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of axi_bram_ctrl_0_axi_bram_ctrl : entity is 2;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of axi_bram_ctrl_0_axi_bram_ctrl : entity is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of axi_bram_ctrl_0_axi_bram_ctrl : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bram_ctrl_0_axi_bram_ctrl : entity is "axi_bram_ctrl";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axi_bram_ctrl_0_axi_bram_ctrl : entity is "yes";
end axi_bram_ctrl_0_axi_bram_ctrl;

architecture STRUCTURE of axi_bram_ctrl_0_axi_bram_ctrl is
  signal \<const0>\ : STD_LOGIC;
  signal addra_bram_addra_i : STD_LOGIC_VECTOR ( 13 downto 4 );
  signal dina_bram_dina_i : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal douta_bram_douta_i : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal ena_bram_ena_i : STD_LOGIC;
  signal \gint_inst.abcv4_0_int_inst_n_1\ : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_22__0_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_i_22_n_0 : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_23__0_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_i_23_n_0 : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_24__0_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_i_24_n_0 : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_25__0_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_i_25_n_0 : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_29__0_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_i_29_n_0 : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_30__0_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_i_30_n_0 : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_31__0_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_i_31_n_0 : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_32__0_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_i_32_n_0 : STD_LOGIC;
  signal \ua_narrow_load1_carry_i_33__0_n_0\ : STD_LOGIC;
  signal ua_narrow_load1_carry_i_33_n_0 : STD_LOGIC;
  signal wea_bram_wea_i : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  bram_addr_a(13) <= \<const0>\;
  bram_addr_a(12) <= \<const0>\;
  bram_addr_a(11) <= \<const0>\;
  bram_addr_a(10) <= \<const0>\;
  bram_addr_a(9) <= \<const0>\;
  bram_addr_a(8) <= \<const0>\;
  bram_addr_a(7) <= \<const0>\;
  bram_addr_a(6) <= \<const0>\;
  bram_addr_a(5) <= \<const0>\;
  bram_addr_a(4) <= \<const0>\;
  bram_addr_a(3) <= \<const0>\;
  bram_addr_a(2) <= \<const0>\;
  bram_addr_a(1) <= \<const0>\;
  bram_addr_a(0) <= \<const0>\;
  bram_addr_b(13) <= \<const0>\;
  bram_addr_b(12) <= \<const0>\;
  bram_addr_b(11) <= \<const0>\;
  bram_addr_b(10) <= \<const0>\;
  bram_addr_b(9) <= \<const0>\;
  bram_addr_b(8) <= \<const0>\;
  bram_addr_b(7) <= \<const0>\;
  bram_addr_b(6) <= \<const0>\;
  bram_addr_b(5) <= \<const0>\;
  bram_addr_b(4) <= \<const0>\;
  bram_addr_b(3) <= \<const0>\;
  bram_addr_b(2) <= \<const0>\;
  bram_addr_b(1) <= \<const0>\;
  bram_addr_b(0) <= \<const0>\;
  bram_clk_a <= \<const0>\;
  bram_clk_b <= \<const0>\;
  bram_en_a <= \<const0>\;
  bram_en_b <= \<const0>\;
  bram_rst_a <= \<const0>\;
  bram_rst_b <= \<const0>\;
  bram_we_a(15) <= \<const0>\;
  bram_we_a(14) <= \<const0>\;
  bram_we_a(13) <= \<const0>\;
  bram_we_a(12) <= \<const0>\;
  bram_we_a(11) <= \<const0>\;
  bram_we_a(10) <= \<const0>\;
  bram_we_a(9) <= \<const0>\;
  bram_we_a(8) <= \<const0>\;
  bram_we_a(7) <= \<const0>\;
  bram_we_a(6) <= \<const0>\;
  bram_we_a(5) <= \<const0>\;
  bram_we_a(4) <= \<const0>\;
  bram_we_a(3) <= \<const0>\;
  bram_we_a(2) <= \<const0>\;
  bram_we_a(1) <= \<const0>\;
  bram_we_a(0) <= \<const0>\;
  bram_we_b(15) <= \<const0>\;
  bram_we_b(14) <= \<const0>\;
  bram_we_b(13) <= \<const0>\;
  bram_we_b(12) <= \<const0>\;
  bram_we_b(11) <= \<const0>\;
  bram_we_b(10) <= \<const0>\;
  bram_we_b(9) <= \<const0>\;
  bram_we_b(8) <= \<const0>\;
  bram_we_b(7) <= \<const0>\;
  bram_we_b(6) <= \<const0>\;
  bram_we_b(5) <= \<const0>\;
  bram_we_b(4) <= \<const0>\;
  bram_we_b(3) <= \<const0>\;
  bram_we_b(2) <= \<const0>\;
  bram_we_b(1) <= \<const0>\;
  bram_we_b(0) <= \<const0>\;
  bram_wrdata_a(127) <= \<const0>\;
  bram_wrdata_a(126) <= \<const0>\;
  bram_wrdata_a(125) <= \<const0>\;
  bram_wrdata_a(124) <= \<const0>\;
  bram_wrdata_a(123) <= \<const0>\;
  bram_wrdata_a(122) <= \<const0>\;
  bram_wrdata_a(121) <= \<const0>\;
  bram_wrdata_a(120) <= \<const0>\;
  bram_wrdata_a(119) <= \<const0>\;
  bram_wrdata_a(118) <= \<const0>\;
  bram_wrdata_a(117) <= \<const0>\;
  bram_wrdata_a(116) <= \<const0>\;
  bram_wrdata_a(115) <= \<const0>\;
  bram_wrdata_a(114) <= \<const0>\;
  bram_wrdata_a(113) <= \<const0>\;
  bram_wrdata_a(112) <= \<const0>\;
  bram_wrdata_a(111) <= \<const0>\;
  bram_wrdata_a(110) <= \<const0>\;
  bram_wrdata_a(109) <= \<const0>\;
  bram_wrdata_a(108) <= \<const0>\;
  bram_wrdata_a(107) <= \<const0>\;
  bram_wrdata_a(106) <= \<const0>\;
  bram_wrdata_a(105) <= \<const0>\;
  bram_wrdata_a(104) <= \<const0>\;
  bram_wrdata_a(103) <= \<const0>\;
  bram_wrdata_a(102) <= \<const0>\;
  bram_wrdata_a(101) <= \<const0>\;
  bram_wrdata_a(100) <= \<const0>\;
  bram_wrdata_a(99) <= \<const0>\;
  bram_wrdata_a(98) <= \<const0>\;
  bram_wrdata_a(97) <= \<const0>\;
  bram_wrdata_a(96) <= \<const0>\;
  bram_wrdata_a(95) <= \<const0>\;
  bram_wrdata_a(94) <= \<const0>\;
  bram_wrdata_a(93) <= \<const0>\;
  bram_wrdata_a(92) <= \<const0>\;
  bram_wrdata_a(91) <= \<const0>\;
  bram_wrdata_a(90) <= \<const0>\;
  bram_wrdata_a(89) <= \<const0>\;
  bram_wrdata_a(88) <= \<const0>\;
  bram_wrdata_a(87) <= \<const0>\;
  bram_wrdata_a(86) <= \<const0>\;
  bram_wrdata_a(85) <= \<const0>\;
  bram_wrdata_a(84) <= \<const0>\;
  bram_wrdata_a(83) <= \<const0>\;
  bram_wrdata_a(82) <= \<const0>\;
  bram_wrdata_a(81) <= \<const0>\;
  bram_wrdata_a(80) <= \<const0>\;
  bram_wrdata_a(79) <= \<const0>\;
  bram_wrdata_a(78) <= \<const0>\;
  bram_wrdata_a(77) <= \<const0>\;
  bram_wrdata_a(76) <= \<const0>\;
  bram_wrdata_a(75) <= \<const0>\;
  bram_wrdata_a(74) <= \<const0>\;
  bram_wrdata_a(73) <= \<const0>\;
  bram_wrdata_a(72) <= \<const0>\;
  bram_wrdata_a(71) <= \<const0>\;
  bram_wrdata_a(70) <= \<const0>\;
  bram_wrdata_a(69) <= \<const0>\;
  bram_wrdata_a(68) <= \<const0>\;
  bram_wrdata_a(67) <= \<const0>\;
  bram_wrdata_a(66) <= \<const0>\;
  bram_wrdata_a(65) <= \<const0>\;
  bram_wrdata_a(64) <= \<const0>\;
  bram_wrdata_a(63) <= \<const0>\;
  bram_wrdata_a(62) <= \<const0>\;
  bram_wrdata_a(61) <= \<const0>\;
  bram_wrdata_a(60) <= \<const0>\;
  bram_wrdata_a(59) <= \<const0>\;
  bram_wrdata_a(58) <= \<const0>\;
  bram_wrdata_a(57) <= \<const0>\;
  bram_wrdata_a(56) <= \<const0>\;
  bram_wrdata_a(55) <= \<const0>\;
  bram_wrdata_a(54) <= \<const0>\;
  bram_wrdata_a(53) <= \<const0>\;
  bram_wrdata_a(52) <= \<const0>\;
  bram_wrdata_a(51) <= \<const0>\;
  bram_wrdata_a(50) <= \<const0>\;
  bram_wrdata_a(49) <= \<const0>\;
  bram_wrdata_a(48) <= \<const0>\;
  bram_wrdata_a(47) <= \<const0>\;
  bram_wrdata_a(46) <= \<const0>\;
  bram_wrdata_a(45) <= \<const0>\;
  bram_wrdata_a(44) <= \<const0>\;
  bram_wrdata_a(43) <= \<const0>\;
  bram_wrdata_a(42) <= \<const0>\;
  bram_wrdata_a(41) <= \<const0>\;
  bram_wrdata_a(40) <= \<const0>\;
  bram_wrdata_a(39) <= \<const0>\;
  bram_wrdata_a(38) <= \<const0>\;
  bram_wrdata_a(37) <= \<const0>\;
  bram_wrdata_a(36) <= \<const0>\;
  bram_wrdata_a(35) <= \<const0>\;
  bram_wrdata_a(34) <= \<const0>\;
  bram_wrdata_a(33) <= \<const0>\;
  bram_wrdata_a(32) <= \<const0>\;
  bram_wrdata_a(31) <= \<const0>\;
  bram_wrdata_a(30) <= \<const0>\;
  bram_wrdata_a(29) <= \<const0>\;
  bram_wrdata_a(28) <= \<const0>\;
  bram_wrdata_a(27) <= \<const0>\;
  bram_wrdata_a(26) <= \<const0>\;
  bram_wrdata_a(25) <= \<const0>\;
  bram_wrdata_a(24) <= \<const0>\;
  bram_wrdata_a(23) <= \<const0>\;
  bram_wrdata_a(22) <= \<const0>\;
  bram_wrdata_a(21) <= \<const0>\;
  bram_wrdata_a(20) <= \<const0>\;
  bram_wrdata_a(19) <= \<const0>\;
  bram_wrdata_a(18) <= \<const0>\;
  bram_wrdata_a(17) <= \<const0>\;
  bram_wrdata_a(16) <= \<const0>\;
  bram_wrdata_a(15) <= \<const0>\;
  bram_wrdata_a(14) <= \<const0>\;
  bram_wrdata_a(13) <= \<const0>\;
  bram_wrdata_a(12) <= \<const0>\;
  bram_wrdata_a(11) <= \<const0>\;
  bram_wrdata_a(10) <= \<const0>\;
  bram_wrdata_a(9) <= \<const0>\;
  bram_wrdata_a(8) <= \<const0>\;
  bram_wrdata_a(7) <= \<const0>\;
  bram_wrdata_a(6) <= \<const0>\;
  bram_wrdata_a(5) <= \<const0>\;
  bram_wrdata_a(4) <= \<const0>\;
  bram_wrdata_a(3) <= \<const0>\;
  bram_wrdata_a(2) <= \<const0>\;
  bram_wrdata_a(1) <= \<const0>\;
  bram_wrdata_a(0) <= \<const0>\;
  bram_wrdata_b(127) <= \<const0>\;
  bram_wrdata_b(126) <= \<const0>\;
  bram_wrdata_b(125) <= \<const0>\;
  bram_wrdata_b(124) <= \<const0>\;
  bram_wrdata_b(123) <= \<const0>\;
  bram_wrdata_b(122) <= \<const0>\;
  bram_wrdata_b(121) <= \<const0>\;
  bram_wrdata_b(120) <= \<const0>\;
  bram_wrdata_b(119) <= \<const0>\;
  bram_wrdata_b(118) <= \<const0>\;
  bram_wrdata_b(117) <= \<const0>\;
  bram_wrdata_b(116) <= \<const0>\;
  bram_wrdata_b(115) <= \<const0>\;
  bram_wrdata_b(114) <= \<const0>\;
  bram_wrdata_b(113) <= \<const0>\;
  bram_wrdata_b(112) <= \<const0>\;
  bram_wrdata_b(111) <= \<const0>\;
  bram_wrdata_b(110) <= \<const0>\;
  bram_wrdata_b(109) <= \<const0>\;
  bram_wrdata_b(108) <= \<const0>\;
  bram_wrdata_b(107) <= \<const0>\;
  bram_wrdata_b(106) <= \<const0>\;
  bram_wrdata_b(105) <= \<const0>\;
  bram_wrdata_b(104) <= \<const0>\;
  bram_wrdata_b(103) <= \<const0>\;
  bram_wrdata_b(102) <= \<const0>\;
  bram_wrdata_b(101) <= \<const0>\;
  bram_wrdata_b(100) <= \<const0>\;
  bram_wrdata_b(99) <= \<const0>\;
  bram_wrdata_b(98) <= \<const0>\;
  bram_wrdata_b(97) <= \<const0>\;
  bram_wrdata_b(96) <= \<const0>\;
  bram_wrdata_b(95) <= \<const0>\;
  bram_wrdata_b(94) <= \<const0>\;
  bram_wrdata_b(93) <= \<const0>\;
  bram_wrdata_b(92) <= \<const0>\;
  bram_wrdata_b(91) <= \<const0>\;
  bram_wrdata_b(90) <= \<const0>\;
  bram_wrdata_b(89) <= \<const0>\;
  bram_wrdata_b(88) <= \<const0>\;
  bram_wrdata_b(87) <= \<const0>\;
  bram_wrdata_b(86) <= \<const0>\;
  bram_wrdata_b(85) <= \<const0>\;
  bram_wrdata_b(84) <= \<const0>\;
  bram_wrdata_b(83) <= \<const0>\;
  bram_wrdata_b(82) <= \<const0>\;
  bram_wrdata_b(81) <= \<const0>\;
  bram_wrdata_b(80) <= \<const0>\;
  bram_wrdata_b(79) <= \<const0>\;
  bram_wrdata_b(78) <= \<const0>\;
  bram_wrdata_b(77) <= \<const0>\;
  bram_wrdata_b(76) <= \<const0>\;
  bram_wrdata_b(75) <= \<const0>\;
  bram_wrdata_b(74) <= \<const0>\;
  bram_wrdata_b(73) <= \<const0>\;
  bram_wrdata_b(72) <= \<const0>\;
  bram_wrdata_b(71) <= \<const0>\;
  bram_wrdata_b(70) <= \<const0>\;
  bram_wrdata_b(69) <= \<const0>\;
  bram_wrdata_b(68) <= \<const0>\;
  bram_wrdata_b(67) <= \<const0>\;
  bram_wrdata_b(66) <= \<const0>\;
  bram_wrdata_b(65) <= \<const0>\;
  bram_wrdata_b(64) <= \<const0>\;
  bram_wrdata_b(63) <= \<const0>\;
  bram_wrdata_b(62) <= \<const0>\;
  bram_wrdata_b(61) <= \<const0>\;
  bram_wrdata_b(60) <= \<const0>\;
  bram_wrdata_b(59) <= \<const0>\;
  bram_wrdata_b(58) <= \<const0>\;
  bram_wrdata_b(57) <= \<const0>\;
  bram_wrdata_b(56) <= \<const0>\;
  bram_wrdata_b(55) <= \<const0>\;
  bram_wrdata_b(54) <= \<const0>\;
  bram_wrdata_b(53) <= \<const0>\;
  bram_wrdata_b(52) <= \<const0>\;
  bram_wrdata_b(51) <= \<const0>\;
  bram_wrdata_b(50) <= \<const0>\;
  bram_wrdata_b(49) <= \<const0>\;
  bram_wrdata_b(48) <= \<const0>\;
  bram_wrdata_b(47) <= \<const0>\;
  bram_wrdata_b(46) <= \<const0>\;
  bram_wrdata_b(45) <= \<const0>\;
  bram_wrdata_b(44) <= \<const0>\;
  bram_wrdata_b(43) <= \<const0>\;
  bram_wrdata_b(42) <= \<const0>\;
  bram_wrdata_b(41) <= \<const0>\;
  bram_wrdata_b(40) <= \<const0>\;
  bram_wrdata_b(39) <= \<const0>\;
  bram_wrdata_b(38) <= \<const0>\;
  bram_wrdata_b(37) <= \<const0>\;
  bram_wrdata_b(36) <= \<const0>\;
  bram_wrdata_b(35) <= \<const0>\;
  bram_wrdata_b(34) <= \<const0>\;
  bram_wrdata_b(33) <= \<const0>\;
  bram_wrdata_b(32) <= \<const0>\;
  bram_wrdata_b(31) <= \<const0>\;
  bram_wrdata_b(30) <= \<const0>\;
  bram_wrdata_b(29) <= \<const0>\;
  bram_wrdata_b(28) <= \<const0>\;
  bram_wrdata_b(27) <= \<const0>\;
  bram_wrdata_b(26) <= \<const0>\;
  bram_wrdata_b(25) <= \<const0>\;
  bram_wrdata_b(24) <= \<const0>\;
  bram_wrdata_b(23) <= \<const0>\;
  bram_wrdata_b(22) <= \<const0>\;
  bram_wrdata_b(21) <= \<const0>\;
  bram_wrdata_b(20) <= \<const0>\;
  bram_wrdata_b(19) <= \<const0>\;
  bram_wrdata_b(18) <= \<const0>\;
  bram_wrdata_b(17) <= \<const0>\;
  bram_wrdata_b(16) <= \<const0>\;
  bram_wrdata_b(15) <= \<const0>\;
  bram_wrdata_b(14) <= \<const0>\;
  bram_wrdata_b(13) <= \<const0>\;
  bram_wrdata_b(12) <= \<const0>\;
  bram_wrdata_b(11) <= \<const0>\;
  bram_wrdata_b(10) <= \<const0>\;
  bram_wrdata_b(9) <= \<const0>\;
  bram_wrdata_b(8) <= \<const0>\;
  bram_wrdata_b(7) <= \<const0>\;
  bram_wrdata_b(6) <= \<const0>\;
  bram_wrdata_b(5) <= \<const0>\;
  bram_wrdata_b(4) <= \<const0>\;
  bram_wrdata_b(3) <= \<const0>\;
  bram_wrdata_b(2) <= \<const0>\;
  bram_wrdata_b(1) <= \<const0>\;
  bram_wrdata_b(0) <= \<const0>\;
  ecc_interrupt <= \<const0>\;
  ecc_ue <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_ctrl_arready <= \<const0>\;
  s_axi_ctrl_awready <= \<const0>\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_bvalid <= \<const0>\;
  s_axi_ctrl_rdata(31) <= \<const0>\;
  s_axi_ctrl_rdata(30) <= \<const0>\;
  s_axi_ctrl_rdata(29) <= \<const0>\;
  s_axi_ctrl_rdata(28) <= \<const0>\;
  s_axi_ctrl_rdata(27) <= \<const0>\;
  s_axi_ctrl_rdata(26) <= \<const0>\;
  s_axi_ctrl_rdata(25) <= \<const0>\;
  s_axi_ctrl_rdata(24) <= \<const0>\;
  s_axi_ctrl_rdata(23) <= \<const0>\;
  s_axi_ctrl_rdata(22) <= \<const0>\;
  s_axi_ctrl_rdata(21) <= \<const0>\;
  s_axi_ctrl_rdata(20) <= \<const0>\;
  s_axi_ctrl_rdata(19) <= \<const0>\;
  s_axi_ctrl_rdata(18) <= \<const0>\;
  s_axi_ctrl_rdata(17) <= \<const0>\;
  s_axi_ctrl_rdata(16) <= \<const0>\;
  s_axi_ctrl_rdata(15) <= \<const0>\;
  s_axi_ctrl_rdata(14) <= \<const0>\;
  s_axi_ctrl_rdata(13) <= \<const0>\;
  s_axi_ctrl_rdata(12) <= \<const0>\;
  s_axi_ctrl_rdata(11) <= \<const0>\;
  s_axi_ctrl_rdata(10) <= \<const0>\;
  s_axi_ctrl_rdata(9) <= \<const0>\;
  s_axi_ctrl_rdata(8) <= \<const0>\;
  s_axi_ctrl_rdata(7) <= \<const0>\;
  s_axi_ctrl_rdata(6) <= \<const0>\;
  s_axi_ctrl_rdata(5) <= \<const0>\;
  s_axi_ctrl_rdata(4) <= \<const0>\;
  s_axi_ctrl_rdata(3) <= \<const0>\;
  s_axi_ctrl_rdata(2) <= \<const0>\;
  s_axi_ctrl_rdata(1) <= \<const0>\;
  s_axi_ctrl_rdata(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_rvalid <= \<const0>\;
  s_axi_ctrl_wready <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gint_inst.abcv4_0_int_inst\: entity work.axi_bram_ctrl_0_axi_bram_ctrl_top
     port map (
      D(127 downto 0) => douta_bram_douta_i(127 downto 0),
      DI(3) => ua_narrow_load1_carry_i_29_n_0,
      DI(2) => ua_narrow_load1_carry_i_30_n_0,
      DI(1) => ua_narrow_load1_carry_i_31_n_0,
      DI(0) => ua_narrow_load1_carry_i_32_n_0,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3\(3) => \ua_narrow_load1_carry_i_29__0_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3\(2) => \ua_narrow_load1_carry_i_30__0_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3\(1) => \ua_narrow_load1_carry_i_31__0_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3\(0) => \ua_narrow_load1_carry_i_32__0_n_0\,
      \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0\(0) => \ua_narrow_load1_carry_i_33__0_n_0\,
      \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg\ => s_axi_rlast,
      \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg\ => s_axi_rvalid,
      Q(9 downto 0) => addra_bram_addra_i(13 downto 4),
      S(0) => ua_narrow_load1_carry_i_33_n_0,
      axi_bvalid_int_reg => s_axi_bvalid,
      dina(127 downto 0) => dina_bram_dina_i(127 downto 0),
      ena => ena_bram_ena_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(13 downto 0) => s_axi_araddr(13 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \gint_inst.abcv4_0_int_inst_n_1\,
      s_axi_arid(1 downto 0) => s_axi_arid(1 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(13 downto 0) => s_axi_awaddr(13 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(1 downto 0) => s_axi_awid(1 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(1 downto 0) => s_axi_bid(1 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(127 downto 0) => s_axi_rdata(127 downto 0),
      s_axi_rid(1 downto 0) => s_axi_rid(1 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      ua_narrow_load1_carry_i_8(3) => ua_narrow_load1_carry_i_22_n_0,
      ua_narrow_load1_carry_i_8(2) => ua_narrow_load1_carry_i_23_n_0,
      ua_narrow_load1_carry_i_8(1) => ua_narrow_load1_carry_i_24_n_0,
      ua_narrow_load1_carry_i_8(0) => \ua_narrow_load1_carry_i_25__0_n_0\,
      \ua_narrow_load1_carry_i_8__0\(3) => \ua_narrow_load1_carry_i_22__0_n_0\,
      \ua_narrow_load1_carry_i_8__0\(2) => \ua_narrow_load1_carry_i_23__0_n_0\,
      \ua_narrow_load1_carry_i_8__0\(1) => \ua_narrow_load1_carry_i_24__0_n_0\,
      \ua_narrow_load1_carry_i_8__0\(0) => ua_narrow_load1_carry_i_25_n_0,
      wea(15 downto 0) => wea_bram_wea_i(15 downto 0)
    );
\gint_inst.xpm_spram_mem_gen.xpm_memory_spram_inst\: entity work.axi_bram_ctrl_0_xpm_memory_spram
     port map (
      Q(9 downto 0) => addra_bram_addra_i(13 downto 4),
      dina(127 downto 0) => dina_bram_dina_i(127 downto 0),
      douta(127 downto 0) => douta_bram_douta_i(127 downto 0),
      ena => ena_bram_ena_i,
      \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0\ => \gint_inst.abcv4_0_int_inst_n_1\,
      s_axi_aclk => s_axi_aclk,
      wea(15 downto 0) => wea_bram_wea_i(15 downto 0)
    );
ua_narrow_load1_carry_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      O => ua_narrow_load1_carry_i_22_n_0
    );
\ua_narrow_load1_carry_i_22__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => \ua_narrow_load1_carry_i_22__0_n_0\
    );
ua_narrow_load1_carry_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => ua_narrow_load1_carry_i_23_n_0
    );
\ua_narrow_load1_carry_i_23__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => \ua_narrow_load1_carry_i_23__0_n_0\
    );
ua_narrow_load1_carry_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      O => ua_narrow_load1_carry_i_24_n_0
    );
\ua_narrow_load1_carry_i_24__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      O => \ua_narrow_load1_carry_i_24__0_n_0\
    );
ua_narrow_load1_carry_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      O => ua_narrow_load1_carry_i_25_n_0
    );
\ua_narrow_load1_carry_i_25__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => \ua_narrow_load1_carry_i_25__0_n_0\
    );
ua_narrow_load1_carry_i_29: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      O => ua_narrow_load1_carry_i_29_n_0
    );
\ua_narrow_load1_carry_i_29__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      O => \ua_narrow_load1_carry_i_29__0_n_0\
    );
ua_narrow_load1_carry_i_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      O => ua_narrow_load1_carry_i_30_n_0
    );
\ua_narrow_load1_carry_i_30__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => \ua_narrow_load1_carry_i_30__0_n_0\
    );
ua_narrow_load1_carry_i_31: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => ua_narrow_load1_carry_i_31_n_0
    );
\ua_narrow_load1_carry_i_31__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => \ua_narrow_load1_carry_i_31__0_n_0\
    );
ua_narrow_load1_carry_i_32: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => ua_narrow_load1_carry_i_32_n_0
    );
\ua_narrow_load1_carry_i_32__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => \ua_narrow_load1_carry_i_32__0_n_0\
    );
ua_narrow_load1_carry_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awaddr(3),
      O => ua_narrow_load1_carry_i_33_n_0
    );
\ua_narrow_load1_carry_i_33__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => s_axi_araddr(3),
      O => \ua_narrow_load1_carry_i_33__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_ctrl_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_bram_ctrl_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_bram_ctrl_0 : entity is "axi_bram_ctrl_0,axi_bram_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axi_bram_ctrl_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of axi_bram_ctrl_0 : entity is "axi_bram_ctrl,Vivado 2022.2";
end axi_bram_ctrl_0;

architecture STRUCTURE of axi_bram_ctrl_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_bram_clk_a_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_clk_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_en_a_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_en_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_rst_a_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_rst_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_ue_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_addr_a_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_U0_bram_addr_b_UNCONNECTED : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_U0_bram_we_a_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_bram_we_b_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_bram_wrdata_a_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_U0_bram_wrdata_b_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ctrl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ctrl_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_ctrl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of U0 : label is 10;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of U0 : label is "INTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of U0 : label is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of U0 : label is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of U0 : label is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of U0 : label is 1024;
  attribute C_RD_CMD_OPTIMIZATION : integer;
  attribute C_RD_CMD_OPTIMIZATION of U0 : label is 0;
  attribute C_READ_LATENCY : integer;
  attribute C_READ_LATENCY of U0 : label is 1;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of U0 : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 14;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 128;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of U0 : label is 2;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of U0 : label is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of U0 : label is 1;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute x_interface_info of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute x_interface_info of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute x_interface_info of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_info of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute x_interface_info of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute x_interface_info of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute x_interface_parameter of s_axi_awid : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 14, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute x_interface_info of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.axi_bram_ctrl_0_axi_bram_ctrl
     port map (
      bram_addr_a(13 downto 0) => NLW_U0_bram_addr_a_UNCONNECTED(13 downto 0),
      bram_addr_b(13 downto 0) => NLW_U0_bram_addr_b_UNCONNECTED(13 downto 0),
      bram_clk_a => NLW_U0_bram_clk_a_UNCONNECTED,
      bram_clk_b => NLW_U0_bram_clk_b_UNCONNECTED,
      bram_en_a => NLW_U0_bram_en_a_UNCONNECTED,
      bram_en_b => NLW_U0_bram_en_b_UNCONNECTED,
      bram_rddata_a(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      bram_rddata_b(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      bram_rst_a => NLW_U0_bram_rst_a_UNCONNECTED,
      bram_rst_b => NLW_U0_bram_rst_b_UNCONNECTED,
      bram_we_a(15 downto 0) => NLW_U0_bram_we_a_UNCONNECTED(15 downto 0),
      bram_we_b(15 downto 0) => NLW_U0_bram_we_b_UNCONNECTED(15 downto 0),
      bram_wrdata_a(127 downto 0) => NLW_U0_bram_wrdata_a_UNCONNECTED(127 downto 0),
      bram_wrdata_b(127 downto 0) => NLW_U0_bram_wrdata_b_UNCONNECTED(127 downto 0),
      ecc_interrupt => NLW_U0_ecc_interrupt_UNCONNECTED,
      ecc_ue => NLW_U0_ecc_ue_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(13 downto 0) => s_axi_araddr(13 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(1 downto 0) => s_axi_arid(1 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(13 downto 0) => s_axi_awaddr(13 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(1 downto 0) => s_axi_awid(1 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(1 downto 0) => s_axi_bid(1 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_ctrl_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_arready => NLW_U0_s_axi_ctrl_arready_UNCONNECTED,
      s_axi_ctrl_arvalid => '0',
      s_axi_ctrl_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_awready => NLW_U0_s_axi_ctrl_awready_UNCONNECTED,
      s_axi_ctrl_awvalid => '0',
      s_axi_ctrl_bready => '0',
      s_axi_ctrl_bresp(1 downto 0) => NLW_U0_s_axi_ctrl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bvalid => NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED,
      s_axi_ctrl_rdata(31 downto 0) => NLW_U0_s_axi_ctrl_rdata_UNCONNECTED(31 downto 0),
      s_axi_ctrl_rready => '0',
      s_axi_ctrl_rresp(1 downto 0) => NLW_U0_s_axi_ctrl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_rvalid => NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED,
      s_axi_ctrl_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_wready => NLW_U0_s_axi_ctrl_wready_UNCONNECTED,
      s_axi_ctrl_wvalid => '0',
      s_axi_rdata(127 downto 0) => s_axi_rdata(127 downto 0),
      s_axi_rid(1 downto 0) => s_axi_rid(1 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
