-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Nov 17 22:40:56 2023
-- Host        : m-desktop running 64-bit Manjaro Linux
-- Command     : write_vhdl -force -mode funcsim
--               SoomRV-Arty.gen/sources_1/bd/axi_map/ip/axi_map_UART8250Lite_0_0/axi_map_UART8250Lite_0_0_sim_netlist.vhdl
-- Design      : axi_map_UART8250Lite_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_map_UART8250Lite_0_0_FIFO is
  port (
    \outDataReg_reg[1]_0\ : out STD_LOGIC;
    \outDataReg_reg[2]_0\ : out STD_LOGIC;
    \outDataReg_reg[3]_0\ : out STD_LOGIC;
    \outDataReg_reg[4]_0\ : out STD_LOGIC;
    \outDataReg_reg[7]_0\ : out STD_LOGIC;
    outValidReg_reg_0 : out STD_LOGIC;
    \outDataReg_reg[6]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \indexIn_reg[4]_0\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    uartRdValid : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_map_UART8250Lite_0_0_FIFO : entity is "FIFO";
end axi_map_UART8250Lite_0_0_FIFO;

architecture STRUCTURE of axi_map_UART8250Lite_0_0_FIFO is
  signal doInsert : STD_LOGIC;
  signal fullCond : STD_LOGIC;
  signal \fullCond_i_1__0_n_0\ : STD_LOGIC;
  signal \indexIn_reg_n_0_[0]\ : STD_LOGIC;
  signal \indexIn_reg_n_0_[1]\ : STD_LOGIC;
  signal \indexIn_reg_n_0_[2]\ : STD_LOGIC;
  signal \indexIn_reg_n_0_[3]\ : STD_LOGIC;
  signal \indexIn_reg_n_0_[4]\ : STD_LOGIC;
  signal \indexOut[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \indexOut[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \indexOut[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \indexOut[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \indexOut[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \indexOut[4]_i_1__0_n_0\ : STD_LOGIC;
  signal indexOut_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \mem_reg_0_31_0_5_i_1__0_n_0\ : STD_LOGIC;
  signal \outDataReg0__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \outDataReg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \outDataReg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \outDataReg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \outDataReg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \outDataReg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \outDataReg[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \outDataReg[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \outDataReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \outDataReg[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \outDataReg[7]_i_3_n_0\ : STD_LOGIC;
  signal \outDataReg[7]_i_4_n_0\ : STD_LOGIC;
  signal \outDataReg_reg_n_0_[0]\ : STD_LOGIC;
  signal \outDataReg_reg_n_0_[1]\ : STD_LOGIC;
  signal \outDataReg_reg_n_0_[2]\ : STD_LOGIC;
  signal \outDataReg_reg_n_0_[3]\ : STD_LOGIC;
  signal \outDataReg_reg_n_0_[4]\ : STD_LOGIC;
  signal \outDataReg_reg_n_0_[7]\ : STD_LOGIC;
  signal \outValidReg_i_1__0_n_0\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rxFIFOavail : STD_LOGIC;
  signal NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_6_7_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_mem_reg_0_31_6_7__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \indexIn[1]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \indexIn[2]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \indexIn[3]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \indexIn[4]_i_2__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \indexOut[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \indexOut[2]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \indexOut[3]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \indexOut[4]_i_1__0\ : label is "soft_lutpair1";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_31_0_5 : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_31_0_5 : label is "inst/rxFIFO/mem_reg_0_31_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_6_7 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_6_7 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_31_6_7 : label is "inst/rxFIFO/mem_reg_0_31_6_7";
  attribute RTL_RAM_TYPE of mem_reg_0_31_6_7 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_6_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_6_7 : label is 31;
  attribute ram_offset of mem_reg_0_31_6_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_6_7 : label is 6;
  attribute ram_slice_end of mem_reg_0_31_6_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of \mem_reg_0_31_6_7__0\ : label is "";
  attribute RTL_RAM_BITS of \mem_reg_0_31_6_7__0\ : label is 256;
  attribute RTL_RAM_NAME of \mem_reg_0_31_6_7__0\ : label is "inst/rxFIFO/mem_reg_0_31_6_7";
  attribute RTL_RAM_TYPE of \mem_reg_0_31_6_7__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \mem_reg_0_31_6_7__0\ : label is 0;
  attribute ram_addr_end of \mem_reg_0_31_6_7__0\ : label is 31;
  attribute ram_offset of \mem_reg_0_31_6_7__0\ : label is 0;
  attribute ram_slice_begin of \mem_reg_0_31_6_7__0\ : label is 6;
  attribute ram_slice_end of \mem_reg_0_31_6_7__0\ : label is 7;
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_rdata[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_rdata[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axi_rdata[4]_i_1\ : label is "soft_lutpair3";
begin
\fullCond_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4400"
    )
        port map (
      I0 => \indexIn_reg[4]_0\,
      I1 => rxFIFOavail,
      I2 => \outDataReg[7]_i_3_n_0\,
      I3 => fullCond,
      I4 => uartRdValid,
      O => \fullCond_i_1__0_n_0\
    );
fullCond_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \fullCond_i_1__0_n_0\,
      Q => fullCond,
      R => SR(0)
    );
\indexIn[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \indexIn_reg_n_0_[0]\,
      O => \p_0_in__1\(0)
    );
\indexIn[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \indexIn_reg_n_0_[0]\,
      I1 => \indexIn_reg_n_0_[1]\,
      O => \p_0_in__1\(1)
    );
\indexIn[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \indexIn_reg_n_0_[2]\,
      I1 => \indexIn_reg_n_0_[1]\,
      I2 => \indexIn_reg_n_0_[0]\,
      O => \p_0_in__1\(2)
    );
\indexIn[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \indexIn_reg_n_0_[3]\,
      I1 => \indexIn_reg_n_0_[0]\,
      I2 => \indexIn_reg_n_0_[1]\,
      I3 => \indexIn_reg_n_0_[2]\,
      O => \p_0_in__1\(3)
    );
\indexIn[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA2AA"
    )
        port map (
      I0 => uartRdValid,
      I1 => fullCond,
      I2 => \indexIn_reg[4]_0\,
      I3 => rxFIFOavail,
      I4 => \outDataReg[7]_i_3_n_0\,
      O => doInsert
    );
\indexIn[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \indexIn_reg_n_0_[4]\,
      I1 => \indexIn_reg_n_0_[2]\,
      I2 => \indexIn_reg_n_0_[1]\,
      I3 => \indexIn_reg_n_0_[0]\,
      I4 => \indexIn_reg_n_0_[3]\,
      O => \p_0_in__1\(4)
    );
\indexIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doInsert,
      D => \p_0_in__1\(0),
      Q => \indexIn_reg_n_0_[0]\,
      R => SR(0)
    );
\indexIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doInsert,
      D => \p_0_in__1\(1),
      Q => \indexIn_reg_n_0_[1]\,
      R => SR(0)
    );
\indexIn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doInsert,
      D => \p_0_in__1\(2),
      Q => \indexIn_reg_n_0_[2]\,
      R => SR(0)
    );
\indexIn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doInsert,
      D => \p_0_in__1\(3),
      Q => \indexIn_reg_n_0_[3]\,
      R => SR(0)
    );
\indexIn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doInsert,
      D => \p_0_in__1\(4),
      Q => \indexIn_reg_n_0_[4]\,
      R => SR(0)
    );
\indexOut[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB0"
    )
        port map (
      I0 => \indexIn_reg[4]_0\,
      I1 => rxFIFOavail,
      I2 => \outDataReg[7]_i_3_n_0\,
      I3 => fullCond,
      O => \indexOut[0]_i_1__0_n_0\
    );
\indexOut[0]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indexOut_reg(0),
      O => \indexOut[0]_i_2__0_n_0\
    );
\indexOut[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => indexOut_reg(0),
      I1 => indexOut_reg(1),
      O => \indexOut[1]_i_1__0_n_0\
    );
\indexOut[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => indexOut_reg(2),
      I1 => indexOut_reg(1),
      I2 => indexOut_reg(0),
      O => \indexOut[2]_i_1__0_n_0\
    );
\indexOut[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => indexOut_reg(3),
      I1 => indexOut_reg(0),
      I2 => indexOut_reg(1),
      I3 => indexOut_reg(2),
      O => \indexOut[3]_i_1__0_n_0\
    );
\indexOut[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => indexOut_reg(4),
      I1 => indexOut_reg(2),
      I2 => indexOut_reg(1),
      I3 => indexOut_reg(0),
      I4 => indexOut_reg(3),
      O => \indexOut[4]_i_1__0_n_0\
    );
\indexOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \indexOut[0]_i_1__0_n_0\,
      D => \indexOut[0]_i_2__0_n_0\,
      Q => indexOut_reg(0),
      R => SR(0)
    );
\indexOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \indexOut[0]_i_1__0_n_0\,
      D => \indexOut[1]_i_1__0_n_0\,
      Q => indexOut_reg(1),
      R => SR(0)
    );
\indexOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \indexOut[0]_i_1__0_n_0\,
      D => \indexOut[2]_i_1__0_n_0\,
      Q => indexOut_reg(2),
      R => SR(0)
    );
\indexOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \indexOut[0]_i_1__0_n_0\,
      D => \indexOut[3]_i_1__0_n_0\,
      Q => indexOut_reg(3),
      R => SR(0)
    );
\indexOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \indexOut[0]_i_1__0_n_0\,
      D => \indexOut[4]_i_1__0_n_0\,
      Q => indexOut_reg(4),
      R => SR(0)
    );
mem_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => indexOut_reg(4 downto 0),
      ADDRB(4 downto 0) => indexOut_reg(4 downto 0),
      ADDRC(4 downto 0) => indexOut_reg(4 downto 0),
      ADDRD(4) => \indexIn_reg_n_0_[4]\,
      ADDRD(3) => \indexIn_reg_n_0_[3]\,
      ADDRD(2) => \indexIn_reg_n_0_[2]\,
      ADDRD(1) => \indexIn_reg_n_0_[1]\,
      ADDRD(0) => \indexIn_reg_n_0_[0]\,
      DIA(1 downto 0) => Q(1 downto 0),
      DIB(1 downto 0) => Q(3 downto 2),
      DIC(1 downto 0) => Q(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \outDataReg0__0\(1 downto 0),
      DOB(1 downto 0) => \outDataReg0__0\(3 downto 2),
      DOC(1 downto 0) => \outDataReg0__0\(5 downto 4),
      DOD(1 downto 0) => NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \mem_reg_0_31_0_5_i_1__0_n_0\
    );
\mem_reg_0_31_0_5_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA2AA00000000"
    )
        port map (
      I0 => uartRdValid,
      I1 => fullCond,
      I2 => \indexIn_reg[4]_0\,
      I3 => rxFIFOavail,
      I4 => \outDataReg[7]_i_3_n_0\,
      I5 => aresetn,
      O => \mem_reg_0_31_0_5_i_1__0_n_0\
    );
mem_reg_0_31_6_7: unisim.vcomponents.RAM32X1D
     port map (
      A0 => \indexIn_reg_n_0_[0]\,
      A1 => \indexIn_reg_n_0_[1]\,
      A2 => \indexIn_reg_n_0_[2]\,
      A3 => \indexIn_reg_n_0_[3]\,
      A4 => \indexIn_reg_n_0_[4]\,
      D => Q(6),
      DPO => \outDataReg0__0\(6),
      DPRA0 => indexOut_reg(0),
      DPRA1 => indexOut_reg(1),
      DPRA2 => indexOut_reg(2),
      DPRA3 => indexOut_reg(3),
      DPRA4 => indexOut_reg(4),
      SPO => NLW_mem_reg_0_31_6_7_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \mem_reg_0_31_0_5_i_1__0_n_0\
    );
\mem_reg_0_31_6_7__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => \indexIn_reg_n_0_[0]\,
      A1 => \indexIn_reg_n_0_[1]\,
      A2 => \indexIn_reg_n_0_[2]\,
      A3 => \indexIn_reg_n_0_[3]\,
      A4 => \indexIn_reg_n_0_[4]\,
      D => Q(7),
      DPO => \outDataReg0__0\(7),
      DPRA0 => indexOut_reg(0),
      DPRA1 => indexOut_reg(1),
      DPRA2 => indexOut_reg(2),
      DPRA3 => indexOut_reg(3),
      DPRA4 => indexOut_reg(4),
      SPO => \NLW_mem_reg_0_31_6_7__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => \mem_reg_0_31_0_5_i_1__0_n_0\
    );
\outDataReg[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB00000"
    )
        port map (
      I0 => \indexIn_reg[4]_0\,
      I1 => rxFIFOavail,
      I2 => \outDataReg[7]_i_3_n_0\,
      I3 => fullCond,
      I4 => \outDataReg0__0\(0),
      O => \outDataReg[0]_i_1__0_n_0\
    );
\outDataReg[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB00000"
    )
        port map (
      I0 => \indexIn_reg[4]_0\,
      I1 => rxFIFOavail,
      I2 => \outDataReg[7]_i_3_n_0\,
      I3 => fullCond,
      I4 => \outDataReg0__0\(1),
      O => \outDataReg[1]_i_1__0_n_0\
    );
\outDataReg[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB00000"
    )
        port map (
      I0 => \indexIn_reg[4]_0\,
      I1 => rxFIFOavail,
      I2 => \outDataReg[7]_i_3_n_0\,
      I3 => fullCond,
      I4 => \outDataReg0__0\(2),
      O => \outDataReg[2]_i_1__0_n_0\
    );
\outDataReg[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB00000"
    )
        port map (
      I0 => \indexIn_reg[4]_0\,
      I1 => rxFIFOavail,
      I2 => \outDataReg[7]_i_3_n_0\,
      I3 => fullCond,
      I4 => \outDataReg0__0\(3),
      O => \outDataReg[3]_i_1__0_n_0\
    );
