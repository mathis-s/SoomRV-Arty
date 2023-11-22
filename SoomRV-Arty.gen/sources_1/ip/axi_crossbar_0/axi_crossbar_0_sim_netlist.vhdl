-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Oct 30 23:41:23 2023
-- Host        : m-desktop running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode funcsim
--               SoomRV-Arty.gen/sources_1/ip/axi_crossbar_0/axi_crossbar_0_sim_netlist.vhdl
-- Design      : axi_crossbar_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_crossbar_v2_1_28_addr_arbiter is
  port (
    \gen_no_arbiter.s_ready_i_reg[0]_0\ : out STD_LOGIC;
    reset : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[8]\ : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[0]\ : out STD_LOGIC;
    m_axi_arready_1_sp_1 : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready_0_sp_1 : out STD_LOGIC;
    \gen_no_arbiter.m_valid_i_reg_inv_0\ : out STD_LOGIC;
    \gen_no_arbiter.m_mesg_i_reg[63]_0\ : out STD_LOGIC_VECTOR ( 58 downto 0 );
    \gen_no_arbiter.s_ready_i_reg[0]_1\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 5 downto 0 );
    aresetn_d : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 58 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_crossbar_v2_1_28_addr_arbiter : entity is "axi_crossbar_v2_1_28_addr_arbiter";
end axi_crossbar_0_axi_crossbar_v2_1_28_addr_arbiter;

architecture STRUCTURE of axi_crossbar_0_axi_crossbar_v2_1_28_addr_arbiter is
  signal aa_mi_artarget_hot : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_no_arbiter.m_target_hot_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_valid_i_inv_i_1__0_n_0\ : STD_LOGIC;
  signal \^gen_no_arbiter.s_ready_i_reg[0]_0\ : STD_LOGIC;
  signal m_axi_arready_0_sn_1 : STD_LOGIC;
  signal m_axi_arready_1_sn_1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^reset\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_master_slots[0].r_issuing_cnt[2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_master_slots[1].r_issuing_cnt[10]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[1]_i_1\ : label is "soft_lutpair0";
  attribute inverted : string;
  attribute inverted of \gen_no_arbiter.m_valid_i_reg_inv\ : label is "yes";
  attribute SOFT_HLUTNM of \gen_no_arbiter.s_ready_i[0]_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axi_arvalid[0]_INST_0\ : label is "soft_lutpair2";
begin
  \gen_no_arbiter.s_ready_i_reg[0]_0\ <= \^gen_no_arbiter.s_ready_i_reg[0]_0\;
  m_axi_arready_0_sp_1 <= m_axi_arready_0_sn_1;
  m_axi_arready_1_sp_1 <= m_axi_arready_1_sn_1;
  reset <= \^reset\;
\gen_master_slots[0].r_issuing_cnt[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_axi_arready(0),
      I1 => aa_mi_artarget_hot(0),
      I2 => p_1_in,
      O => m_axi_arready_0_sn_1
    );
\gen_master_slots[1].r_issuing_cnt[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axi_arready(1),
      I1 => p_1_in,
      I2 => aa_mi_artarget_hot(1),
      O => m_axi_arready_1_sn_1
    );
\gen_no_arbiter.m_mesg_i[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn_d,
      O => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(0),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(0),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(10),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(10),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(11),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(11),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(12),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(12),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(13),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(13),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(14),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(14),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(15),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(15),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(16),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(16),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(17),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(17),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(18),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(18),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(19),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(19),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(1),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(1),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(20),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(20),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(21),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(21),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(22),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(22),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(23),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(23),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(24),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(24),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(25),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(25),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(26),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(26),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(27),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(27),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(28),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(28),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(29),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(29),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(2),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(2),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(30),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(30),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(31),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(31),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(32),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(32),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(33),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(33),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(34),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(34),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(35),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(35),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(36),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(36),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(37),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(37),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(38),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(38),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(39),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(39),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(3),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(3),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(40),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(40),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(41),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(41),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(42),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(42),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(43),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(43),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(44),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(44),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(45),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(45),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(46),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(46),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(47),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(47),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(48),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(48),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(4),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(4),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(49),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(49),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(50),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(50),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(51),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(51),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(52),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(52),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(53),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(53),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(54),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(54),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(5),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(5),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(55),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(55),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(56),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(56),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(57),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(57),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(58),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(58),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(6),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(6),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(7),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(7),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(8),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(8),
      R => \^reset\
    );
\gen_no_arbiter.m_mesg_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => D(9),
      Q => \gen_no_arbiter.m_mesg_i_reg[63]_0\(9),
      R => \^reset\
    );
\gen_no_arbiter.m_target_hot_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => D(33),
      I1 => m_valid_i,
      I2 => aresetn_d,
      I3 => aa_mi_artarget_hot(0),
      O => \gen_no_arbiter.m_target_hot_i[0]_i_1_n_0\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => D(33),
      I1 => m_valid_i,
      I2 => aresetn_d,
      I3 => aa_mi_artarget_hot(1),
      O => \gen_no_arbiter.m_target_hot_i[1]_i_1_n_0\
    );
\gen_no_arbiter.m_target_hot_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_no_arbiter.m_target_hot_i[0]_i_1_n_0\,
      Q => aa_mi_artarget_hot(0),
      R => '0'
    );
\gen_no_arbiter.m_target_hot_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_no_arbiter.m_target_hot_i[1]_i_1_n_0\,
      Q => aa_mi_artarget_hot(1),
      R => '0'
    );
\gen_no_arbiter.m_valid_i_inv_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555545054505450"
    )
        port map (
      I0 => m_valid_i,
      I1 => m_axi_arready(1),
      I2 => p_1_in,
      I3 => aa_mi_artarget_hot(1),
      I4 => m_axi_arready(0),
      I5 => aa_mi_artarget_hot(0),
      O => \gen_no_arbiter.m_valid_i_inv_i_1__0_n_0\
    );
\gen_no_arbiter.m_valid_i_reg_inv\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_no_arbiter.m_valid_i_inv_i_1__0_n_0\,
      Q => p_1_in,
      S => \^reset\
    );
\gen_no_arbiter.s_ready_i[0]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => p_1_in,
      I1 => s_axi_arvalid(0),
      I2 => \^gen_no_arbiter.s_ready_i_reg[0]_0\,
      O => \gen_no_arbiter.m_valid_i_reg_inv_0\
    );
\gen_no_arbiter.s_ready_i[0]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => r_issuing_cnt(3),
      I1 => r_issuing_cnt(4),
      I2 => r_issuing_cnt(5),
      O => \gen_master_slots[1].r_issuing_cnt_reg[8]\
    );
\gen_no_arbiter.s_ready_i[0]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => r_issuing_cnt(0),
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(2),
      O => \gen_master_slots[0].r_issuing_cnt_reg[0]\
    );
\gen_no_arbiter.s_ready_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_no_arbiter.s_ready_i_reg[0]_1\,
      Q => \^gen_no_arbiter.s_ready_i_reg[0]_0\,
      R => '0'
    );
\m_axi_arvalid[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => p_1_in,
      I1 => aa_mi_artarget_hot(0),
      O => m_axi_arvalid(0)
    );
\m_axi_arvalid[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aa_mi_artarget_hot(1),
      I1 => p_1_in,
      O => m_axi_arvalid(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_crossbar_v2_1_28_addr_arbiter_0 is
  port (
    ss_aa_awready : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[1]\ : out STD_LOGIC;
    m_axi_awready_0_sp_1 : out STD_LOGIC;
    s_axi_bready_0_sp_1 : out STD_LOGIC;
    m_axi_awready_1_sp_1 : out STD_LOGIC;
    \s_axi_bready[0]_0\ : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[1]_0\ : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[1]_1\ : out STD_LOGIC;
    aa_mi_awtarget_hot : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 58 downto 0 );
    \gen_no_arbiter.s_ready_i_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_no_arbiter.m_valid_i_reg_inv_0\ : in STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[2]\ : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_master_slots[1].w_issuing_cnt_reg[10]\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 58 downto 0 );
    \gen_no_arbiter.m_target_hot_i_reg[1]_0\ : in STD_LOGIC;
    aresetn_d : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_crossbar_v2_1_28_addr_arbiter_0 : entity is "axi_crossbar_v2_1_28_addr_arbiter";
end axi_crossbar_0_axi_crossbar_v2_1_28_addr_arbiter_0;

architecture STRUCTURE of axi_crossbar_0_axi_crossbar_v2_1_28_addr_arbiter_0 is
  signal \^aa_mi_awtarget_hot\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_no_arbiter.m_target_hot_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[1]_i_1_n_0\ : STD_LOGIC;
  signal m_axi_awready_0_sn_1 : STD_LOGIC;
  signal m_axi_awready_1_sn_1 : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal s_axi_bready_0_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_master_slots[1].w_issuing_cnt[10]_i_2\ : label is "soft_lutpair5";
  attribute inverted : string;
  attribute inverted of \gen_no_arbiter.m_valid_i_reg_inv\ : label is "yes";
  attribute SOFT_HLUTNM of \m_axi_awvalid[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axi_awvalid[1]_INST_0\ : label is "soft_lutpair5";
begin
  aa_mi_awtarget_hot(1 downto 0) <= \^aa_mi_awtarget_hot\(1 downto 0);
  m_axi_awready_0_sp_1 <= m_axi_awready_0_sn_1;
  m_axi_awready_1_sp_1 <= m_axi_awready_1_sn_1;
  p_1_in <= \^p_1_in\;
  s_axi_bready_0_sp_1 <= s_axi_bready_0_sn_1;
\gen_master_slots[0].w_issuing_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99669962"
    )
        port map (
      I0 => m_axi_awready_0_sn_1,
      I1 => \gen_master_slots[0].w_issuing_cnt_reg[2]\,
      I2 => w_issuing_cnt(1),
      I3 => w_issuing_cnt(0),
      I4 => w_issuing_cnt(2),
      O => \gen_master_slots[0].w_issuing_cnt_reg[1]\
    );
\gen_master_slots[0].w_issuing_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2B4D2B0"
    )
        port map (
      I0 => m_axi_awready_0_sn_1,
      I1 => \gen_master_slots[0].w_issuing_cnt_reg[2]\,
      I2 => w_issuing_cnt(1),
      I3 => w_issuing_cnt(0),
      I4 => w_issuing_cnt(2),
      O => \gen_master_slots[0].w_issuing_cnt_reg[1]_1\
    );
\gen_master_slots[0].w_issuing_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFB2000"
    )
        port map (
      I0 => m_axi_awready_0_sn_1,
      I1 => \gen_master_slots[0].w_issuing_cnt_reg[2]\,
      I2 => w_issuing_cnt(1),
      I3 => w_issuing_cnt(0),
      I4 => w_issuing_cnt(2),
      O => \gen_master_slots[0].w_issuing_cnt_reg[1]_0\
    );
\gen_master_slots[0].w_issuing_cnt[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => m_axi_awready(0),
      I1 => \^aa_mi_awtarget_hot\(0),
      I2 => \^p_1_in\,
      I3 => m_ready_d(0),
      O => m_axi_awready_0_sn_1
    );
\gen_master_slots[1].w_issuing_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5FFFFBF2A000000"
    )
        port map (
      I0 => m_axi_awready_1_sn_1,
      I1 => \gen_master_slots[1].w_issuing_cnt_reg[10]\,
      I2 => s_axi_bready(0),
      I3 => w_issuing_cnt(4),
      I4 => w_issuing_cnt(3),
      I5 => w_issuing_cnt(5),
      O => s_axi_bready_0_sn_1
    );
\gen_master_slots[1].w_issuing_cnt[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => m_axi_awready(1),
      I1 => \^aa_mi_awtarget_hot\(1),
      I2 => \^p_1_in\,
      I3 => m_ready_d(0),
      O => m_axi_awready_1_sn_1
    );
\gen_master_slots[1].w_issuing_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D52ABF40D52ABF00"
    )
        port map (
      I0 => m_axi_awready_1_sn_1,
      I1 => \gen_master_slots[1].w_issuing_cnt_reg[10]\,
      I2 => s_axi_bready(0),
      I3 => w_issuing_cnt(4),
      I4 => w_issuing_cnt(3),
      I5 => w_issuing_cnt(5),
      O => \s_axi_bready[0]_0\
    );
\gen_no_arbiter.m_mesg_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(10),
      Q => Q(10),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(11),
      Q => Q(11),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(12),
      Q => Q(12),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(13),
      Q => Q(13),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(14),
      Q => Q(14),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(15),
      Q => Q(15),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(16),
      Q => Q(16),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(17),
      Q => Q(17),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(18),
      Q => Q(18),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(19),
      Q => Q(19),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(20),
      Q => Q(20),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(21),
      Q => Q(21),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(22),
      Q => Q(22),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(23),
      Q => Q(23),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(24),
      Q => Q(24),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(25),
      Q => Q(25),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(26),
      Q => Q(26),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(27),
      Q => Q(27),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(28),
      Q => Q(28),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(29),
      Q => Q(29),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(30),
      Q => Q(30),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(31),
      Q => Q(31),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(32),
      Q => Q(32),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(33),
      Q => Q(33),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(34),
      Q => Q(34),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(35),
      Q => Q(35),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(36),
      Q => Q(36),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(37),
      Q => Q(37),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(38),
      Q => Q(38),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(39),
      Q => Q(39),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(40),
      Q => Q(40),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(41),
      Q => Q(41),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(42),
      Q => Q(42),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(43),
      Q => Q(43),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(44),
      Q => Q(44),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(45),
      Q => Q(45),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(46),
      Q => Q(46),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(47),
      Q => Q(47),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(48),
      Q => Q(48),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(4),
      Q => Q(4),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(49),
      Q => Q(49),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(50),
      Q => Q(50),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(51),
      Q => Q(51),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(52),
      Q => Q(52),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(53),
      Q => Q(53),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(54),
      Q => Q(54),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(5),
      Q => Q(5),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(55),
      Q => Q(55),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(56),
      Q => Q(56),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(57),
      Q => Q(57),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(58),
      Q => Q(58),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(6),
      Q => Q(6),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(7),
      Q => Q(7),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(8),
      Q => Q(8),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => D(9),
      Q => Q(9),
      R => SR(0)
    );
\gen_no_arbiter.m_target_hot_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF4000"
    )
        port map (
      I0 => D(33),
      I1 => \gen_no_arbiter.m_target_hot_i_reg[1]_0\,
      I2 => aresetn_d,
      I3 => \^p_1_in\,
      I4 => \^aa_mi_awtarget_hot\(0),
      O => \gen_no_arbiter.m_target_hot_i[0]_i_1_n_0\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => D(33),
      I1 => \gen_no_arbiter.m_target_hot_i_reg[1]_0\,
      I2 => aresetn_d,
      I3 => \^p_1_in\,
      I4 => \^aa_mi_awtarget_hot\(1),
      O => \gen_no_arbiter.m_target_hot_i[1]_i_1_n_0\
    );
\gen_no_arbiter.m_target_hot_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_no_arbiter.m_target_hot_i[0]_i_1_n_0\,
      Q => \^aa_mi_awtarget_hot\(0),
      R => '0'
    );
\gen_no_arbiter.m_target_hot_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_no_arbiter.m_target_hot_i[1]_i_1_n_0\,
      Q => \^aa_mi_awtarget_hot\(1),
      R => '0'
    );
\gen_no_arbiter.m_valid_i_reg_inv\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_no_arbiter.m_valid_i_reg_inv_0\,
      Q => \^p_1_in\,
      S => SR(0)
    );
\gen_no_arbiter.s_ready_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_no_arbiter.s_ready_i_reg[0]_0\,
      Q => ss_aa_awready,
      R => '0'
    );
\m_axi_awvalid[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^aa_mi_awtarget_hot\(0),
      I1 => \^p_1_in\,
      I2 => m_ready_d(0),
      O => m_axi_awvalid(0)
    );
\m_axi_awvalid[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^aa_mi_awtarget_hot\(1),
      I1 => \^p_1_in\,
      I2 => m_ready_d(0),
      O => m_axi_awvalid(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_crossbar_v2_1_28_arbiter_resp is
  port (
    \chosen_reg[0]_0\ : out STD_LOGIC;
    aresetn_d_reg : out STD_LOGIC;
    \s_axi_awvalid[0]\ : out STD_LOGIC;
    s_axi_bready_0_sp_1 : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_inv : out STD_LOGIC;
    \chosen_reg[1]_0\ : out STD_LOGIC;
    \chosen_reg[2]_0\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]_0\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]_0\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]_0\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_0\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]\ : out STD_LOGIC;
    st_mr_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    chosen41_in : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \gen_no_arbiter.s_ready_i_reg[0]\ : in STD_LOGIC;
    \gen_no_arbiter.s_ready_i_reg[0]_0\ : in STD_LOGIC;
    \gen_no_arbiter.s_ready_i_reg[0]_1\ : in STD_LOGIC;
    \gen_no_arbiter.s_ready_i_reg[0]_2\ : in STD_LOGIC;
    \gen_no_arbiter.s_ready_i_reg[0]_3\ : in STD_LOGIC;
    \gen_no_arbiter.m_target_hot_i[1]_i_2_0\ : in STD_LOGIC;
    \gen_multi_thread.accept_cnt\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_0\ : in STD_LOGIC;
    \gen_no_arbiter.m_target_hot_i[1]_i_2_1\ : in STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_1\ : in STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_2\ : in STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]_1\ : in STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]_2\ : in STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]_1\ : in STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]_2\ : in STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]_1\ : in STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]_2\ : in STD_LOGIC;
    st_mr_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_1\ : in STD_LOGIC;
    \gen_multi_thread.active_cnt\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]_0\ : in STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]_0\ : in STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]_0\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_crossbar_v2_1_28_arbiter_resp : entity is "axi_crossbar_v2_1_28_arbiter_resp";
end axi_crossbar_0_axi_crossbar_v2_1_28_arbiter_resp;

architecture STRUCTURE of axi_crossbar_0_axi_crossbar_v2_1_28_arbiter_resp is
  signal \chosen[0]_i_1_n_0\ : STD_LOGIC;
  signal \chosen[1]_i_1_n_0\ : STD_LOGIC;
  signal \chosen[2]_i_1_n_0\ : STD_LOGIC;
  signal \^chosen_reg[0]_0\ : STD_LOGIC;
  signal \^chosen_reg[1]_0\ : STD_LOGIC;
  signal \^chosen_reg[2]_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_3__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_3__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_11__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_12__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_4__0_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[1]_i_5_n_0\ : STD_LOGIC;
  signal \last_rr_hot[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \last_rr_hot[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \last_rr_hot[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \last_rr_hot[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \last_rr_hot[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \last_rr_hot[2]_i_5_n_0\ : STD_LOGIC;
  signal \last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \^m_valid_i_reg_inv\ : STD_LOGIC;
  signal need_arbitration : STD_LOGIC;
  signal next_rr_hot : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal \^s_axi_awvalid[0]\ : STD_LOGIC;
  signal s_axi_bready_0_sn_1 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \chosen[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \chosen[1]_i_1\ : label is "soft_lutpair62";
  attribute use_clock_enable : string;
  attribute use_clock_enable of \chosen_reg[0]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[1]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \last_rr_hot[0]_i_1__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \last_rr_hot[1]_i_1__0\ : label is "soft_lutpair62";
begin
  \chosen_reg[0]_0\ <= \^chosen_reg[0]_0\;
  \chosen_reg[1]_0\ <= \^chosen_reg[1]_0\;
  \chosen_reg[2]_0\ <= \^chosen_reg[2]_0\;
  m_valid_i_reg_inv <= \^m_valid_i_reg_inv\;
  \s_axi_awvalid[0]\ <= \^s_axi_awvalid[0]\;
  s_axi_bready_0_sp_1 <= s_axi_bready_0_sn_1;
  s_axi_bvalid(0) <= \^s_axi_bvalid\(0);
\chosen[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_rr_hot(0),
      I1 => need_arbitration,
      I2 => \^chosen_reg[0]_0\,
      O => \chosen[0]_i_1_n_0\
    );
\chosen[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_rr_hot(1),
      I1 => need_arbitration,
      I2 => \^chosen_reg[1]_0\,
      O => \chosen[1]_i_1_n_0\
    );
\chosen[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \last_rr_hot[2]_i_4__0_n_0\,
      I1 => need_arbitration,
      I2 => \^chosen_reg[2]_0\,
      O => \chosen[2]_i_1_n_0\
    );
\chosen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen[0]_i_1_n_0\,
      Q => \^chosen_reg[0]_0\,
      R => reset
    );
\chosen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen[1]_i_1_n_0\,
      Q => \^chosen_reg[1]_0\,
      R => reset
    );
\chosen_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen[2]_i_1_n_0\,
      Q => \^chosen_reg[2]_0\,
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => \^chosen_reg[0]_0\,
      I2 => chosen41_in,
      O => s_axi_bready_0_sn_1
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFF55005400ABFF"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_3__0_n_0\,
      I1 => \gen_multi_thread.active_cnt\(2),
      I2 => \gen_multi_thread.active_cnt\(1),
      I3 => \^m_valid_i_reg_inv\,
      I4 => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]_0\,
      I5 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]\
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF50AF50E718E710"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]_0\,
      I1 => \^m_valid_i_reg_inv\,
      I2 => \gen_multi_thread.active_cnt\(0),
      I3 => \gen_multi_thread.active_cnt\(1),
      I4 => \gen_multi_thread.active_cnt\(2),
      I5 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_3__0_n_0\,
      O => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_0\
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFF5000EFF71000"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]_0\,
      I1 => \^m_valid_i_reg_inv\,
      I2 => \gen_multi_thread.active_cnt\(0),
      I3 => \gen_multi_thread.active_cnt\(1),
      I4 => \gen_multi_thread.active_cnt\(2),
      I5 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_3__0_n_0\,
      O => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]\
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_11__0_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_1\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_12__0_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_2\,
      O => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_3__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFF5000EFF71000"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]_0\,
      I1 => \^m_valid_i_reg_inv\,
      I2 => \gen_multi_thread.active_cnt\(3),
      I3 => \gen_multi_thread.active_cnt\(4),
      I4 => \gen_multi_thread.active_cnt\(5),
      I5 => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_3__0_n_0\,
      O => \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]\
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_11__0_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]_1\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_12__0_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]_2\,
      O => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_3__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFF55005400ABFF"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_3__0_n_0\,
      I1 => \gen_multi_thread.active_cnt\(5),
      I2 => \gen_multi_thread.active_cnt\(4),
      I3 => \^m_valid_i_reg_inv\,
      I4 => \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]_0\,
      I5 => \gen_multi_thread.active_cnt\(3),
      O => \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]\
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF50AF50E718E710"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]_0\,
      I1 => \^m_valid_i_reg_inv\,
      I2 => \gen_multi_thread.active_cnt\(3),
      I3 => \gen_multi_thread.active_cnt\(4),
      I4 => \gen_multi_thread.active_cnt\(5),
      I5 => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_3__0_n_0\,
      O => \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]_0\
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFF55005400ABFF"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_3__0_n_0\,
      I1 => \gen_multi_thread.active_cnt\(8),
      I2 => \gen_multi_thread.active_cnt\(7),
      I3 => \^m_valid_i_reg_inv\,
      I4 => \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]_0\,
      I5 => \gen_multi_thread.active_cnt\(6),
      O => \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]\
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF50AF50E718E710"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]_0\,
      I1 => \^m_valid_i_reg_inv\,
      I2 => \gen_multi_thread.active_cnt\(6),
      I3 => \gen_multi_thread.active_cnt\(7),
      I4 => \gen_multi_thread.active_cnt\(8),
      I5 => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_3__0_n_0\,
      O => \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]_0\
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFF5000EFF71000"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]_0\,
      I1 => \^m_valid_i_reg_inv\,
      I2 => \gen_multi_thread.active_cnt\(6),
      I3 => \gen_multi_thread.active_cnt\(7),
      I4 => \gen_multi_thread.active_cnt\(8),
      I5 => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_3__0_n_0\,
      O => \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]\
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_11__0_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]_1\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_12__0_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]_2\,
      O => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_3__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFAA00A80057FF"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_4__0_n_0\,
      I1 => \gen_multi_thread.active_cnt\(11),
      I2 => \gen_multi_thread.active_cnt\(10),
      I3 => \^m_valid_i_reg_inv\,
      I4 => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_1\,
      I5 => \gen_multi_thread.active_cnt\(9),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E718E710AF50AF50"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_1\,
      I1 => \^m_valid_i_reg_inv\,
      I2 => \gen_multi_thread.active_cnt\(9),
      I3 => \gen_multi_thread.active_cnt\(10),
      I4 => \gen_multi_thread.active_cnt\(11),
      I5 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_4__0_n_0\,
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D5C0D5D5D5FFD5"
    )
        port map (
      I0 => st_mr_bid(1),
      I1 => \^chosen_reg[2]_0\,
      I2 => st_mr_bvalid(1),
      I3 => \^chosen_reg[1]_0\,
      I4 => st_mr_bvalid(0),
      I5 => st_mr_bid(3),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_11__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D5C0D5D5D5FFD5"
    )
        port map (
      I0 => st_mr_bid(0),
      I1 => \^chosen_reg[2]_0\,
      I2 => st_mr_bvalid(1),
      I3 => \^chosen_reg[1]_0\,
      I4 => st_mr_bvalid(0),
      I5 => st_mr_bid(2),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_12__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFF71000AFFF5000"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_1\,
      I1 => \^m_valid_i_reg_inv\,
      I2 => \gen_multi_thread.active_cnt\(9),
      I3 => \gen_multi_thread.active_cnt\(10),
      I4 => \gen_multi_thread.active_cnt\(11),
      I5 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_4__0_n_0\,
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F000F04040F040"
    )
        port map (
      I0 => chosen41_in,
      I1 => \^chosen_reg[0]_0\,
      I2 => s_axi_bready(0),
      I3 => \^chosen_reg[1]_0\,
      I4 => st_mr_bvalid(0),
      I5 => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_0\,
      O => \^m_valid_i_reg_inv\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_11__0_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]_1\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_12__0_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]_2\,
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_4__0_n_0\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \gen_no_arbiter.s_ready_i_reg[0]\,
      I1 => \gen_no_arbiter.s_ready_i_reg[0]_0\,
      I2 => \gen_no_arbiter.m_target_hot_i[1]_i_5_n_0\,
      I3 => \gen_no_arbiter.s_ready_i_reg[0]_1\,
      I4 => \gen_no_arbiter.s_ready_i_reg[0]_2\,
      I5 => \gen_no_arbiter.s_ready_i_reg[0]_3\,
      O => \^s_axi_awvalid[0]\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000444444444444"
    )
        port map (
      I0 => \gen_no_arbiter.m_target_hot_i[1]_i_2_0\,
      I1 => \gen_multi_thread.accept_cnt\(0),
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_0\,
      I3 => \gen_no_arbiter.m_target_hot_i[1]_i_2_1\,
      I4 => s_axi_bready(0),
      I5 => \^s_axi_bvalid\(0),
      O => \gen_no_arbiter.m_target_hot_i[1]_i_5_n_0\
    );
