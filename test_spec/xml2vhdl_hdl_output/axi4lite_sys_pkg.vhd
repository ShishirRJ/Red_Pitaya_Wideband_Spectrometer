-- This file is part of XML2VHDL
-- Copyright (C) 2015
-- University of Oxford <http://www.ox.ac.uk/>
-- Department of Physics
-- 
-- This program is free software: you can redistribute it and/or modify  
-- it under the terms of the GNU General Public License as published by  
-- the Free Software Foundation, version 3.
--
-- This program is distributed in the hope that it will be useful, but 
-- WITHOUT ANY WARRANTY; without even the implied warranty of 
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
-- General Public License for more details.
--
-- You should have received a copy of the GNU General Public License 
-- along with this program. If not, see <http://www.gnu.org/licenses/>.

library ieee;
use ieee.std_logic_1164.all;

library xil_defaultlib;
use xil_defaultlib.axi4lite_pkg.all;

package axi4lite_sys_pkg is 

   --##########################################################################
   --
   -- Register Records
   --
   --##########################################################################
   type t_axi4lite_sys is record
      board_id: std_logic_vector(31 downto 0);
      rev: std_logic_vector(31 downto 0);
      rev_rcs: std_logic_vector(31 downto 0);
      scratchpad: std_logic_vector(31 downto 0);
      clkcounter: std_logic_vector(31 downto 0);
   end record;

   --##########################################################################
   --
   -- Register Decoded Records
   --
   --##########################################################################
   type t_axi4lite_sys_decoded is record
      board_id: std_logic;
      rev: std_logic;
      rev_rcs: std_logic;
      scratchpad: std_logic;
      clkcounter: std_logic;
   end record;

   --##########################################################################
   --
   -- Register Descriptors
   --
   --##########################################################################
   type t_access_type is (r,w,rw);
   type t_reset_type is (async_reset,no_reset);
   
   type t_reg_descr is record
      offset: std_logic_vector(31 downto 0);
      bit_hi: natural;
      bit_lo: natural;
      rst_val: std_logic_vector(31 downto 0);
      reset_type: t_reset_type;
      decoder_mask: std_logic_vector(31 downto 0);
      access_type: t_access_type;
   end record;
   
   type t_axi4lite_sys_descr is record
      board_id: t_reg_descr;
      rev: t_reg_descr;
      rev_rcs: t_reg_descr;
      scratchpad: t_reg_descr;
      clkcounter: t_reg_descr;
   end record;

   
   constant axi4lite_sys_descr: t_axi4lite_sys_descr := (
      board_id    => (X"00000000",31, 0,X"00000004",async_reset,X"0000001c",r),
      rev         => (X"00000004",31, 0,X"00065536",async_reset,X"0000001c",r),
      rev_rcs     => (X"0000000c",31, 0,X"00000001",async_reset,X"00000018",r),
      scratchpad  => (X"00000010",31, 0,X"00000000",async_reset,X"00000014",rw),
      clkcounter  => (X"00000014",31, 0,X"00000000",async_reset,X"00000014",r)
   );

   --##########################################################################
   --
   -- Constants
   --
   --##########################################################################
   constant c_nof_register_blocks: integer := 1;
   constant c_nof_memory_blocks: integer := 0;
   constant c_total_nof_blocks: integer := c_nof_memory_blocks+c_nof_register_blocks;
   
   type t_ipb_sys_mosi_arr is array (0 to c_total_nof_blocks-1) of t_ipb_mosi;
   type t_ipb_sys_miso_arr is array (0 to c_total_nof_blocks-1) of t_ipb_miso;
   


   --##########################################################################
   --
   -- Functions
   --
   --##########################################################################
   function axi4lite_sys_decoder(descr: t_reg_descr; addr: std_logic_vector) return boolean;
   
   function axi4lite_sys_full_decoder(addr: std_logic_vector; en: std_logic) return t_axi4lite_sys_decoded;
   
   procedure axi4lite_sys_reset(signal sys: inout t_axi4lite_sys);
   procedure axi4lite_sys_default_decoded(signal sys: inout t_axi4lite_sys_decoded);
   procedure axi4lite_sys_write_reg(data: std_logic_vector; 
                                          signal sys_decoded: in t_axi4lite_sys_decoded;
                                          signal sys: inout t_axi4lite_sys);
   
   function axi4lite_sys_read_reg(signal sys_decoded: in t_axi4lite_sys_decoded;
                                        signal sys: t_axi4lite_sys) return std_logic_vector;
   function axi4lite_sys_reset_out_en(signal sys: t_axi4lite_sys) return t_axi4lite_sys_decoded;
   
   function axi4lite_sys_demux(addr: std_logic_vector) return std_logic_vector;

end package;