\outDataReg[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB00000"
    )
        port map (
      I0 => \indexIn_reg[4]_0\,
      I1 => rxFIFOavail,
      I2 => \outDataReg[7]_i_3_n_0\,
      I3 => fullCond,
      I4 => \outDataReg0__0\(4),
      O => \outDataReg[4]_i_1__0_n_0\
    );
\outDataReg[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB00000"
    )
        port map (
      I0 => \indexIn_reg[4]_0\,
      I1 => rxFIFOavail,
      I2 => \outDataReg[7]_i_3_n_0\,
      I3 => fullCond,
      I4 => \outDataReg0__0\(5),
      O => \outDataReg[5]_i_1__0_n_0\
    );
\outDataReg[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB00000"
    )
        port map (
      I0 => \indexIn_reg[4]_0\,
      I1 => rxFIFOavail,
      I2 => \outDataReg[7]_i_3_n_0\,
      I3 => fullCond,
      I4 => \outDataReg0__0\(6),
      O => \outDataReg[6]_i_1__0_n_0\
    );
\outDataReg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \indexIn_reg[4]_0\,
      I1 => rxFIFOavail,
      O => \outDataReg[7]_i_1_n_0\
    );
\outDataReg[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB00000"
    )
        port map (
      I0 => \indexIn_reg[4]_0\,
      I1 => rxFIFOavail,
      I2 => \outDataReg[7]_i_3_n_0\,
      I3 => fullCond,
      I4 => \outDataReg0__0\(7),
      O => \outDataReg[7]_i_2__0_n_0\
    );
\outDataReg[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => indexOut_reg(3),
      I1 => \indexIn_reg_n_0_[3]\,
      I2 => \outDataReg[7]_i_4_n_0\,
      I3 => \indexIn_reg_n_0_[4]\,
      I4 => indexOut_reg(4),
      O => \outDataReg[7]_i_3_n_0\
    );
\outDataReg[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => indexOut_reg(0),
      I1 => \indexIn_reg_n_0_[0]\,
      I2 => \indexIn_reg_n_0_[1]\,
      I3 => indexOut_reg(1),
      I4 => \indexIn_reg_n_0_[2]\,
      I5 => indexOut_reg(2),
      O => \outDataReg[7]_i_4_n_0\
    );
\outDataReg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outDataReg[7]_i_1_n_0\,
      D => \outDataReg[0]_i_1__0_n_0\,
      Q => \outDataReg_reg_n_0_[0]\,
      R => SR(0)
    );
\outDataReg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outDataReg[7]_i_1_n_0\,
      D => \outDataReg[1]_i_1__0_n_0\,
      Q => \outDataReg_reg_n_0_[1]\,
      R => SR(0)
    );
\outDataReg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outDataReg[7]_i_1_n_0\,
      D => \outDataReg[2]_i_1__0_n_0\,
      Q => \outDataReg_reg_n_0_[2]\,
      R => SR(0)
    );
\outDataReg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outDataReg[7]_i_1_n_0\,
      D => \outDataReg[3]_i_1__0_n_0\,
      Q => \outDataReg_reg_n_0_[3]\,
      R => SR(0)
    );
\outDataReg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outDataReg[7]_i_1_n_0\,
      D => \outDataReg[4]_i_1__0_n_0\,
      Q => \outDataReg_reg_n_0_[4]\,
      R => SR(0)
    );
\outDataReg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outDataReg[7]_i_1_n_0\,
      D => \outDataReg[5]_i_1__0_n_0\,
      Q => \outDataReg_reg[6]_0\(0),
      R => SR(0)
    );
\outDataReg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outDataReg[7]_i_1_n_0\,
      D => \outDataReg[6]_i_1__0_n_0\,
      Q => \outDataReg_reg[6]_0\(1),
      R => SR(0)
    );
\outDataReg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outDataReg[7]_i_1_n_0\,
      D => \outDataReg[7]_i_2__0_n_0\,
      Q => \outDataReg_reg_n_0_[7]\,
      R => SR(0)
    );
\outValidReg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF40000"
    )
        port map (
      I0 => \indexIn_reg[4]_0\,
      I1 => rxFIFOavail,
      I2 => \outDataReg[7]_i_3_n_0\,
      I3 => fullCond,
      I4 => aresetn,
      O => \outValidReg_i_1__0_n_0\
    );
outValidReg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \outValidReg_i_1__0_n_0\,
      Q => rxFIFOavail,
      R => '0'
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A0000C"
    )
        port map (
      I0 => rxFIFOavail,
      I1 => \outDataReg_reg_n_0_[0]\,
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(2),
      O => outValidReg_reg_0
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \outDataReg_reg_n_0_[1]\,
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(0),
      O => \outDataReg_reg[1]_0\
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \outDataReg_reg_n_0_[2]\,
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(0),
      O => \outDataReg_reg[2]_0\
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \outDataReg_reg_n_0_[3]\,
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(0),
      O => \outDataReg_reg[3]_0\
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \outDataReg_reg_n_0_[4]\,
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(0),
      O => \outDataReg_reg[4]_0\
    );
\s_axi_rdata[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \outDataReg_reg_n_0_[7]\,
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(0),
      O => \outDataReg_reg[7]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_map_UART8250Lite_0_0_FIFO_0 is
  port (
    uartWr : out STD_LOGIC;
    outValidReg_reg_0 : out STD_LOGIC;
    \outDataReg_reg[5]_0\ : out STD_LOGIC;
    \outDataReg_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_reg[6]\ : in STD_LOGIC;
    \s_axi_rdata_reg[6]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[6]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi_rdata_reg[6]_2\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    outValidReg_reg_1 : in STD_LOGIC;
    \indexIn_reg[4]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wAddrValid : in STD_LOGIC;
    \indexIn[4]_i_3_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_map_UART8250Lite_0_0_FIFO_0 : entity is "FIFO";
end axi_map_UART8250Lite_0_0_FIFO_0;

architecture STRUCTURE of axi_map_UART8250Lite_0_0_FIFO_0 is
  signal doExtract : STD_LOGIC;
  signal doInsert : STD_LOGIC;
  signal fullCond : STD_LOGIC;
  signal fullCond_i_1_n_0 : STD_LOGIC;
  signal \indexIn[0]_i_1_n_0\ : STD_LOGIC;
  signal \indexIn[4]_i_3_n_0\ : STD_LOGIC;
  signal \indexIn[4]_i_4_n_0\ : STD_LOGIC;
  signal \indexIn[4]_i_5_n_0\ : STD_LOGIC;
  signal \indexIn[4]_i_6_n_0\ : STD_LOGIC;
  signal indexIn_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \indexOut[0]_i_2_n_0\ : STD_LOGIC;
  signal \indexOut[1]_i_1_n_0\ : STD_LOGIC;
  signal \indexOut[2]_i_1_n_0\ : STD_LOGIC;
  signal \indexOut[3]_i_1_n_0\ : STD_LOGIC;
  signal \indexOut[4]_i_1_n_0\ : STD_LOGIC;
  signal indexOut_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mem_reg_0_31_0_5_i_1_n_0 : STD_LOGIC;
  signal outDataReg0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \outDataReg[0]_i_1_n_0\ : STD_LOGIC;
  signal \outDataReg[1]_i_1_n_0\ : STD_LOGIC;
  signal \outDataReg[2]_i_1_n_0\ : STD_LOGIC;
  signal \outDataReg[3]_i_1_n_0\ : STD_LOGIC;
  signal \outDataReg[4]_i_1_n_0\ : STD_LOGIC;
  signal \outDataReg[5]_i_1_n_0\ : STD_LOGIC;
  signal \outDataReg[6]_i_1_n_0\ : STD_LOGIC;
  signal \outDataReg[7]_i_2_n_0\ : STD_LOGIC;
  signal outValidReg_i_1_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \s_axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \^uartwr\ : STD_LOGIC;
  signal NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_6_7_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_mem_reg_0_31_6_7__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \indexIn[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \indexIn[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \indexIn[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \indexIn[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \indexIn[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \indexIn[4]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \indexOut[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \indexOut[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \indexOut[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \indexOut[4]_i_1\ : label is "soft_lutpair8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_31_0_5 : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_31_0_5 : label is "inst/txFIFO/mem_reg_0_31_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_6_7 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_6_7 : label is 256;
  attribute RTL_RAM_NAME of mem_reg_0_31_6_7 : label is "inst/txFIFO/mem_reg_0_31_6_7";
  attribute RTL_RAM_TYPE of mem_reg_0_31_6_7 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_6_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_6_7 : label is 31;
  attribute ram_offset of mem_reg_0_31_6_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_6_7 : label is 6;
  attribute ram_slice_end of mem_reg_0_31_6_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of \mem_reg_0_31_6_7__0\ : label is "";
  attribute RTL_RAM_BITS of \mem_reg_0_31_6_7__0\ : label is 256;
  attribute RTL_RAM_NAME of \mem_reg_0_31_6_7__0\ : label is "inst/txFIFO/mem_reg_0_31_6_7";
  attribute RTL_RAM_TYPE of \mem_reg_0_31_6_7__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \mem_reg_0_31_6_7__0\ : label is 0;
  attribute ram_addr_end of \mem_reg_0_31_6_7__0\ : label is 31;
  attribute ram_offset of \mem_reg_0_31_6_7__0\ : label is 0;
  attribute ram_slice_begin of \mem_reg_0_31_6_7__0\ : label is 6;
  attribute ram_slice_end of \mem_reg_0_31_6_7__0\ : label is 7;
  attribute SOFT_HLUTNM of \outDataReg[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \outDataReg[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \outDataReg[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \outDataReg[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \outDataReg[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \outDataReg[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \outDataReg[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \outDataReg[7]_i_2\ : label is "soft_lutpair14";
begin
  uartWr <= \^uartwr\;
fullCond_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7B0"
    )
        port map (
      I0 => \indexIn[4]_i_3_n_0\,
      I1 => doExtract,
      I2 => doInsert,
      I3 => fullCond,
      O => fullCond_i_1_n_0
    );
fullCond_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fullCond_i_1_n_0,
      Q => fullCond,
      R => SR(0)
    );
\indexIn[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indexIn_reg(0),
      O => \indexIn[0]_i_1_n_0\
    );
\indexIn[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => indexIn_reg(1),
      I1 => indexIn_reg(0),
      O => \p_0_in__0\(1)
    );
\indexIn[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => indexIn_reg(2),
      I1 => indexIn_reg(0),
      I2 => indexIn_reg(1),
      O => \p_0_in__0\(2)
    );
\indexIn[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => indexIn_reg(3),
      I1 => indexIn_reg(1),
      I2 => indexIn_reg(0),
      I3 => indexIn_reg(2),
      O => \p_0_in__0\(3)
    );
\indexIn[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555551115555"
    )
        port map (
      I0 => \indexIn[4]_i_3_n_0\,
      I1 => fullCond,
      I2 => outValidReg_reg_1,
      I3 => aresetn,
      I4 => \^uartwr\,
      I5 => \indexIn[4]_i_4_n_0\,
      O => doInsert
    );
\indexIn[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => indexIn_reg(4),
      I1 => indexIn_reg(2),
      I2 => indexIn_reg(0),
      I3 => indexIn_reg(1),
      I4 => indexIn_reg(3),
      O => \p_0_in__0\(4)
    );
\indexIn[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \indexIn[4]_i_5_n_0\,
      I1 => \indexIn[4]_i_6_n_0\,
      I2 => \indexIn_reg[4]_0\(2),
      I3 => \indexIn_reg[4]_0\(0),
      I4 => \indexIn_reg[4]_0\(11),
      I5 => \indexIn_reg[4]_0\(9),
      O => \indexIn[4]_i_3_n_0\
    );
\indexIn[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => indexIn_reg(0),
      I1 => indexOut_reg(0),
      I2 => indexIn_reg(1),
      I3 => indexOut_reg(1),
      I4 => \s_axi_rdata[6]_i_6_n_0\,
      O => \indexIn[4]_i_4_n_0\
    );
\indexIn[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \indexIn_reg[4]_0\(5),
      I1 => \indexIn_reg[4]_0\(8),
      I2 => \indexIn_reg[4]_0\(1),
      I3 => \indexIn_reg[4]_0\(4),
      I4 => wAddrValid,
      I5 => \indexIn[4]_i_3_0\,
      O => \indexIn[4]_i_5_n_0\
    );
\indexIn[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \indexIn_reg[4]_0\(10),
      I1 => \indexIn_reg[4]_0\(6),
      I2 => \indexIn_reg[4]_0\(7),
      I3 => \indexIn_reg[4]_0\(3),
      O => \indexIn[4]_i_6_n_0\
    );
\indexIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doInsert,
      D => \indexIn[0]_i_1_n_0\,
      Q => indexIn_reg(0),
      R => SR(0)
    );
\indexIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doInsert,
      D => \p_0_in__0\(1),
      Q => indexIn_reg(1),
      R => SR(0)
    );
\indexIn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doInsert,
      D => \p_0_in__0\(2),
      Q => indexIn_reg(2),
      R => SR(0)
    );
\indexIn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doInsert,
      D => \p_0_in__0\(3),
      Q => indexIn_reg(3),
      R => SR(0)
    );
\indexIn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doInsert,
      D => \p_0_in__0\(4),
      Q => indexIn_reg(4),
      R => SR(0)
    );
\indexOut[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80AA"
    )
        port map (
      I0 => \s_axi_rdata[6]_i_2_n_0\,
      I1 => outValidReg_reg_1,
      I2 => aresetn,
      I3 => \^uartwr\,
      O => doExtract
    );
\indexOut[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indexOut_reg(0),
      O => \indexOut[0]_i_2_n_0\
    );
\indexOut[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => indexOut_reg(0),
      I1 => indexOut_reg(1),
      O => \indexOut[1]_i_1_n_0\
    );
\indexOut[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => indexOut_reg(2),
      I1 => indexOut_reg(1),
      I2 => indexOut_reg(0),
      O => \indexOut[2]_i_1_n_0\
    );
\indexOut[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => indexOut_reg(3),
      I1 => indexOut_reg(0),
      I2 => indexOut_reg(1),
      I3 => indexOut_reg(2),
      O => \indexOut[3]_i_1_n_0\
    );
\indexOut[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => indexOut_reg(4),
      I1 => indexOut_reg(2),
      I2 => indexOut_reg(1),
      I3 => indexOut_reg(0),
      I4 => indexOut_reg(3),
      O => \indexOut[4]_i_1_n_0\
    );
\indexOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doExtract,
      D => \indexOut[0]_i_2_n_0\,
      Q => indexOut_reg(0),
      R => SR(0)
    );
\indexOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doExtract,
      D => \indexOut[1]_i_1_n_0\,
      Q => indexOut_reg(1),
      R => SR(0)
    );
\indexOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doExtract,
      D => \indexOut[2]_i_1_n_0\,
      Q => indexOut_reg(2),
      R => SR(0)
    );
\indexOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doExtract,
      D => \indexOut[3]_i_1_n_0\,
      Q => indexOut_reg(3),
      R => SR(0)
    );
\indexOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => doExtract,
      D => \indexOut[4]_i_1_n_0\,
      Q => indexOut_reg(4),
      R => SR(0)
    );
mem_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => indexOut_reg(4 downto 0),
      ADDRB(4 downto 0) => indexOut_reg(4 downto 0),
      ADDRC(4 downto 0) => indexOut_reg(4 downto 0),
      ADDRD(4 downto 0) => indexIn_reg(4 downto 0),
      DIA(1 downto 0) => Q(1 downto 0),
      DIB(1 downto 0) => Q(3 downto 2),
      DIC(1 downto 0) => Q(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => outDataReg0(1 downto 0),
      DOB(1 downto 0) => outDataReg0(3 downto 2),
      DOC(1 downto 0) => outDataReg0(5 downto 4),
      DOD(1 downto 0) => NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => mem_reg_0_31_0_5_i_1_n_0
    );
mem_reg_0_31_0_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => doInsert,
      I1 => aresetn,
      O => mem_reg_0_31_0_5_i_1_n_0
    );
mem_reg_0_31_6_7: unisim.vcomponents.RAM32X1D
     port map (
      A0 => indexIn_reg(0),
      A1 => indexIn_reg(1),
      A2 => indexIn_reg(2),
      A3 => indexIn_reg(3),
      A4 => indexIn_reg(4),
      D => Q(6),
      DPO => outDataReg0(6),
      DPRA0 => indexOut_reg(0),
      DPRA1 => indexOut_reg(1),
      DPRA2 => indexOut_reg(2),
      DPRA3 => indexOut_reg(3),
      DPRA4 => indexOut_reg(4),
      SPO => NLW_mem_reg_0_31_6_7_SPO_UNCONNECTED,
      WCLK => clk,
      WE => mem_reg_0_31_0_5_i_1_n_0
    );
\mem_reg_0_31_6_7__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => indexIn_reg(0),
      A1 => indexIn_reg(1),
      A2 => indexIn_reg(2),
      A3 => indexIn_reg(3),
      A4 => indexIn_reg(4),
      D => Q(7),
      DPO => outDataReg0(7),
      DPRA0 => indexOut_reg(0),
      DPRA1 => indexOut_reg(1),
      DPRA2 => indexOut_reg(2),
      DPRA3 => indexOut_reg(3),
      DPRA4 => indexOut_reg(4),
      SPO => \NLW_mem_reg_0_31_6_7__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => mem_reg_0_31_0_5_i_1_n_0
    );
\outDataReg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => doExtract,
      I1 => outDataReg0(0),
      O => \outDataReg[0]_i_1_n_0\
    );
\outDataReg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => doExtract,
      I1 => outDataReg0(1),
      O => \outDataReg[1]_i_1_n_0\
    );
\outDataReg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => doExtract,
      I1 => outDataReg0(2),
      O => \outDataReg[2]_i_1_n_0\
    );