\gen_no_arbiter.s_ready_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^s_axi_awvalid[0]\,
      I1 => aresetn_d,
      I2 => p_1_in,
      O => aresetn_d_reg
    );
\last_rr_hot[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => need_arbitration,
      I1 => \last_rr_hot[2]_i_3__0_n_0\,
      I2 => next_rr_hot(0),
      I3 => \last_rr_hot_reg_n_0_[0]\,
      O => \last_rr_hot[0]_i_1__0_n_0\
    );
\last_rr_hot[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555500550040"
    )
        port map (
      I0 => chosen41_in,
      I1 => \last_rr_hot_reg_n_0_[0]\,
      I2 => st_mr_bvalid(0),
      I3 => st_mr_bvalid(1),
      I4 => p_3_in,
      I5 => p_4_in,
      O => next_rr_hot(0)
    );
\last_rr_hot[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => need_arbitration,
      I1 => \last_rr_hot[2]_i_3__0_n_0\,
      I2 => next_rr_hot(1),
      I3 => p_3_in,
      O => \last_rr_hot[1]_i_1__0_n_0\
    );
\last_rr_hot[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555540444040"
    )
        port map (
      I0 => st_mr_bvalid(0),
      I1 => chosen41_in,
      I2 => p_4_in,
      I3 => st_mr_bvalid(1),
      I4 => p_3_in,
      I5 => \last_rr_hot_reg_n_0_[0]\,
      O => next_rr_hot(1)
    );
\last_rr_hot[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF02"
    )
        port map (
      I0 => need_arbitration,
      I1 => \last_rr_hot[2]_i_3__0_n_0\,
      I2 => \last_rr_hot[2]_i_4__0_n_0\,
      I3 => p_4_in,
      O => \last_rr_hot[2]_i_1__0_n_0\
    );
\last_rr_hot[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBAB88ABBBAB"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => \last_rr_hot[2]_i_5_n_0\,
      I2 => \^chosen_reg[0]_0\,
      I3 => chosen41_in,
      I4 => st_mr_bvalid(0),
      I5 => st_mr_bvalid(1),
      O => need_arbitration
    );
\last_rr_hot[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008800880F8F"
    )
        port map (
      I0 => st_mr_bvalid(0),
      I1 => chosen41_in,
      I2 => p_4_in,
      I3 => st_mr_bvalid(1),
      I4 => p_3_in,
      I5 => \last_rr_hot_reg_n_0_[0]\,
      O => \last_rr_hot[2]_i_3__0_n_0\
    );
\last_rr_hot[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111555FFFFFFFF"
    )
        port map (
      I0 => p_3_in,
      I1 => st_mr_bvalid(0),
      I2 => p_4_in,
      I3 => chosen41_in,
      I4 => \last_rr_hot_reg_n_0_[0]\,
      I5 => st_mr_bvalid(1),
      O => \last_rr_hot[2]_i_4__0_n_0\
    );
\last_rr_hot[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \^chosen_reg[1]_0\,
      I1 => st_mr_bvalid(0),
      I2 => \^chosen_reg[2]_0\,
      I3 => st_mr_bvalid(1),
      O => \last_rr_hot[2]_i_5_n_0\
    );
\last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[0]_i_1__0_n_0\,
      Q => \last_rr_hot_reg_n_0_[0]\,
      R => reset
    );
\last_rr_hot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[1]_i_1__0_n_0\,
      Q => p_3_in,
      R => reset
    );
\last_rr_hot_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[2]_i_1__0_n_0\,
      Q => p_4_in,
      S => reset
    );
\s_axi_bvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F88FFFF8F88"
    )
        port map (
      I0 => st_mr_bvalid(1),
      I1 => \^chosen_reg[2]_0\,
      I2 => st_mr_bvalid(0),
      I3 => \^chosen_reg[1]_0\,
      I4 => \^chosen_reg[0]_0\,
      I5 => chosen41_in,
      O => \^s_axi_bvalid\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_crossbar_v2_1_28_arbiter_resp_5 is
  port (
    aresetn_d_reg : out STD_LOGIC;
    m_valid_i : out STD_LOGIC;
    \chosen_reg[0]_0\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \chosen_reg[2]_0\ : out STD_LOGIC;
    \chosen_reg[1]_0\ : out STD_LOGIC;
    s_axi_rready_0_sp_1 : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]_0\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]_0\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]_0\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_0\ : out STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]\ : out STD_LOGIC;
    st_mr_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aresetn_d : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_no_arbiter.s_ready_i_reg[0]\ : in STD_LOGIC;
    \gen_no_arbiter.s_ready_i_reg[0]_0\ : in STD_LOGIC;
    \gen_no_arbiter.s_ready_i_reg[0]_1\ : in STD_LOGIC;
    \gen_no_arbiter.s_ready_i_reg[0]_2\ : in STD_LOGIC;
    \gen_no_arbiter.s_ready_i_reg[0]_3\ : in STD_LOGIC;
    st_mr_rmesg : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_1\ : in STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[3].active_id_reg\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_multi_thread.gen_thread_loop[2].active_id_reg\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_multi_thread.gen_thread_loop[1].active_id_reg\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_multi_thread.gen_thread_loop[0].active_id_reg\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.accept_cnt\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_0\ : in STD_LOGIC;
    \gen_multi_thread.active_cnt\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]_0\ : in STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]_0\ : in STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]_0\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_crossbar_v2_1_28_arbiter_resp_5 : entity is "axi_crossbar_v2_1_28_arbiter_resp";
end axi_crossbar_0_axi_crossbar_v2_1_28_arbiter_resp_5;

architecture STRUCTURE of axi_crossbar_0_axi_crossbar_v2_1_28_arbiter_resp_5 is
  signal \chosen[0]_i_1_n_0\ : STD_LOGIC;
  signal \chosen[1]_i_1_n_0\ : STD_LOGIC;
  signal \chosen[2]_i_1_n_0\ : STD_LOGIC;
  signal \^chosen_reg[0]_0\ : STD_LOGIC;
  signal \^chosen_reg[1]_0\ : STD_LOGIC;
  signal \^chosen_reg[2]_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_3_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_11_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_12_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_13_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_14_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.s_ready_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \last_rr_hot[0]_i_1_n_0\ : STD_LOGIC;
  signal \last_rr_hot[1]_i_1_n_0\ : STD_LOGIC;
  signal \last_rr_hot[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \last_rr_hot[2]_i_1_n_0\ : STD_LOGIC;
  signal \last_rr_hot[2]_i_3_n_0\ : STD_LOGIC;
  signal \last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \^m_valid_i\ : STD_LOGIC;
  signal need_arbitration : STD_LOGIC;
  signal next_rr_hot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal s_axi_rready_0_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \chosen[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \chosen[1]_i_1\ : label is "soft_lutpair48";
  attribute use_clock_enable : string;
  attribute use_clock_enable of \chosen_reg[0]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[1]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_13\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_14\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \last_rr_hot[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \last_rr_hot[1]_i_1\ : label is "soft_lutpair48";
begin
  \chosen_reg[0]_0\ <= \^chosen_reg[0]_0\;
  \chosen_reg[1]_0\ <= \^chosen_reg[1]_0\;
  \chosen_reg[2]_0\ <= \^chosen_reg[2]_0\;
  m_valid_i <= \^m_valid_i\;
  s_axi_rready_0_sp_1 <= s_axi_rready_0_sn_1;
\chosen[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_rr_hot(0),
      I1 => need_arbitration,
      I2 => \^chosen_reg[0]_0\,
      O => \chosen[0]_i_1_n_0\
    );
\chosen[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \last_rr_hot[1]_i_2__0_n_0\,
      I1 => need_arbitration,
      I2 => \^chosen_reg[1]_0\,
      O => \chosen[1]_i_1_n_0\
    );
\chosen[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_rr_hot(2),
      I1 => need_arbitration,
      I2 => \^chosen_reg[2]_0\,
      O => \chosen[2]_i_1_n_0\
    );
\chosen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen[0]_i_1_n_0\,
      Q => \^chosen_reg[0]_0\,
      R => reset
    );
\chosen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen[1]_i_1_n_0\,
      Q => \^chosen_reg[1]_0\,
      R => reset
    );
\chosen_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \chosen[2]_i_1_n_0\,
      Q => \^chosen_reg[2]_0\,
      R => reset
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD22222220DDDF"
    )
        port map (
      I0 => s_axi_rready_0_sn_1,
      I1 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_3_n_0\,
      I2 => \gen_multi_thread.active_cnt\(2),
      I3 => \gen_multi_thread.active_cnt\(1),
      I4 => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]_0\,
      I5 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]\
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B4D2D0B4B4B4B4"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]_0\,
      I1 => \gen_multi_thread.active_cnt\(0),
      I2 => \gen_multi_thread.active_cnt\(1),
      I3 => \gen_multi_thread.active_cnt\(2),
      I4 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_3_n_0\,
      I5 => s_axi_rready_0_sn_1,
      O => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_0\
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF40FD00BF40BF40"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]_0\,
      I1 => \gen_multi_thread.active_cnt\(0),
      I2 => \gen_multi_thread.active_cnt\(1),
      I3 => \gen_multi_thread.active_cnt\(2),
      I4 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_3_n_0\,
      I5 => s_axi_rready_0_sn_1,
      O => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]\
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_1\,
      I1 => \gen_multi_thread.gen_thread_loop[0].active_id_reg\(0),
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_11_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[0].active_id_reg\(1),
      O => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_3_n_0\
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF40FD00BF40BF40"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]_0\,
      I1 => \gen_multi_thread.active_cnt\(3),
      I2 => \gen_multi_thread.active_cnt\(4),
      I3 => \gen_multi_thread.active_cnt\(5),
      I4 => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_3_n_0\,
      I5 => s_axi_rready_0_sn_1,
      O => \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]\
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_1\,
      I1 => \gen_multi_thread.gen_thread_loop[1].active_id_reg\(0),
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_11_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[1].active_id_reg\(1),
      O => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_3_n_0\
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD22222220DDDF"
    )
        port map (
      I0 => s_axi_rready_0_sn_1,
      I1 => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_3_n_0\,
      I2 => \gen_multi_thread.active_cnt\(5),
      I3 => \gen_multi_thread.active_cnt\(4),
      I4 => \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]_0\,
      I5 => \gen_multi_thread.active_cnt\(3),
      O => \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]\
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B4D2D0B4B4B4B4"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]_0\,
      I1 => \gen_multi_thread.active_cnt\(3),
      I2 => \gen_multi_thread.active_cnt\(4),
      I3 => \gen_multi_thread.active_cnt\(5),
      I4 => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_3_n_0\,
      I5 => s_axi_rready_0_sn_1,
      O => \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]_0\
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD22222220DDDF"
    )
        port map (
      I0 => s_axi_rready_0_sn_1,
      I1 => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_3_n_0\,
      I2 => \gen_multi_thread.active_cnt\(8),
      I3 => \gen_multi_thread.active_cnt\(7),
      I4 => \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]_0\,
      I5 => \gen_multi_thread.active_cnt\(6),
      O => \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]\
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B4D2D0B4B4B4B4"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]_0\,
      I1 => \gen_multi_thread.active_cnt\(6),
      I2 => \gen_multi_thread.active_cnt\(7),
      I3 => \gen_multi_thread.active_cnt\(8),
      I4 => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_3_n_0\,
      I5 => s_axi_rready_0_sn_1,
      O => \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]_0\
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF40FD00BF40BF40"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]_0\,
      I1 => \gen_multi_thread.active_cnt\(6),
      I2 => \gen_multi_thread.active_cnt\(7),
      I3 => \gen_multi_thread.active_cnt\(8),
      I4 => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_3_n_0\,
      I5 => s_axi_rready_0_sn_1,
      O => \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]\
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_1\,
      I1 => \gen_multi_thread.gen_thread_loop[2].active_id_reg\(0),
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_11_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[2].active_id_reg\(1),
      O => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_3_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD22222220DDDF"
    )
        port map (
      I0 => s_axi_rready_0_sn_1,
      I1 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3_n_0\,
      I2 => \gen_multi_thread.active_cnt\(11),
      I3 => \gen_multi_thread.active_cnt\(10),
      I4 => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_0\,
      I5 => \gen_multi_thread.active_cnt\(9),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B4D2D0B4B4B4B4"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_0\,
      I1 => \gen_multi_thread.active_cnt\(9),
      I2 => \gen_multi_thread.active_cnt\(10),
      I3 => \gen_multi_thread.active_cnt\(11),
      I4 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3_n_0\,
      I5 => s_axi_rready_0_sn_1,
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF40FD00BF40BF40"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_0\,
      I1 => \gen_multi_thread.active_cnt\(9),
      I2 => \gen_multi_thread.active_cnt\(10),
      I3 => \gen_multi_thread.active_cnt\(11),
      I4 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3_n_0\,
      I5 => s_axi_rready_0_sn_1,
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF151515FFD5D5D5"
    )
        port map (
      I0 => Q(1),
      I1 => \^chosen_reg[1]_0\,
      I2 => st_mr_rvalid(1),
      I3 => \^chosen_reg[2]_0\,
      I4 => st_mr_rvalid(2),
      I5 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3_0\(1),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_11_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000077707770777"
    )
        port map (
      I0 => \^chosen_reg[0]_0\,
      I1 => st_mr_rvalid(0),
      I2 => st_mr_rvalid(1),
      I3 => \^chosen_reg[1]_0\,
      I4 => st_mr_rvalid(2),
      I5 => \^chosen_reg[2]_0\,
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_12_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F777"
    )
        port map (
      I0 => \^chosen_reg[1]_0\,
      I1 => st_mr_rvalid(1),
      I2 => \^chosen_reg[2]_0\,
      I3 => st_mr_rvalid(2),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_13_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^chosen_reg[2]_0\,
      I1 => st_mr_rvalid(2),
      I2 => \^chosen_reg[1]_0\,
      I3 => st_mr_rvalid(1),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_14_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F99F"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_1\,
      I1 => \gen_multi_thread.gen_thread_loop[3].active_id_reg\(0),
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_11_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[3].active_id_reg\(1),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400444404000400"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_12_n_0\,
      I1 => s_axi_rready(0),
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_13_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3_0\(0),
      I4 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_14_n_0\,
      I5 => Q(0),
      O => s_axi_rready_0_sn_1
    );
\gen_no_arbiter.s_ready_i[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_valid_i\,
      I1 => aresetn_d,
      O => aresetn_d_reg
    );
\gen_no_arbiter.s_ready_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000404444"
    )
        port map (
      I0 => \gen_no_arbiter.s_ready_i_reg[0]\,
      I1 => \gen_no_arbiter.s_ready_i[0]_i_4_n_0\,
      I2 => \gen_no_arbiter.s_ready_i_reg[0]_0\,
      I3 => \gen_no_arbiter.s_ready_i_reg[0]_1\,
      I4 => \gen_no_arbiter.s_ready_i_reg[0]_2\,
      I5 => \gen_no_arbiter.s_ready_i_reg[0]_3\,
      O => \^m_valid_i\
    );
\gen_no_arbiter.s_ready_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF08FFFFFFFF"
    )
        port map (
      I0 => s_axi_rlast(0),
      I1 => s_axi_rready(0),
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_12_n_0\,
      I3 => \gen_multi_thread.accept_cnt\(1),
      I4 => \gen_multi_thread.accept_cnt\(0),
      I5 => \gen_multi_thread.accept_cnt\(2),
      O => \gen_no_arbiter.s_ready_i[0]_i_4_n_0\
    );
\last_rr_hot[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => need_arbitration,
      I1 => \last_rr_hot[2]_i_3_n_0\,
      I2 => next_rr_hot(0),
      I3 => \last_rr_hot_reg_n_0_[0]\,
      O => \last_rr_hot[0]_i_1_n_0\
    );
\last_rr_hot[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00AA0008"
    )
        port map (
      I0 => st_mr_rvalid(0),
      I1 => \last_rr_hot_reg_n_0_[0]\,
      I2 => st_mr_rvalid(1),
      I3 => st_mr_rvalid(2),
      I4 => p_3_in,
      I5 => p_4_in,
      O => next_rr_hot(0)
    );
\last_rr_hot[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF02"
    )
        port map (
      I0 => need_arbitration,
      I1 => \last_rr_hot[2]_i_3_n_0\,
      I2 => \last_rr_hot[1]_i_2__0_n_0\,
      I3 => p_3_in,
      O => \last_rr_hot[1]_i_1_n_0\
    );
\last_rr_hot[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BABBFFFFFFFF"
    )
        port map (
      I0 => st_mr_rvalid(0),
      I1 => p_4_in,
      I2 => st_mr_rvalid(2),
      I3 => p_3_in,
      I4 => \last_rr_hot_reg_n_0_[0]\,
      I5 => st_mr_rvalid(1),
      O => \last_rr_hot[1]_i_2__0_n_0\
    );
\last_rr_hot[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => need_arbitration,
      I1 => \last_rr_hot[2]_i_3_n_0\,
      I2 => next_rr_hot(2),
      I3 => p_4_in,
      O => \last_rr_hot[2]_i_1_n_0\
    );
\last_rr_hot[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEE00000FEE"
    )
        port map (
      I0 => st_mr_rvalid(1),
      I1 => st_mr_rvalid(2),
      I2 => \^chosen_reg[0]_0\,
      I3 => st_mr_rvalid(0),
      I4 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_14_n_0\,
      I5 => s_axi_rready(0),
      O => need_arbitration
    );
\last_rr_hot[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005000500053337"
    )
        port map (
      I0 => st_mr_rvalid(0),
      I1 => \last_rr_hot_reg_n_0_[0]\,
      I2 => st_mr_rvalid(1),
      I3 => st_mr_rvalid(2),
      I4 => p_3_in,
      I5 => p_4_in,
      O => \last_rr_hot[2]_i_3_n_0\
    );
\last_rr_hot[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8A88888A88"
    )
        port map (
      I0 => st_mr_rvalid(2),
      I1 => p_3_in,
      I2 => st_mr_rvalid(1),
      I3 => p_4_in,
      I4 => st_mr_rvalid(0),
      I5 => \last_rr_hot_reg_n_0_[0]\,
      O => next_rr_hot(2)
    );
\last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[0]_i_1_n_0\,
      Q => \last_rr_hot_reg_n_0_[0]\,
      R => reset
    );
\last_rr_hot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[1]_i_1_n_0\,
      Q => p_3_in,
      R => reset
    );
\last_rr_hot_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \last_rr_hot[2]_i_1_n_0\,
      Q => p_4_in,
      S => reset
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EAEAEA002A2A2A"
    )
        port map (
      I0 => st_mr_rmesg(0),
      I1 => \^chosen_reg[1]_0\,
      I2 => st_mr_rvalid(1),
      I3 => \^chosen_reg[2]_0\,
      I4 => st_mr_rvalid(2),
      I5 => st_mr_rmesg(9),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FEAEAEA00EAEAEA"
    )
        port map (
      I0 => st_mr_rmesg(4),
      I1 => st_mr_rvalid(2),
      I2 => \^chosen_reg[2]_0\,
      I3 => st_mr_rvalid(1),
      I4 => \^chosen_reg[1]_0\,
      I5 => st_mr_rmesg(13),
      O => s_axi_rdata(4)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EAEAEA002A2A2A"
    )
        port map (
      I0 => st_mr_rmesg(5),
      I1 => \^chosen_reg[1]_0\,
      I2 => st_mr_rvalid(1),
      I3 => \^chosen_reg[2]_0\,
      I4 => st_mr_rvalid(2),
      I5 => st_mr_rmesg(14),
      O => s_axi_rdata(5)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EAEAEA002A2A2A"
    )
        port map (
      I0 => st_mr_rmesg(1),
      I1 => \^chosen_reg[1]_0\,
      I2 => st_mr_rvalid(1),
      I3 => \^chosen_reg[2]_0\,
      I4 => st_mr_rvalid(2),
      I5 => st_mr_rmesg(10),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EAEAEA002A2A2A"
    )
        port map (
      I0 => st_mr_rmesg(6),
      I1 => \^chosen_reg[1]_0\,
      I2 => st_mr_rvalid(1),
      I3 => \^chosen_reg[2]_0\,
      I4 => st_mr_rvalid(2),
      I5 => st_mr_rmesg(15),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FEAEAEA00EAEAEA"
    )
        port map (
      I0 => st_mr_rmesg(7),
      I1 => st_mr_rvalid(2),
      I2 => \^chosen_reg[2]_0\,
      I3 => st_mr_rvalid(1),
      I4 => \^chosen_reg[1]_0\,
      I5 => st_mr_rmesg(16),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FEAEAEA00EAEAEA"
    )
        port map (
      I0 => st_mr_rmesg(8),
      I1 => st_mr_rvalid(2),
      I2 => \^chosen_reg[2]_0\,
      I3 => st_mr_rvalid(1),
      I4 => \^chosen_reg[1]_0\,
      I5 => st_mr_rmesg(17),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FEAEAEA00EAEAEA"
    )
        port map (
      I0 => st_mr_rmesg(2),
      I1 => st_mr_rvalid(2),
      I2 => \^chosen_reg[2]_0\,
      I3 => st_mr_rvalid(1),
      I4 => \^chosen_reg[1]_0\,
      I5 => st_mr_rmesg(11),
      O => s_axi_rdata(2)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EAEAEA002A2A2A"
    )
        port map (
      I0 => st_mr_rmesg(3),
      I1 => \^chosen_reg[1]_0\,
      I2 => st_mr_rvalid(1),
      I3 => \^chosen_reg[2]_0\,
      I4 => st_mr_rvalid(2),
      I5 => st_mr_rmesg(12),
      O => s_axi_rdata(3)
    );
\s_axi_rvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^chosen_reg[2]_0\,
      I1 => st_mr_rvalid(2),
      I2 => \^chosen_reg[1]_0\,
      I3 => st_mr_rvalid(1),
      I4 => st_mr_rvalid(0),
      I5 => \^chosen_reg[0]_0\,
      O => s_axi_rvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_crossbar_v2_1_28_decerr_slave is
  port (
    mi_bvalid_2 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.s_axi_bvalid_i_reg_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_crossbar_v2_1_28_decerr_slave : entity is "axi_crossbar_v2_1_28_decerr_slave";
end axi_crossbar_0_axi_crossbar_v2_1_28_decerr_slave;

architecture STRUCTURE of axi_crossbar_0_axi_crossbar_v2_1_28_decerr_slave is
  signal \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[0]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[1]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[2]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_onehot_gen_axi.write_cs_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \^q\(1),
      Q => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      S => reset
    );