package body axi4lite_sys_pkg is
   
   function axi4lite_sys_decoder(descr: t_reg_descr; addr: std_logic_vector) return boolean is
      variable ret: boolean:=true;
      variable bus_addr_i: std_logic_vector(addr'length-1 downto 0) := addr;
      variable mask_i: std_logic_vector(descr.decoder_mask'length-1 downto 0) := descr.decoder_mask;
      variable reg_addr_i: std_logic_vector(descr.offset'length-1 downto 0) := descr.offset;
   begin
      for n in 0 to bus_addr_i'length-1 loop
         if mask_i(n) = '1' and bus_addr_i(n) /= reg_addr_i(n) then
            ret := false;
         end if;
      end loop;
      return ret;
   end function;
   
   function axi4lite_sys_full_decoder(addr: std_logic_vector; en: std_logic) return t_axi4lite_sys_decoded is
      variable sys_decoded: t_axi4lite_sys_decoded;
   begin
   
      sys_decoded.board_id := '0';
      if axi4lite_sys_decoder(axi4lite_sys_descr.board_id,addr) = true and en = '1' then
         sys_decoded.board_id := '1';
      end if;
      
      sys_decoded.rev := '0';
      if axi4lite_sys_decoder(axi4lite_sys_descr.rev,addr) = true and en = '1' then
         sys_decoded.rev := '1';
      end if;
      
      sys_decoded.rev_rcs := '0';
      if axi4lite_sys_decoder(axi4lite_sys_descr.rev_rcs,addr) = true and en = '1' then
         sys_decoded.rev_rcs := '1';
      end if;
      
      sys_decoded.scratchpad := '0';
      if axi4lite_sys_decoder(axi4lite_sys_descr.scratchpad,addr) = true and en = '1' then
         sys_decoded.scratchpad := '1';
      end if;
      
      sys_decoded.clkcounter := '0';
      if axi4lite_sys_decoder(axi4lite_sys_descr.clkcounter,addr) = true and en = '1' then
         sys_decoded.clkcounter := '1';
      end if;
      
      
      return sys_decoded;
   end function;
     
   procedure axi4lite_sys_reset(signal sys: inout t_axi4lite_sys) is
   begin

      sys.board_id <= axi4lite_sys_descr.board_id.rst_val(31 downto 0);
      sys.rev <= axi4lite_sys_descr.rev.rst_val(31 downto 0);
      sys.rev_rcs <= axi4lite_sys_descr.rev_rcs.rst_val(31 downto 0);
      sys.scratchpad <= axi4lite_sys_descr.scratchpad.rst_val(31 downto 0);
      sys.clkcounter <= axi4lite_sys_descr.clkcounter.rst_val(31 downto 0);

   end procedure;

   function axi4lite_sys_reset_out_en(signal sys: t_axi4lite_sys) return t_axi4lite_sys_decoded is
       variable sys_rst: t_axi4lite_sys_decoded;
   begin

      sys_rst.board_id := '1';
      sys_rst.rev := '1';
      sys_rst.rev_rcs := '1';
      sys_rst.scratchpad := '1';
      sys_rst.clkcounter := '1';
  
     return sys_rst;
   end function;
   
   procedure axi4lite_sys_default_decoded(signal sys: inout t_axi4lite_sys_decoded) is
   begin
      
      sys.board_id <= '0';
      sys.rev <= '0';
      sys.rev_rcs <= '0';
      sys.scratchpad <= '0';
      sys.clkcounter <= '0';

   end procedure;

   procedure axi4lite_sys_write_reg(data: std_logic_vector; 
                                          signal sys_decoded: in t_axi4lite_sys_decoded;
                                          signal sys: inout t_axi4lite_sys) is
   begin
      
      if sys_decoded.scratchpad = '1' then
         sys.scratchpad <= data(31 downto 0);
      end if;
      

   end procedure;
   
   function axi4lite_sys_read_reg(signal sys_decoded: in t_axi4lite_sys_decoded;
                                        signal sys: t_axi4lite_sys) return std_logic_vector is
      variable ret: std_logic_vector(31 downto 0);
   begin
      ret := (others=>'0');
      
      if sys_decoded.board_id = '1' then
         ret(31 downto 0) := sys.board_id;
      end if;
      
      if sys_decoded.rev = '1' then
         ret(31 downto 0) := sys.rev;
      end if;
      
      if sys_decoded.rev_rcs = '1' then
         ret(31 downto 0) := sys.rev_rcs;
      end if;
      
      if sys_decoded.scratchpad = '1' then
         ret(31 downto 0) := sys.scratchpad;
      end if;
      
      if sys_decoded.clkcounter = '1' then
         ret(31 downto 0) := sys.clkcounter;
      end if;
      

      return ret;
   end function;
   
   function axi4lite_sys_demux(addr: std_logic_vector) return std_logic_vector is
      variable ret: std_logic_vector(c_total_nof_blocks-1 downto 0);
   begin
      ret := (others=>'0');
      if c_total_nof_blocks = 1 then
         ret := (others=>'1');
      else

  
      end if;
      return ret;
   end function;

end package body;