\outDataReg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => doExtract,
      I1 => outDataReg0(3),
      O => \outDataReg[3]_i_1_n_0\
    );
\outDataReg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => doExtract,
      I1 => outDataReg0(4),
      O => \outDataReg[4]_i_1_n_0\
    );
\outDataReg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => doExtract,
      I1 => outDataReg0(5),
      O => \outDataReg[5]_i_1_n_0\
    );
\outDataReg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => doExtract,
      I1 => outDataReg0(6),
      O => \outDataReg[6]_i_1_n_0\
    );
\outDataReg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => doExtract,
      I1 => outDataReg0(7),
      O => \outDataReg[7]_i_2_n_0\
    );
\outDataReg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \outDataReg[0]_i_1_n_0\,
      Q => \outDataReg_reg[7]_0\(0),
      R => SR(0)
    );
\outDataReg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \outDataReg[1]_i_1_n_0\,
      Q => \outDataReg_reg[7]_0\(1),
      R => SR(0)
    );
\outDataReg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \outDataReg[2]_i_1_n_0\,
      Q => \outDataReg_reg[7]_0\(2),
      R => SR(0)
    );
\outDataReg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \outDataReg[3]_i_1_n_0\,
      Q => \outDataReg_reg[7]_0\(3),
      R => SR(0)
    );
\outDataReg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \outDataReg[4]_i_1_n_0\,
      Q => \outDataReg_reg[7]_0\(4),
      R => SR(0)
    );
\outDataReg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \outDataReg[5]_i_1_n_0\,
      Q => \outDataReg_reg[7]_0\(5),
      R => SR(0)
    );
\outDataReg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \outDataReg[6]_i_1_n_0\,
      Q => \outDataReg_reg[7]_0\(6),
      R => SR(0)
    );
\outDataReg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \outDataReg[7]_i_2_n_0\,
      Q => \outDataReg_reg[7]_0\(7),
      R => SR(0)
    );
outValidReg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88C8"
    )
        port map (
      I0 => doExtract,
      I1 => aresetn,
      I2 => \^uartwr\,
      I3 => outValidReg_reg_1,
      O => outValidReg_i_1_n_0
    );
outValidReg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => outValidReg_i_1_n_0,
      Q => \^uartwr\,
      R => '0'
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FB00FFFFFB00"
    )
        port map (
      I0 => \s_axi_rdata[5]_i_2_n_0\,
      I1 => \s_axi_rdata[6]_i_2_n_0\,
      I2 => \s_axi_rdata[5]_i_3_n_0\,
      I3 => \s_axi_rdata_reg[6]\,
      I4 => \s_axi_rdata_reg[6]_1\(0),
      I5 => \s_axi_rdata_reg[6]_2\,
      O => \outDataReg_reg[5]_0\
    );
\s_axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20F24F044F0420F2"
    )
        port map (
      I0 => indexIn_reg(0),
      I1 => indexOut_reg(0),
      I2 => indexIn_reg(1),
      I3 => indexOut_reg(1),
      I4 => indexIn_reg(2),
      I5 => indexOut_reg(2),
      O => \s_axi_rdata[5]_i_2_n_0\
    );
\s_axi_rdata[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F66F9FF6"
    )
        port map (
      I0 => indexIn_reg(4),
      I1 => indexOut_reg(4),
      I2 => \s_axi_rdata[5]_i_4_n_0\,
      I3 => indexIn_reg(3),
      I4 => indexOut_reg(3),
      O => \s_axi_rdata[5]_i_3_n_0\
    );
\s_axi_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20F2FFFF000020F2"
    )
        port map (
      I0 => indexIn_reg(0),
      I1 => indexOut_reg(0),
      I2 => indexIn_reg(1),
      I3 => indexOut_reg(1),
      I4 => indexOut_reg(2),
      I5 => indexIn_reg(2),
      O => \s_axi_rdata[5]_i_4_n_0\
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040004FFFF0004"
    )
        port map (
      I0 => \s_axi_rdata[6]_i_2_n_0\,
      I1 => \s_axi_rdata_reg[6]\,
      I2 => \s_axi_rdata_reg[6]_0\,
      I3 => \^uartwr\,
      I4 => \s_axi_rdata_reg[6]_1\(1),
      I5 => \s_axi_rdata_reg[6]_2\,
      O => outValidReg_reg_0
    );
\s_axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFFFEFFE"
    )
        port map (
      I0 => fullCond,
      I1 => \s_axi_rdata[6]_i_6_n_0\,
      I2 => indexOut_reg(1),
      I3 => indexIn_reg(1),
      I4 => indexOut_reg(0),
      I5 => indexIn_reg(0),
      O => \s_axi_rdata[6]_i_2_n_0\
    );