\FSM_onehot_gen_axi.write_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      Q => \^q\(0),
      R => reset
    );
\FSM_onehot_gen_axi.write_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \^q\(0),
      Q => \^q\(1),
      R => reset
    );
\gen_axi.s_axi_bvalid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => \gen_axi.s_axi_bvalid_i_reg_0\,
      Q => mi_bvalid_2,
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_crossbar_v2_1_28_splitter is
  port (
    \m_ready_d_reg[0]_0\ : out STD_LOGIC;
    \m_ready_d_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid_0_sp_1 : out STD_LOGIC;
    \s_axi_awvalid[0]_0\ : out STD_LOGIC;
    \m_ready_d_reg[1]_1\ : out STD_LOGIC;
    ss_aa_awready : in STD_LOGIC;
    ss_wr_awready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_crossbar_v2_1_28_splitter : entity is "axi_crossbar_v2_1_28_splitter";
end axi_crossbar_0_axi_crossbar_v2_1_28_splitter;

architecture STRUCTURE of axi_crossbar_0_axi_crossbar_v2_1_28_splitter is
  signal m_ready_d : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \^m_ready_d_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_awvalid_0_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[1]_i_3\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[0]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \s_axi_awready[0]_INST_0\ : label is "soft_lutpair77";
begin
  \m_ready_d_reg[1]_0\(0) <= \^m_ready_d_reg[1]_0\(0);
  s_axi_awvalid_0_sp_1 <= s_axi_awvalid_0_sn_1;
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^m_ready_d_reg[1]_0\(0),
      I2 => ss_wr_awready,
      O => \s_axi_awvalid[0]_0\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => m_ready_d(0),
      I2 => ss_aa_awready,
      O => s_axi_awvalid_0_sn_1
    );
\gen_rep[0].fifoaddr[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^m_ready_d_reg[1]_0\(0),
      I1 => s_axi_awvalid(0),
      O => \m_ready_d_reg[1]_1\
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C8C0"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => m_ready_d(0),
      I3 => ss_aa_awready,
      I4 => \^m_ready_d_reg[1]_0\(0),
      I5 => ss_wr_awready,
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0008000C0000"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => m_ready_d(0),
      I3 => ss_aa_awready,
      I4 => \^m_ready_d_reg[1]_0\(0),
      I5 => ss_wr_awready,
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => m_ready_d(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d_reg[1]_0\(0),
      R => '0'
    );
\s_axi_awready[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => m_ready_d(0),
      I1 => ss_aa_awready,
      I2 => \^m_ready_d_reg[1]_0\(0),
      I3 => ss_wr_awready,
      O => \m_ready_d_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_crossbar_v2_1_28_splitter_3 is
  port (
    \m_ready_d_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_no_arbiter.m_valid_i_reg_inv\ : out STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aa_mi_awtarget_hot : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_1_in : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_reg_inv_0\ : in STD_LOGIC;
    \m_ready_d_reg[1]_1\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_crossbar_v2_1_28_splitter_3 : entity is "axi_crossbar_v2_1_28_splitter";
end axi_crossbar_0_axi_crossbar_v2_1_28_splitter_3;

architecture STRUCTURE of axi_crossbar_0_axi_crossbar_v2_1_28_splitter_3 is
  signal m_ready_d : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[0]_i_2_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_2_n_0\ : STD_LOGIC;
  signal \^m_ready_d_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_valid_i_inv_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_ready_d[1]_i_2\ : label is "soft_lutpair83";
begin
  \m_ready_d_reg[1]_0\(0) <= \^m_ready_d_reg[1]_0\(0);
\gen_no_arbiter.m_valid_i_inv_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => \m_ready_d[0]_i_2_n_0\,
      I1 => p_1_in,
      I2 => \gen_no_arbiter.m_valid_i_reg_inv_0\,
      O => \gen_no_arbiter.m_valid_i_reg_inv\
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DDDC0000"
    )
        port map (
      I0 => p_1_in,
      I1 => m_ready_d(0),
      I2 => aa_mi_awtarget_hot(1),
      I3 => aa_mi_awtarget_hot(0),
      I4 => aresetn_d,
      I5 => \m_ready_d[0]_i_2_n_0\,
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFEEEFCCCFC00"
    )
        port map (
      I0 => m_axi_awready(1),
      I1 => \^m_ready_d_reg[1]_0\(0),
      I2 => m_axi_awready(0),
      I3 => aa_mi_awtarget_hot(0),
      I4 => m_ready_d(0),
      I5 => aa_mi_awtarget_hot(1),
      O => \m_ready_d[0]_i_2_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEEFEEE"
    )
        port map (
      I0 => \^m_ready_d_reg[1]_0\(0),
      I1 => \m_ready_d_reg[1]_1\,
      I2 => m_axi_awready(1),
      I3 => aa_mi_awtarget_hot(1),
      I4 => p_1_in,
      I5 => \m_ready_d[1]_i_2_n_0\,
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \m_ready_d[0]_i_2_n_0\,
      I1 => aresetn_d,
      O => \m_ready_d[1]_i_2_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => m_ready_d(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d_reg[1]_0\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_crossbar_0_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0\ is
  port (
    storage_data2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    push : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifoaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_crossbar_0_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0\ : entity is "axi_data_fifo_v2_1_26_ndeep_srl";
end \axi_crossbar_0_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0\;

architecture STRUCTURE of \axi_crossbar_0_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0\ is
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => fifoaddr(1 downto 0),
      CE => push,
      CLK => aclk,
      D => s_axi_awaddr(0),
      Q => storage_data2(0),
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_crossbar_0_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0_4\ is
  port (
    storage_data2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    push : out STD_LOGIC;
    m_axi_wready_1_sp_1 : out STD_LOGIC;
    fifoaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_primitive_shifter.gen_srls[0].srl_inst_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_primitive_shifter.gen_srls[0].srl_inst_1\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    storage_data1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_crossbar_0_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0_4\ : entity is "axi_data_fifo_v2_1_26_ndeep_srl";
end \axi_crossbar_0_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0_4\;

architecture STRUCTURE of \axi_crossbar_0_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0_4\ is
  signal \gen_primitive_shifter.gen_srls[0].srl_inst_i_3_n_0\ : STD_LOGIC;
  signal m_axi_wready_1_sn_1 : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
  m_axi_wready_1_sp_1 <= m_axi_wready_1_sn_1;
  push <= \^push\;
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => fifoaddr(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => '0',
      Q => storage_data2(0),
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0008000800080"
    )
        port map (
      I0 => m_axi_wready_1_sn_1,
      I1 => Q(1),
      I2 => s_axi_awvalid(0),
      I3 => \gen_primitive_shifter.gen_srls[0].srl_inst_0\(0),
      I4 => \gen_primitive_shifter.gen_srls[0].srl_inst_1\,
      I5 => Q(0),
      O => \^push\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4F7FFFFFFFF"
    )
        port map (
      I0 => m_axi_wready(1),
      I1 => storage_data1(0),
      I2 => storage_data1(1),
      I3 => m_axi_wready(0),
      I4 => \gen_primitive_shifter.gen_srls[0].srl_inst_i_3_n_0\,
      I5 => s_axi_wlast(0),
      O => m_axi_wready_1_sn_1
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => m_avalid,
      O => \gen_primitive_shifter.gen_srls[0].srl_inst_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    mi_bready_2 : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    m_valid_i_reg_2 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    mi_bvalid_2 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1\ : entity is "axi_register_slice_v2_1_27_axic_register_slice";
end \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1\;

architecture STRUCTURE of \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1\ is
  signal m_valid_i_i_2_n_0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \^mi_bready_2\ : STD_LOGIC;
  signal \s_ready_i_i_1__5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_10\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \s_ready_i_i_1__5\ : label is "soft_lutpair45";
begin
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  mi_bready_2 <= \^mi_bready_2\;
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      O => m_valid_i_reg_1
    );
m_valid_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA3FFF"
    )
        port map (
      I0 => mi_bvalid_2,
      I1 => s_axi_bready(0),
      I2 => chosen(0),
      I3 => \^m_valid_i_reg_0\,
      I4 => \^mi_bready_2\,
      O => m_valid_i_i_2_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_i_2_n_0,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_2
    );
\s_ready_i_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B111FFFF"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => mi_bvalid_2,
      I2 => s_axi_bready(0),
      I3 => chosen(0),
      I4 => s_ready_i_reg_1,
      O => \s_ready_i_i_1__5_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__5_n_0\,
      Q => \^mi_bready_2\,
      R => s_ready_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1_6\ is
  port (
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[0]_0\ : out STD_LOGIC;
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    m_valid_i_reg_inv_0 : out STD_LOGIC;
    \aresetn_d_reg[1]_1\ : out STD_LOGIC;
    \gen_master_slots[1].w_issuing_cnt_reg[10]\ : out STD_LOGIC;
    m_valid_i_reg_inv_1 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_payload_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i_reg_inv_2 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_master_slots[1].w_issuing_cnt_reg[8]\ : in STD_LOGIC;
    \s_axi_bid[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    st_mr_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1_6\ : entity is "axi_register_slice_v2_1_27_axic_register_slice";
end \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1_6\;

architecture STRUCTURE of \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1_6\ is
  signal \aresetn_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \^aresetn_d_reg[0]_0\ : STD_LOGIC;
  signal \^aresetn_d_reg[1]_0\ : STD_LOGIC;
  signal \^aresetn_d_reg[1]_1\ : STD_LOGIC;
  signal \aresetn_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_payload_i_reg[3]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_valid_i_inv_i_1__0_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_inv_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_inv_1\ : STD_LOGIC;
  signal \s_ready_i_i_2__0_n_0\ : STD_LOGIC;
  signal st_mr_bmesg : STD_LOGIC_VECTOR ( 4 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_master_slots[1].w_issuing_cnt[10]_i_3\ : label is "soft_lutpair25";
  attribute inverted : string;
  attribute inverted of m_valid_i_reg_inv : label is "yes";
  attribute SOFT_HLUTNM of \s_ready_i_i_2__0\ : label is "soft_lutpair25";
begin
  \aresetn_d_reg[0]_0\ <= \^aresetn_d_reg[0]_0\;
  \aresetn_d_reg[1]_0\ <= \^aresetn_d_reg[1]_0\;
  \aresetn_d_reg[1]_1\ <= \^aresetn_d_reg[1]_1\;
  m_axi_bready(0) <= \^m_axi_bready\(0);
  \m_payload_i_reg[3]_0\(1 downto 0) <= \^m_payload_i_reg[3]_0\(1 downto 0);
  m_valid_i_reg_inv_0 <= \^m_valid_i_reg_inv_0\;
  m_valid_i_reg_inv_1 <= \^m_valid_i_reg_inv_1\;
\aresetn_d[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      I1 => aresetn,
      O => \aresetn_d[1]_i_1_n_0\
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => \aresetn_d_reg_n_0_[0]\,
      R => '0'
    );
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d[1]_i_1_n_0\,
      Q => \^aresetn_d_reg[1]_0\,
      R => '0'
    );
\gen_master_slots[1].w_issuing_cnt[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^m_valid_i_reg_inv_0\,
      I1 => chosen_0(0),
      O => \^m_valid_i_reg_inv_1\
    );
\gen_master_slots[1].w_issuing_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0000FFF0FFFE000"
    )
        port map (
      I0 => w_issuing_cnt(2),
      I1 => w_issuing_cnt(1),
      I2 => s_axi_bready(0),
      I3 => \^m_valid_i_reg_inv_1\,
      I4 => \gen_master_slots[1].w_issuing_cnt_reg[8]\,
      I5 => w_issuing_cnt(0),
      O => \gen_master_slots[1].w_issuing_cnt_reg[10]\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000BF00"
    )
        port map (
      I0 => \^m_valid_i_reg_inv_0\,
      I1 => chosen_0(0),
      I2 => s_axi_bready(0),
      I3 => w_issuing_cnt(2),
      I4 => w_issuing_cnt(1),
      I5 => w_issuing_cnt(0),
      O => m_valid_i_reg_inv_2
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_valid_i_reg_inv_0\,
      D => D(0),
      Q => st_mr_bmesg(3),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_valid_i_reg_inv_0\,
      D => D(1),
      Q => st_mr_bmesg(4),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_valid_i_reg_inv_0\,
      D => D(2),
      Q => \^m_payload_i_reg[3]_0\(0),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_valid_i_reg_inv_0\,
      D => D(3),
      Q => \^m_payload_i_reg[3]_0\(1),
      R => '0'
    );
\m_valid_i_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aresetn_d_reg[1]_0\,
      O => \^aresetn_d_reg[1]_1\
    );
\m_valid_i_inv_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444444"
    )
        port map (
      I0 => m_axi_bvalid(0),
      I1 => \^m_axi_bready\(0),
      I2 => \^m_valid_i_reg_inv_0\,
      I3 => chosen_0(0),
      I4 => s_axi_bready(0),
      O => \m_valid_i_inv_i_1__0_n_0\
    );
m_valid_i_reg_inv: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_inv_i_1__0_n_0\,
      Q => \^m_valid_i_reg_inv_0\,
      S => \^aresetn_d_reg[1]_1\
    );
\s_axi_bid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EFEFEF00202020"
    )
        port map (
      I0 => \^m_payload_i_reg[3]_0\(0),
      I1 => \^m_valid_i_reg_inv_0\,
      I2 => chosen_0(0),
      I3 => st_mr_bvalid(0),
      I4 => chosen_0(1),
      I5 => \s_axi_bid[1]\(2),
      O => s_axi_bid(0)
    );
\s_axi_bid[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EFEFEF00202020"
    )
        port map (
      I0 => \^m_payload_i_reg[3]_0\(1),
      I1 => \^m_valid_i_reg_inv_0\,
      I2 => chosen_0(0),
      I3 => st_mr_bvalid(0),
      I4 => chosen_0(1),
      I5 => \s_axi_bid[1]\(3),
      O => s_axi_bid(1)
    );
\s_axi_bresp[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAA0CCCFAAAFAAA"
    )
        port map (
      I0 => \s_axi_bid[1]\(0),
      I1 => st_mr_bmesg(3),
      I2 => chosen_0(1),
      I3 => st_mr_bvalid(0),
      I4 => \^m_valid_i_reg_inv_0\,
      I5 => chosen_0(0),
      O => s_axi_bresp(0)
    );
\s_axi_bresp[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAA0CCCFAAAFAAA"
    )
        port map (
      I0 => \s_axi_bid[1]\(1),
      I1 => st_mr_bmesg(4),
      I2 => chosen_0(1),
      I3 => st_mr_bvalid(0),
      I4 => \^m_valid_i_reg_inv_0\,
      I5 => chosen_0(0),
      O => s_axi_bresp(1)
    );
\s_ready_i_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      O => \^aresetn_d_reg[0]_0\
    );
\s_ready_i_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7222FFFF"
    )
        port map (
      I0 => \^m_valid_i_reg_inv_0\,
      I1 => m_axi_bvalid(0),
      I2 => s_axi_bready(0),
      I3 => chosen_0(0),
      I4 => \^aresetn_d_reg[1]_0\,
      O => \s_ready_i_i_2__0_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_2__0_n_0\,
      Q => \^m_axi_bready\(0),
      R => \^aresetn_d_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1_8\ is
  port (
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_awaddr[31]\ : out STD_LOGIC;
    \m_payload_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_ready_i_reg_0 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_valid_i_reg_inv_0 : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_1 : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_no_arbiter.m_target_hot_i[1]_i_2\ : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1_8\ : entity is "axi_register_slice_v2_1_27_axic_register_slice";
end \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1_8\;

architecture STRUCTURE of \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1_8\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_no_arbiter.m_target_hot_i[1]_i_9_n_0\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_valid_i_inv_i_1_n_0 : STD_LOGIC;
  signal \s_ready_i_i_1__4_n_0\ : STD_LOGIC;
  attribute inverted : string;
  attribute inverted of m_valid_i_reg_inv : label is "yes";
begin
  E(0) <= \^e\(0);
  m_axi_bready(0) <= \^m_axi_bready\(0);
\gen_no_arbiter.m_target_hot_i[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000BF00"
    )
        port map (
      I0 => \^e\(0),
      I1 => chosen(0),
      I2 => s_axi_bready(0),
      I3 => w_issuing_cnt(2),
      I4 => w_issuing_cnt(1),
      I5 => w_issuing_cnt(0),
      O => \gen_no_arbiter.m_target_hot_i[1]_i_9_n_0\
    );
\gen_no_arbiter.m_target_hot_i_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gen_no_arbiter.m_target_hot_i[1]_i_9_n_0\,
      I1 => \gen_no_arbiter.m_target_hot_i[1]_i_2\,
      O => \s_axi_awaddr[31]\,
      S => s_axi_awaddr(0)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(0),
      Q => \m_payload_i_reg[3]_0\(0),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(1),
      Q => \m_payload_i_reg[3]_0\(1),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(2),
      Q => \m_payload_i_reg[3]_0\(2),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => D(3),
      Q => \m_payload_i_reg[3]_0\(3),
      R => '0'
    );
m_valid_i_inv_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444444"
    )
        port map (
      I0 => m_axi_bvalid(0),
      I1 => \^m_axi_bready\(0),
      I2 => \^e\(0),
      I3 => chosen(0),
      I4 => s_axi_bready(0),
      O => m_valid_i_inv_i_1_n_0
    );
m_valid_i_reg_inv: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_inv_i_1_n_0,
      Q => \^e\(0),
      S => m_valid_i_reg_inv_0
    );
\s_ready_i_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7222FFFF"
    )
        port map (
      I0 => \^e\(0),
      I1 => m_axi_bvalid(0),
      I2 => s_axi_bready(0),
      I3 => chosen(0),
      I4 => s_ready_i_reg_1,
      O => \s_ready_i_i_1__4_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__4_n_0\,
      Q => \^m_axi_bready\(0),
      R => s_ready_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    chosen_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2\ : entity is "axi_register_slice_v2_1_27_axic_register_slice";
end \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2\;

architecture STRUCTURE of \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2\ is
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mi_rready_2 : STD_LOGIC;
  signal s_ready_i0 : STD_LOGIC;
begin
  m_valid_i_reg_0(0) <= \^m_valid_i_reg_0\(0);
\m_valid_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F55"
    )
        port map (
      I0 => mi_rready_2,
      I1 => chosen_0(0),
      I2 => s_axi_rready(0),
      I3 => \^m_valid_i_reg_0\(0),
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\(0),
      R => m_valid_i_reg_1
    );
\s_ready_i_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAFF"
    )
        port map (
      I0 => mi_rready_2,
      I1 => chosen_0(0),
      I2 => s_axi_rready(0),
      I3 => \^m_valid_i_reg_0\(0),
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => mi_rready_2,
      R => s_ready_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2_7\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    \m_payload_i_reg[35]_0\ : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[9]\ : out STD_LOGIC;
    s_axi_rready_0_sp_1 : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[9]_0\ : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[9]_1\ : out STD_LOGIC;
    \m_payload_i_reg[36]_0\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 22 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 27 downto 0 );
    chosen : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi_rlast[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_master_slots[1].r_issuing_cnt_reg[8]\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2_7\ : entity is "axi_register_slice_v2_1_27_axic_register_slice";
end \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2_7\;

architecture STRUCTURE of \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2_7\ is
  signal \m_payload_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[17]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[26]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[27]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[28]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[29]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[33]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[34]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[35]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[36]_i_2__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[36]_0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal s_axi_rready_0_sn_1 : STD_LOGIC;
  signal s_ready_i0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal st_mr_rid : STD_LOGIC_VECTOR ( 2 to 2 );
  signal st_mr_rmesg : STD_LOGIC_VECTOR ( 69 downto 35 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_master_slots[1].r_issuing_cnt[10]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_master_slots[1].r_issuing_cnt[8]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_2__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1__0\ : label is "soft_lutpair40";
begin
  \m_payload_i_reg[36]_0\(10 downto 0) <= \^m_payload_i_reg[36]_0\(10 downto 0);
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_axi_rready_0_sp_1 <= s_axi_rready_0_sn_1;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\gen_master_slots[1].r_issuing_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE00"
    )
        port map (
      I0 => s_axi_rready_0_sn_1,
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(0),
      I3 => r_issuing_cnt(2),
      I4 => \gen_master_slots[1].r_issuing_cnt_reg[8]\,
      O => \gen_master_slots[1].r_issuing_cnt_reg[9]_0\
    );
\gen_master_slots[1].r_issuing_cnt[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axi_rready(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => chosen(0),
      I3 => \^m_payload_i_reg[36]_0\(9),
      O => s_axi_rready_0_sn_1
    );
\gen_master_slots[1].r_issuing_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A5AA5A4"
    )
        port map (
      I0 => s_axi_rready_0_sn_1,
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(0),
      I3 => r_issuing_cnt(2),
      I4 => \gen_master_slots[1].r_issuing_cnt_reg[8]\,
      O => \gen_master_slots[1].r_issuing_cnt_reg[9]\
    );
\gen_master_slots[1].r_issuing_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6C6CC9C8"
    )
        port map (
      I0 => s_axi_rready_0_sn_1,
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(0),
      I3 => r_issuing_cnt(2),
      I4 => \gen_master_slots[1].r_issuing_cnt_reg[8]\,
      O => \gen_master_slots[1].r_issuing_cnt_reg[9]_1\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF151515FFD5D5D5"
    )
        port map (
      I0 => Q(26),
      I1 => \^m_valid_i_reg_0\,
      I2 => chosen(0),
      I3 => \s_axi_rlast[0]\(0),
      I4 => chosen(1),
      I5 => st_mr_rid(2),
      O => \m_payload_i_reg[35]_0\
    );
\m_payload_i[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => \m_payload_i[0]_i_1__0_n_0\
    );
\m_payload_i[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => \m_payload_i[10]_i_1__0_n_0\
    );
\m_payload_i[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => \m_payload_i[11]_i_1__0_n_0\
    );
\m_payload_i[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => \m_payload_i[12]_i_1__0_n_0\
    );
\m_payload_i[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => \m_payload_i[13]_i_1__0_n_0\
    );
\m_payload_i[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => \m_payload_i[14]_i_1__0_n_0\
    );
\m_payload_i[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => \m_payload_i[15]_i_1__0_n_0\
    );
\m_payload_i[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => \m_payload_i[16]_i_1__0_n_0\
    );
\m_payload_i[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => \m_payload_i[17]_i_1__0_n_0\
    );
\m_payload_i[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => \m_payload_i[18]_i_1__0_n_0\
    );
\m_payload_i[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => \m_payload_i[19]_i_1__0_n_0\
    );
\m_payload_i[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => \m_payload_i[1]_i_1__0_n_0\
    );
\m_payload_i[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => \m_payload_i[20]_i_1__0_n_0\
    );
\m_payload_i[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => \m_payload_i[21]_i_1__0_n_0\
    );
\m_payload_i[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => \m_payload_i[22]_i_1__0_n_0\
    );
\m_payload_i[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => \m_payload_i[23]_i_1__0_n_0\
    );
\m_payload_i[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => \m_payload_i[24]_i_1__0_n_0\
    );
\m_payload_i[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => \m_payload_i[25]_i_1__0_n_0\
    );
\m_payload_i[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => \m_payload_i[26]_i_1__0_n_0\
    );
\m_payload_i[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => \m_payload_i[27]_i_1__0_n_0\
    );
\m_payload_i[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => \m_payload_i[28]_i_1__0_n_0\
    );
\m_payload_i[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => \m_payload_i[29]_i_1__0_n_0\
    );
\m_payload_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => \m_payload_i[2]_i_1__0_n_0\
    );
\m_payload_i[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => \m_payload_i[30]_i_1__0_n_0\
    );
\m_payload_i[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => \m_payload_i[31]_i_1__0_n_0\
    );
\m_payload_i[32]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => \m_payload_i[32]_i_1__0_n_0\
    );
\m_payload_i[33]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => \m_payload_i[33]_i_1__0_n_0\
    );
\m_payload_i[34]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rlast(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => \m_payload_i[34]_i_1__0_n_0\
    );
\m_payload_i[35]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => \m_payload_i[35]_i_1__0_n_0\
    );
\m_payload_i[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => s_axi_rready(0),
      O => p_1_in
    );
\m_payload_i[36]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => \m_payload_i[36]_i_2__0_n_0\
    );
\m_payload_i[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => \m_payload_i[3]_i_1__0_n_0\
    );
\m_payload_i[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => \m_payload_i[4]_i_1__0_n_0\
    );
\m_payload_i[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => \m_payload_i[5]_i_1__0_n_0\
    );
\m_payload_i[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => \m_payload_i[6]_i_1__0_n_0\
    );
\m_payload_i[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => \m_payload_i[7]_i_1__0_n_0\
    );
\m_payload_i[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => \m_payload_i[8]_i_1__0_n_0\
    );
\m_payload_i[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => \m_payload_i[9]_i_1__0_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[0]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[36]_0\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[10]_i_1__0_n_0\,
      Q => st_mr_rmesg(48),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[11]_i_1__0_n_0\,
      Q => st_mr_rmesg(49),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[12]_i_1__0_n_0\,
      Q => st_mr_rmesg(50),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[13]_i_1__0_n_0\,
      Q => st_mr_rmesg(51),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[14]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[36]_0\(4),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[15]_i_1__0_n_0\,
      Q => st_mr_rmesg(53),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[16]_i_1__0_n_0\,
      Q => st_mr_rmesg(54),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[17]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[36]_0\(5),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[18]_i_1__0_n_0\,
      Q => st_mr_rmesg(56),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[19]_i_1__0_n_0\,
      Q => st_mr_rmesg(57),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[1]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[36]_0\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[20]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[36]_0\(6),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[21]_i_1__0_n_0\,
      Q => st_mr_rmesg(59),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[22]_i_1__0_n_0\,
      Q => st_mr_rmesg(60),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[23]_i_1__0_n_0\,
      Q => st_mr_rmesg(61),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[24]_i_1__0_n_0\,
      Q => st_mr_rmesg(62),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[25]_i_1__0_n_0\,
      Q => st_mr_rmesg(63),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[26]_i_1__0_n_0\,
      Q => st_mr_rmesg(64),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[27]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[36]_0\(7),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[28]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[36]_0\(8),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[29]_i_1__0_n_0\,
      Q => st_mr_rmesg(67),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[2]_i_1__0_n_0\,
      Q => st_mr_rmesg(40),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[30]_i_1__0_n_0\,
      Q => st_mr_rmesg(68),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[31]_i_1__0_n_0\,
      Q => st_mr_rmesg(69),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[32]_i_1__0_n_0\,
      Q => st_mr_rmesg(35),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[33]_i_1__0_n_0\,
      Q => st_mr_rmesg(36),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[34]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[36]_0\(9),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[35]_i_1__0_n_0\,
      Q => st_mr_rid(2),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[36]_i_2__0_n_0\,
      Q => \^m_payload_i_reg[36]_0\(10),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[3]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[36]_0\(2),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[4]_i_1__0_n_0\,
      Q => st_mr_rmesg(42),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[5]_i_1__0_n_0\,
      Q => st_mr_rmesg(43),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[6]_i_1__0_n_0\,
      Q => st_mr_rmesg(44),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[7]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[36]_0\(3),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[8]_i_1__0_n_0\,
      Q => st_mr_rmesg(46),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[9]_i_1__0_n_0\,
      Q => st_mr_rmesg(47),
      R => '0'
    );
m_valid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2AFFFF"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen(0),
      I2 => s_axi_rready(0),
      I3 => m_axi_rvalid(0),
      I4 => \^s_ready_i_reg_0\,
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FEAEAEA3F2A2A2A"
    )
        port map (
      I0 => Q(6),
      I1 => \^m_valid_i_reg_0\,
      I2 => chosen(0),
      I3 => \s_axi_rlast[0]\(0),
      I4 => chosen(1),
      I5 => st_mr_rmesg(48),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FEAEAEA3F2A2A2A"
    )
        port map (
      I0 => Q(7),
      I1 => \^m_valid_i_reg_0\,
      I2 => chosen(0),
      I3 => \s_axi_rlast[0]\(0),
      I4 => chosen(1),
      I5 => st_mr_rmesg(49),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AFFFFFF2AC0C0C0"
    )
        port map (
      I0 => st_mr_rmesg(50),
      I1 => \s_axi_rlast[0]\(0),
      I2 => chosen(1),
      I3 => \^m_valid_i_reg_0\,
      I4 => chosen(0),
      I5 => Q(8),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A3F3F3F2A000000"
    )
        port map (
      I0 => st_mr_rmesg(51),
      I1 => chosen(1),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => Q(9),
      O => s_axi_rdata(9)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCCFAAAFAAAFAAA"
    )
        port map (
      I0 => Q(10),
      I1 => st_mr_rmesg(53),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(1),
      I4 => \^m_valid_i_reg_0\,
      I5 => chosen(0),
      O => s_axi_rdata(10)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A3F3F3F2A000000"
    )
        port map (
      I0 => st_mr_rmesg(54),
      I1 => chosen(1),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => Q(11),
      O => s_axi_rdata(11)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A3F3F3F2A000000"
    )
        port map (
      I0 => st_mr_rmesg(56),
      I1 => chosen(1),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => Q(12),
      O => s_axi_rdata(12)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A3F3F3F2A000000"
    )
        port map (
      I0 => st_mr_rmesg(57),
      I1 => chosen(1),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => Q(13),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A3F3F3F2A000000"
    )
        port map (
      I0 => st_mr_rmesg(59),
      I1 => chosen(1),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => Q(14),
      O => s_axi_rdata(14)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCCFAAAFAAAFAAA"
    )
        port map (
      I0 => Q(15),
      I1 => st_mr_rmesg(60),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(1),
      I4 => \^m_valid_i_reg_0\,
      I5 => chosen(0),
      O => s_axi_rdata(15)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AFFFFFF2AC0C0C0"
    )
        port map (
      I0 => st_mr_rmesg(61),
      I1 => \s_axi_rlast[0]\(0),
      I2 => chosen(1),
      I3 => \^m_valid_i_reg_0\,
      I4 => chosen(0),
      I5 => Q(16),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A3F3F3F2A000000"
    )
        port map (
      I0 => st_mr_rmesg(62),
      I1 => chosen(1),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => Q(17),
      O => s_axi_rdata(17)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCCFAAAFAAAFAAA"
    )
        port map (
      I0 => Q(18),
      I1 => st_mr_rmesg(63),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(1),
      I4 => \^m_valid_i_reg_0\,
      I5 => chosen(0),
      O => s_axi_rdata(18)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFACCCACCCACCC"
    )
        port map (
      I0 => st_mr_rmesg(64),
      I1 => Q(19),
      I2 => \^m_valid_i_reg_0\,
      I3 => chosen(0),
      I4 => \s_axi_rlast[0]\(0),
      I5 => chosen(1),
      O => s_axi_rdata(19)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A3F3F3F2A000000"
    )
        port map (
      I0 => st_mr_rmesg(67),
      I1 => chosen(1),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => Q(20),
      O => s_axi_rdata(20)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AFFFFFF2AC0C0C0"
    )
        port map (
      I0 => st_mr_rmesg(40),
      I1 => \s_axi_rlast[0]\(0),
      I2 => chosen(1),
      I3 => \^m_valid_i_reg_0\,
      I4 => chosen(0),
      I5 => Q(0),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCCFAAAFAAAFAAA"
    )
        port map (
      I0 => Q(21),
      I1 => st_mr_rmesg(68),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(1),
      I4 => \^m_valid_i_reg_0\,
      I5 => chosen(0),
      O => s_axi_rdata(21)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AFFFFFF2AC0C0C0"
    )
        port map (
      I0 => st_mr_rmesg(69),
      I1 => \s_axi_rlast[0]\(0),
      I2 => chosen(1),
      I3 => \^m_valid_i_reg_0\,
      I4 => chosen(0),
      I5 => Q(22),
      O => s_axi_rdata(22)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AFFFFFF2AC0C0C0"
    )
        port map (
      I0 => st_mr_rmesg(42),
      I1 => \s_axi_rlast[0]\(0),
      I2 => chosen(1),
      I3 => \^m_valid_i_reg_0\,
      I4 => chosen(0),
      I5 => Q(1),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A3F3F3F2A000000"
    )
        port map (
      I0 => st_mr_rmesg(43),
      I1 => chosen(1),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => Q(2),
      O => s_axi_rdata(2)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A3F3F3F2A000000"
    )
        port map (
      I0 => st_mr_rmesg(44),
      I1 => chosen(1),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => Q(3),
      O => s_axi_rdata(3)
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A3F3F3F2A000000"
    )
        port map (
      I0 => st_mr_rmesg(46),
      I1 => chosen(1),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => Q(4),
      O => s_axi_rdata(4)
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCCFAAAFAAAFAAA"
    )
        port map (
      I0 => Q(5),
      I1 => st_mr_rmesg(47),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(1),
      I4 => \^m_valid_i_reg_0\,
      I5 => chosen(0),
      O => s_axi_rdata(5)
    );
\s_axi_rid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A3F3F3F2A000000"
    )
        port map (
      I0 => st_mr_rid(2),
      I1 => chosen(1),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => Q(26),
      O => s_axi_rid(0)
    );
\s_axi_rid[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A3F3F3F2A000000"
    )
        port map (
      I0 => \^m_payload_i_reg[36]_0\(10),
      I1 => \s_axi_rlast[0]\(0),
      I2 => chosen(1),
      I3 => \^m_valid_i_reg_0\,
      I4 => chosen(0),
      I5 => Q(27),
      O => s_axi_rid(1)
    );
\s_axi_rlast[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A3F3F3F2A000000"
    )
        port map (
      I0 => \^m_payload_i_reg[36]_0\(9),
      I1 => chosen(1),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(0),
      I4 => \^m_valid_i_reg_0\,
      I5 => Q(25),
      O => s_axi_rlast(0)
    );
\s_axi_rresp[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCCFAAAFAAAFAAA"
    )
        port map (
      I0 => Q(23),
      I1 => st_mr_rmesg(35),
      I2 => \s_axi_rlast[0]\(0),
      I3 => chosen(1),
      I4 => \^m_valid_i_reg_0\,
      I5 => chosen(0),
      O => s_axi_rresp(0)
    );
\s_axi_rresp[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AFFFFFF2AC0C0C0"
    )
        port map (
      I0 => st_mr_rmesg(36),
      I1 => \s_axi_rlast[0]\(0),
      I2 => chosen(1),
      I3 => \^m_valid_i_reg_0\,
      I4 => chosen(0),
      I5 => Q(24),
      O => s_axi_rresp(1)
    );
s_ready_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4F4F"
    )
        port map (
      I0 => m_axi_rvalid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \^m_valid_i_reg_0\,
      I3 => chosen(0),
      I4 => s_axi_rready(0),
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => \^s_ready_i_reg_0\,
      R => s_ready_i_reg_1
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(0),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(1),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rlast(0),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(1),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2_9\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[1]\ : out STD_LOGIC;
    s_axi_rready_0_sp_1 : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[1]_0\ : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[1]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 36 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[0]\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2_9\ : entity is "axi_register_slice_v2_1_27_axic_register_slice";
end \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2_9\;

architecture STRUCTURE of \axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2_9\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal s_axi_rready_0_sn_1 : STD_LOGIC;
  signal s_ready_i0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_master_slots[0].r_issuing_cnt[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_master_slots[0].r_issuing_cnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1\ : label is "soft_lutpair20";
begin
  Q(36 downto 0) <= \^q\(36 downto 0);
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_axi_rready_0_sp_1 <= s_axi_rready_0_sn_1;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\gen_master_slots[0].r_issuing_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A5AA5A4"
    )
        port map (
      I0 => s_axi_rready_0_sn_1,
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(0),
      I3 => r_issuing_cnt(2),
      I4 => \gen_master_slots[0].r_issuing_cnt_reg[0]\,
      O => \gen_master_slots[0].r_issuing_cnt_reg[1]\
    );
\gen_master_slots[0].r_issuing_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6C6CC9C8"
    )
        port map (
      I0 => s_axi_rready_0_sn_1,
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(0),
      I3 => r_issuing_cnt(2),
      I4 => \gen_master_slots[0].r_issuing_cnt_reg[0]\,
      O => \gen_master_slots[0].r_issuing_cnt_reg[1]_1\
    );
\gen_master_slots[0].r_issuing_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE00"
    )
        port map (
      I0 => s_axi_rready_0_sn_1,
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(0),
      I3 => r_issuing_cnt(2),
      I4 => \gen_master_slots[0].r_issuing_cnt_reg[0]\,
      O => \gen_master_slots[0].r_issuing_cnt_reg[1]_0\
    );
\gen_master_slots[0].r_issuing_cnt[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axi_rready(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => chosen_0(0),
      I3 => \^q\(34),
      O => s_axi_rready_0_sn_1
    );
\m_payload_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => skid_buffer(0)
    );
\m_payload_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => skid_buffer(10)
    );
\m_payload_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => skid_buffer(11)
    );
\m_payload_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => skid_buffer(12)
    );
\m_payload_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => skid_buffer(13)
    );
\m_payload_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => skid_buffer(14)
    );
\m_payload_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => skid_buffer(15)
    );
\m_payload_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => skid_buffer(16)
    );
\m_payload_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => skid_buffer(17)
    );
\m_payload_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => skid_buffer(18)
    );
\m_payload_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => skid_buffer(19)
    );
\m_payload_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => skid_buffer(1)
    );
\m_payload_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => skid_buffer(20)
    );
\m_payload_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => skid_buffer(21)
    );
\m_payload_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => skid_buffer(22)
    );
\m_payload_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => skid_buffer(23)
    );
\m_payload_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => skid_buffer(24)
    );
\m_payload_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => skid_buffer(25)
    );
\m_payload_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => skid_buffer(26)
    );
\m_payload_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => skid_buffer(27)
    );
\m_payload_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => skid_buffer(28)
    );
\m_payload_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => skid_buffer(29)
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => skid_buffer(2)
    );
\m_payload_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => skid_buffer(30)
    );
\m_payload_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => skid_buffer(31)
    );
\m_payload_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => skid_buffer(32)
    );
\m_payload_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => skid_buffer(33)
    );
\m_payload_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rlast(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => skid_buffer(34)
    );
\m_payload_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => skid_buffer(35)
    );
\m_payload_i[36]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen_0(0),
      I2 => s_axi_rready(0),
      O => p_1_in
    );
\m_payload_i[36]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => skid_buffer(36)
    );
\m_payload_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => skid_buffer(3)
    );
\m_payload_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => skid_buffer(4)
    );
\m_payload_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => skid_buffer(5)
    );
\m_payload_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => skid_buffer(6)
    );
\m_payload_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => skid_buffer(7)
    );
\m_payload_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => skid_buffer(8)
    );
\m_payload_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => skid_buffer(9)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(0),
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(10),
      Q => \^q\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(11),
      Q => \^q\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(12),
      Q => \^q\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(13),
      Q => \^q\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(14),
      Q => \^q\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(15),
      Q => \^q\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(16),
      Q => \^q\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(17),
      Q => \^q\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(18),
      Q => \^q\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(19),
      Q => \^q\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(1),
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(20),
      Q => \^q\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(21),
      Q => \^q\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(22),
      Q => \^q\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(23),
      Q => \^q\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(24),
      Q => \^q\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(25),
      Q => \^q\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(26),
      Q => \^q\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(27),
      Q => \^q\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(28),
      Q => \^q\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(29),
      Q => \^q\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(2),
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(30),
      Q => \^q\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(31),
      Q => \^q\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(32),
      Q => \^q\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(33),
      Q => \^q\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(34),
      Q => \^q\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(35),
      Q => \^q\(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(36),
      Q => \^q\(36),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(3),
      Q => \^q\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(4),
      Q => \^q\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(5),
      Q => \^q\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(6),
      Q => \^q\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(7),
      Q => \^q\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(8),
      Q => \^q\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => skid_buffer(9),
      Q => \^q\(9),
      R => '0'
    );