\s_axi_rdata[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => indexOut_reg(3),
      I1 => indexIn_reg(3),
      I2 => indexIn_reg(4),
      I3 => indexOut_reg(4),
      I4 => indexIn_reg(2),
      I5 => indexOut_reg(2),
      O => \s_axi_rdata[6]_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_map_UART8250Lite_0_0_UartRx is
  port (
    uartRdValid : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    UART_rx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_map_UART8250Lite_0_0_UartRx : entity is "UartRx";
end axi_map_UART8250Lite_0_0_UartRx;

architecture STRUCTURE of axi_map_UART8250Lite_0_0_UartRx is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_inv_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_inv_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_inv_i_3_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bit_timer : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal \bit_timer0_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__0_n_1\ : STD_LOGIC;
  signal \bit_timer0_carry__0_n_2\ : STD_LOGIC;
  signal \bit_timer0_carry__0_n_3\ : STD_LOGIC;
  signal \bit_timer0_carry__0_n_4\ : STD_LOGIC;
  signal \bit_timer0_carry__0_n_5\ : STD_LOGIC;
  signal \bit_timer0_carry__0_n_6\ : STD_LOGIC;
  signal \bit_timer0_carry__0_n_7\ : STD_LOGIC;
  signal \bit_timer0_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__1_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__1_n_1\ : STD_LOGIC;
  signal \bit_timer0_carry__1_n_2\ : STD_LOGIC;
  signal \bit_timer0_carry__1_n_3\ : STD_LOGIC;
  signal \bit_timer0_carry__1_n_4\ : STD_LOGIC;
  signal \bit_timer0_carry__1_n_5\ : STD_LOGIC;
  signal \bit_timer0_carry__1_n_6\ : STD_LOGIC;
  signal \bit_timer0_carry__1_n_7\ : STD_LOGIC;
  signal \bit_timer0_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__2_n_2\ : STD_LOGIC;
  signal \bit_timer0_carry__2_n_3\ : STD_LOGIC;
  signal \bit_timer0_carry__2_n_5\ : STD_LOGIC;
  signal \bit_timer0_carry__2_n_6\ : STD_LOGIC;
  signal \bit_timer0_carry__2_n_7\ : STD_LOGIC;
  signal \bit_timer0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal bit_timer0_carry_n_0 : STD_LOGIC;
  signal bit_timer0_carry_n_1 : STD_LOGIC;
  signal bit_timer0_carry_n_2 : STD_LOGIC;
  signal bit_timer0_carry_n_3 : STD_LOGIC;
  signal bit_timer0_carry_n_4 : STD_LOGIC;
  signal bit_timer0_carry_n_5 : STD_LOGIC;
  signal bit_timer0_carry_n_6 : STD_LOGIC;
  signal bit_timer0_carry_n_7 : STD_LOGIC;
  signal \bit_timer[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_timer[15]_i_2_n_0\ : STD_LOGIC;
  signal \bit_timer[15]_i_3_n_0\ : STD_LOGIC;
  signal \bit_timer[15]_i_4_n_0\ : STD_LOGIC;
  signal \bit_timer[15]_i_5_n_0\ : STD_LOGIC;
  signal \bit_timer[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_timer[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[10]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[11]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[12]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[13]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[14]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[15]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[4]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[5]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[6]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[7]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[8]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[9]\ : STD_LOGIC;
  signal \data_o[7]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal \packet[0]_i_1_n_0\ : STD_LOGIC;
  signal \packet[1]_i_1_n_0\ : STD_LOGIC;
  signal \packet[2]_i_1_n_0\ : STD_LOGIC;
  signal \packet[3]_i_1_n_0\ : STD_LOGIC;
  signal \packet[3]_i_2_n_0\ : STD_LOGIC;
  signal \packet[4]_i_1_n_0\ : STD_LOGIC;
  signal \packet[5]_i_1_n_0\ : STD_LOGIC;
  signal \packet[6]_i_1_n_0\ : STD_LOGIC;
  signal \packet[6]_i_2_n_0\ : STD_LOGIC;
  signal \packet[7]_i_1_n_0\ : STD_LOGIC;
  signal \packet[7]_i_2_n_0\ : STD_LOGIC;
  signal \packet[7]_i_3_n_0\ : STD_LOGIC;
  signal \packet[8]_i_1_n_0\ : STD_LOGIC;
  signal \packet[8]_i_2_n_0\ : STD_LOGIC;
  signal \packet[8]_i_3_n_0\ : STD_LOGIC;
  signal \packet[9]_i_1_n_0\ : STD_LOGIC;
  signal \packet[9]_i_2_n_0\ : STD_LOGIC;
  signal \packet[9]_i_3_n_0\ : STD_LOGIC;
  signal \packet[9]_i_4_n_0\ : STD_LOGIC;
  signal \packet[9]_i_5_n_0\ : STD_LOGIC;
  signal \packet_reg_n_0_[0]\ : STD_LOGIC;
  signal \packet_reg_n_0_[2]\ : STD_LOGIC;
  signal \packet_reg_n_0_[3]\ : STD_LOGIC;
  signal \packet_reg_n_0_[4]\ : STD_LOGIC;
  signal \packet_reg_n_0_[5]\ : STD_LOGIC;
  signal \packet_reg_n_0_[6]\ : STD_LOGIC;
  signal \packet_reg_n_0_[7]\ : STD_LOGIC;
  signal \packet_reg_n_0_[8]\ : STD_LOGIC;
  signal \packet_reg_n_0_[9]\ : STD_LOGIC;
  signal ready_o_i_1_n_0 : STD_LOGIC;
  signal select_packet_bit : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \select_packet_bit[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \select_packet_bit[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \select_packet_bit[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \select_packet_bit[4]_i_1_n_0\ : STD_LOGIC;
  signal \select_packet_bit[4]_i_2_n_0\ : STD_LOGIC;
  signal \select_packet_bit[5]_i_1_n_0\ : STD_LOGIC;
  signal \select_packet_bit[5]_i_2_n_0\ : STD_LOGIC;
  signal \select_packet_bit[5]_i_3_n_0\ : STD_LOGIC;
  signal \select_packet_bit_reg_n_0_[0]\ : STD_LOGIC;
  signal \select_packet_bit_reg_n_0_[1]\ : STD_LOGIC;
  signal \select_packet_bit_reg_n_0_[2]\ : STD_LOGIC;
  signal \select_packet_bit_reg_n_0_[3]\ : STD_LOGIC;
  signal \select_packet_bit_reg_n_0_[4]\ : STD_LOGIC;
  signal \select_packet_bit_reg_n_0_[5]\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^uartrdvalid\ : STD_LOGIC;
  signal \NLW_bit_timer0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bit_timer0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair15";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "STATE_RECEIVE_PACKET:01,STATE_VALIDATE_PACKET:10,STATE_IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]_inv\ : label is "STATE_RECEIVE_PACKET:01,STATE_VALIDATE_PACKET:10,STATE_IDLE:00";
  attribute inverted : string;
  attribute inverted of \FSM_sequential_state_reg[1]_inv\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of bit_timer0_carry : label is 35;
  attribute ADDER_THRESHOLD of \bit_timer0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \bit_timer0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \bit_timer0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \bit_timer[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bit_timer[15]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \packet[3]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \packet[6]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \packet[7]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \packet[7]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \packet[8]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \packet[8]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \packet[9]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \packet[9]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \packet[9]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \select_packet_bit[0]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \select_packet_bit[1]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \select_packet_bit[2]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \select_packet_bit[4]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \select_packet_bit[5]_i_3\ : label is "soft_lutpair19";
begin
  SR(0) <= \^sr\(0);
  uartRdValid <= \^uartrdvalid\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F044FF44"
    )
        port map (
      I0 => UART_rx,
      I1 => \state__0\(1),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \state__0\(0),
      I4 => \FSM_sequential_state[0]_i_3_n_0\,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \state__0\(1),
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => \bit_timer[15]_i_3_n_0\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC2CC"
    )
        port map (
      I0 => UART_rx,
      I1 => \select_packet_bit_reg_n_0_[3]\,
      I2 => \select_packet_bit_reg_n_0_[2]\,
      I3 => \packet[8]_i_2_n_0\,
      I4 => \select_packet_bit_reg_n_0_[5]\,
      I5 => \select_packet_bit_reg_n_0_[4]\,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[1]_inv_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9FBF9F9FAFBFAFAF"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[1]_inv_i_2_n_0\,
      I4 => UART_rx,
      I5 => \FSM_sequential_state[1]_inv_i_3_n_0\,
      O => \FSM_sequential_state[1]_inv_i_1_n_0\
    );
\FSM_sequential_state[1]_inv_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[5]\,
      I1 => \select_packet_bit_reg_n_0_[4]\,
      I2 => \select_packet_bit_reg_n_0_[3]\,
      I3 => \select_packet_bit_reg_n_0_[2]\,
      I4 => \select_packet_bit_reg_n_0_[1]\,
      I5 => \select_packet_bit_reg_n_0_[0]\,
      O => \FSM_sequential_state[1]_inv_i_2_n_0\
    );
\FSM_sequential_state[1]_inv_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEEEEEEEEE"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[4]\,
      I1 => \select_packet_bit_reg_n_0_[5]\,
      I2 => \select_packet_bit_reg_n_0_[0]\,
      I3 => \select_packet_bit_reg_n_0_[1]\,
      I4 => \select_packet_bit_reg_n_0_[2]\,
      I5 => \select_packet_bit_reg_n_0_[3]\,
      O => \FSM_sequential_state[1]_inv_i_3_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => \^sr\(0)
    );
\FSM_sequential_state_reg[1]_inv\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_inv_i_1_n_0\,
      Q => \state__0\(1),
      S => \^sr\(0)
    );
bit_timer0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => bit_timer0_carry_n_0,
      CO(2) => bit_timer0_carry_n_1,
      CO(1) => bit_timer0_carry_n_2,
      CO(0) => bit_timer0_carry_n_3,
      CYINIT => \bit_timer_reg_n_0_[0]\,
      DI(3) => \bit_timer_reg_n_0_[4]\,
      DI(2) => \bit_timer_reg_n_0_[3]\,
      DI(1) => \bit_timer_reg_n_0_[2]\,
      DI(0) => \bit_timer_reg_n_0_[1]\,
      O(3) => bit_timer0_carry_n_4,
      O(2) => bit_timer0_carry_n_5,
      O(1) => bit_timer0_carry_n_6,
      O(0) => bit_timer0_carry_n_7,
      S(3) => \bit_timer0_carry_i_1__0_n_0\,
      S(2) => \bit_timer0_carry_i_2__0_n_0\,
      S(1) => \bit_timer0_carry_i_3__0_n_0\,
      S(0) => \bit_timer0_carry_i_4__0_n_0\
    );
\bit_timer0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => bit_timer0_carry_n_0,
      CO(3) => \bit_timer0_carry__0_n_0\,
      CO(2) => \bit_timer0_carry__0_n_1\,
      CO(1) => \bit_timer0_carry__0_n_2\,
      CO(0) => \bit_timer0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \bit_timer_reg_n_0_[8]\,
      DI(2) => \bit_timer_reg_n_0_[7]\,
      DI(1) => \bit_timer_reg_n_0_[6]\,
      DI(0) => \bit_timer_reg_n_0_[5]\,
      O(3) => \bit_timer0_carry__0_n_4\,
      O(2) => \bit_timer0_carry__0_n_5\,
      O(1) => \bit_timer0_carry__0_n_6\,
      O(0) => \bit_timer0_carry__0_n_7\,
      S(3) => \bit_timer0_carry__0_i_1__0_n_0\,
      S(2) => \bit_timer0_carry__0_i_2__0_n_0\,
      S(1) => \bit_timer0_carry__0_i_3__0_n_0\,
      S(0) => \bit_timer0_carry__0_i_4__0_n_0\
    );
\bit_timer0_carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[8]\,
      O => \bit_timer0_carry__0_i_1__0_n_0\
    );
\bit_timer0_carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[7]\,
      O => \bit_timer0_carry__0_i_2__0_n_0\
    );
\bit_timer0_carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[6]\,
      O => \bit_timer0_carry__0_i_3__0_n_0\
    );
\bit_timer0_carry__0_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[5]\,
      O => \bit_timer0_carry__0_i_4__0_n_0\
    );
\bit_timer0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_timer0_carry__0_n_0\,
      CO(3) => \bit_timer0_carry__1_n_0\,
      CO(2) => \bit_timer0_carry__1_n_1\,
      CO(1) => \bit_timer0_carry__1_n_2\,
      CO(0) => \bit_timer0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \bit_timer_reg_n_0_[12]\,
      DI(2) => \bit_timer_reg_n_0_[11]\,
      DI(1) => \bit_timer_reg_n_0_[10]\,
      DI(0) => \bit_timer_reg_n_0_[9]\,
      O(3) => \bit_timer0_carry__1_n_4\,
      O(2) => \bit_timer0_carry__1_n_5\,
      O(1) => \bit_timer0_carry__1_n_6\,
      O(0) => \bit_timer0_carry__1_n_7\,
      S(3) => \bit_timer0_carry__1_i_1__0_n_0\,
      S(2) => \bit_timer0_carry__1_i_2__0_n_0\,
      S(1) => \bit_timer0_carry__1_i_3__0_n_0\,
      S(0) => \bit_timer0_carry__1_i_4__0_n_0\
    );
\bit_timer0_carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[12]\,
      O => \bit_timer0_carry__1_i_1__0_n_0\
    );
\bit_timer0_carry__1_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[11]\,
      O => \bit_timer0_carry__1_i_2__0_n_0\
    );
\bit_timer0_carry__1_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[10]\,
      O => \bit_timer0_carry__1_i_3__0_n_0\
    );
\bit_timer0_carry__1_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[9]\,
      O => \bit_timer0_carry__1_i_4__0_n_0\
    );
\bit_timer0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_timer0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_bit_timer0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bit_timer0_carry__2_n_2\,
      CO(0) => \bit_timer0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \bit_timer_reg_n_0_[14]\,
      DI(0) => \bit_timer_reg_n_0_[13]\,
      O(3) => \NLW_bit_timer0_carry__2_O_UNCONNECTED\(3),
      O(2) => \bit_timer0_carry__2_n_5\,
      O(1) => \bit_timer0_carry__2_n_6\,
      O(0) => \bit_timer0_carry__2_n_7\,
      S(3) => '0',
      S(2) => \bit_timer0_carry__2_i_1__0_n_0\,
      S(1) => \bit_timer0_carry__2_i_2__0_n_0\,
      S(0) => \bit_timer0_carry__2_i_3__0_n_0\
    );
\bit_timer0_carry__2_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[15]\,
      O => \bit_timer0_carry__2_i_1__0_n_0\
    );
\bit_timer0_carry__2_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[14]\,
      O => \bit_timer0_carry__2_i_2__0_n_0\
    );
\bit_timer0_carry__2_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[13]\,
      O => \bit_timer0_carry__2_i_3__0_n_0\
    );
\bit_timer0_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[4]\,
      O => \bit_timer0_carry_i_1__0_n_0\
    );
\bit_timer0_carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[3]\,
      O => \bit_timer0_carry_i_2__0_n_0\
    );
\bit_timer0_carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[2]\,
      O => \bit_timer0_carry_i_3__0_n_0\
    );
\bit_timer0_carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[1]\,
      O => \bit_timer0_carry_i_4__0_n_0\
    );
\bit_timer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \bit_timer_reg_n_0_[0]\,
      O => \bit_timer[0]_i_1_n_0\
    );
\bit_timer[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => \bit_timer0_carry__1_n_6\,
      I4 => \state__0\(0),
      O => bit_timer(10)
    );
\bit_timer[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => \bit_timer0_carry__1_n_5\,
      I4 => \state__0\(0),
      O => bit_timer(11)
    );
\bit_timer[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => \bit_timer0_carry__1_n_4\,
      I4 => \state__0\(0),
      O => bit_timer(12)
    );
\bit_timer[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => \bit_timer0_carry__2_n_7\,
      I4 => \state__0\(0),
      O => bit_timer(13)
    );
\bit_timer[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => \bit_timer0_carry__2_n_6\,
      I4 => \state__0\(0),
      O => bit_timer(14)
    );
\bit_timer[15]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => \bit_timer0_carry__2_n_5\,
      I4 => \state__0\(0),
      O => bit_timer(15)
    );
\bit_timer[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[8]\,
      I1 => \bit_timer_reg_n_0_[12]\,
      I2 => \bit_timer_reg_n_0_[9]\,
      I3 => \bit_timer_reg_n_0_[13]\,
      I4 => \bit_timer[15]_i_4_n_0\,
      O => \bit_timer[15]_i_2_n_0\
    );
\bit_timer[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[4]\,
      I1 => \bit_timer_reg_n_0_[5]\,
      I2 => \bit_timer_reg_n_0_[1]\,
      I3 => \bit_timer[15]_i_5_n_0\,
      O => \bit_timer[15]_i_3_n_0\
    );
\bit_timer[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[11]\,
      I1 => \bit_timer_reg_n_0_[10]\,
      I2 => \bit_timer_reg_n_0_[15]\,
      I3 => \bit_timer_reg_n_0_[14]\,
      O => \bit_timer[15]_i_4_n_0\
    );
\bit_timer[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[7]\,
      I1 => \bit_timer_reg_n_0_[6]\,
      I2 => \bit_timer_reg_n_0_[0]\,
      I3 => \bit_timer_reg_n_0_[3]\,
      O => \bit_timer[15]_i_5_n_0\
    );
\bit_timer[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF01FFFF"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => bit_timer0_carry_n_7,
      I4 => \state__0\(0),
      O => \bit_timer[1]_i_1_n_0\
    );
\bit_timer[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF01FFFF"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => bit_timer0_carry_n_6,
      I4 => \state__0\(0),
      O => \bit_timer[2]_i_1_n_0\
    );
\bit_timer[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => bit_timer0_carry_n_5,
      I4 => \state__0\(0),
      O => bit_timer(3)
    );
\bit_timer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => bit_timer0_carry_n_4,
      I4 => \state__0\(0),
      O => bit_timer(4)
    );
\bit_timer[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => \bit_timer0_carry__0_n_7\,
      I4 => \state__0\(0),
      O => bit_timer(5)
    );
\bit_timer[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => \bit_timer0_carry__0_n_6\,
      I4 => \state__0\(0),
      O => bit_timer(6)
    );
\bit_timer[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => \bit_timer0_carry__0_n_5\,
      I4 => \state__0\(0),
      O => bit_timer(7)
    );
\bit_timer[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => \bit_timer0_carry__0_n_4\,
      I4 => \state__0\(0),
      O => bit_timer(8)
    );
\bit_timer[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \bit_timer[15]_i_2_n_0\,
      I1 => \bit_timer[15]_i_3_n_0\,
      I2 => \bit_timer_reg_n_0_[2]\,
      I3 => \bit_timer0_carry__1_n_7\,
      I4 => \state__0\(0),
      O => bit_timer(9)
    );
\bit_timer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => \bit_timer[0]_i_1_n_0\,
      Q => \bit_timer_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\bit_timer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => bit_timer(10),
      Q => \bit_timer_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\bit_timer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => bit_timer(11),
      Q => \bit_timer_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\bit_timer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => bit_timer(12),
      Q => \bit_timer_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\bit_timer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => bit_timer(13),
      Q => \bit_timer_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\bit_timer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => bit_timer(14),
      Q => \bit_timer_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\bit_timer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => bit_timer(15),
      Q => \bit_timer_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\bit_timer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => \bit_timer[1]_i_1_n_0\,
      Q => \bit_timer_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\bit_timer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => \bit_timer[2]_i_1_n_0\,
      Q => \bit_timer_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\bit_timer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => bit_timer(3),
      Q => \bit_timer_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\bit_timer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => bit_timer(4),
      Q => \bit_timer_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\bit_timer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => bit_timer(5),
      Q => \bit_timer_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\bit_timer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => bit_timer(6),
      Q => \bit_timer_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\bit_timer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => bit_timer(7),
      Q => \bit_timer_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\bit_timer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => bit_timer(8),
      Q => \bit_timer_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\bit_timer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state__0\(1),
      D => bit_timer(9),
      Q => \bit_timer_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\data_o[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \^uartrdvalid\,
      I3 => \packet_reg_n_0_[9]\,
      I4 => \packet_reg_n_0_[0]\,
      O => \data_o[7]_i_1_n_0\
    );
\data_o_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_o[7]_i_1_n_0\,
      D => p_0_in5_in,
      Q => Q(0),
      R => \^sr\(0)
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_o[7]_i_1_n_0\,
      D => \packet_reg_n_0_[2]\,
      Q => Q(1),
      R => \^sr\(0)
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_o[7]_i_1_n_0\,
      D => \packet_reg_n_0_[3]\,
      Q => Q(2),
      R => \^sr\(0)
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_o[7]_i_1_n_0\,
      D => \packet_reg_n_0_[4]\,
      Q => Q(3),
      R => \^sr\(0)
    );
\data_o_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_o[7]_i_1_n_0\,
      D => \packet_reg_n_0_[5]\,
      Q => Q(4),
      R => \^sr\(0)
    );
\data_o_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_o[7]_i_1_n_0\,
      D => \packet_reg_n_0_[6]\,
      Q => Q(5),
      R => \^sr\(0)
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_o[7]_i_1_n_0\,
      D => \packet_reg_n_0_[7]\,
      Q => Q(6),
      R => \^sr\(0)
    );
\data_o_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_o[7]_i_1_n_0\,
      D => \packet_reg_n_0_[8]\,
      Q => Q(7),
      R => \^sr\(0)
    );
\packet[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDDF8DD00000800"
    )
        port map (
      I0 => \state__0\(1),
      I1 => UART_rx,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \state__0\(0),
      I4 => \FSM_sequential_state[1]_inv_i_2_n_0\,
      I5 => \packet_reg_n_0_[0]\,
      O => \packet[0]_i_1_n_0\
    );
\packet[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => \packet[9]_i_2_n_0\,
      I1 => \packet[9]_i_3_n_0\,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \packet[9]_i_4_n_0\,
      I4 => \packet[3]_i_2_n_0\,
      I5 => p_0_in5_in,
      O => \packet[1]_i_1_n_0\
    );
\packet[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBABB88888A88"
    )
        port map (
      I0 => \packet[9]_i_2_n_0\,
      I1 => \packet[9]_i_3_n_0\,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \packet[3]_i_2_n_0\,
      I4 => \packet[6]_i_2_n_0\,
      I5 => \packet_reg_n_0_[2]\,
      O => \packet[2]_i_1_n_0\
    );
\packet[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBBBB8A888888"
    )
        port map (
      I0 => \packet[9]_i_2_n_0\,
      I1 => \packet[9]_i_3_n_0\,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \packet[3]_i_2_n_0\,
      I4 => \packet[7]_i_2_n_0\,
      I5 => \packet_reg_n_0_[3]\,
      O => \packet[3]_i_1_n_0\
    );
\packet[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[2]\,
      I1 => \select_packet_bit_reg_n_0_[5]\,
      I2 => \select_packet_bit_reg_n_0_[4]\,
      I3 => \select_packet_bit_reg_n_0_[3]\,
      O => \packet[3]_i_2_n_0\
    );
\packet[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBABB88888A88"
    )
        port map (
      I0 => \packet[9]_i_2_n_0\,
      I1 => \packet[9]_i_3_n_0\,
      I2 => \packet[7]_i_3_n_0\,
      I3 => \packet[8]_i_2_n_0\,
      I4 => \packet[8]_i_3_n_0\,
      I5 => \packet_reg_n_0_[4]\,
      O => \packet[4]_i_1_n_0\
    );
\packet[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBA8888888A"
    )
        port map (
      I0 => \packet[9]_i_2_n_0\,
      I1 => \packet[9]_i_3_n_0\,
      I2 => \packet[7]_i_3_n_0\,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      I4 => \packet[9]_i_4_n_0\,
      I5 => \packet_reg_n_0_[5]\,
      O => \packet[5]_i_1_n_0\
    );
\packet[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBA8888888A"
    )
        port map (
      I0 => \packet[9]_i_2_n_0\,
      I1 => \packet[9]_i_3_n_0\,
      I2 => \packet[6]_i_2_n_0\,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      I4 => \packet[7]_i_3_n_0\,
      I5 => \packet_reg_n_0_[6]\,
      O => \packet[6]_i_1_n_0\
    );
\packet[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[0]\,
      I1 => \select_packet_bit_reg_n_0_[1]\,
      I2 => \state__0\(0),
      O => \packet[6]_i_2_n_0\
    );
\packet[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBAB888888A8"
    )
        port map (
      I0 => \packet[9]_i_2_n_0\,
      I1 => \packet[9]_i_3_n_0\,
      I2 => \packet[7]_i_2_n_0\,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      I4 => \packet[7]_i_3_n_0\,
      I5 => \packet_reg_n_0_[7]\,
      O => \packet[7]_i_1_n_0\
    );
\packet[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[0]\,
      I1 => \select_packet_bit_reg_n_0_[1]\,
      I2 => \state__0\(0),
      O => \packet[7]_i_2_n_0\
    );
\packet[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[5]\,
      I1 => \select_packet_bit_reg_n_0_[4]\,
      I2 => \select_packet_bit_reg_n_0_[3]\,
      I3 => \select_packet_bit_reg_n_0_[2]\,
      O => \packet[7]_i_3_n_0\
    );
\packet[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBBB88A88888"
    )
        port map (
      I0 => \packet[9]_i_2_n_0\,
      I1 => \packet[9]_i_3_n_0\,
      I2 => \packet[8]_i_2_n_0\,
      I3 => \packet[8]_i_3_n_0\,
      I4 => \packet[9]_i_5_n_0\,
      I5 => \packet_reg_n_0_[8]\,
      O => \packet[8]_i_1_n_0\
    );
\packet[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[1]\,
      I1 => \select_packet_bit_reg_n_0_[0]\,
      O => \packet[8]_i_2_n_0\
    );
\packet[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => \bit_timer[15]_i_3_n_0\,
      I1 => \bit_timer_reg_n_0_[2]\,
      I2 => \state__0\(1),
      I3 => \bit_timer[15]_i_2_n_0\,
      I4 => \state__0\(0),
      O => \packet[8]_i_3_n_0\
    );
\packet[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBB888A8888"
    )
        port map (
      I0 => \packet[9]_i_2_n_0\,
      I1 => \packet[9]_i_3_n_0\,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \packet[9]_i_4_n_0\,
      I4 => \packet[9]_i_5_n_0\,
      I5 => \packet_reg_n_0_[9]\,
      O => \packet[9]_i_1_n_0\
    );
\packet[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => UART_rx,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => \packet[9]_i_2_n_0\
    );
\packet[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state__0\(0),
      I1 => UART_rx,
      I2 => \state__0\(1),
      O => \packet[9]_i_3_n_0\
    );
\packet[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \select_packet_bit_reg_n_0_[1]\,
      I2 => \select_packet_bit_reg_n_0_[0]\,
      O => \packet[9]_i_4_n_0\
    );
\packet[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[3]\,
      I1 => \select_packet_bit_reg_n_0_[5]\,
      I2 => \select_packet_bit_reg_n_0_[4]\,
      I3 => \select_packet_bit_reg_n_0_[2]\,
      O => \packet[9]_i_5_n_0\
    );
\packet_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \packet[0]_i_1_n_0\,
      Q => \packet_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\packet_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \packet[1]_i_1_n_0\,
      Q => p_0_in5_in,
      R => \^sr\(0)
    );
\packet_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \packet[2]_i_1_n_0\,
      Q => \packet_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\packet_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \packet[3]_i_1_n_0\,
      Q => \packet_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\packet_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \packet[4]_i_1_n_0\,
      Q => \packet_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\packet_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \packet[5]_i_1_n_0\,
      Q => \packet_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\packet_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \packet[6]_i_1_n_0\,
      Q => \packet_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\packet_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \packet[7]_i_1_n_0\,
      Q => \packet_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\packet_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \packet[8]_i_1_n_0\,
      Q => \packet_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\packet_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \packet[9]_i_1_n_0\,
      Q => \packet_reg_n_0_[9]\,
      R => \^sr\(0)
    );
ready_o_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F000002"
    )
        port map (
      I0 => \packet_reg_n_0_[9]\,
      I1 => \packet_reg_n_0_[0]\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \^uartrdvalid\,
      O => ready_o_i_1_n_0
    );
ready_o_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ready_o_i_1_n_0,
      Q => \^uartrdvalid\,
      R => \^sr\(0)
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^sr\(0)
    );
\select_packet_bit[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[0]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => \select_packet_bit[0]_i_1__0_n_0\
    );
\select_packet_bit[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \select_packet_bit_reg_n_0_[0]\,
      I3 => \select_packet_bit_reg_n_0_[1]\,
      O => select_packet_bit(1)
    );
\select_packet_bit[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08808080"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \select_packet_bit_reg_n_0_[2]\,
      I3 => \select_packet_bit_reg_n_0_[0]\,
      I4 => \select_packet_bit_reg_n_0_[1]\,
      O => \select_packet_bit[2]_i_1__0_n_0\
    );
\select_packet_bit[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880808080808080"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \select_packet_bit_reg_n_0_[3]\,
      I3 => \select_packet_bit_reg_n_0_[2]\,
      I4 => \select_packet_bit_reg_n_0_[1]\,
      I5 => \select_packet_bit_reg_n_0_[0]\,
      O => \select_packet_bit[3]_i_1__0_n_0\
    );
\select_packet_bit[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888800000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \select_packet_bit_reg_n_0_[4]\,
      I2 => \select_packet_bit_reg_n_0_[3]\,
      I3 => \select_packet_bit[4]_i_2_n_0\,
      I4 => \select_packet_bit_reg_n_0_[2]\,
      I5 => \state__0\(0),
      O => \select_packet_bit[4]_i_1_n_0\
    );
\select_packet_bit[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[1]\,
      I1 => \select_packet_bit_reg_n_0_[0]\,
      O => \select_packet_bit[4]_i_2_n_0\
    );
\select_packet_bit[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \select_packet_bit[5]_i_1_n_0\
    );
\select_packet_bit[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08808080"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \select_packet_bit_reg_n_0_[5]\,
      I3 => \select_packet_bit[5]_i_3_n_0\,
      I4 => \select_packet_bit_reg_n_0_[4]\,
      O => \select_packet_bit[5]_i_2_n_0\
    );
\select_packet_bit[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[2]\,
      I1 => \select_packet_bit_reg_n_0_[1]\,
      I2 => \select_packet_bit_reg_n_0_[0]\,
      I3 => \select_packet_bit_reg_n_0_[3]\,
      O => \select_packet_bit[5]_i_3_n_0\
    );