\m_valid_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2AFFFF"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => chosen_0(0),
      I2 => s_axi_rready(0),
      I3 => m_axi_rvalid(0),
      I4 => \^s_ready_i_reg_0\,
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
\s_ready_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4F4F"
    )
        port map (
      I0 => m_axi_rvalid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \^m_valid_i_reg_0\,
      I3 => chosen_0(0),
      I4 => s_axi_rready(0),
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => \^s_ready_i_reg_0\,
      R => s_ready_i_reg_1
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(0),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(1),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rlast(0),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(1),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_crossbar_v2_1_28_si_transactor is
  port (
    aresetn_d_reg : out STD_LOGIC;
    m_valid_i : out STD_LOGIC;
    chosen : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    st_mr_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aresetn_d : in STD_LOGIC;
    \gen_multi_thread.accept_cnt_reg[0]_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_no_arbiter.s_ready_i[0]_i_2\ : in STD_LOGIC;
    \gen_no_arbiter.s_ready_i[0]_i_2_0\ : in STD_LOGIC;
    st_mr_rmesg : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_no_arbiter.s_ready_i[0]_i_2_1\ : in STD_LOGIC;
    \gen_no_arbiter.s_ready_i[0]_i_2_2\ : in STD_LOGIC;
    \gen_no_arbiter.s_ready_i[0]_i_2_3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_crossbar_v2_1_28_si_transactor : entity is "axi_crossbar_v2_1_28_si_transactor";
end axi_crossbar_0_axi_crossbar_v2_1_28_si_transactor;

architecture STRUCTURE of axi_crossbar_0_axi_crossbar_v2_1_28_si_transactor is
  signal \gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gen_multi_thread.accept_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \gen_multi_thread.active_target\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \gen_multi_thread.arbiter_resp_inst_n_14\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_16\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_17\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_18\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_19\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_20\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_21\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_22\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_23\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_24\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_25\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_26\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_27\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[0].active_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[0].active_id[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[0].active_id_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.gen_thread_loop[0].active_target[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_4__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[1].active_id[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[1].active_id[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[1].active_id_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.gen_thread_loop[1].active_target[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_4__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[2].active_id[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[2].active_id[5]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[2].active_id_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.gen_thread_loop[2].active_target[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_9__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_id[6]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_id[7]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_id_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.gen_thread_loop[3].active_target[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.s_ready_i[0]_i_10_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.s_ready_i[0]_i_12_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.s_ready_i[0]_i_13_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.s_ready_i[0]_i_14_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.s_ready_i[0]_i_15_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.s_ready_i[0]_i_16_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.s_ready_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.s_ready_i[0]_i_5_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.s_ready_i[0]_i_6_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.s_ready_i[0]_i_7_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.s_ready_i[0]_i_8_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.s_ready_i[0]_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[0].active_id[0]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[0].active_id[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[0].active_target[0]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[1].active_id[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[1].active_id[3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[1].active_target[8]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_4__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[2].active_id[4]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[2].active_id[5]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[2].active_target[16]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_id[6]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_id[7]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_target[24]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gen_no_arbiter.s_ready_i[0]_i_10\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \gen_no_arbiter.s_ready_i[0]_i_13\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \gen_no_arbiter.s_ready_i[0]_i_14\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \gen_no_arbiter.s_ready_i[0]_i_15\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \gen_no_arbiter.s_ready_i[0]_i_16\ : label is "soft_lutpair50";
begin
\gen_multi_thread.accept_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99996662"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      I1 => \gen_multi_thread.arbiter_resp_inst_n_14\,
      I2 => \gen_multi_thread.accept_cnt\(1),
      I3 => \gen_multi_thread.accept_cnt\(2),
      I4 => \gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt[0]_i_1_n_0\
    );
\gen_multi_thread.accept_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC3CC2CC"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(2),
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => \gen_multi_thread.accept_cnt\(0),
      I3 => \gen_multi_thread.arbiter_resp_inst_n_14\,
      I4 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      O => \gen_multi_thread.accept_cnt[1]_i_1_n_0\
    );
\gen_multi_thread.accept_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AA8AA"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(2),
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => \gen_multi_thread.accept_cnt\(0),
      I3 => \gen_multi_thread.arbiter_resp_inst_n_14\,
      I4 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      O => \gen_multi_thread.accept_cnt[2]_i_1_n_0\
    );
\gen_multi_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[0]_i_1_n_0\,
      Q => \gen_multi_thread.accept_cnt\(0),
      R => reset
    );
\gen_multi_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[1]_i_1_n_0\,
      Q => \gen_multi_thread.accept_cnt\(1),
      R => reset
    );
\gen_multi_thread.accept_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[2]_i_1_n_0\,
      Q => \gen_multi_thread.accept_cnt\(2),
      R => reset
    );
\gen_multi_thread.arbiter_resp_inst\: entity work.axi_crossbar_0_axi_crossbar_v2_1_28_arbiter_resp_5
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      aresetn_d => aresetn_d,
      aresetn_d_reg => aresetn_d_reg,
      \chosen_reg[0]_0\ => chosen(0),
      \chosen_reg[1]_0\ => chosen(1),
      \chosen_reg[2]_0\ => chosen(2),
      \gen_multi_thread.accept_cnt\(2 downto 0) => \gen_multi_thread.accept_cnt\(2 downto 0),
      \gen_multi_thread.active_cnt\(11 downto 9) => \gen_multi_thread.active_cnt\(26 downto 24),
      \gen_multi_thread.active_cnt\(8 downto 6) => \gen_multi_thread.active_cnt\(18 downto 16),
      \gen_multi_thread.active_cnt\(5 downto 3) => \gen_multi_thread.active_cnt\(10 downto 8),
      \gen_multi_thread.active_cnt\(2 downto 0) => \gen_multi_thread.active_cnt\(2 downto 0),
      \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]\ => \gen_multi_thread.arbiter_resp_inst_n_25\,
      \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_0\ => \gen_multi_thread.arbiter_resp_inst_n_26\,
      \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_1\ => \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_0\,
      \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]\ => \gen_multi_thread.arbiter_resp_inst_n_27\,
      \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]_0\ => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_2__0_n_0\,
      \gen_multi_thread.gen_thread_loop[0].active_id_reg\(1 downto 0) => \gen_multi_thread.gen_thread_loop[0].active_id_reg\(1 downto 0),
      \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]\ => \gen_multi_thread.arbiter_resp_inst_n_24\,
      \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]_0\ => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_2__0_n_0\,
      \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]\ => \gen_multi_thread.arbiter_resp_inst_n_22\,
      \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]_0\ => \gen_multi_thread.arbiter_resp_inst_n_23\,
      \gen_multi_thread.gen_thread_loop[1].active_id_reg\(1 downto 0) => \gen_multi_thread.gen_thread_loop[1].active_id_reg\(1 downto 0),
      \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]\ => \gen_multi_thread.arbiter_resp_inst_n_19\,
      \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]_0\ => \gen_multi_thread.arbiter_resp_inst_n_20\,
      \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]\ => \gen_multi_thread.arbiter_resp_inst_n_21\,
      \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]_0\ => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_2__0_n_0\,
      \gen_multi_thread.gen_thread_loop[2].active_id_reg\(1 downto 0) => \gen_multi_thread.gen_thread_loop[2].active_id_reg\(1 downto 0),
      \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3_0\(1 downto 0) => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3\(1 downto 0),
      \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]\ => \gen_multi_thread.arbiter_resp_inst_n_16\,
      \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]_0\ => \gen_multi_thread.arbiter_resp_inst_n_17\,
      \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]\ => \gen_multi_thread.arbiter_resp_inst_n_18\,
      \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_0\ => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_2__0_n_0\,
      \gen_multi_thread.gen_thread_loop[3].active_id_reg\(1 downto 0) => \gen_multi_thread.gen_thread_loop[3].active_id_reg\(1 downto 0),
      \gen_no_arbiter.s_ready_i_reg[0]\ => \gen_no_arbiter.s_ready_i[0]_i_3_n_0\,
      \gen_no_arbiter.s_ready_i_reg[0]_0\ => \gen_no_arbiter.s_ready_i[0]_i_5_n_0\,
      \gen_no_arbiter.s_ready_i_reg[0]_1\ => \gen_no_arbiter.s_ready_i[0]_i_6_n_0\,
      \gen_no_arbiter.s_ready_i_reg[0]_2\ => \gen_no_arbiter.s_ready_i[0]_i_7_n_0\,
      \gen_no_arbiter.s_ready_i_reg[0]_3\ => \gen_no_arbiter.s_ready_i[0]_i_8_n_0\,
      m_valid_i => m_valid_i,
      reset => reset,
      s_axi_rdata(8 downto 0) => s_axi_rdata(8 downto 0),
      s_axi_rlast(0) => s_axi_rlast(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rready_0_sp_1 => \gen_multi_thread.arbiter_resp_inst_n_14\,
      s_axi_rvalid(0) => s_axi_rvalid(0),
      st_mr_rmesg(17 downto 0) => st_mr_rmesg(17 downto 0),
      st_mr_rvalid(2 downto 0) => st_mr_rvalid(2 downto 0)
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"51555555FFFFFFFF"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8__0_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4__0_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5__0_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6__0_n_0\,
      I4 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7__0_n_0\,
      I5 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      O => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_2__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(2),
      I1 => \gen_multi_thread.active_cnt\(1),
      I2 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_27\,
      Q => \gen_multi_thread.active_cnt\(0),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_26\,
      Q => \gen_multi_thread.active_cnt\(1),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_25\,
      Q => \gen_multi_thread.active_cnt\(2),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[0].active_id[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(0),
      I1 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_2__0_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[0].active_id_reg\(0),
      O => \gen_multi_thread.gen_thread_loop[0].active_id[0]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[0].active_id[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(1),
      I1 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_2__0_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[0].active_id_reg\(1),
      O => \gen_multi_thread.gen_thread_loop[0].active_id[1]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[0].active_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[0].active_id[0]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[0].active_id_reg\(0),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[0].active_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[0].active_id[1]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[0].active_id_reg\(1),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[0].active_target[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(2),
      I1 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_2__0_n_0\,
      I2 => \gen_multi_thread.active_target\(0),
      O => \gen_multi_thread.gen_thread_loop[0].active_target[0]_i_1__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[0].active_target_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[0].active_target[0]_i_1__0_n_0\,
      Q => \gen_multi_thread.active_target\(0),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555515FFFFFFFF"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5__0_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6__0_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7__0_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8__0_n_0\,
      I4 => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_4__0_n_0\,
      I5 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      O => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_2__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF01"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(0),
      I1 => \gen_multi_thread.active_cnt\(1),
      I2 => \gen_multi_thread.active_cnt\(2),
      I3 => \gen_multi_thread.active_cnt\(8),
      I4 => \gen_multi_thread.active_cnt\(9),
      I5 => \gen_multi_thread.active_cnt\(10),
      O => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_4__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_22\,
      Q => \gen_multi_thread.active_cnt\(10),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_24\,
      Q => \gen_multi_thread.active_cnt\(8),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_23\,
      Q => \gen_multi_thread.active_cnt\(9),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[1].active_id[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(0),
      I1 => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_2__0_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[1].active_id_reg\(0),
      O => \gen_multi_thread.gen_thread_loop[1].active_id[2]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[1].active_id[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(1),
      I1 => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_2__0_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[1].active_id_reg\(1),
      O => \gen_multi_thread.gen_thread_loop[1].active_id[3]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[1].active_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[1].active_id[2]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[1].active_id_reg\(0),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[1].active_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[1].active_id[3]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[1].active_id_reg\(1),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[1].active_target[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(2),
      I1 => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_2__0_n_0\,
      I2 => \gen_multi_thread.active_target\(8),
      O => \gen_multi_thread.gen_thread_loop[1].active_target[8]_i_1__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[1].active_target_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[1].active_target[8]_i_1__0_n_0\,
      Q => \gen_multi_thread.active_target\(8),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCC8CFFFFFFFF"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5__0_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6__0_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7__0_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8__0_n_0\,
      I4 => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_4__0_n_0\,
      I5 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      O => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_2__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(18),
      I1 => \gen_multi_thread.active_cnt\(17),
      I2 => \gen_multi_thread.active_cnt\(16),
      I3 => \gen_no_arbiter.s_ready_i[0]_i_9_n_0\,
      I4 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4__0_n_0\,
      O => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_4__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_21\,
      Q => \gen_multi_thread.active_cnt\(16),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_20\,
      Q => \gen_multi_thread.active_cnt\(17),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_19\,
      Q => \gen_multi_thread.active_cnt\(18),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[2].active_id[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(0),
      I1 => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_2__0_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[2].active_id_reg\(0),
      O => \gen_multi_thread.gen_thread_loop[2].active_id[4]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[2].active_id[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(1),
      I1 => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_2__0_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[2].active_id_reg\(1),
      O => \gen_multi_thread.gen_thread_loop[2].active_id[5]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[2].active_id_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[2].active_id[4]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[2].active_id_reg\(0),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[2].active_id_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[2].active_id[5]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[2].active_id_reg\(1),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[2].active_target[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(2),
      I1 => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_2__0_n_0\,
      I2 => \gen_multi_thread.active_target\(16),
      O => \gen_multi_thread.gen_thread_loop[2].active_target[16]_i_1__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[2].active_target_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[2].active_target[16]_i_1__0_n_0\,
      Q => \gen_multi_thread.active_target\(16),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0B0FFFFFFFF"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5__0_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6__0_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7__0_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8__0_n_0\,
      I4 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_9__0_n_0\,
      I5 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_2__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => \gen_no_arbiter.s_ready_i[0]_i_9_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[1].active_id_reg\(0),
      I2 => D(0),
      I3 => \gen_multi_thread.gen_thread_loop[1].active_id_reg\(1),
      I4 => D(1),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \gen_no_arbiter.s_ready_i[0]_i_15_n_0\,
      I1 => D(0),
      I2 => \gen_multi_thread.gen_thread_loop[2].active_id_reg\(0),
      I3 => D(1),
      I4 => \gen_multi_thread.gen_thread_loop[2].active_id_reg\(1),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \gen_no_arbiter.s_ready_i[0]_i_12_n_0\,
      I1 => D(1),
      I2 => \gen_multi_thread.gen_thread_loop[3].active_id_reg\(1),
      I3 => D(0),
      I4 => \gen_multi_thread.gen_thread_loop[3].active_id_reg\(0),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4__0_n_0\,
      I1 => D(0),
      I2 => \gen_multi_thread.gen_thread_loop[0].active_id_reg\(0),
      I3 => D(1),
      I4 => \gen_multi_thread.gen_thread_loop[0].active_id_reg\(1),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gen_no_arbiter.s_ready_i[0]_i_9_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4__0_n_0\,
      I2 => \gen_no_arbiter.s_ready_i[0]_i_15_n_0\,
      I3 => \gen_multi_thread.active_cnt\(26),
      I4 => \gen_multi_thread.active_cnt\(25),
      I5 => \gen_multi_thread.active_cnt\(24),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_9__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_18\,
      Q => \gen_multi_thread.active_cnt\(24),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_17\,
      Q => \gen_multi_thread.active_cnt\(25),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_16\,
      Q => \gen_multi_thread.active_cnt\(26),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[3].active_id[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(0),
      I1 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_2__0_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_id_reg\(0),
      O => \gen_multi_thread.gen_thread_loop[3].active_id[6]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_id[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(1),
      I1 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_2__0_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_id_reg\(1),
      O => \gen_multi_thread.gen_thread_loop[3].active_id[7]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_id_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[3].active_id[6]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[3].active_id_reg\(0),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[3].active_id_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[3].active_id[7]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[3].active_id_reg\(1),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[3].active_target[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(2),
      I1 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_2__0_n_0\,
      I2 => \gen_multi_thread.active_target\(24),
      O => \gen_multi_thread.gen_thread_loop[3].active_target[24]_i_1__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_target_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[3].active_target[24]_i_1__0_n_0\,
      Q => \gen_multi_thread.active_target\(24),
      R => reset
    );
\gen_no_arbiter.s_ready_i[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => D(1),
      I1 => \gen_multi_thread.gen_thread_loop[1].active_id_reg\(1),
      I2 => D(0),
      I3 => \gen_multi_thread.gen_thread_loop[1].active_id_reg\(0),
      O => \gen_no_arbiter.s_ready_i[0]_i_10_n_0\
    );
\gen_no_arbiter.s_ready_i[0]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(26),
      I1 => \gen_multi_thread.active_cnt\(25),
      I2 => \gen_multi_thread.active_cnt\(24),
      O => \gen_no_arbiter.s_ready_i[0]_i_12_n_0\
    );
\gen_no_arbiter.s_ready_i[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_id_reg\(0),
      I1 => D(0),
      I2 => \gen_multi_thread.gen_thread_loop[3].active_id_reg\(1),
      I3 => D(1),
      O => \gen_no_arbiter.s_ready_i[0]_i_13_n_0\
    );
\gen_no_arbiter.s_ready_i[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[0].active_id_reg\(1),
      I1 => D(1),
      I2 => \gen_multi_thread.gen_thread_loop[0].active_id_reg\(0),
      I3 => D(0),
      O => \gen_no_arbiter.s_ready_i[0]_i_14_n_0\
    );
\gen_no_arbiter.s_ready_i[0]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(18),
      I1 => \gen_multi_thread.active_cnt\(17),
      I2 => \gen_multi_thread.active_cnt\(16),
      O => \gen_no_arbiter.s_ready_i[0]_i_15_n_0\
    );
\gen_no_arbiter.s_ready_i[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[2].active_id_reg\(1),
      I1 => D(1),
      I2 => \gen_multi_thread.gen_thread_loop[2].active_id_reg\(0),
      I3 => D(0),
      O => \gen_no_arbiter.s_ready_i[0]_i_16_n_0\
    );
\gen_no_arbiter.s_ready_i[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0006"
    )
        port map (
      I0 => D(2),
      I1 => \gen_multi_thread.active_target\(8),
      I2 => \gen_no_arbiter.s_ready_i[0]_i_9_n_0\,
      I3 => \gen_no_arbiter.s_ready_i[0]_i_10_n_0\,
      I4 => \gen_no_arbiter.s_ready_i[0]_i_2_3\,
      O => \gen_no_arbiter.s_ready_i[0]_i_3_n_0\
    );
\gen_no_arbiter.s_ready_i[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFE00"
    )
        port map (
      I0 => \gen_no_arbiter.s_ready_i[0]_i_12_n_0\,
      I1 => \gen_no_arbiter.s_ready_i[0]_i_13_n_0\,
      I2 => \gen_multi_thread.active_target\(24),
      I3 => \gen_multi_thread.active_target\(0),
      I4 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4__0_n_0\,
      I5 => \gen_no_arbiter.s_ready_i[0]_i_14_n_0\,
      O => \gen_no_arbiter.s_ready_i[0]_i_5_n_0\
    );
\gen_no_arbiter.s_ready_i[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FF01FFFFFF01FF"
    )
        port map (
      I0 => \gen_no_arbiter.s_ready_i[0]_i_15_n_0\,
      I1 => \gen_no_arbiter.s_ready_i[0]_i_16_n_0\,
      I2 => \gen_multi_thread.active_target\(16),
      I3 => D(2),
      I4 => \gen_no_arbiter.s_ready_i[0]_i_2\,
      I5 => \gen_no_arbiter.s_ready_i[0]_i_2_0\,
      O => \gen_no_arbiter.s_ready_i[0]_i_6_n_0\
    );
\gen_no_arbiter.s_ready_i[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010FF10101010"
    )
        port map (
      I0 => \gen_no_arbiter.s_ready_i[0]_i_12_n_0\,
      I1 => \gen_no_arbiter.s_ready_i[0]_i_13_n_0\,
      I2 => \gen_multi_thread.active_target\(24),
      I3 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4__0_n_0\,
      I4 => \gen_no_arbiter.s_ready_i[0]_i_14_n_0\,
      I5 => \gen_multi_thread.active_target\(0),
      O => \gen_no_arbiter.s_ready_i[0]_i_7_n_0\
    );
\gen_no_arbiter.s_ready_i[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1010FF10"
    )
        port map (
      I0 => \gen_no_arbiter.s_ready_i[0]_i_15_n_0\,
      I1 => \gen_no_arbiter.s_ready_i[0]_i_16_n_0\,
      I2 => \gen_multi_thread.active_target\(16),
      I3 => \gen_no_arbiter.s_ready_i[0]_i_2_1\,
      I4 => \gen_no_arbiter.s_ready_i[0]_i_2_2\,
      I5 => D(2),
      O => \gen_no_arbiter.s_ready_i[0]_i_8_n_0\
    );
\gen_no_arbiter.s_ready_i[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(10),
      I1 => \gen_multi_thread.active_cnt\(9),
      I2 => \gen_multi_thread.active_cnt\(8),
      O => \gen_no_arbiter.s_ready_i[0]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_crossbar_0_axi_crossbar_v2_1_28_si_transactor__parameterized0\ is
  port (
    chosen : out STD_LOGIC_VECTOR ( 2 downto 0 );
    aresetn_d_reg : out STD_LOGIC;
    \s_axi_awvalid[0]\ : out STD_LOGIC;
    s_axi_bready_0_sp_1 : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    st_mr_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    chosen41_in : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \gen_no_arbiter.s_ready_i_reg[0]\ : in STD_LOGIC;
    \gen_no_arbiter.s_ready_i_reg[0]_0\ : in STD_LOGIC;
    \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_0\ : in STD_LOGIC;
    \gen_no_arbiter.m_target_hot_i[1]_i_2\ : in STD_LOGIC;
    st_mr_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_multi_thread.accept_cnt_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_crossbar_0_axi_crossbar_v2_1_28_si_transactor__parameterized0\ : entity is "axi_crossbar_v2_1_28_si_transactor";
end \axi_crossbar_0_axi_crossbar_v2_1_28_si_transactor__parameterized0\;

architecture STRUCTURE of \axi_crossbar_0_axi_crossbar_v2_1_28_si_transactor__parameterized0\ is
  signal \gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gen_multi_thread.accept_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \gen_multi_thread.active_target\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \gen_multi_thread.arbiter_resp_inst_n_10\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_11\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_12\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_13\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_14\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_15\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_16\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_17\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_18\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_19\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_5\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_8\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_9\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[0].active_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[0].active_id[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[0].active_id_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[0].active_id_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[0].active_target[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[1].active_id[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[1].active_id[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[1].active_id_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[1].active_id_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[1].active_target[8]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_4_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[2].active_id[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[2].active_id[5]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[2].active_id_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[2].active_id_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[2].active_target[16]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_13__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_14__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_15_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_9_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_id[6]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_id[7]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_id_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_id_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_multi_thread.gen_thread_loop[3].active_target[24]_i_1_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[1]_i_11_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[1]_i_12_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[1]_i_13_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[1]_i_14_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[1]_i_15_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[1]_i_16_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[1]_i_17_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[1]_i_6_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[1]_i_7_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[1]_i_8_n_0\ : STD_LOGIC;
  signal s_axi_bready_0_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[1]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[2]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[0].active_id[0]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[0].active_id[1]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[0].active_target[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[1].active_id[2]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[1].active_id[3]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[1].active_target[8]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_4\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[2].active_id[4]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[2].active_id[5]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[2].active_target[16]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_15\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_id[6]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_id[7]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \gen_multi_thread.gen_thread_loop[3].active_target[24]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[1]_i_11\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[1]_i_12\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[1]_i_13\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[1]_i_14\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[1]_i_15\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[1]_i_16\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[1]_i_17\ : label is "soft_lutpair68";
begin
  s_axi_bready_0_sp_1 <= s_axi_bready_0_sn_1;
\gen_multi_thread.accept_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99996662"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      I1 => \gen_multi_thread.arbiter_resp_inst_n_5\,
      I2 => \gen_multi_thread.accept_cnt\(2),
      I3 => \gen_multi_thread.accept_cnt\(1),
      I4 => \gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt[0]_i_1_n_0\
    );
\gen_multi_thread.accept_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6698AA"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(1),
      I1 => \gen_multi_thread.accept_cnt\(0),
      I2 => \gen_multi_thread.accept_cnt\(2),
      I3 => \gen_multi_thread.arbiter_resp_inst_n_5\,
      I4 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      O => \gen_multi_thread.accept_cnt[1]_i_1_n_0\
    );
\gen_multi_thread.accept_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F078E0F0"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(1),
      I1 => \gen_multi_thread.accept_cnt\(0),
      I2 => \gen_multi_thread.accept_cnt\(2),
      I3 => \gen_multi_thread.arbiter_resp_inst_n_5\,
      I4 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      O => \gen_multi_thread.accept_cnt[2]_i_1_n_0\
    );
\gen_multi_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[0]_i_1_n_0\,
      Q => \gen_multi_thread.accept_cnt\(0),
      R => reset
    );
\gen_multi_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[1]_i_1_n_0\,
      Q => \gen_multi_thread.accept_cnt\(1),
      R => reset
    );
\gen_multi_thread.accept_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[2]_i_1_n_0\,
      Q => \gen_multi_thread.accept_cnt\(2),
      R => reset
    );
\gen_multi_thread.arbiter_resp_inst\: entity work.axi_crossbar_0_axi_crossbar_v2_1_28_arbiter_resp
     port map (
      aclk => aclk,
      aresetn_d => aresetn_d,
      aresetn_d_reg => aresetn_d_reg,
      chosen41_in => chosen41_in,
      \chosen_reg[0]_0\ => chosen(0),
      \chosen_reg[1]_0\ => chosen(1),
      \chosen_reg[2]_0\ => chosen(2),
      \gen_multi_thread.accept_cnt\(0) => \gen_multi_thread.accept_cnt\(2),
      \gen_multi_thread.active_cnt\(11 downto 9) => \gen_multi_thread.active_cnt\(26 downto 24),
      \gen_multi_thread.active_cnt\(8 downto 6) => \gen_multi_thread.active_cnt\(18 downto 16),
      \gen_multi_thread.active_cnt\(5 downto 3) => \gen_multi_thread.active_cnt\(10 downto 8),
      \gen_multi_thread.active_cnt\(2 downto 0) => \gen_multi_thread.active_cnt\(2 downto 0),
      \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]\ => \gen_multi_thread.arbiter_resp_inst_n_17\,
      \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_0\ => \gen_multi_thread.arbiter_resp_inst_n_18\,
      \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_1\ => \gen_multi_thread.gen_thread_loop[0].active_id_reg_n_0_[1]\,
      \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_2\ => \gen_multi_thread.gen_thread_loop[0].active_id_reg_n_0_[0]\,
      \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]\ => \gen_multi_thread.arbiter_resp_inst_n_19\,
      \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]_0\ => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_2_n_0\,
      \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]\ => \gen_multi_thread.arbiter_resp_inst_n_16\,
      \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]_0\ => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_2_n_0\,
      \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]\ => \gen_multi_thread.arbiter_resp_inst_n_14\,
      \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]_0\ => \gen_multi_thread.arbiter_resp_inst_n_15\,
      \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]_1\ => \gen_multi_thread.gen_thread_loop[1].active_id_reg_n_0_[3]\,
      \gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]_2\ => \gen_multi_thread.gen_thread_loop[1].active_id_reg_n_0_[2]\,
      \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]\ => \gen_multi_thread.arbiter_resp_inst_n_11\,
      \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]_0\ => \gen_multi_thread.arbiter_resp_inst_n_12\,
      \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]_1\ => \gen_multi_thread.gen_thread_loop[2].active_id_reg_n_0_[5]\,
      \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]_2\ => \gen_multi_thread.gen_thread_loop[2].active_id_reg_n_0_[4]\,
      \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]\ => \gen_multi_thread.arbiter_resp_inst_n_13\,
      \gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]_0\ => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_2_n_0\,
      \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]\ => \gen_multi_thread.arbiter_resp_inst_n_8\,
      \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]_0\ => \gen_multi_thread.arbiter_resp_inst_n_9\,
      \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]_1\ => \gen_multi_thread.gen_thread_loop[3].active_id_reg_n_0_[7]\,
      \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]_2\ => \gen_multi_thread.gen_thread_loop[3].active_id_reg_n_0_[6]\,
      \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]\ => \gen_multi_thread.arbiter_resp_inst_n_10\,
      \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_0\ => \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_0\,
      \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_1\ => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_2_n_0\,
      \gen_no_arbiter.m_target_hot_i[1]_i_2_0\ => \gen_no_arbiter.m_target_hot_i[1]_i_11_n_0\,
      \gen_no_arbiter.m_target_hot_i[1]_i_2_1\ => \gen_no_arbiter.m_target_hot_i[1]_i_2\,
      \gen_no_arbiter.s_ready_i_reg[0]\ => \gen_no_arbiter.s_ready_i_reg[0]\,
      \gen_no_arbiter.s_ready_i_reg[0]_0\ => \gen_no_arbiter.s_ready_i_reg[0]_0\,
      \gen_no_arbiter.s_ready_i_reg[0]_1\ => \gen_no_arbiter.m_target_hot_i[1]_i_6_n_0\,
      \gen_no_arbiter.s_ready_i_reg[0]_2\ => \gen_no_arbiter.m_target_hot_i[1]_i_7_n_0\,
      \gen_no_arbiter.s_ready_i_reg[0]_3\ => \gen_no_arbiter.m_target_hot_i[1]_i_8_n_0\,
      m_valid_i_reg_inv => \gen_multi_thread.arbiter_resp_inst_n_5\,
      p_1_in => p_1_in,
      reset => reset,
      \s_axi_awvalid[0]\ => \s_axi_awvalid[0]\,
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bready_0_sp_1 => s_axi_bready_0_sn_1,
      s_axi_bvalid(0) => s_axi_bvalid(0),
      st_mr_bid(3 downto 0) => st_mr_bid(3 downto 0),
      st_mr_bvalid(1 downto 0) => st_mr_bvalid(1 downto 0)
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD00FFFFFFFF"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7_n_0\,
      I4 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8_n_0\,
      I5 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      O => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_2_n_0\
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(2),
      I1 => \gen_multi_thread.active_cnt\(1),
      I2 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4_n_0\
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_19\,
      Q => \gen_multi_thread.active_cnt\(0),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_18\,
      Q => \gen_multi_thread.active_cnt\(1),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[0].active_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_17\,
      Q => \gen_multi_thread.active_cnt\(2),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[0].active_id[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(0),
      I1 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_2_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[0].active_id_reg_n_0_[0]\,
      O => \gen_multi_thread.gen_thread_loop[0].active_id[0]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[0].active_id[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(1),
      I1 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_2_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[0].active_id_reg_n_0_[1]\,
      O => \gen_multi_thread.gen_thread_loop[0].active_id[1]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[0].active_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[0].active_id[0]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[0].active_id_reg_n_0_[0]\,
      R => reset
    );
\gen_multi_thread.gen_thread_loop[0].active_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[0].active_id[1]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[0].active_id_reg_n_0_[1]\,
      R => reset
    );