\select_packet_bit_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \select_packet_bit[5]_i_1_n_0\,
      D => \select_packet_bit[0]_i_1__0_n_0\,
      Q => \select_packet_bit_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\select_packet_bit_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \select_packet_bit[5]_i_1_n_0\,
      D => select_packet_bit(1),
      Q => \select_packet_bit_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\select_packet_bit_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \select_packet_bit[5]_i_1_n_0\,
      D => \select_packet_bit[2]_i_1__0_n_0\,
      Q => \select_packet_bit_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\select_packet_bit_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \select_packet_bit[5]_i_1_n_0\,
      D => \select_packet_bit[3]_i_1__0_n_0\,
      Q => \select_packet_bit_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\select_packet_bit_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \select_packet_bit[5]_i_1_n_0\,
      D => \select_packet_bit[4]_i_1_n_0\,
      Q => \select_packet_bit_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\select_packet_bit_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \select_packet_bit[5]_i_1_n_0\,
      D => \select_packet_bit[5]_i_2_n_0\,
      Q => \select_packet_bit_reg_n_0_[5]\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_map_UART8250Lite_0_0_UartTx is
  port (
    UART_tx : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_1\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    uartWr : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_map_UART8250Lite_0_0_UartTx : entity is "UartTx";
end axi_map_UART8250Lite_0_0_UartTx;

architecture STRUCTURE of axi_map_UART8250Lite_0_0_UartTx is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^uart_tx\ : STD_LOGIC;
  signal bit_timer0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \bit_timer0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__0_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__0_n_1\ : STD_LOGIC;
  signal \bit_timer0_carry__0_n_2\ : STD_LOGIC;
  signal \bit_timer0_carry__0_n_3\ : STD_LOGIC;
  signal \bit_timer0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__1_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__1_n_1\ : STD_LOGIC;
  signal \bit_timer0_carry__1_n_2\ : STD_LOGIC;
  signal \bit_timer0_carry__1_n_3\ : STD_LOGIC;
  signal \bit_timer0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \bit_timer0_carry__2_n_2\ : STD_LOGIC;
  signal \bit_timer0_carry__2_n_3\ : STD_LOGIC;
  signal bit_timer0_carry_i_1_n_0 : STD_LOGIC;
  signal bit_timer0_carry_i_2_n_0 : STD_LOGIC;
  signal bit_timer0_carry_i_3_n_0 : STD_LOGIC;
  signal bit_timer0_carry_i_4_n_0 : STD_LOGIC;
  signal bit_timer0_carry_n_0 : STD_LOGIC;
  signal bit_timer0_carry_n_1 : STD_LOGIC;
  signal bit_timer0_carry_n_2 : STD_LOGIC;
  signal bit_timer0_carry_n_3 : STD_LOGIC;
  signal \bit_timer[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_timer[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer[15]_i_1_n_0\ : STD_LOGIC;
  signal \bit_timer[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \bit_timer[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_timer[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_timer[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_timer[2]_i_3_n_0\ : STD_LOGIC;
  signal \bit_timer[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[10]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[11]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[12]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[13]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[14]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[15]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[4]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[5]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[6]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[7]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[8]\ : STD_LOGIC;
  signal \bit_timer_reg_n_0_[9]\ : STD_LOGIC;
  signal data : STD_LOGIC;
  signal \data_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal select_packet_bit : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \select_packet_bit[3]_i_1_n_0\ : STD_LOGIC;
  signal \select_packet_bit[3]_i_2_n_0\ : STD_LOGIC;
  signal \select_packet_bit[3]_i_3_n_0\ : STD_LOGIC;
  signal \select_packet_bit[3]_i_4_n_0\ : STD_LOGIC;
  signal \select_packet_bit[3]_i_5_n_0\ : STD_LOGIC;
  signal \select_packet_bit[3]_i_6_n_0\ : STD_LOGIC;
  signal \select_packet_bit[3]_i_7_n_0\ : STD_LOGIC;
  signal \select_packet_bit_reg_n_0_[0]\ : STD_LOGIC;
  signal \select_packet_bit_reg_n_0_[1]\ : STD_LOGIC;
  signal \select_packet_bit_reg_n_0_[2]\ : STD_LOGIC;
  signal \select_packet_bit_reg_n_0_[3]\ : STD_LOGIC;
  signal serial_o_i_1_n_0 : STD_LOGIC;
  signal serial_o_i_2_n_0 : STD_LOGIC;
  signal serial_o_i_3_n_0 : STD_LOGIC;
  signal serial_o_i_5_n_0 : STD_LOGIC;
  signal serial_o_i_6_n_0 : STD_LOGIC;
  signal serial_o_reg_i_4_n_0 : STD_LOGIC;
  signal write_has_triggered_i_1_n_0 : STD_LOGIC;
  signal write_has_triggered_reg_n_0 : STD_LOGIC;
  signal \NLW_bit_timer0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bit_timer0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_3\ : label is "soft_lutpair24";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "STATE_POST_RESET:001,STATE_IDLE:010,STATE_SEND_PACKET:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "STATE_POST_RESET:001,STATE_IDLE:010,STATE_SEND_PACKET:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "STATE_POST_RESET:001,STATE_IDLE:010,STATE_SEND_PACKET:100,";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of bit_timer0_carry : label is 35;
  attribute ADDER_THRESHOLD of \bit_timer0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \bit_timer0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \bit_timer0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \bit_timer[15]_i_2__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bit_timer[2]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \outDataReg[7]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \select_packet_bit[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \select_packet_bit[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of serial_o_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of serial_o_i_2 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of write_has_triggered_i_1 : label is "soft_lutpair27";
begin
  \FSM_onehot_state_reg[1]_0\ <= \^fsm_onehot_state_reg[1]_0\;
  UART_tx <= \^uart_tx\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00510000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state[2]_i_3_n_0\,
      I3 => data,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFFFFFCFC88F8"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state[2]_i_3_n_0\,
      I4 => data,
      I5 => \^fsm_onehot_state_reg[1]_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABF80AA80"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state[2]_i_3_n_0\,
      I5 => data,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[2]\,
      I1 => \select_packet_bit_reg_n_0_[3]\,
      I2 => \select_packet_bit[3]_i_3_n_0\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[2]\,
      I1 => \select_packet_bit_reg_n_0_[1]\,
      I2 => \select_packet_bit_reg_n_0_[3]\,
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \^fsm_onehot_state_reg[1]_0\,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
bit_timer0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => bit_timer0_carry_n_0,
      CO(2) => bit_timer0_carry_n_1,
      CO(1) => bit_timer0_carry_n_2,
      CO(0) => bit_timer0_carry_n_3,
      CYINIT => \bit_timer_reg_n_0_[0]\,
      DI(3) => \bit_timer_reg_n_0_[4]\,
      DI(2) => \bit_timer_reg_n_0_[3]\,
      DI(1) => \bit_timer_reg_n_0_[2]\,
      DI(0) => \bit_timer_reg_n_0_[1]\,
      O(3 downto 0) => bit_timer0(4 downto 1),
      S(3) => bit_timer0_carry_i_1_n_0,
      S(2) => bit_timer0_carry_i_2_n_0,
      S(1) => bit_timer0_carry_i_3_n_0,
      S(0) => bit_timer0_carry_i_4_n_0
    );
\bit_timer0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => bit_timer0_carry_n_0,
      CO(3) => \bit_timer0_carry__0_n_0\,
      CO(2) => \bit_timer0_carry__0_n_1\,
      CO(1) => \bit_timer0_carry__0_n_2\,
      CO(0) => \bit_timer0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \bit_timer_reg_n_0_[8]\,
      DI(2) => \bit_timer_reg_n_0_[7]\,
      DI(1) => \bit_timer_reg_n_0_[6]\,
      DI(0) => \bit_timer_reg_n_0_[5]\,
      O(3 downto 0) => bit_timer0(8 downto 5),
      S(3) => \bit_timer0_carry__0_i_1_n_0\,
      S(2) => \bit_timer0_carry__0_i_2_n_0\,
      S(1) => \bit_timer0_carry__0_i_3_n_0\,
      S(0) => \bit_timer0_carry__0_i_4_n_0\
    );
\bit_timer0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[8]\,
      O => \bit_timer0_carry__0_i_1_n_0\
    );
\bit_timer0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[7]\,
      O => \bit_timer0_carry__0_i_2_n_0\
    );
\bit_timer0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[6]\,
      O => \bit_timer0_carry__0_i_3_n_0\
    );
\bit_timer0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[5]\,
      O => \bit_timer0_carry__0_i_4_n_0\
    );
\bit_timer0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_timer0_carry__0_n_0\,
      CO(3) => \bit_timer0_carry__1_n_0\,
      CO(2) => \bit_timer0_carry__1_n_1\,
      CO(1) => \bit_timer0_carry__1_n_2\,
      CO(0) => \bit_timer0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \bit_timer_reg_n_0_[12]\,
      DI(2) => \bit_timer_reg_n_0_[11]\,
      DI(1) => \bit_timer_reg_n_0_[10]\,
      DI(0) => \bit_timer_reg_n_0_[9]\,
      O(3 downto 0) => bit_timer0(12 downto 9),
      S(3) => \bit_timer0_carry__1_i_1_n_0\,
      S(2) => \bit_timer0_carry__1_i_2_n_0\,
      S(1) => \bit_timer0_carry__1_i_3_n_0\,
      S(0) => \bit_timer0_carry__1_i_4_n_0\
    );
\bit_timer0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[12]\,
      O => \bit_timer0_carry__1_i_1_n_0\
    );
\bit_timer0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[11]\,
      O => \bit_timer0_carry__1_i_2_n_0\
    );
\bit_timer0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[10]\,
      O => \bit_timer0_carry__1_i_3_n_0\
    );
\bit_timer0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[9]\,
      O => \bit_timer0_carry__1_i_4_n_0\
    );
\bit_timer0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_timer0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_bit_timer0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bit_timer0_carry__2_n_2\,
      CO(0) => \bit_timer0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \bit_timer_reg_n_0_[14]\,
      DI(0) => \bit_timer_reg_n_0_[13]\,
      O(3) => \NLW_bit_timer0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => bit_timer0(15 downto 13),
      S(3) => '0',
      S(2) => \bit_timer0_carry__2_i_1_n_0\,
      S(1) => \bit_timer0_carry__2_i_2_n_0\,
      S(0) => \bit_timer0_carry__2_i_3_n_0\
    );
\bit_timer0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[15]\,
      O => \bit_timer0_carry__2_i_1_n_0\
    );
\bit_timer0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[14]\,
      O => \bit_timer0_carry__2_i_2_n_0\
    );
\bit_timer0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[13]\,
      O => \bit_timer0_carry__2_i_3_n_0\
    );
bit_timer0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[4]\,
      O => bit_timer0_carry_i_1_n_0
    );
bit_timer0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[3]\,
      O => bit_timer0_carry_i_2_n_0
    );
bit_timer0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[2]\,
      O => bit_timer0_carry_i_3_n_0
    );
bit_timer0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[1]\,
      O => bit_timer0_carry_i_4_n_0
    );
\bit_timer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFFFFFD0000"
    )
        port map (
      I0 => aresetn,
      I1 => \^fsm_onehot_state_reg[1]_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \bit_timer[15]_i_1_n_0\,
      I5 => \bit_timer_reg_n_0_[0]\,
      O => \bit_timer[0]_i_1_n_0\
    );
\bit_timer[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \select_packet_bit[3]_i_3_n_0\,
      I1 => bit_timer0(10),
      I2 => aresetn,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bit_timer[10]_i_1__0_n_0\
    );
\bit_timer[11]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \select_packet_bit[3]_i_3_n_0\,
      I1 => bit_timer0(11),
      I2 => aresetn,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bit_timer[11]_i_1__0_n_0\
    );
\bit_timer[12]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \select_packet_bit[3]_i_3_n_0\,
      I1 => bit_timer0(12),
      I2 => aresetn,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bit_timer[12]_i_1__0_n_0\
    );
\bit_timer[13]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \select_packet_bit[3]_i_3_n_0\,
      I1 => bit_timer0(13),
      I2 => aresetn,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bit_timer[13]_i_1__0_n_0\
    );
\bit_timer[14]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \select_packet_bit[3]_i_3_n_0\,
      I1 => bit_timer0(14),
      I2 => aresetn,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bit_timer[14]_i_1__0_n_0\
    );
\bit_timer[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00FFFFFFFFFFFF"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[2]\,
      I1 => \select_packet_bit_reg_n_0_[3]\,
      I2 => \select_packet_bit[3]_i_3_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => serial_o_i_2_n_0,
      I5 => aresetn,
      O => \bit_timer[15]_i_1_n_0\
    );
\bit_timer[15]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \select_packet_bit[3]_i_3_n_0\,
      I1 => bit_timer0(15),
      I2 => aresetn,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bit_timer[15]_i_2__0_n_0\
    );
\bit_timer[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEFFFFAAFE0000"
    )
        port map (
      I0 => \bit_timer[2]_i_3_n_0\,
      I1 => bit_timer0(1),
      I2 => \select_packet_bit[3]_i_3_n_0\,
      I3 => \bit_timer[2]_i_2_n_0\,
      I4 => \bit_timer[15]_i_1_n_0\,
      I5 => \bit_timer_reg_n_0_[1]\,
      O => \bit_timer[1]_i_1_n_0\
    );
\bit_timer[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0EFFFFFF0E0000"
    )
        port map (
      I0 => bit_timer0(2),
      I1 => \select_packet_bit[3]_i_3_n_0\,
      I2 => \bit_timer[2]_i_2_n_0\,
      I3 => \bit_timer[2]_i_3_n_0\,
      I4 => \bit_timer[15]_i_1_n_0\,
      I5 => \bit_timer_reg_n_0_[2]\,
      O => \bit_timer[2]_i_1_n_0\
    );
\bit_timer[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bit_timer[2]_i_2_n_0\
    );
\bit_timer[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => aresetn,
      O => \bit_timer[2]_i_3_n_0\
    );
\bit_timer[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \select_packet_bit[3]_i_3_n_0\,
      I1 => bit_timer0(3),
      I2 => aresetn,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bit_timer[3]_i_1__0_n_0\
    );
\bit_timer[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \select_packet_bit[3]_i_3_n_0\,
      I1 => bit_timer0(4),
      I2 => aresetn,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bit_timer[4]_i_1__0_n_0\
    );
\bit_timer[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \select_packet_bit[3]_i_3_n_0\,
      I1 => bit_timer0(5),
      I2 => aresetn,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bit_timer[5]_i_1__0_n_0\
    );
\bit_timer[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \select_packet_bit[3]_i_3_n_0\,
      I1 => bit_timer0(6),
      I2 => aresetn,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bit_timer[6]_i_1__0_n_0\
    );
\bit_timer[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \select_packet_bit[3]_i_3_n_0\,
      I1 => bit_timer0(7),
      I2 => aresetn,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bit_timer[7]_i_1__0_n_0\
    );
\bit_timer[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \select_packet_bit[3]_i_3_n_0\,
      I1 => bit_timer0(8),
      I2 => aresetn,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bit_timer[8]_i_1__0_n_0\
    );
\bit_timer[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => \select_packet_bit[3]_i_3_n_0\,
      I1 => bit_timer0(9),
      I2 => aresetn,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \bit_timer[9]_i_1__0_n_0\
    );
\bit_timer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_timer[0]_i_1_n_0\,
      Q => \bit_timer_reg_n_0_[0]\,
      R => '0'
    );
\bit_timer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_timer[15]_i_1_n_0\,
      D => \bit_timer[10]_i_1__0_n_0\,
      Q => \bit_timer_reg_n_0_[10]\,
      R => '0'
    );
\bit_timer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_timer[15]_i_1_n_0\,
      D => \bit_timer[11]_i_1__0_n_0\,
      Q => \bit_timer_reg_n_0_[11]\,
      R => '0'
    );