\gen_multi_thread.gen_thread_loop[0].active_target[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(2),
      I1 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_2_n_0\,
      I2 => \gen_multi_thread.active_target\(0),
      O => \gen_multi_thread.gen_thread_loop[0].active_target[0]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[0].active_target_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[0].active_target[0]_i_1_n_0\,
      Q => \gen_multi_thread.active_target\(0),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545555FFFFFFFF"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_4_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6_n_0\,
      I4 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7_n_0\,
      I5 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      O => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_2_n_0\
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF01"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(0),
      I1 => \gen_multi_thread.active_cnt\(1),
      I2 => \gen_multi_thread.active_cnt\(2),
      I3 => \gen_multi_thread.active_cnt\(8),
      I4 => \gen_multi_thread.active_cnt\(9),
      I5 => \gen_multi_thread.active_cnt\(10),
      O => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_4_n_0\
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_14\,
      Q => \gen_multi_thread.active_cnt\(10),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_16\,
      Q => \gen_multi_thread.active_cnt\(8),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[1].active_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_15\,
      Q => \gen_multi_thread.active_cnt\(9),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[1].active_id[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(0),
      I1 => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_2_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[1].active_id_reg_n_0_[2]\,
      O => \gen_multi_thread.gen_thread_loop[1].active_id[2]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[1].active_id[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(1),
      I1 => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_2_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[1].active_id_reg_n_0_[3]\,
      O => \gen_multi_thread.gen_thread_loop[1].active_id[3]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[1].active_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[1].active_id[2]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[1].active_id_reg_n_0_[2]\,
      R => reset
    );
\gen_multi_thread.gen_thread_loop[1].active_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[1].active_id[3]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[1].active_id_reg_n_0_[3]\,
      R => reset
    );
\gen_multi_thread.gen_thread_loop[1].active_target[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(2),
      I1 => \gen_multi_thread.gen_thread_loop[1].active_cnt[10]_i_2_n_0\,
      I2 => \gen_multi_thread.active_target\(8),
      O => \gen_multi_thread.gen_thread_loop[1].active_target[8]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[1].active_target_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[1].active_target[8]_i_1_n_0\,
      Q => \gen_multi_thread.active_target\(8),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555455FFFFFFFF"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_4_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7_n_0\,
      I4 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8_n_0\,
      I5 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      O => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_2_n_0\
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF01FFFF"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(10),
      I1 => \gen_multi_thread.active_cnt\(9),
      I2 => \gen_multi_thread.active_cnt\(8),
      I3 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4_n_0\,
      I4 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_13__0_n_0\,
      O => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_4_n_0\
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_13\,
      Q => \gen_multi_thread.active_cnt\(16),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_12\,
      Q => \gen_multi_thread.active_cnt\(17),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[2].active_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_11\,
      Q => \gen_multi_thread.active_cnt\(18),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[2].active_id[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(0),
      I1 => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_2_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[2].active_id_reg_n_0_[4]\,
      O => \gen_multi_thread.gen_thread_loop[2].active_id[4]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[2].active_id[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(1),
      I1 => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_2_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[2].active_id_reg_n_0_[5]\,
      O => \gen_multi_thread.gen_thread_loop[2].active_id[5]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[2].active_id_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[2].active_id[4]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[2].active_id_reg_n_0_[4]\,
      R => reset
    );
\gen_multi_thread.gen_thread_loop[2].active_id_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[2].active_id[5]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[2].active_id_reg_n_0_[5]\,
      R => reset
    );
\gen_multi_thread.gen_thread_loop[2].active_target[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(2),
      I1 => \gen_multi_thread.gen_thread_loop[2].active_cnt[18]_i_2_n_0\,
      I2 => \gen_multi_thread.active_target\(16),
      O => \gen_multi_thread.gen_thread_loop[2].active_target[16]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[2].active_target_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[2].active_target[16]_i_1_n_0\,
      Q => \gen_multi_thread.active_target\(16),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(18),
      I1 => \gen_multi_thread.active_cnt\(17),
      I2 => \gen_multi_thread.active_cnt\(16),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_13__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(26),
      I1 => \gen_multi_thread.active_cnt\(25),
      I2 => \gen_multi_thread.active_cnt\(24),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_14__0_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(10),
      I1 => \gen_multi_thread.active_cnt\(9),
      I2 => \gen_multi_thread.active_cnt\(8),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_15_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333323FFFFFFFF"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7_n_0\,
      I3 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8_n_0\,
      I4 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_9_n_0\,
      I5 => \gen_multi_thread.accept_cnt_reg[0]_0\,
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_2_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_13__0_n_0\,
      I1 => D(0),
      I2 => \gen_multi_thread.gen_thread_loop[2].active_id_reg_n_0_[4]\,
      I3 => D(1),
      I4 => \gen_multi_thread.gen_thread_loop[2].active_id_reg_n_0_[5]\,
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_5_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_14__0_n_0\,
      I1 => D(0),
      I2 => \gen_multi_thread.gen_thread_loop[3].active_id_reg_n_0_[6]\,
      I3 => D(1),
      I4 => \gen_multi_thread.gen_thread_loop[3].active_id_reg_n_0_[7]\,
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_6_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4_n_0\,
      I1 => D(0),
      I2 => \gen_multi_thread.gen_thread_loop[0].active_id_reg_n_0_[0]\,
      I3 => D(1),
      I4 => \gen_multi_thread.gen_thread_loop[0].active_id_reg_n_0_[1]\,
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_7_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_15_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[1].active_id_reg_n_0_[2]\,
      I2 => D(0),
      I3 => \gen_multi_thread.gen_thread_loop[1].active_id_reg_n_0_[3]\,
      I4 => D(1),
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_8_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_15_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4_n_0\,
      I2 => \gen_multi_thread.active_cnt\(26),
      I3 => \gen_multi_thread.active_cnt\(25),
      I4 => \gen_multi_thread.active_cnt\(24),
      I5 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_13__0_n_0\,
      O => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_9_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_10\,
      Q => \gen_multi_thread.active_cnt\(24),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_9\,
      Q => \gen_multi_thread.active_cnt\(25),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_8\,
      Q => \gen_multi_thread.active_cnt\(26),
      R => reset
    );
\gen_multi_thread.gen_thread_loop[3].active_id[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(0),
      I1 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_2_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_id_reg_n_0_[6]\,
      O => \gen_multi_thread.gen_thread_loop[3].active_id[6]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_id[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(1),
      I1 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_2_n_0\,
      I2 => \gen_multi_thread.gen_thread_loop[3].active_id_reg_n_0_[7]\,
      O => \gen_multi_thread.gen_thread_loop[3].active_id[7]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_id_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[3].active_id[6]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[3].active_id_reg_n_0_[6]\,
      R => reset
    );
\gen_multi_thread.gen_thread_loop[3].active_id_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[3].active_id[7]_i_1_n_0\,
      Q => \gen_multi_thread.gen_thread_loop[3].active_id_reg_n_0_[7]\,
      R => reset
    );
\gen_multi_thread.gen_thread_loop[3].active_target[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => D(2),
      I1 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_2_n_0\,
      I2 => \gen_multi_thread.active_target\(24),
      O => \gen_multi_thread.gen_thread_loop[3].active_target[24]_i_1_n_0\
    );
\gen_multi_thread.gen_thread_loop[3].active_target_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.gen_thread_loop[3].active_target[24]_i_1_n_0\,
      Q => \gen_multi_thread.active_target\(24),
      R => reset
    );
\gen_no_arbiter.m_target_hot_i[1]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(1),
      I1 => \gen_multi_thread.accept_cnt\(0),
      O => \gen_no_arbiter.m_target_hot_i[1]_i_11_n_0\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[3].active_id_reg_n_0_[7]\,
      I1 => D(1),
      I2 => \gen_multi_thread.gen_thread_loop[3].active_id_reg_n_0_[6]\,
      I3 => D(0),
      O => \gen_no_arbiter.m_target_hot_i[1]_i_12_n_0\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[2].active_id_reg_n_0_[5]\,
      I1 => D(1),
      I2 => \gen_multi_thread.gen_thread_loop[2].active_id_reg_n_0_[4]\,
      I3 => D(0),
      O => \gen_no_arbiter.m_target_hot_i[1]_i_13_n_0\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(2),
      I1 => \gen_multi_thread.active_target\(8),
      O => \gen_no_arbiter.m_target_hot_i[1]_i_14_n_0\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => D(1),
      I1 => \gen_multi_thread.gen_thread_loop[1].active_id_reg_n_0_[3]\,
      I2 => D(0),
      I3 => \gen_multi_thread.gen_thread_loop[1].active_id_reg_n_0_[2]\,
      O => \gen_no_arbiter.m_target_hot_i[1]_i_15_n_0\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => D(2),
      I1 => \gen_multi_thread.active_target\(0),
      O => \gen_no_arbiter.m_target_hot_i[1]_i_16_n_0\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \gen_multi_thread.gen_thread_loop[0].active_id_reg_n_0_[1]\,
      I1 => D(1),
      I2 => \gen_multi_thread.gen_thread_loop[0].active_id_reg_n_0_[0]\,
      I3 => D(0),
      O => \gen_no_arbiter.m_target_hot_i[1]_i_17_n_0\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000555455540000"
    )
        port map (
      I0 => \gen_no_arbiter.m_target_hot_i[1]_i_12_n_0\,
      I1 => \gen_multi_thread.active_cnt\(26),
      I2 => \gen_multi_thread.active_cnt\(25),
      I3 => \gen_multi_thread.active_cnt\(24),
      I4 => \gen_multi_thread.active_target\(24),
      I5 => D(2),
      O => \gen_no_arbiter.m_target_hot_i[1]_i_6_n_0\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000555455540000"
    )
        port map (
      I0 => \gen_no_arbiter.m_target_hot_i[1]_i_13_n_0\,
      I1 => \gen_multi_thread.active_cnt\(18),
      I2 => \gen_multi_thread.active_cnt\(17),
      I3 => \gen_multi_thread.active_cnt\(16),
      I4 => \gen_multi_thread.active_target\(16),
      I5 => D(2),
      O => \gen_no_arbiter.m_target_hot_i[1]_i_7_n_0\
    );
\gen_no_arbiter.m_target_hot_i[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01010101010101FF"
    )
        port map (
      I0 => \gen_no_arbiter.m_target_hot_i[1]_i_14_n_0\,
      I1 => \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_15_n_0\,
      I2 => \gen_no_arbiter.m_target_hot_i[1]_i_15_n_0\,
      I3 => \gen_no_arbiter.m_target_hot_i[1]_i_16_n_0\,
      I4 => \gen_multi_thread.gen_thread_loop[0].active_cnt[2]_i_4_n_0\,
      I5 => \gen_no_arbiter.m_target_hot_i[1]_i_17_n_0\,
      O => \gen_no_arbiter.m_target_hot_i[1]_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_data_fifo_v2_1_26_axic_reg_srl_fifo is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid_0_sp_1 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mi_bready_2 : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_primitive_shifter.gen_srls[0].srl_inst\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_rep[0].fifoaddr_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_data_fifo_v2_1_26_axic_reg_srl_fifo : entity is "axi_data_fifo_v2_1_26_axic_reg_srl_fifo";
end axi_crossbar_0_axi_data_fifo_v2_1_26_axic_reg_srl_fifo;

architecture STRUCTURE of axi_crossbar_0_axi_data_fifo_v2_1_26_axic_reg_srl_fifo is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal areset_d1 : STD_LOGIC;
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[1].srl_nx1_n_2\ : STD_LOGIC;
  signal load_s1 : STD_LOGIC;
  signal m_avalid : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__1_n_0\ : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal push : STD_LOGIC;
  signal s_axi_wvalid_0_sn_1 : STD_LOGIC;
  signal \s_ready_i_i_1__3_n_0\ : STD_LOGIC;
  signal s_ready_i_i_2_n_0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal storage_data1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \storage_data1[0]_i_1_n_0\ : STD_LOGIC;
  signal \storage_data1[1]_i_1_n_0\ : STD_LOGIC;
  signal storage_data2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_3\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair81";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_1\ : label is "soft_lutpair80";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
  attribute SOFT_HLUTNM of \m_axi_wvalid[0]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_axi_wvalid[1]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_valid_i_i_1__1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of s_ready_i_i_2 : label is "soft_lutpair80";
begin
  s_axi_wvalid_0_sp_1 <= s_axi_wvalid_0_sn_1;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\FSM_onehot_gen_axi.write_cs[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => s_axi_wvalid_0_sn_1,
      I1 => Q(1),
      I2 => mi_bready_2,
      O => E(0)
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA20"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => \gen_primitive_shifter.gen_srls[0].srl_inst\(0),
      I2 => s_axi_awvalid(0),
      I3 => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => fifoaddr(1),
      I2 => \FSM_onehot_state_reg[1]_0\,
      I3 => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \FSM_onehot_state[1]_i_3_n_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_9_in,
      I1 => s_axi_awvalid(0),
      I2 => \gen_primitive_shifter.gen_srls[0].srl_inst\(0),
      O => \FSM_onehot_state[1]_i_3_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBEBAAAA"
    )
        port map (
      I0 => \FSM_onehot_state[1]_i_1_n_0\,
      I1 => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      I2 => s_axi_awvalid(0),
      I3 => \gen_primitive_shifter.gen_srls[0].srl_inst\(0),
      I4 => p_0_in8_in,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008A"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => \gen_primitive_shifter.gen_srls[0].srl_inst\(0),
      I2 => s_axi_awvalid(0),
      I3 => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => p_0_in8_in,
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[3]_i_2_n_0\,
      Q => p_9_in,
      S => areset_d1
    );
areset_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => reset,
      Q => areset_d1,
      R => '0'
    );
\gen_axi.s_axi_bvalid_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => m_avalid,
      I2 => s_axi_wlast(0),
      I3 => storage_data1(1),
      I4 => storage_data1(0),
      I5 => Q(0),
      O => s_axi_wvalid_0_sn_1
    );
\gen_rep[0].fifoaddr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD37DD1D22C822E2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      I2 => p_0_in8_in,
      I3 => \gen_rep[0].fifoaddr_reg[0]_0\,
      I4 => \^s_ready_i_reg_0\,
      I5 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E778188"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => push,
      I2 => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => fifoaddr(1),
      O => \gen_rep[0].fifoaddr[1]_i_1_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[0]_i_1_n_0\,
      Q => fifoaddr(0),
      S => reset
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[1]_i_1_n_0\,
      Q => fifoaddr(1),
      S => reset
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.\axi_crossbar_0_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0\
     port map (
      aclk => aclk,
      fifoaddr(1 downto 0) => fifoaddr(1 downto 0),
      push => push,
      s_axi_awaddr(0) => s_axi_awaddr(0),
      storage_data2(0) => storage_data2(0)
    );
\gen_srls[0].gen_rep[1].srl_nx1\: entity work.\axi_crossbar_0_axi_data_fifo_v2_1_26_ndeep_srl__parameterized0_4\
     port map (
      Q(1) => p_0_in8_in,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aclk => aclk,
      fifoaddr(1 downto 0) => fifoaddr(1 downto 0),
      \gen_primitive_shifter.gen_srls[0].srl_inst_0\(0) => \gen_primitive_shifter.gen_srls[0].srl_inst\(0),
      \gen_primitive_shifter.gen_srls[0].srl_inst_1\ => \^s_ready_i_reg_0\,
      m_avalid => m_avalid,
      m_axi_wready(1 downto 0) => m_axi_wready(1 downto 0),
      m_axi_wready_1_sp_1 => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      push => push,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      storage_data1(1 downto 0) => storage_data1(1 downto 0),
      storage_data2(0) => storage_data2(1)
    );
\m_axi_wvalid[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => m_avalid,
      I1 => s_axi_wvalid(0),
      I2 => storage_data1(0),
      I3 => storage_data1(1),
      O => m_axi_wvalid(0)
    );
\m_axi_wvalid[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => m_avalid,
      I1 => s_axi_wvalid(0),
      I2 => storage_data1(0),
      I3 => storage_data1(1),
      O => m_axi_wvalid(1)
    );
\m_valid_i_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      I1 => p_0_in8_in,
      I2 => s_axi_awvalid(0),
      I3 => \gen_primitive_shifter.gen_srls[0].srl_inst\(0),
      I4 => \FSM_onehot_state[1]_i_1_n_0\,
      O => \m_valid_i_i_1__1_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__1_n_0\,
      Q => m_avalid,
      R => areset_d1
    );
\s_axi_wready[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008A0080"
    )
        port map (
      I0 => m_avalid,
      I1 => m_axi_wready(1),
      I2 => storage_data1(0),
      I3 => storage_data1(1),
      I4 => m_axi_wready(0),
      O => s_axi_wready(0)
    );
\s_ready_i_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFEEEEEEEE"
    )
        port map (
      I0 => s_ready_i_i_2_n_0,
      I1 => areset_d1,
      I2 => fifoaddr(0),
      I3 => fifoaddr(1),
      I4 => push,
      I5 => \^s_ready_i_reg_0\,
      O => \s_ready_i_i_1__3_n_0\
    );
s_ready_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      O => s_ready_i_i_2_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__3_n_0\,
      Q => \^s_ready_i_reg_0\,
      R => reset
    );
\storage_data1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => storage_data2(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => s_axi_awaddr(0),
      I3 => load_s1,
      I4 => storage_data1(0),
      O => \storage_data1[0]_i_1_n_0\
    );
\storage_data1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => storage_data2(1),
      I2 => load_s1,
      I3 => storage_data1(1),
      O => \storage_data1[1]_i_1_n_0\
    );
\storage_data1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CFCCCECC"
    )
        port map (
      I0 => p_9_in,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \gen_primitive_shifter.gen_srls[0].srl_inst\(0),
      I3 => s_axi_awvalid(0),
      I4 => p_0_in8_in,
      I5 => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      O => load_s1
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \storage_data1[0]_i_1_n_0\,
      Q => storage_data1(0),
      R => '0'
    );