\bit_timer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_timer[15]_i_1_n_0\,
      D => \bit_timer[12]_i_1__0_n_0\,
      Q => \bit_timer_reg_n_0_[12]\,
      R => '0'
    );
\bit_timer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_timer[15]_i_1_n_0\,
      D => \bit_timer[13]_i_1__0_n_0\,
      Q => \bit_timer_reg_n_0_[13]\,
      R => '0'
    );
\bit_timer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_timer[15]_i_1_n_0\,
      D => \bit_timer[14]_i_1__0_n_0\,
      Q => \bit_timer_reg_n_0_[14]\,
      R => '0'
    );
\bit_timer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_timer[15]_i_1_n_0\,
      D => \bit_timer[15]_i_2__0_n_0\,
      Q => \bit_timer_reg_n_0_[15]\,
      R => '0'
    );
\bit_timer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_timer[1]_i_1_n_0\,
      Q => \bit_timer_reg_n_0_[1]\,
      R => '0'
    );
\bit_timer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_timer[2]_i_1_n_0\,
      Q => \bit_timer_reg_n_0_[2]\,
      R => '0'
    );
\bit_timer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_timer[15]_i_1_n_0\,
      D => \bit_timer[3]_i_1__0_n_0\,
      Q => \bit_timer_reg_n_0_[3]\,
      R => '0'
    );
\bit_timer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_timer[15]_i_1_n_0\,
      D => \bit_timer[4]_i_1__0_n_0\,
      Q => \bit_timer_reg_n_0_[4]\,
      R => '0'
    );
\bit_timer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_timer[15]_i_1_n_0\,
      D => \bit_timer[5]_i_1__0_n_0\,
      Q => \bit_timer_reg_n_0_[5]\,
      R => '0'
    );
\bit_timer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_timer[15]_i_1_n_0\,
      D => \bit_timer[6]_i_1__0_n_0\,
      Q => \bit_timer_reg_n_0_[6]\,
      R => '0'
    );
\bit_timer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_timer[15]_i_1_n_0\,
      D => \bit_timer[7]_i_1__0_n_0\,
      Q => \bit_timer_reg_n_0_[7]\,
      R => '0'
    );
\bit_timer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_timer[15]_i_1_n_0\,
      D => \bit_timer[8]_i_1__0_n_0\,
      Q => \bit_timer_reg_n_0_[8]\,
      R => '0'
    );
\bit_timer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_timer[15]_i_1_n_0\,
      D => \bit_timer[9]_i_1__0_n_0\,
      Q => \bit_timer_reg_n_0_[9]\,
      R => '0'
    );
\data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => aresetn,
      I2 => uartWr,
      I3 => write_has_triggered_reg_n_0,
      O => data
    );
\data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data,
      D => D(0),
      Q => \data_reg_n_0_[0]\,
      R => SR(0)
    );
\data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data,
      D => D(1),
      Q => p_0_in4_in,
      R => SR(0)
    );
\data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data,
      D => D(2),
      Q => p_0_in3_in,
      R => SR(0)
    );
\data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data,
      D => D(3),
      Q => p_0_in2_in,
      R => SR(0)
    );
\data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data,
      D => D(4),
      Q => p_0_in1_in,
      R => SR(0)
    );
\data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data,
      D => D(5),
      Q => p_0_in0_in,
      R => SR(0)
    );
\data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data,
      D => D(6),
      Q => p_0_in,
      R => SR(0)
    );
\data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data,
      D => D(7),
      Q => p_1_in,
      R => SR(0)
    );
\outDataReg[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => uartWr,
      O => E(0)
    );
\s_axi_rdata[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => aresetn,
      O => \FSM_onehot_state_reg[1]_1\
    );
\select_packet_bit[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => select_packet_bit(0)
    );
\select_packet_bit[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6660"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[0]\,
      I1 => \select_packet_bit_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => select_packet_bit(1)
    );
\select_packet_bit[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78787800"
    )
        port map (
      I0 => \select_packet_bit_reg_n_0_[1]\,
      I1 => \select_packet_bit_reg_n_0_[0]\,
      I2 => \select_packet_bit_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => select_packet_bit(2)
    );
\select_packet_bit[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0E0E0EEEEEEEE"
    )
        port map (
      I0 => \select_packet_bit[3]_i_3_n_0\,
      I1 => \^fsm_onehot_state_reg[1]_0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \select_packet_bit_reg_n_0_[2]\,
      I4 => \select_packet_bit_reg_n_0_[3]\,
      I5 => serial_o_i_2_n_0,
      O => \select_packet_bit[3]_i_1_n_0\
    );
\select_packet_bit[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEEEEEEE0000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \select_packet_bit_reg_n_0_[2]\,
      I3 => \select_packet_bit_reg_n_0_[0]\,
      I4 => \select_packet_bit_reg_n_0_[1]\,
      I5 => \select_packet_bit_reg_n_0_[3]\,
      O => \select_packet_bit[3]_i_2_n_0\
    );
\select_packet_bit[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \select_packet_bit[3]_i_4_n_0\,
      I1 => \select_packet_bit[3]_i_5_n_0\,
      I2 => \select_packet_bit[3]_i_6_n_0\,
      I3 => \select_packet_bit[3]_i_7_n_0\,
      O => \select_packet_bit[3]_i_3_n_0\
    );
\select_packet_bit[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[5]\,
      I1 => \bit_timer_reg_n_0_[8]\,
      I2 => \bit_timer_reg_n_0_[13]\,
      I3 => \bit_timer_reg_n_0_[7]\,
      O => \select_packet_bit[3]_i_4_n_0\
    );
\select_packet_bit[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[2]\,
      I1 => \bit_timer_reg_n_0_[3]\,
      I2 => \bit_timer_reg_n_0_[14]\,
      I3 => \bit_timer_reg_n_0_[0]\,
      O => \select_packet_bit[3]_i_5_n_0\
    );
\select_packet_bit[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[1]\,
      I1 => \bit_timer_reg_n_0_[6]\,
      I2 => \bit_timer_reg_n_0_[4]\,
      I3 => \bit_timer_reg_n_0_[9]\,
      O => \select_packet_bit[3]_i_6_n_0\
    );
\select_packet_bit[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_timer_reg_n_0_[15]\,
      I1 => \bit_timer_reg_n_0_[10]\,
      I2 => \bit_timer_reg_n_0_[12]\,
      I3 => \bit_timer_reg_n_0_[11]\,
      O => \select_packet_bit[3]_i_7_n_0\
    );
\select_packet_bit_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \select_packet_bit[3]_i_1_n_0\,
      D => select_packet_bit(0),
      Q => \select_packet_bit_reg_n_0_[0]\,
      R => SR(0)
    );
\select_packet_bit_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \select_packet_bit[3]_i_1_n_0\,
      D => select_packet_bit(1),
      Q => \select_packet_bit_reg_n_0_[1]\,
      R => SR(0)
    );
\select_packet_bit_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \select_packet_bit[3]_i_1_n_0\,
      D => select_packet_bit(2),
      Q => \select_packet_bit_reg_n_0_[2]\,
      R => SR(0)
    );
\select_packet_bit_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \select_packet_bit[3]_i_1_n_0\,
      D => \select_packet_bit[3]_i_2_n_0\,
      Q => \select_packet_bit_reg_n_0_[3]\,
      R => SR(0)
    );
serial_o_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => \^uart_tx\,
      I1 => serial_o_i_2_n_0,
      I2 => \^fsm_onehot_state_reg[1]_0\,
      I3 => serial_o_i_3_n_0,
      O => serial_o_i_1_n_0
    );
serial_o_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55511111"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \select_packet_bit_reg_n_0_[2]\,
      I3 => \select_packet_bit_reg_n_0_[1]\,
      I4 => \select_packet_bit_reg_n_0_[3]\,
      O => serial_o_i_2_n_0
    );
serial_o_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEE200000000"
    )
        port map (
      I0 => serial_o_reg_i_4_n_0,
      I1 => \select_packet_bit_reg_n_0_[3]\,
      I2 => \select_packet_bit_reg_n_0_[1]\,
      I3 => \select_packet_bit_reg_n_0_[0]\,
      I4 => p_1_in,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => serial_o_i_3_n_0
    );
serial_o_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in4_in,
      I2 => \select_packet_bit_reg_n_0_[1]\,
      I3 => \select_packet_bit_reg_n_0_[0]\,
      I4 => \data_reg_n_0_[0]\,
      O => serial_o_i_5_n_0
    );
serial_o_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in,
      I1 => p_0_in0_in,
      I2 => \select_packet_bit_reg_n_0_[1]\,
      I3 => p_0_in1_in,
      I4 => \select_packet_bit_reg_n_0_[0]\,
      I5 => p_0_in2_in,
      O => serial_o_i_6_n_0
    );
serial_o_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => serial_o_i_1_n_0,
      Q => \^uart_tx\,
      S => SR(0)
    );
serial_o_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => serial_o_i_5_n_0,
      I1 => serial_o_i_6_n_0,
      O => serial_o_reg_i_4_n_0,
      S => \select_packet_bit_reg_n_0_[2]\
    );
write_has_triggered_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0C0CA"
    )
        port map (
      I0 => write_has_triggered_reg_n_0,
      I1 => uartWr,
      I2 => \^fsm_onehot_state_reg[1]_0\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => write_has_triggered_i_1_n_0
    );
write_has_triggered_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => write_has_triggered_i_1_n_0,
      Q => write_has_triggered_reg_n_0,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_map_UART8250Lite_0_0_Uart is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART_tx : out STD_LOGIC;
    uartRdValid : out STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    uartWr : in STD_LOGIC;
    UART_rx : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_map_UART8250Lite_0_0_Uart : entity is "Uart";
end axi_map_UART8250Lite_0_0_Uart;

architecture STRUCTURE of axi_map_UART8250Lite_0_0_Uart is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  SR(0) <= \^sr\(0);
uart_rx_RnM: entity work.axi_map_UART8250Lite_0_0_UartRx
     port map (
      Q(7 downto 0) => Q(7 downto 0),
      SR(0) => \^sr\(0),
      UART_rx => UART_rx,
      aresetn => aresetn,
      clk => clk,
      uartRdValid => uartRdValid
    );
uart_tx_RnM: entity work.axi_map_UART8250Lite_0_0_UartTx
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => E(0),
      \FSM_onehot_state_reg[1]_0\ => \FSM_onehot_state_reg[1]\,
      \FSM_onehot_state_reg[1]_1\ => \FSM_onehot_state_reg[1]_0\,
      SR(0) => \^sr\(0),
      UART_tx => UART_tx,
      aresetn => aresetn,
      clk => clk,
      uartWr => uartWr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_map_UART8250Lite_0_0_UART8250Lite is
  port (
    s_axi_bvalid_reg_0 : out STD_LOGIC;
    s_axi_rvalid_reg_0 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    UART_tx : out STD_LOGIC;
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    UART_rx : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_map_UART8250Lite_0_0_UART8250Lite : entity is "UART8250Lite";
end axi_map_UART8250Lite_0_0_UART8250Lite;

architecture STRUCTURE of axi_map_UART8250Lite_0_0_UART8250Lite is
  signal data_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal outDataReg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rxFIFOAck1_out : STD_LOGIC;
  signal rxFIFOAck_reg_n_0 : STD_LOGIC;
  signal rxFIFO_n_0 : STD_LOGIC;
  signal rxFIFO_n_1 : STD_LOGIC;
  signal rxFIFO_n_2 : STD_LOGIC;
  signal rxFIFO_n_3 : STD_LOGIC;
  signal rxFIFO_n_4 : STD_LOGIC;
  signal rxFIFO_n_5 : STD_LOGIC;
  signal rxFIFO_n_6 : STD_LOGIC;
  signal rxFIFO_n_7 : STD_LOGIC;
  signal s_axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_reg_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_reg_0\ : STD_LOGIC;
  signal txFIFO_n_1 : STD_LOGIC;
  signal txFIFO_n_2 : STD_LOGIC;
  signal uartRdValid : STD_LOGIC;
  signal uartWr : STD_LOGIC;
  signal uart_n_0 : STD_LOGIC;
  signal uart_n_3 : STD_LOGIC;
  signal uart_n_4 : STD_LOGIC;
  signal uart_n_5 : STD_LOGIC;
  signal wAddrValid : STD_LOGIC;
  signal wAddrValid_i_1_n_0 : STD_LOGIC;
  signal wDataValid_i_1_n_0 : STD_LOGIC;
  signal wDataValid_reg_n_0 : STD_LOGIC;
  signal \waddr[11]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[10]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[11]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[8]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[9]\ : STD_LOGIC;
  signal wdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wdata[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of s_axi_awready_INST_0 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_i_5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of s_axi_rvalid_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of wAddrValid_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of wDataValid_i_1 : label is "soft_lutpair30";
begin
  s_axi_bvalid_reg_0 <= \^s_axi_bvalid_reg_0\;
  s_axi_rvalid_reg_0 <= \^s_axi_rvalid_reg_0\;
rxFIFO: entity work.axi_map_UART8250Lite_0_0_FIFO
     port map (
      Q(7 downto 0) => data_o(7 downto 0),
      SR(0) => uart_n_0,
      aresetn => aresetn,
      clk => clk,
      \indexIn_reg[4]_0\ => rxFIFOAck_reg_n_0,
      \outDataReg_reg[1]_0\ => rxFIFO_n_0,
      \outDataReg_reg[2]_0\ => rxFIFO_n_1,
      \outDataReg_reg[3]_0\ => rxFIFO_n_2,
      \outDataReg_reg[4]_0\ => rxFIFO_n_3,
      \outDataReg_reg[6]_0\(1) => rxFIFO_n_6,
      \outDataReg_reg[6]_0\(0) => rxFIFO_n_7,
      \outDataReg_reg[7]_0\ => rxFIFO_n_4,
      outValidReg_reg_0 => rxFIFO_n_5,
      s_axi_araddr(2 downto 0) => s_axi_araddr(2 downto 0),
      uartRdValid => uartRdValid
    );
rxFIFOAck_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \s_axi_rdata[7]_i_4_n_0\,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      I5 => s_axi_araddr(2),
      O => rxFIFOAck1_out
    );
rxFIFOAck_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rxFIFOAck1_out,
      Q => rxFIFOAck_reg_n_0,
      R => uart_n_0
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      O => s_axi_arready
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wAddrValid,
      I1 => \^s_axi_bvalid_reg_0\,
      O => s_axi_awready
    );