\storage_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \storage_data1[1]_i_1_n_0\,
      Q => storage_data1(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice is
  port (
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg : out STD_LOGIC;
    chosen41_in : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[1]\ : out STD_LOGIC;
    s_axi_rready_0_sp_1 : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[1]_0\ : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[1]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 36 downto 0 );
    \s_axi_awaddr[31]\ : out STD_LOGIC;
    \m_payload_i_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_ready_i_reg_0 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_valid_i_reg : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_1 : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[0]\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_no_arbiter.m_target_hot_i[1]_i_2\ : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice : entity is "axi_register_slice_v2_1_27_axi_register_slice";
end axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice;

architecture STRUCTURE of axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice is
  signal s_axi_rready_0_sn_1 : STD_LOGIC;
begin
  s_axi_rready_0_sp_1 <= s_axi_rready_0_sn_1;
\b.b_pipe\: entity work.\axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1_8\
     port map (
      D(3 downto 0) => D(3 downto 0),
      E(0) => chosen41_in,
      aclk => aclk,
      chosen(0) => chosen(0),
      \gen_no_arbiter.m_target_hot_i[1]_i_2\ => \gen_no_arbiter.m_target_hot_i[1]_i_2\,
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      \m_payload_i_reg[3]_0\(3 downto 0) => \m_payload_i_reg[3]\(3 downto 0),
      m_valid_i_reg_inv_0 => m_valid_i_reg,
      s_axi_awaddr(0) => s_axi_awaddr(0),
      \s_axi_awaddr[31]\ => \s_axi_awaddr[31]\,
      s_axi_bready(0) => s_axi_bready(0),
      s_ready_i_reg_0 => s_ready_i_reg_0,
      s_ready_i_reg_1 => s_ready_i_reg_1,
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(2 downto 0)
    );
\r.r_pipe\: entity work.\axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2_9\
     port map (
      Q(36 downto 0) => Q(36 downto 0),
      aclk => aclk,
      chosen_0(0) => chosen_0(0),
      \gen_master_slots[0].r_issuing_cnt_reg[0]\ => \gen_master_slots[0].r_issuing_cnt_reg[0]\,
      \gen_master_slots[0].r_issuing_cnt_reg[1]\ => \gen_master_slots[0].r_issuing_cnt_reg[1]\,
      \gen_master_slots[0].r_issuing_cnt_reg[1]_0\ => \gen_master_slots[0].r_issuing_cnt_reg[1]_0\,
      \gen_master_slots[0].r_issuing_cnt_reg[1]_1\ => \gen_master_slots[0].r_issuing_cnt_reg[1]_1\,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(1 downto 0) => m_axi_rid(1 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      m_valid_i_reg_0 => st_mr_rvalid(0),
      m_valid_i_reg_1 => m_valid_i_reg,
      r_issuing_cnt(2 downto 0) => r_issuing_cnt(2 downto 0),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rready_0_sp_1 => s_axi_rready_0_sn_1,
      s_ready_i_reg_0 => s_ready_i_reg,
      s_ready_i_reg_1 => s_ready_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice_1 is
  port (
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[0]\ : out STD_LOGIC;
    st_mr_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[1]\ : out STD_LOGIC;
    s_ready_i_reg : out STD_LOGIC;
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[35]\ : out STD_LOGIC;
    \m_payload_i_reg[36]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \gen_master_slots[1].r_issuing_cnt_reg[9]\ : out STD_LOGIC;
    s_axi_rready_0_sp_1 : out STD_LOGIC;
    \gen_master_slots[1].w_issuing_cnt_reg[10]\ : out STD_LOGIC;
    m_valid_i_reg_inv : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[9]_0\ : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[9]_1\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 22 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_payload_i_reg[3]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i_reg_inv_0 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 27 downto 0 );
    chosen : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi_rlast[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_master_slots[1].r_issuing_cnt_reg[8]\ : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_master_slots[1].w_issuing_cnt_reg[8]\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_bid[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    st_mr_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice_1 : entity is "axi_register_slice_v2_1_27_axi_register_slice";
end axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice_1;

architecture STRUCTURE of axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice_1 is
  signal \^aresetn_d_reg[0]\ : STD_LOGIC;
  signal \^aresetn_d_reg[1]\ : STD_LOGIC;
  signal s_axi_rready_0_sn_1 : STD_LOGIC;
begin
  \aresetn_d_reg[0]\ <= \^aresetn_d_reg[0]\;
  \aresetn_d_reg[1]\ <= \^aresetn_d_reg[1]\;
  s_axi_rready_0_sp_1 <= s_axi_rready_0_sn_1;
\b.b_pipe\: entity work.\axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1_6\
     port map (
      D(3 downto 0) => D(3 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]_0\ => \^aresetn_d_reg[0]\,
      \aresetn_d_reg[1]_0\ => \aresetn_d_reg[1]_0\,
      \aresetn_d_reg[1]_1\ => \^aresetn_d_reg[1]\,
      chosen_0(1 downto 0) => chosen_0(1 downto 0),
      \gen_master_slots[1].w_issuing_cnt_reg[10]\ => \gen_master_slots[1].w_issuing_cnt_reg[10]\,
      \gen_master_slots[1].w_issuing_cnt_reg[8]\ => \gen_master_slots[1].w_issuing_cnt_reg[8]\,
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      \m_payload_i_reg[3]_0\(1 downto 0) => \m_payload_i_reg[3]\(1 downto 0),
      m_valid_i_reg_inv_0 => E(0),
      m_valid_i_reg_inv_1 => m_valid_i_reg_inv,
      m_valid_i_reg_inv_2 => m_valid_i_reg_inv_0,
      s_axi_bid(1 downto 0) => s_axi_bid(1 downto 0),
      \s_axi_bid[1]\(3 downto 0) => \s_axi_bid[1]\(3 downto 0),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      st_mr_bvalid(0) => st_mr_bvalid(0),
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(2 downto 0)
    );
\r.r_pipe\: entity work.\axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2_7\
     port map (
      Q(27 downto 0) => Q(27 downto 0),
      aclk => aclk,
      chosen(1 downto 0) => chosen(1 downto 0),
      \gen_master_slots[1].r_issuing_cnt_reg[8]\ => \gen_master_slots[1].r_issuing_cnt_reg[8]\,
      \gen_master_slots[1].r_issuing_cnt_reg[9]\ => \gen_master_slots[1].r_issuing_cnt_reg[9]\,
      \gen_master_slots[1].r_issuing_cnt_reg[9]_0\ => \gen_master_slots[1].r_issuing_cnt_reg[9]_0\,
      \gen_master_slots[1].r_issuing_cnt_reg[9]_1\ => \gen_master_slots[1].r_issuing_cnt_reg[9]_1\,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(1 downto 0) => m_axi_rid(1 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[35]_0\ => \m_payload_i_reg[35]\,
      \m_payload_i_reg[36]_0\(10 downto 0) => \m_payload_i_reg[36]\(10 downto 0),
      m_valid_i_reg_0 => st_mr_rvalid(0),
      m_valid_i_reg_1 => \^aresetn_d_reg[1]\,
      r_issuing_cnt(2 downto 0) => r_issuing_cnt(2 downto 0),
      s_axi_rdata(22 downto 0) => s_axi_rdata(22 downto 0),
      s_axi_rid(1 downto 0) => s_axi_rid(1 downto 0),
      s_axi_rlast(0) => s_axi_rlast(0),
      \s_axi_rlast[0]\(0) => \s_axi_rlast[0]\(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rready_0_sp_1 => s_axi_rready_0_sn_1,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_ready_i_reg_0 => s_ready_i_reg,
      s_ready_i_reg_1 => \^aresetn_d_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice_2 is
  port (
    st_mr_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    mi_bready_2 : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg : in STD_LOGIC;
    mi_bvalid_2 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    chosen : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_0 : in STD_LOGIC;
    chosen_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice_2 : entity is "axi_register_slice_v2_1_27_axi_register_slice";
end axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice_2;

architecture STRUCTURE of axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice_2 is
begin
\b.b_pipe\: entity work.\axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized1\
     port map (
      aclk => aclk,
      chosen(0) => chosen(0),
      m_valid_i_reg_0 => st_mr_bvalid(0),
      m_valid_i_reg_1 => m_valid_i_reg_0,
      m_valid_i_reg_2 => m_valid_i_reg_1,
      mi_bready_2 => mi_bready_2,
      mi_bvalid_2 => mi_bvalid_2,
      s_axi_bready(0) => s_axi_bready(0),
      s_ready_i_reg_0 => s_ready_i_reg,
      s_ready_i_reg_1 => s_ready_i_reg_0
    );
\r.r_pipe\: entity work.\axi_crossbar_0_axi_register_slice_v2_1_27_axic_register_slice__parameterized2\
     port map (
      aclk => aclk,
      chosen_0(0) => chosen_0(0),
      m_valid_i_reg_0(0) => m_valid_i_reg(0),
      m_valid_i_reg_1 => m_valid_i_reg_1,
      s_axi_rready(0) => s_axi_rready(0),
      s_ready_i_reg_0 => s_ready_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_crossbar_v2_1_28_wdata_router is
  port (
    ss_wr_awready : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid_0_sp_1 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mi_bready_2 : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_primitive_shifter.gen_srls[0].srl_inst\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_rep[0].fifoaddr_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_crossbar_v2_1_28_wdata_router : entity is "axi_crossbar_v2_1_28_wdata_router";
end axi_crossbar_0_axi_crossbar_v2_1_28_wdata_router;

architecture STRUCTURE of axi_crossbar_0_axi_crossbar_v2_1_28_wdata_router is
  signal s_axi_wvalid_0_sn_1 : STD_LOGIC;
begin
  s_axi_wvalid_0_sp_1 <= s_axi_wvalid_0_sn_1;
wrouter_aw_fifo: entity work.axi_crossbar_0_axi_data_fifo_v2_1_26_axic_reg_srl_fifo
     port map (
      E(0) => E(0),
      \FSM_onehot_state_reg[1]_0\ => \FSM_onehot_state_reg[1]\,
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      \gen_primitive_shifter.gen_srls[0].srl_inst\(0) => \gen_primitive_shifter.gen_srls[0].srl_inst\(0),
      \gen_rep[0].fifoaddr_reg[0]_0\ => \gen_rep[0].fifoaddr_reg[0]\,
      m_axi_wready(1 downto 0) => m_axi_wready(1 downto 0),
      m_axi_wvalid(1 downto 0) => m_axi_wvalid(1 downto 0),
      mi_bready_2 => mi_bready_2,
      reset => reset,
      s_axi_awaddr(0) => s_axi_awaddr(0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      s_axi_wvalid_0_sp_1 => s_axi_wvalid_0_sn_1,
      s_ready_i_reg_0 => ss_wr_awready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_crossbar_v2_1_28_crossbar is
  port (
    \gen_no_arbiter.s_ready_i_reg[0]\ : out STD_LOGIC;
    \m_ready_d_reg[0]\ : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 58 downto 0 );
    M_AXI_RREADY : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_no_arbiter.m_mesg_i_reg[63]\ : out STD_LOGIC_VECTOR ( 58 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \gen_no_arbiter.m_mesg_i_reg[63]_0\ : in STD_LOGIC_VECTOR ( 56 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_crossbar_v2_1_28_crossbar : entity is "axi_crossbar_v2_1_28_crossbar";
end axi_crossbar_0_axi_crossbar_v2_1_28_crossbar;

architecture STRUCTURE of axi_crossbar_0_axi_crossbar_v2_1_28_crossbar is
  signal aa_mi_awtarget_hot : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal addr_arbiter_ar_n_2 : STD_LOGIC;
  signal addr_arbiter_ar_n_3 : STD_LOGIC;
  signal addr_arbiter_ar_n_4 : STD_LOGIC;
  signal addr_arbiter_ar_n_7 : STD_LOGIC;
  signal addr_arbiter_ar_n_8 : STD_LOGIC;
  signal addr_arbiter_aw_n_2 : STD_LOGIC;
  signal addr_arbiter_aw_n_3 : STD_LOGIC;
  signal addr_arbiter_aw_n_4 : STD_LOGIC;
  signal addr_arbiter_aw_n_5 : STD_LOGIC;
  signal addr_arbiter_aw_n_6 : STD_LOGIC;
  signal addr_arbiter_aw_n_7 : STD_LOGIC;
  signal addr_arbiter_aw_n_8 : STD_LOGIC;
  signal aresetn_d : STD_LOGIC;
  signal \gen_decerr_slave.decerr_slave_inst_n_1\ : STD_LOGIC;
  signal \gen_decerr_slave.decerr_slave_inst_n_2\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_4\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_45\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_5\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_6\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_7\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_1\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_19\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_20\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_21\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_22\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_23\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_24\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_3\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_5\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_59\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_7\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_3\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst/chosen\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gen_multi_thread.arbiter_resp_inst/chosen41_in\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst/chosen_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^gen_no_arbiter.s_ready_i_reg[0]\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_0\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_2\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.wdata_router_w_n_4\ : STD_LOGIC;
  signal m_ready_d : STD_LOGIC_VECTOR ( 1 to 1 );
  signal m_ready_d_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^m_ready_d_reg[0]\ : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal mi_bready_2 : STD_LOGIC;
  signal mi_bvalid_2 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal r_issuing_cnt : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal reset : STD_LOGIC;
  signal s_axi_bvalid_i : STD_LOGIC;
  signal \^s_axi_rlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal splitter_aw_mi_n_1 : STD_LOGIC;
  signal ss_aa_awready : STD_LOGIC;
  signal ss_wr_awready : STD_LOGIC;
  signal st_mr_bid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal st_mr_bmesg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_mr_bvalid : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal st_mr_rid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal st_mr_rlast : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_mr_rmesg : STD_LOGIC_VECTOR ( 66 downto 0 );
  signal st_mr_rvalid : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal w_issuing_cnt : STD_LOGIC_VECTOR ( 10 downto 0 );
begin
  \gen_no_arbiter.s_ready_i_reg[0]\ <= \^gen_no_arbiter.s_ready_i_reg[0]\;
  \m_ready_d_reg[0]\ <= \^m_ready_d_reg[0]\;
  s_axi_rlast(0) <= \^s_axi_rlast\(0);
addr_arbiter_ar: entity work.axi_crossbar_0_axi_crossbar_v2_1_28_addr_arbiter
     port map (
      D(58 downto 2) => \gen_no_arbiter.m_mesg_i_reg[63]_0\(56 downto 0),
      D(1 downto 0) => s_axi_arid(1 downto 0),
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_master_slots[0].r_issuing_cnt_reg[0]\ => addr_arbiter_ar_n_3,
      \gen_master_slots[1].r_issuing_cnt_reg[8]\ => addr_arbiter_ar_n_2,
      \gen_no_arbiter.m_mesg_i_reg[63]_0\(58 downto 0) => \gen_no_arbiter.m_mesg_i_reg[63]\(58 downto 0),
      \gen_no_arbiter.m_valid_i_reg_inv_0\ => addr_arbiter_ar_n_8,
      \gen_no_arbiter.s_ready_i_reg[0]_0\ => \^gen_no_arbiter.s_ready_i_reg[0]\,
      \gen_no_arbiter.s_ready_i_reg[0]_1\ => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_0\,
      m_axi_arready(1 downto 0) => m_axi_arready(1 downto 0),
      m_axi_arready_0_sp_1 => addr_arbiter_ar_n_7,
      m_axi_arready_1_sp_1 => addr_arbiter_ar_n_4,
      m_axi_arvalid(1 downto 0) => m_axi_arvalid(1 downto 0),
      m_valid_i => m_valid_i,
      r_issuing_cnt(5 downto 3) => r_issuing_cnt(10 downto 8),
      r_issuing_cnt(2 downto 0) => r_issuing_cnt(2 downto 0),
      reset => reset,
      s_axi_arvalid(0) => s_axi_arvalid(0)
    );
addr_arbiter_aw: entity work.axi_crossbar_0_axi_crossbar_v2_1_28_addr_arbiter_0
     port map (
      D(58 downto 34) => D(24 downto 0),
      D(33 downto 2) => s_axi_awaddr(31 downto 0),
      D(1 downto 0) => s_axi_awid(1 downto 0),
      Q(58 downto 0) => Q(58 downto 0),
      SR(0) => reset,
      aa_mi_awtarget_hot(1 downto 0) => aa_mi_awtarget_hot(1 downto 0),
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_master_slots[0].w_issuing_cnt_reg[1]\ => addr_arbiter_aw_n_2,
      \gen_master_slots[0].w_issuing_cnt_reg[1]_0\ => addr_arbiter_aw_n_7,
      \gen_master_slots[0].w_issuing_cnt_reg[1]_1\ => addr_arbiter_aw_n_8,
      \gen_master_slots[0].w_issuing_cnt_reg[2]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5\,
      \gen_master_slots[1].w_issuing_cnt_reg[10]\ => \gen_master_slots[1].reg_slice_mi_n_22\,
      \gen_no_arbiter.m_target_hot_i_reg[1]_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_4\,
      \gen_no_arbiter.m_valid_i_reg_inv_0\ => splitter_aw_mi_n_1,
      \gen_no_arbiter.s_ready_i_reg[0]_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_3\,
      m_axi_awready(1 downto 0) => m_axi_awready(1 downto 0),
      m_axi_awready_0_sp_1 => addr_arbiter_aw_n_3,
      m_axi_awready_1_sp_1 => addr_arbiter_aw_n_5,
      m_axi_awvalid(1 downto 0) => m_axi_awvalid(1 downto 0),
      m_ready_d(0) => m_ready_d_1(1),
      p_1_in => p_1_in,
      s_axi_bready(0) => s_axi_bready(0),
      \s_axi_bready[0]_0\ => addr_arbiter_aw_n_6,
      s_axi_bready_0_sp_1 => addr_arbiter_aw_n_4,
      ss_aa_awready => ss_aa_awready,
      w_issuing_cnt(5 downto 3) => w_issuing_cnt(10 downto 8),
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(2 downto 0)
    );
aresetn_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => aresetn_d,
      R => '0'
    );
\gen_decerr_slave.decerr_slave_inst\: entity work.axi_crossbar_0_axi_crossbar_v2_1_28_decerr_slave
     port map (
      E(0) => s_axi_bvalid_i,
      Q(1) => \gen_decerr_slave.decerr_slave_inst_n_1\,
      Q(0) => \gen_decerr_slave.decerr_slave_inst_n_2\,
      aclk => aclk,
      \gen_axi.s_axi_bvalid_i_reg_0\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_4\,
      mi_bvalid_2 => mi_bvalid_2,
      reset => reset
    );
\gen_master_slots[0].r_issuing_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[0].reg_slice_mi_n_4\,
      Q => r_issuing_cnt(0),
      R => reset
    );
\gen_master_slots[0].r_issuing_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[0].reg_slice_mi_n_7\,
      Q => r_issuing_cnt(1),
      R => reset
    );
\gen_master_slots[0].r_issuing_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[0].reg_slice_mi_n_6\,
      Q => r_issuing_cnt(2),
      R => reset
    );
\gen_master_slots[0].reg_slice_mi\: entity work.axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice
     port map (
      D(3 downto 2) => m_axi_bid(1 downto 0),
      D(1 downto 0) => m_axi_bresp(1 downto 0),
      Q(36 downto 35) => st_mr_rid(1 downto 0),
      Q(34) => st_mr_rlast(0),
      Q(33 downto 32) => st_mr_rmesg(1 downto 0),
      Q(31 downto 0) => st_mr_rmesg(34 downto 3),
      aclk => aclk,
      chosen(0) => \gen_multi_thread.arbiter_resp_inst/chosen_0\(0),
      chosen41_in => \gen_multi_thread.arbiter_resp_inst/chosen41_in\,
      chosen_0(0) => \gen_multi_thread.arbiter_resp_inst/chosen\(0),
      \gen_master_slots[0].r_issuing_cnt_reg[0]\ => addr_arbiter_ar_n_7,
      \gen_master_slots[0].r_issuing_cnt_reg[1]\ => \gen_master_slots[0].reg_slice_mi_n_4\,
      \gen_master_slots[0].r_issuing_cnt_reg[1]_0\ => \gen_master_slots[0].reg_slice_mi_n_6\,
      \gen_master_slots[0].r_issuing_cnt_reg[1]_1\ => \gen_master_slots[0].reg_slice_mi_n_7\,
      \gen_no_arbiter.m_target_hot_i[1]_i_2\ => \gen_master_slots[1].reg_slice_mi_n_59\,
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(1 downto 0) => m_axi_rid(1 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[3]\(3 downto 2) => st_mr_bid(1 downto 0),
      \m_payload_i_reg[3]\(1 downto 0) => st_mr_bmesg(1 downto 0),
      m_valid_i_reg => \gen_master_slots[1].reg_slice_mi_n_3\,
      r_issuing_cnt(2 downto 0) => r_issuing_cnt(2 downto 0),
      s_axi_awaddr(0) => s_axi_awaddr(31),
      \s_axi_awaddr[31]\ => \gen_master_slots[0].reg_slice_mi_n_45\,
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rready_0_sp_1 => \gen_master_slots[0].reg_slice_mi_n_5\,
      s_ready_i_reg => M_AXI_RREADY(0),
      s_ready_i_reg_0 => \gen_master_slots[1].reg_slice_mi_n_1\,
      s_ready_i_reg_1 => \gen_master_slots[1].reg_slice_mi_n_5\,
      st_mr_rvalid(0) => st_mr_rvalid(0),
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(2 downto 0)
    );
\gen_master_slots[0].w_issuing_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_2,
      Q => w_issuing_cnt(0),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_8,
      Q => w_issuing_cnt(1),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_7,
      Q => w_issuing_cnt(2),
      R => reset
    );
\gen_master_slots[1].r_issuing_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[1].reg_slice_mi_n_23\,
      Q => r_issuing_cnt(10),
      R => reset
    );
\gen_master_slots[1].r_issuing_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[1].reg_slice_mi_n_19\,
      Q => r_issuing_cnt(8),
      R => reset
    );
\gen_master_slots[1].r_issuing_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[1].reg_slice_mi_n_24\,
      Q => r_issuing_cnt(9),
      R => reset
    );
\gen_master_slots[1].reg_slice_mi\: entity work.axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice_1
     port map (
      D(3 downto 2) => m_axi_bid(3 downto 2),
      D(1 downto 0) => m_axi_bresp(3 downto 2),
      E(0) => st_mr_bvalid(1),
      Q(27 downto 26) => st_mr_rid(1 downto 0),
      Q(25) => st_mr_rlast(0),
      Q(24 downto 23) => st_mr_rmesg(1 downto 0),
      Q(22 downto 20) => st_mr_rmesg(34 downto 32),
      Q(19 downto 14) => st_mr_rmesg(29 downto 24),
      Q(13 downto 12) => st_mr_rmesg(22 downto 21),
      Q(11 downto 10) => st_mr_rmesg(19 downto 18),
      Q(9 downto 4) => st_mr_rmesg(16 downto 11),
      Q(3 downto 1) => st_mr_rmesg(9 downto 7),
      Q(0) => st_mr_rmesg(5),
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]\ => \gen_master_slots[1].reg_slice_mi_n_1\,
      \aresetn_d_reg[1]\ => \gen_master_slots[1].reg_slice_mi_n_3\,
      \aresetn_d_reg[1]_0\ => \gen_master_slots[1].reg_slice_mi_n_5\,
      chosen(1 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen\(2 downto 1),
      chosen_0(1 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen_0\(2 downto 1),
      \gen_master_slots[1].r_issuing_cnt_reg[8]\ => addr_arbiter_ar_n_4,
      \gen_master_slots[1].r_issuing_cnt_reg[9]\ => \gen_master_slots[1].reg_slice_mi_n_19\,
      \gen_master_slots[1].r_issuing_cnt_reg[9]_0\ => \gen_master_slots[1].reg_slice_mi_n_23\,
      \gen_master_slots[1].r_issuing_cnt_reg[9]_1\ => \gen_master_slots[1].reg_slice_mi_n_24\,
      \gen_master_slots[1].w_issuing_cnt_reg[10]\ => \gen_master_slots[1].reg_slice_mi_n_21\,
      \gen_master_slots[1].w_issuing_cnt_reg[8]\ => addr_arbiter_aw_n_5,
      m_axi_bready(0) => m_axi_bready(1),
      m_axi_bvalid(0) => m_axi_bvalid(1),
      m_axi_rdata(31 downto 0) => m_axi_rdata(63 downto 32),
      m_axi_rid(1 downto 0) => m_axi_rid(3 downto 2),
      m_axi_rlast(0) => m_axi_rlast(1),
      m_axi_rresp(1 downto 0) => m_axi_rresp(3 downto 2),
      m_axi_rvalid(0) => m_axi_rvalid(1),
      \m_payload_i_reg[35]\ => \gen_master_slots[1].reg_slice_mi_n_7\,
      \m_payload_i_reg[36]\(10) => st_mr_rid(3),
      \m_payload_i_reg[36]\(9) => st_mr_rlast(1),
      \m_payload_i_reg[36]\(8 downto 7) => st_mr_rmesg(66 downto 65),
      \m_payload_i_reg[36]\(6) => st_mr_rmesg(58),
      \m_payload_i_reg[36]\(5) => st_mr_rmesg(55),
      \m_payload_i_reg[36]\(4) => st_mr_rmesg(52),
      \m_payload_i_reg[36]\(3) => st_mr_rmesg(45),
      \m_payload_i_reg[36]\(2) => st_mr_rmesg(41),
      \m_payload_i_reg[36]\(1 downto 0) => st_mr_rmesg(39 downto 38),
      \m_payload_i_reg[3]\(1 downto 0) => st_mr_bid(3 downto 2),
      m_valid_i_reg_inv => \gen_master_slots[1].reg_slice_mi_n_22\,
      m_valid_i_reg_inv_0 => \gen_master_slots[1].reg_slice_mi_n_59\,
      r_issuing_cnt(2 downto 0) => r_issuing_cnt(10 downto 8),
      s_axi_bid(1 downto 0) => s_axi_bid(1 downto 0),
      \s_axi_bid[1]\(3 downto 2) => st_mr_bid(1 downto 0),
      \s_axi_bid[1]\(1 downto 0) => st_mr_bmesg(1 downto 0),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_rdata(22 downto 20) => s_axi_rdata(31 downto 29),
      s_axi_rdata(19 downto 14) => s_axi_rdata(26 downto 21),
      s_axi_rdata(13 downto 12) => s_axi_rdata(19 downto 18),
      s_axi_rdata(11 downto 10) => s_axi_rdata(16 downto 15),
      s_axi_rdata(9 downto 4) => s_axi_rdata(13 downto 8),
      s_axi_rdata(3 downto 1) => s_axi_rdata(6 downto 4),
      s_axi_rdata(0) => s_axi_rdata(2),
      s_axi_rid(1 downto 0) => s_axi_rid(1 downto 0),
      s_axi_rlast(0) => \^s_axi_rlast\(0),
      \s_axi_rlast[0]\(0) => st_mr_rvalid(2),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rready_0_sp_1 => \gen_master_slots[1].reg_slice_mi_n_20\,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_ready_i_reg => M_AXI_RREADY(1),
      st_mr_bvalid(0) => st_mr_bvalid(2),
      st_mr_rvalid(0) => st_mr_rvalid(1),
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(10 downto 8)
    );
\gen_master_slots[1].w_issuing_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_4,
      Q => w_issuing_cnt(10),
      R => reset
    );
\gen_master_slots[1].w_issuing_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[1].reg_slice_mi_n_21\,
      Q => w_issuing_cnt(8),
      R => reset
    );
\gen_master_slots[1].w_issuing_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_6,
      Q => w_issuing_cnt(9),
      R => reset
    );
\gen_master_slots[2].reg_slice_mi\: entity work.axi_crossbar_0_axi_register_slice_v2_1_27_axi_register_slice_2
     port map (
      aclk => aclk,
      chosen(0) => \gen_multi_thread.arbiter_resp_inst/chosen_0\(2),
      chosen_0(0) => \gen_multi_thread.arbiter_resp_inst/chosen\(2),
      m_valid_i_reg(0) => st_mr_rvalid(2),
      m_valid_i_reg_0 => \gen_master_slots[2].reg_slice_mi_n_3\,
      m_valid_i_reg_1 => \gen_master_slots[1].reg_slice_mi_n_3\,
      mi_bready_2 => mi_bready_2,
      mi_bvalid_2 => mi_bvalid_2,
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_ready_i_reg => \gen_master_slots[1].reg_slice_mi_n_1\,
      s_ready_i_reg_0 => \gen_master_slots[1].reg_slice_mi_n_5\,
      st_mr_bvalid(0) => st_mr_bvalid(2)
    );
\gen_slave_slots[0].gen_si_read.si_transactor_ar\: entity work.axi_crossbar_0_axi_crossbar_v2_1_28_si_transactor
     port map (
      D(2) => \gen_no_arbiter.m_mesg_i_reg[63]_0\(31),
      D(1 downto 0) => s_axi_arid(1 downto 0),
      Q(1) => st_mr_rid(1),
      Q(0) => st_mr_rlast(0),
      aclk => aclk,
      aresetn_d => aresetn_d,
      aresetn_d_reg => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_0\,
      chosen(2 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen\(2 downto 0),
      \gen_multi_thread.accept_cnt_reg[0]_0\ => \^gen_no_arbiter.s_ready_i_reg[0]\,
      \gen_multi_thread.gen_thread_loop[0].active_cnt_reg[0]_0\ => \gen_master_slots[1].reg_slice_mi_n_7\,
      \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3\(1) => st_mr_rid(3),
      \gen_multi_thread.gen_thread_loop[3].active_cnt[26]_i_3\(0) => st_mr_rlast(1),
      \gen_no_arbiter.s_ready_i[0]_i_2\ => \gen_master_slots[1].reg_slice_mi_n_20\,
      \gen_no_arbiter.s_ready_i[0]_i_2_0\ => addr_arbiter_ar_n_2,
      \gen_no_arbiter.s_ready_i[0]_i_2_1\ => \gen_master_slots[0].reg_slice_mi_n_5\,
      \gen_no_arbiter.s_ready_i[0]_i_2_2\ => addr_arbiter_ar_n_3,
      \gen_no_arbiter.s_ready_i[0]_i_2_3\ => addr_arbiter_ar_n_8,
      m_valid_i => m_valid_i,
      reset => reset,
      s_axi_rdata(8 downto 7) => s_axi_rdata(28 downto 27),
      s_axi_rdata(6) => s_axi_rdata(20),
      s_axi_rdata(5) => s_axi_rdata(17),
      s_axi_rdata(4) => s_axi_rdata(14),
      s_axi_rdata(3) => s_axi_rdata(7),
      s_axi_rdata(2) => s_axi_rdata(3),
      s_axi_rdata(1 downto 0) => s_axi_rdata(1 downto 0),
      s_axi_rlast(0) => \^s_axi_rlast\(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rvalid(0) => s_axi_rvalid(0),
      st_mr_rmesg(17 downto 16) => st_mr_rmesg(66 downto 65),
      st_mr_rmesg(15) => st_mr_rmesg(58),
      st_mr_rmesg(14) => st_mr_rmesg(55),
      st_mr_rmesg(13) => st_mr_rmesg(52),
      st_mr_rmesg(12) => st_mr_rmesg(45),
      st_mr_rmesg(11) => st_mr_rmesg(41),
      st_mr_rmesg(10 downto 9) => st_mr_rmesg(39 downto 38),
      st_mr_rmesg(8 downto 7) => st_mr_rmesg(31 downto 30),
      st_mr_rmesg(6) => st_mr_rmesg(23),
      st_mr_rmesg(5) => st_mr_rmesg(20),
      st_mr_rmesg(4) => st_mr_rmesg(17),
      st_mr_rmesg(3) => st_mr_rmesg(10),
      st_mr_rmesg(2) => st_mr_rmesg(6),
      st_mr_rmesg(1 downto 0) => st_mr_rmesg(4 downto 3),
      st_mr_rvalid(2 downto 0) => st_mr_rvalid(2 downto 0)
    );
\gen_slave_slots[0].gen_si_write.si_transactor_aw\: entity work.\axi_crossbar_0_axi_crossbar_v2_1_28_si_transactor__parameterized0\
     port map (
      D(2) => s_axi_awaddr(31),
      D(1 downto 0) => s_axi_awid(1 downto 0),
      aclk => aclk,
      aresetn_d => aresetn_d,
      aresetn_d_reg => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_3\,
      chosen(2 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen_0\(2 downto 0),
      chosen41_in => \gen_multi_thread.arbiter_resp_inst/chosen41_in\,
      \gen_multi_thread.accept_cnt_reg[0]_0\ => \^m_ready_d_reg[0]\,
      \gen_multi_thread.gen_thread_loop[3].active_cnt_reg[26]_0\ => \gen_master_slots[2].reg_slice_mi_n_3\,
      \gen_no_arbiter.m_target_hot_i[1]_i_2\ => \gen_master_slots[1].reg_slice_mi_n_22\,
      \gen_no_arbiter.s_ready_i_reg[0]\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_2\,
      \gen_no_arbiter.s_ready_i_reg[0]_0\ => \gen_master_slots[0].reg_slice_mi_n_45\,
      p_1_in => p_1_in,
      reset => reset,
      \s_axi_awvalid[0]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_4\,
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bready_0_sp_1 => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5\,
      s_axi_bvalid(0) => s_axi_bvalid(0),
      st_mr_bid(3 downto 0) => st_mr_bid(3 downto 0),
      st_mr_bvalid(1 downto 0) => st_mr_bvalid(2 downto 1)
    );
\gen_slave_slots[0].gen_si_write.splitter_aw_si\: entity work.axi_crossbar_0_axi_crossbar_v2_1_28_splitter
     port map (
      aclk => aclk,
      aresetn_d => aresetn_d,
      \m_ready_d_reg[0]_0\ => \^m_ready_d_reg[0]\,
      \m_ready_d_reg[1]_0\(0) => m_ready_d(1),
      \m_ready_d_reg[1]_1\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_4\,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      \s_axi_awvalid[0]_0\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3\,
      s_axi_awvalid_0_sp_1 => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_2\,
      ss_aa_awready => ss_aa_awready,
      ss_wr_awready => ss_wr_awready
    );
\gen_slave_slots[0].gen_si_write.wdata_router_w\: entity work.axi_crossbar_0_axi_crossbar_v2_1_28_wdata_router
     port map (
      E(0) => s_axi_bvalid_i,
      \FSM_onehot_state_reg[1]\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3\,
      Q(1) => \gen_decerr_slave.decerr_slave_inst_n_1\,
      Q(0) => \gen_decerr_slave.decerr_slave_inst_n_2\,
      aclk => aclk,
      \gen_primitive_shifter.gen_srls[0].srl_inst\(0) => m_ready_d(1),
      \gen_rep[0].fifoaddr_reg[0]\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_4\,
      m_axi_wready(1 downto 0) => m_axi_wready(1 downto 0),
      m_axi_wvalid(1 downto 0) => m_axi_wvalid(1 downto 0),
      mi_bready_2 => mi_bready_2,
      reset => reset,
      s_axi_awaddr(0) => s_axi_awaddr(31),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      s_axi_wvalid_0_sp_1 => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_4\,
      ss_wr_awready => ss_wr_awready
    );
splitter_aw_mi: entity work.axi_crossbar_0_axi_crossbar_v2_1_28_splitter_3
     port map (
      aa_mi_awtarget_hot(1 downto 0) => aa_mi_awtarget_hot(1 downto 0),
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_no_arbiter.m_valid_i_reg_inv\ => splitter_aw_mi_n_1,
      \gen_no_arbiter.m_valid_i_reg_inv_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_4\,
      m_axi_awready(1 downto 0) => m_axi_awready(1 downto 0),
      \m_ready_d_reg[1]_0\(0) => m_ready_d_1(1),
      \m_ready_d_reg[1]_1\ => addr_arbiter_aw_n_3,
      p_1_in => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wuser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 2;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 1;
  attribute C_CONNECTIVITY_MODE : integer;
  attribute C_CONNECTIVITY_MODE of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 1;
  attribute C_DEBUG : integer;
  attribute C_DEBUG of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "artix7";
  attribute C_M_AXI_ADDR_WIDTH : string;
  attribute C_M_AXI_ADDR_WIDTH of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "64'b0000000000000000000000000001111100000000000000000000000000011111";
  attribute C_M_AXI_BASE_ADDR : string;
  attribute C_M_AXI_BASE_ADDR of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "128'b00000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_M_AXI_READ_CONNECTIVITY : string;
  attribute C_M_AXI_READ_CONNECTIVITY of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_M_AXI_READ_ISSUING : string;
  attribute C_M_AXI_READ_ISSUING of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "64'b0000000000000000000000000000010000000000000000000000000000000100";
  attribute C_M_AXI_SECURE : string;
  attribute C_M_AXI_SECURE of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_M_AXI_WRITE_CONNECTIVITY : string;
  attribute C_M_AXI_WRITE_CONNECTIVITY of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_M_AXI_WRITE_ISSUING : string;
  attribute C_M_AXI_WRITE_ISSUING of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "64'b0000000000000000000000000000010000000000000000000000000000000100";
  attribute C_NUM_ADDR_RANGES : integer;
  attribute C_NUM_ADDR_RANGES of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 1;
  attribute C_NUM_MASTER_SLOTS : integer;
  attribute C_NUM_MASTER_SLOTS of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 2;
  attribute C_NUM_SLAVE_SLOTS : integer;
  attribute C_NUM_SLAVE_SLOTS of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 1;
  attribute C_R_REGISTER : integer;
  attribute C_R_REGISTER of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 0;
  attribute C_S_AXI_ARB_PRIORITY : integer;
  attribute C_S_AXI_ARB_PRIORITY of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 0;
  attribute C_S_AXI_BASE_ID : integer;
  attribute C_S_AXI_BASE_ID of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 0;
  attribute C_S_AXI_READ_ACCEPTANCE : integer;
  attribute C_S_AXI_READ_ACCEPTANCE of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 4;
  attribute C_S_AXI_SINGLE_THREAD : integer;
  attribute C_S_AXI_SINGLE_THREAD of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 0;
  attribute C_S_AXI_THREAD_ID_WIDTH : integer;
  attribute C_S_AXI_THREAD_ID_WIDTH of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 2;
  attribute C_S_AXI_WRITE_ACCEPTANCE : integer;
  attribute C_S_AXI_WRITE_ACCEPTANCE of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 4;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "axi_crossbar_v2_1_28_axi_crossbar";
  attribute P_ADDR_DECODE : integer;
  attribute P_ADDR_DECODE of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "3'b010";
  attribute P_FAMILY : string;
  attribute P_FAMILY of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "artix7";
  attribute P_INCR : string;
  attribute P_INCR of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "2'b01";
  attribute P_LEN : integer;
  attribute P_LEN of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 8;
  attribute P_LOCK : integer;
  attribute P_LOCK of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 1;
  attribute P_M_AXI_ERR_MODE : string;
  attribute P_M_AXI_ERR_MODE of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute P_M_AXI_SUPPORTS_READ : string;
  attribute P_M_AXI_SUPPORTS_READ of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "2'b11";
  attribute P_M_AXI_SUPPORTS_WRITE : string;
  attribute P_M_AXI_SUPPORTS_WRITE of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "2'b11";
  attribute P_ONES : string;
  attribute P_ONES of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "65'b11111111111111111111111111111111111111111111111111111111111111111";
  attribute P_RANGE_CHECK : integer;
  attribute P_RANGE_CHECK of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is 1;
  attribute P_S_AXI_BASE_ID : string;
  attribute P_S_AXI_BASE_ID of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_HIGH_ID : string;
  attribute P_S_AXI_HIGH_ID of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000011";
  attribute P_S_AXI_SUPPORTS_READ : string;
  attribute P_S_AXI_SUPPORTS_READ of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "1'b1";
  attribute P_S_AXI_SUPPORTS_WRITE : string;
  attribute P_S_AXI_SUPPORTS_WRITE of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar : entity is "1'b1";
end axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar;

architecture STRUCTURE of axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_arcache\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_arid\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \^m_axi_arlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axi_arlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_arqos\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_arsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_awcache\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_awid\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \^m_axi_awlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axi_awlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_awqos\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_awsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_wlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \^s_axi_wdata\(31 downto 0) <= s_axi_wdata(31 downto 0);
  \^s_axi_wlast\(0) <= s_axi_wlast(0);
  \^s_axi_wstrb\(3 downto 0) <= s_axi_wstrb(3 downto 0);
  m_axi_araddr(63 downto 32) <= \^m_axi_araddr\(31 downto 0);
  m_axi_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  m_axi_arburst(3 downto 2) <= \^m_axi_arburst\(1 downto 0);
  m_axi_arburst(1 downto 0) <= \^m_axi_arburst\(1 downto 0);
  m_axi_arcache(7 downto 4) <= \^m_axi_arcache\(3 downto 0);
  m_axi_arcache(3 downto 0) <= \^m_axi_arcache\(3 downto 0);
  m_axi_arid(3 downto 2) <= \^m_axi_arid\(3 downto 2);
  m_axi_arid(1 downto 0) <= \^m_axi_arid\(3 downto 2);
  m_axi_arlen(15 downto 8) <= \^m_axi_arlen\(7 downto 0);
  m_axi_arlen(7 downto 0) <= \^m_axi_arlen\(7 downto 0);
  m_axi_arlock(1) <= \^m_axi_arlock\(0);
  m_axi_arlock(0) <= \^m_axi_arlock\(0);
  m_axi_arprot(5 downto 3) <= \^m_axi_arprot\(2 downto 0);
  m_axi_arprot(2 downto 0) <= \^m_axi_arprot\(2 downto 0);
  m_axi_arqos(7 downto 4) <= \^m_axi_arqos\(3 downto 0);
  m_axi_arqos(3 downto 0) <= \^m_axi_arqos\(3 downto 0);
  m_axi_arregion(7) <= \<const0>\;
  m_axi_arregion(6) <= \<const0>\;
  m_axi_arregion(5) <= \<const0>\;
  m_axi_arregion(4) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(5 downto 3) <= \^m_axi_arsize\(2 downto 0);
  m_axi_arsize(2 downto 0) <= \^m_axi_arsize\(2 downto 0);
  m_axi_aruser(1) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awaddr(63 downto 32) <= \^m_axi_awaddr\(31 downto 0);
  m_axi_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  m_axi_awburst(3 downto 2) <= \^m_axi_awburst\(1 downto 0);
  m_axi_awburst(1 downto 0) <= \^m_axi_awburst\(1 downto 0);
  m_axi_awcache(7 downto 4) <= \^m_axi_awcache\(3 downto 0);
  m_axi_awcache(3 downto 0) <= \^m_axi_awcache\(3 downto 0);
  m_axi_awid(3 downto 2) <= \^m_axi_awid\(3 downto 2);
  m_axi_awid(1 downto 0) <= \^m_axi_awid\(3 downto 2);
  m_axi_awlen(15 downto 8) <= \^m_axi_awlen\(7 downto 0);
  m_axi_awlen(7 downto 0) <= \^m_axi_awlen\(7 downto 0);
  m_axi_awlock(1) <= \^m_axi_awlock\(0);
  m_axi_awlock(0) <= \^m_axi_awlock\(0);
  m_axi_awprot(5 downto 3) <= \^m_axi_awprot\(2 downto 0);
  m_axi_awprot(2 downto 0) <= \^m_axi_awprot\(2 downto 0);
  m_axi_awqos(7 downto 4) <= \^m_axi_awqos\(3 downto 0);
  m_axi_awqos(3 downto 0) <= \^m_axi_awqos\(3 downto 0);
  m_axi_awregion(7) <= \<const0>\;
  m_axi_awregion(6) <= \<const0>\;
  m_axi_awregion(5) <= \<const0>\;
  m_axi_awregion(4) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(5 downto 3) <= \^m_axi_awsize\(2 downto 0);
  m_axi_awsize(2 downto 0) <= \^m_axi_awsize\(2 downto 0);
  m_axi_awuser(1) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_wdata(63 downto 32) <= \^s_axi_wdata\(31 downto 0);
  m_axi_wdata(31 downto 0) <= \^s_axi_wdata\(31 downto 0);
  m_axi_wid(3) <= \<const0>\;
  m_axi_wid(2) <= \<const0>\;
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast(1) <= \^s_axi_wlast\(0);
  m_axi_wlast(0) <= \^s_axi_wlast\(0);
  m_axi_wstrb(7 downto 4) <= \^s_axi_wstrb\(3 downto 0);
  m_axi_wstrb(3 downto 0) <= \^s_axi_wstrb\(3 downto 0);
  m_axi_wuser(1) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_samd.crossbar_samd\: entity work.axi_crossbar_0_axi_crossbar_v2_1_28_crossbar
     port map (
      D(24 downto 21) => s_axi_awqos(3 downto 0),
      D(20 downto 17) => s_axi_awcache(3 downto 0),
      D(16 downto 15) => s_axi_awburst(1 downto 0),
      D(14 downto 12) => s_axi_awprot(2 downto 0),
      D(11) => s_axi_awlock(0),
      D(10 downto 8) => s_axi_awsize(2 downto 0),
      D(7 downto 0) => s_axi_awlen(7 downto 0),
      M_AXI_RREADY(1 downto 0) => m_axi_rready(1 downto 0),
      Q(58 downto 55) => \^m_axi_awqos\(3 downto 0),
      Q(54 downto 51) => \^m_axi_awcache\(3 downto 0),
      Q(50 downto 49) => \^m_axi_awburst\(1 downto 0),
      Q(48 downto 46) => \^m_axi_awprot\(2 downto 0),
      Q(45) => \^m_axi_awlock\(0),
      Q(44 downto 42) => \^m_axi_awsize\(2 downto 0),
      Q(41 downto 34) => \^m_axi_awlen\(7 downto 0),
      Q(33 downto 2) => \^m_axi_awaddr\(31 downto 0),
      Q(1 downto 0) => \^m_axi_awid\(3 downto 2),
      aclk => aclk,
      aresetn => aresetn,
      \gen_no_arbiter.m_mesg_i_reg[63]\(58 downto 55) => \^m_axi_arqos\(3 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[63]\(54 downto 51) => \^m_axi_arcache\(3 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[63]\(50 downto 49) => \^m_axi_arburst\(1 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[63]\(48 downto 46) => \^m_axi_arprot\(2 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[63]\(45) => \^m_axi_arlock\(0),
      \gen_no_arbiter.m_mesg_i_reg[63]\(44 downto 42) => \^m_axi_arsize\(2 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[63]\(41 downto 34) => \^m_axi_arlen\(7 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[63]\(33 downto 2) => \^m_axi_araddr\(31 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[63]\(1 downto 0) => \^m_axi_arid\(3 downto 2),
      \gen_no_arbiter.m_mesg_i_reg[63]_0\(56 downto 53) => s_axi_arqos(3 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[63]_0\(52 downto 49) => s_axi_arcache(3 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[63]_0\(48 downto 47) => s_axi_arburst(1 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[63]_0\(46 downto 44) => s_axi_arprot(2 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[63]_0\(43) => s_axi_arlock(0),
      \gen_no_arbiter.m_mesg_i_reg[63]_0\(42 downto 40) => s_axi_arsize(2 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[63]_0\(39 downto 32) => s_axi_arlen(7 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[63]_0\(31 downto 0) => s_axi_araddr(31 downto 0),
      \gen_no_arbiter.s_ready_i_reg[0]\ => s_axi_arready(0),
      m_axi_arready(1 downto 0) => m_axi_arready(1 downto 0),
      m_axi_arvalid(1 downto 0) => m_axi_arvalid(1 downto 0),
      m_axi_awready(1 downto 0) => m_axi_awready(1 downto 0),
      m_axi_awvalid(1 downto 0) => m_axi_awvalid(1 downto 0),
      m_axi_bid(3 downto 0) => m_axi_bid(3 downto 0),
      m_axi_bready(1 downto 0) => m_axi_bready(1 downto 0),
      m_axi_bresp(3 downto 0) => m_axi_bresp(3 downto 0),
      m_axi_bvalid(1 downto 0) => m_axi_bvalid(1 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(3 downto 0) => m_axi_rid(3 downto 0),
      m_axi_rlast(1 downto 0) => m_axi_rlast(1 downto 0),
      m_axi_rresp(3 downto 0) => m_axi_rresp(3 downto 0),
      m_axi_rvalid(1 downto 0) => m_axi_rvalid(1 downto 0),
      m_axi_wready(1 downto 0) => m_axi_wready(1 downto 0),
      m_axi_wvalid(1 downto 0) => m_axi_wvalid(1 downto 0),
      \m_ready_d_reg[0]\ => s_axi_awready(0),
      s_axi_arid(1 downto 0) => s_axi_arid(1 downto 0),
      s_axi_arvalid(0) => s_axi_arvalid(0),
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awid(1 downto 0) => s_axi_awid(1 downto 0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_bid(1 downto 0) => s_axi_bid(1 downto 0),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid(0) => s_axi_bvalid(0),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(1 downto 0) => s_axi_rid(1 downto 0),
      s_axi_rlast(0) => s_axi_rlast(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid(0) => s_axi_rvalid(0),
      s_axi_wlast(0) => \^s_axi_wlast\(0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wvalid(0) => s_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_crossbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_crossbar_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_crossbar_0 : entity is "axi_crossbar_0,axi_crossbar_v2_1_28_axi_crossbar,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axi_crossbar_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_crossbar_0 : entity is "axi_crossbar_v2_1_28_axi_crossbar,Vivado 2022.2";
end axi_crossbar_0;

architecture STRUCTURE of axi_crossbar_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 2;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_CONNECTIVITY_MODE : integer;
  attribute C_CONNECTIVITY_MODE of inst : label is 1;
  attribute C_DEBUG : integer;
  attribute C_DEBUG of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "artix7";
  attribute C_M_AXI_ADDR_WIDTH : string;
  attribute C_M_AXI_ADDR_WIDTH of inst : label is "64'b0000000000000000000000000001111100000000000000000000000000011111";
  attribute C_M_AXI_BASE_ADDR : string;
  attribute C_M_AXI_BASE_ADDR of inst : label is "128'b00000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_M_AXI_READ_CONNECTIVITY : string;
  attribute C_M_AXI_READ_CONNECTIVITY of inst : label is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_M_AXI_READ_ISSUING : string;
  attribute C_M_AXI_READ_ISSUING of inst : label is "64'b0000000000000000000000000000010000000000000000000000000000000100";
  attribute C_M_AXI_SECURE : string;
  attribute C_M_AXI_SECURE of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_M_AXI_WRITE_CONNECTIVITY : string;
  attribute C_M_AXI_WRITE_CONNECTIVITY of inst : label is "64'b1111111111111111111111111111111111111111111111111111111111111111";
  attribute C_M_AXI_WRITE_ISSUING : string;
  attribute C_M_AXI_WRITE_ISSUING of inst : label is "64'b0000000000000000000000000000010000000000000000000000000000000100";
  attribute C_NUM_ADDR_RANGES : integer;
  attribute C_NUM_ADDR_RANGES of inst : label is 1;
  attribute C_NUM_MASTER_SLOTS : integer;
  attribute C_NUM_MASTER_SLOTS of inst : label is 2;
  attribute C_NUM_SLAVE_SLOTS : integer;
  attribute C_NUM_SLAVE_SLOTS of inst : label is 1;
  attribute C_R_REGISTER : integer;
  attribute C_R_REGISTER of inst : label is 0;
  attribute C_S_AXI_ARB_PRIORITY : integer;
  attribute C_S_AXI_ARB_PRIORITY of inst : label is 0;
  attribute C_S_AXI_BASE_ID : integer;
  attribute C_S_AXI_BASE_ID of inst : label is 0;
  attribute C_S_AXI_READ_ACCEPTANCE : integer;
  attribute C_S_AXI_READ_ACCEPTANCE of inst : label is 4;
  attribute C_S_AXI_SINGLE_THREAD : integer;
  attribute C_S_AXI_SINGLE_THREAD of inst : label is 0;
  attribute C_S_AXI_THREAD_ID_WIDTH : integer;
  attribute C_S_AXI_THREAD_ID_WIDTH of inst : label is 2;
  attribute C_S_AXI_WRITE_ACCEPTANCE : integer;
  attribute C_S_AXI_WRITE_ACCEPTANCE of inst : label is 4;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_ADDR_DECODE : integer;
  attribute P_ADDR_DECODE of inst : label is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of inst : label is "3'b010";
  attribute P_FAMILY : string;
  attribute P_FAMILY of inst : label is "artix7";
  attribute P_INCR : string;
  attribute P_INCR of inst : label is "2'b01";
  attribute P_LEN : integer;
  attribute P_LEN of inst : label is 8;
  attribute P_LOCK : integer;
  attribute P_LOCK of inst : label is 1;
  attribute P_M_AXI_ERR_MODE : string;
  attribute P_M_AXI_ERR_MODE of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute P_M_AXI_SUPPORTS_READ : string;
  attribute P_M_AXI_SUPPORTS_READ of inst : label is "2'b11";
  attribute P_M_AXI_SUPPORTS_WRITE : string;
  attribute P_M_AXI_SUPPORTS_WRITE of inst : label is "2'b11";
  attribute P_ONES : string;
  attribute P_ONES of inst : label is "65'b11111111111111111111111111111111111111111111111111111111111111111";
  attribute P_RANGE_CHECK : integer;
  attribute P_RANGE_CHECK of inst : label is 1;
  attribute P_S_AXI_BASE_ID : string;
  attribute P_S_AXI_BASE_ID of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_HIGH_ID : string;
  attribute P_S_AXI_HIGH_ID of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000011";
  attribute P_S_AXI_SUPPORTS_READ : string;
  attribute P_S_AXI_SUPPORTS_READ of inst : label is "1'b1";
  attribute P_S_AXI_SUPPORTS_WRITE : string;
  attribute P_S_AXI_SUPPORTS_WRITE of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI ARADDR [31:0] [63:32]";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARBURST [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARID [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLEN [7:0] [15:8]";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARPROT [2:0] [5:3]";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARQOS [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREGION [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE [2:0] [5:3]";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI AWADDR [31:0] [63:32]";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWBURST [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWID [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLEN [7:0] [15:8]";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWPROT [2:0] [5:3]";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWQOS [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREGION [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE [2:0] [5:3]";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BID [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BRESP [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI RDATA [31:0] [63:32]";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RID [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RREADY [0:0] [1:1]";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME M01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RRESP [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI WDATA [31:0] [63:32]";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI WSTRB [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARID";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
begin
  m_axi_arregion(7) <= \<const0>\;
  m_axi_arregion(6) <= \<const0>\;
  m_axi_arregion(5) <= \<const0>\;
  m_axi_arregion(4) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_awregion(7) <= \<const0>\;
  m_axi_awregion(6) <= \<const0>\;
  m_axi_awregion(5) <= \<const0>\;
  m_axi_awregion(4) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.axi_crossbar_0_axi_crossbar_v2_1_28_axi_crossbar
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(63 downto 0) => m_axi_araddr(63 downto 0),
      m_axi_arburst(3 downto 0) => m_axi_arburst(3 downto 0),
      m_axi_arcache(7 downto 0) => m_axi_arcache(7 downto 0),
      m_axi_arid(3 downto 0) => m_axi_arid(3 downto 0),
      m_axi_arlen(15 downto 0) => m_axi_arlen(15 downto 0),
      m_axi_arlock(1 downto 0) => m_axi_arlock(1 downto 0),
      m_axi_arprot(5 downto 0) => m_axi_arprot(5 downto 0),
      m_axi_arqos(7 downto 0) => m_axi_arqos(7 downto 0),
      m_axi_arready(1 downto 0) => m_axi_arready(1 downto 0),
      m_axi_arregion(7 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(7 downto 0),
      m_axi_arsize(5 downto 0) => m_axi_arsize(5 downto 0),
      m_axi_aruser(1 downto 0) => NLW_inst_m_axi_aruser_UNCONNECTED(1 downto 0),
      m_axi_arvalid(1 downto 0) => m_axi_arvalid(1 downto 0),
      m_axi_awaddr(63 downto 0) => m_axi_awaddr(63 downto 0),
      m_axi_awburst(3 downto 0) => m_axi_awburst(3 downto 0),
      m_axi_awcache(7 downto 0) => m_axi_awcache(7 downto 0),
      m_axi_awid(3 downto 0) => m_axi_awid(3 downto 0),
      m_axi_awlen(15 downto 0) => m_axi_awlen(15 downto 0),
      m_axi_awlock(1 downto 0) => m_axi_awlock(1 downto 0),
      m_axi_awprot(5 downto 0) => m_axi_awprot(5 downto 0),
      m_axi_awqos(7 downto 0) => m_axi_awqos(7 downto 0),
      m_axi_awready(1 downto 0) => m_axi_awready(1 downto 0),
      m_axi_awregion(7 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(7 downto 0),
      m_axi_awsize(5 downto 0) => m_axi_awsize(5 downto 0),
      m_axi_awuser(1 downto 0) => NLW_inst_m_axi_awuser_UNCONNECTED(1 downto 0),
      m_axi_awvalid(1 downto 0) => m_axi_awvalid(1 downto 0),
      m_axi_bid(3 downto 0) => m_axi_bid(3 downto 0),
      m_axi_bready(1 downto 0) => m_axi_bready(1 downto 0),
      m_axi_bresp(3 downto 0) => m_axi_bresp(3 downto 0),
      m_axi_buser(1 downto 0) => B"00",
      m_axi_bvalid(1 downto 0) => m_axi_bvalid(1 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(3 downto 0) => m_axi_rid(3 downto 0),
      m_axi_rlast(1 downto 0) => m_axi_rlast(1 downto 0),
      m_axi_rready(1 downto 0) => m_axi_rready(1 downto 0),
      m_axi_rresp(3 downto 0) => m_axi_rresp(3 downto 0),
      m_axi_ruser(1 downto 0) => B"00",
      m_axi_rvalid(1 downto 0) => m_axi_rvalid(1 downto 0),
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wid(3 downto 0) => NLW_inst_m_axi_wid_UNCONNECTED(3 downto 0),
      m_axi_wlast(1 downto 0) => m_axi_wlast(1 downto 0),
      m_axi_wready(1 downto 0) => m_axi_wready(1 downto 0),
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wuser(1 downto 0) => NLW_inst_m_axi_wuser_UNCONNECTED(1 downto 0),
      m_axi_wvalid(1 downto 0) => m_axi_wvalid(1 downto 0),
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(1 downto 0) => s_axi_arid(1 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready(0) => s_axi_arready(0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0) => '0',
      s_axi_arvalid(0) => s_axi_arvalid(0),
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(1 downto 0) => s_axi_awid(1 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready(0) => s_axi_awready(0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(0) => '0',
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_bid(1 downto 0) => s_axi_bid(1 downto 0),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid(0) => s_axi_bvalid(0),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(1 downto 0) => s_axi_rid(1 downto 0),
      s_axi_rlast(0) => s_axi_rlast(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid(0) => s_axi_rvalid(0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wid(1 downto 0) => B"00",
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid(0) => s_axi_wvalid(0)
    );
end STRUCTURE;