s_axi_bvalid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5C0"
    )
        port map (
      I0 => s_axi_bready,
      I1 => wAddrValid,
      I2 => wDataValid_reg_n_0,
      I3 => \^s_axi_bvalid_reg_0\,
      O => s_axi_bvalid_i_2_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_bvalid_i_2_n_0,
      Q => \^s_axi_bvalid_reg_0\,
      R => uart_n_0
    );
\s_axi_rdata[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(2),
      O => \s_axi_rdata[6]_i_3_n_0\
    );
\s_axi_rdata[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_araddr(1),
      I2 => s_axi_araddr(2),
      O => \s_axi_rdata[6]_i_5_n_0\
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => aresetn,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => \s_axi_rdata[7]_i_4_n_0\,
      O => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      I1 => s_axi_arvalid,
      I2 => aresetn,
      O => \s_axi_rdata[7]_i_2_n_0\
    );
\s_axi_rdata[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(6),
      I2 => s_axi_araddr(11),
      I3 => \s_axi_rdata[7]_i_5_n_0\,
      O => \s_axi_rdata[7]_i_4_n_0\
    );
\s_axi_rdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => s_axi_araddr(7),
      I2 => s_axi_araddr(4),
      I3 => s_axi_araddr(9),
      I4 => s_axi_araddr(5),
      I5 => s_axi_araddr(8),
      O => \s_axi_rdata[7]_i_5_n_0\
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[7]_i_2_n_0\,
      D => rxFIFO_n_5,
      Q => s_axi_rdata(0),
      R => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[7]_i_2_n_0\,
      D => rxFIFO_n_0,
      Q => s_axi_rdata(1),
      R => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[7]_i_2_n_0\,
      D => rxFIFO_n_1,
      Q => s_axi_rdata(2),
      R => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[7]_i_2_n_0\,
      D => rxFIFO_n_2,
      Q => s_axi_rdata(3),
      R => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[7]_i_2_n_0\,
      D => rxFIFO_n_3,
      Q => s_axi_rdata(4),
      R => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[7]_i_2_n_0\,
      D => txFIFO_n_2,
      Q => s_axi_rdata(5),
      R => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[7]_i_2_n_0\,
      D => txFIFO_n_1,
      Q => s_axi_rdata(6),
      R => \s_axi_rdata[7]_i_1_n_0\
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \s_axi_rdata[7]_i_2_n_0\,
      D => rxFIFO_n_4,
      Q => s_axi_rdata(7),
      R => \s_axi_rdata[7]_i_1_n_0\
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => s_axi_arvalid,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid_reg_0\,
      R => uart_n_0
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wDataValid_reg_n_0,
      I1 => \^s_axi_bvalid_reg_0\,
      O => s_axi_wready
    );
txFIFO: entity work.axi_map_UART8250Lite_0_0_FIFO_0
     port map (
      E(0) => uart_n_5,
      Q(7 downto 0) => wdata(7 downto 0),
      SR(0) => uart_n_0,
      aresetn => aresetn,
      clk => clk,
      \indexIn[4]_i_3_0\ => wDataValid_reg_n_0,
      \indexIn_reg[4]_0\(11) => \waddr_reg_n_0_[11]\,
      \indexIn_reg[4]_0\(10) => \waddr_reg_n_0_[10]\,
      \indexIn_reg[4]_0\(9) => \waddr_reg_n_0_[9]\,
      \indexIn_reg[4]_0\(8) => \waddr_reg_n_0_[8]\,
      \indexIn_reg[4]_0\(7) => \waddr_reg_n_0_[7]\,
      \indexIn_reg[4]_0\(6) => \waddr_reg_n_0_[6]\,
      \indexIn_reg[4]_0\(5) => \waddr_reg_n_0_[5]\,
      \indexIn_reg[4]_0\(4) => \waddr_reg_n_0_[4]\,
      \indexIn_reg[4]_0\(3) => \waddr_reg_n_0_[3]\,
      \indexIn_reg[4]_0\(2) => \waddr_reg_n_0_[2]\,
      \indexIn_reg[4]_0\(1) => \waddr_reg_n_0_[1]\,
      \indexIn_reg[4]_0\(0) => \waddr_reg_n_0_[0]\,
      \outDataReg_reg[5]_0\ => txFIFO_n_2,
      \outDataReg_reg[7]_0\(7 downto 0) => outDataReg(7 downto 0),
      outValidReg_reg_0 => txFIFO_n_1,
      outValidReg_reg_1 => uart_n_3,
      \s_axi_rdata_reg[6]\ => \s_axi_rdata[6]_i_3_n_0\,
      \s_axi_rdata_reg[6]_0\ => uart_n_4,
      \s_axi_rdata_reg[6]_1\(1) => rxFIFO_n_6,
      \s_axi_rdata_reg[6]_1\(0) => rxFIFO_n_7,
      \s_axi_rdata_reg[6]_2\ => \s_axi_rdata[6]_i_5_n_0\,
      uartWr => uartWr,
      wAddrValid => wAddrValid
    );
uart: entity work.axi_map_UART8250Lite_0_0_Uart
     port map (
      D(7 downto 0) => outDataReg(7 downto 0),
      E(0) => uart_n_5,
      \FSM_onehot_state_reg[1]\ => uart_n_3,
      \FSM_onehot_state_reg[1]_0\ => uart_n_4,
      Q(7 downto 0) => data_o(7 downto 0),
      SR(0) => uart_n_0,
      UART_rx => UART_rx,
      UART_tx => UART_tx,
      aresetn => aresetn,
      clk => clk,
      uartRdValid => uartRdValid,
      uartWr => uartWr
    );
wAddrValid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F02020"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_bvalid_reg_0\,
      I2 => aresetn,
      I3 => wDataValid_reg_n_0,
      I4 => wAddrValid,
      O => wAddrValid_i_1_n_0
    );
wAddrValid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wAddrValid_i_1_n_0,
      Q => wAddrValid,
      R => '0'
    );
wDataValid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020F020"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^s_axi_bvalid_reg_0\,
      I2 => aresetn,
      I3 => wDataValid_reg_n_0,
      I4 => wAddrValid,
      O => wDataValid_i_1_n_0
    );
wDataValid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wDataValid_i_1_n_0,
      Q => wDataValid_reg_n_0,
      R => '0'
    );
\waddr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => wAddrValid,
      I1 => \^s_axi_bvalid_reg_0\,
      I2 => s_axi_awvalid,
      I3 => aresetn,
      O => \waddr[11]_i_1_n_0\
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \waddr[11]_i_1_n_0\,
      D => s_axi_awaddr(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \waddr[11]_i_1_n_0\,
      D => s_axi_awaddr(10),
      Q => \waddr_reg_n_0_[10]\,
      R => '0'
    );
\waddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \waddr[11]_i_1_n_0\,
      D => s_axi_awaddr(11),
      Q => \waddr_reg_n_0_[11]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \waddr[11]_i_1_n_0\,
      D => s_axi_awaddr(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \waddr[11]_i_1_n_0\,
      D => s_axi_awaddr(2),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \waddr[11]_i_1_n_0\,
      D => s_axi_awaddr(3),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \waddr[11]_i_1_n_0\,
      D => s_axi_awaddr(4),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \waddr[11]_i_1_n_0\,
      D => s_axi_awaddr(5),
      Q => \waddr_reg_n_0_[5]\,
      R => '0'
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \waddr[11]_i_1_n_0\,
      D => s_axi_awaddr(6),
      Q => \waddr_reg_n_0_[6]\,
      R => '0'
    );
\waddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \waddr[11]_i_1_n_0\,
      D => s_axi_awaddr(7),
      Q => \waddr_reg_n_0_[7]\,
      R => '0'
    );
\waddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \waddr[11]_i_1_n_0\,
      D => s_axi_awaddr(8),
      Q => \waddr_reg_n_0_[8]\,
      R => '0'
    );
\waddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \waddr[11]_i_1_n_0\,
      D => s_axi_awaddr(9),
      Q => \waddr_reg_n_0_[9]\,
      R => '0'
    );
\wdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => wDataValid_reg_n_0,
      I1 => \^s_axi_bvalid_reg_0\,
      I2 => s_axi_wvalid,
      I3 => aresetn,
      O => \wdata[7]_i_1_n_0\
    );
\wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \wdata[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => wdata(0),
      R => '0'
    );
\wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \wdata[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => wdata(1),
      R => '0'
    );
\wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \wdata[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => wdata(2),
      R => '0'
    );
\wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \wdata[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => wdata(3),
      R => '0'
    );
\wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \wdata[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => wdata(4),
      R => '0'
    );
\wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \wdata[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => wdata(5),
      R => '0'
    );
\wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \wdata[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => wdata(6),
      R => '0'
    );
\wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \wdata[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => wdata(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_map_UART8250Lite_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_map_UART8250Lite_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_map_UART8250Lite_0_0 : entity is "axi_map_UART8250Lite_0_0,UART8250Lite,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axi_map_UART8250Lite_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of axi_map_UART8250Lite_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_map_UART8250Lite_0_0 : entity is "UART8250Lite,Vivado 2023.2";
end axi_map_UART8250Lite_0_0;

architecture STRUCTURE of axi_map_UART8250Lite_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 20833333, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_PARAMETER of s_axi_rvalid : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 128, PROTOCOL AXI4LITE, FREQ_HZ 20833333, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 s_axi ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 s_axi AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_rdata(127) <= \<const0>\;
  s_axi_rdata(126) <= \<const0>\;
  s_axi_rdata(125) <= \<const0>\;
  s_axi_rdata(124) <= \<const0>\;
  s_axi_rdata(123) <= \<const0>\;
  s_axi_rdata(122) <= \<const0>\;
  s_axi_rdata(121) <= \<const0>\;
  s_axi_rdata(120) <= \<const0>\;
  s_axi_rdata(119) <= \<const0>\;
  s_axi_rdata(118) <= \<const0>\;
  s_axi_rdata(117) <= \<const0>\;
  s_axi_rdata(116) <= \<const0>\;
  s_axi_rdata(115) <= \<const0>\;
  s_axi_rdata(114) <= \<const0>\;
  s_axi_rdata(113) <= \<const0>\;
  s_axi_rdata(112) <= \<const0>\;
  s_axi_rdata(111) <= \<const0>\;
  s_axi_rdata(110) <= \<const0>\;
  s_axi_rdata(109) <= \<const0>\;
  s_axi_rdata(108) <= \<const0>\;
  s_axi_rdata(107) <= \<const0>\;
  s_axi_rdata(106) <= \<const0>\;
  s_axi_rdata(105) <= \<const0>\;
  s_axi_rdata(104) <= \<const0>\;
  s_axi_rdata(103) <= \<const0>\;
  s_axi_rdata(102) <= \<const0>\;
  s_axi_rdata(101) <= \<const0>\;
  s_axi_rdata(100) <= \<const0>\;
  s_axi_rdata(99) <= \<const0>\;
  s_axi_rdata(98) <= \<const0>\;
  s_axi_rdata(97) <= \<const0>\;
  s_axi_rdata(96) <= \<const0>\;
  s_axi_rdata(95) <= \<const0>\;
  s_axi_rdata(94) <= \<const0>\;
  s_axi_rdata(93) <= \<const0>\;
  s_axi_rdata(92) <= \<const0>\;
  s_axi_rdata(91) <= \<const0>\;
  s_axi_rdata(90) <= \<const0>\;
  s_axi_rdata(89) <= \<const0>\;
  s_axi_rdata(88) <= \<const0>\;
  s_axi_rdata(87) <= \<const0>\;
  s_axi_rdata(86) <= \<const0>\;
  s_axi_rdata(85) <= \<const0>\;
  s_axi_rdata(84) <= \<const0>\;
  s_axi_rdata(83) <= \<const0>\;
  s_axi_rdata(82) <= \<const0>\;
  s_axi_rdata(81) <= \<const0>\;
  s_axi_rdata(80) <= \<const0>\;
  s_axi_rdata(79) <= \<const0>\;
  s_axi_rdata(78) <= \<const0>\;
  s_axi_rdata(77) <= \<const0>\;
  s_axi_rdata(76) <= \<const0>\;
  s_axi_rdata(75) <= \<const0>\;
  s_axi_rdata(74) <= \<const0>\;
  s_axi_rdata(73) <= \<const0>\;
  s_axi_rdata(72) <= \<const0>\;
  s_axi_rdata(71) <= \<const0>\;
  s_axi_rdata(70) <= \<const0>\;
  s_axi_rdata(69) <= \<const0>\;
  s_axi_rdata(68) <= \<const0>\;
  s_axi_rdata(67) <= \<const0>\;
  s_axi_rdata(66) <= \<const0>\;
  s_axi_rdata(65) <= \<const0>\;
  s_axi_rdata(64) <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
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
  s_axi_rdata(7 downto 0) <= \^s_axi_rdata\(7 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.axi_map_UART8250Lite_0_0_UART8250Lite
     port map (
      UART_rx => UART_rx,
      UART_tx => UART_tx,
      aresetn => aresetn,
      clk => clk,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_reg_0 => s_axi_bvalid,
      s_axi_rdata(7 downto 0) => \^s_axi_rdata\(7 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_reg_0 => s_axi_rvalid,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
