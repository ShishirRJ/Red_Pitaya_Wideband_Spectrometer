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
use ieee.numeric_std.all;

library xil_defaultlib;
use xil_defaultlib.axi4lite_pkg.all;
library xil_defaultlib;
use xil_defaultlib.axi4lite_sys_pkg.all;
     
entity axi4lite_sys is
   port(
      axi4lite_aclk : in std_logic;
      axi4lite_aresetn : in std_logic;
      
      axi4lite_mosi : in t_axi4lite_mosi;
      axi4lite_miso : out t_axi4lite_miso;

      axi4lite_sys_in_we : in t_axi4lite_sys_decoded;
      axi4lite_sys_in : in t_axi4lite_sys;
      axi4lite_sys_out_we : out t_axi4lite_sys_decoded;
      axi4lite_sys_out : out t_axi4lite_sys
   );
end entity;     

architecture axi4lite_sys_a of axi4lite_sys is 

   signal ipb_mosi : t_ipb_mosi;
   signal ipb_miso : t_ipb_miso;
   
   signal ipb_mosi_arr : t_ipb_sys_mosi_arr;
   signal ipb_miso_arr : t_ipb_sys_miso_arr;
   
   signal axi4lite_sys_int_we : t_axi4lite_sys_decoded;
   signal axi4lite_sys_int_re : t_axi4lite_sys_decoded;
   signal axi4lite_sys_int : t_axi4lite_sys;

begin
   --
   --
   --
   axi4lite_slave_logic_inst: entity xil_defaultlib.axi4lite_slave_logic
   port map (
      axi4lite_aclk => axi4lite_aclk,
      axi4lite_aresetn => axi4lite_aresetn,
      axi4lite_mosi => axi4lite_mosi,
      axi4lite_miso => axi4lite_miso,
      ipb_mosi => ipb_mosi,
      ipb_miso => ipb_miso
   );
   --
   -- blocks_muxdemux
   --
   axi4lite_sys_muxdemux_inst: entity xil_defaultlib.axi4lite_sys_muxdemux
   port map(
      axi4lite_aclk => axi4lite_aclk,
      axi4lite_aresetn => axi4lite_aresetn,
      ipb_mosi => ipb_mosi,
      ipb_miso => ipb_miso,
      ipb_mosi_arr => ipb_mosi_arr,
      ipb_miso_arr => ipb_miso_arr   
   );

   --
   -- Address decoder
   --
   axi4lite_sys_int_we <= axi4lite_sys_full_decoder(ipb_mosi_arr(0).addr,ipb_mosi_arr(0).wreq);
   axi4lite_sys_int_re <= axi4lite_sys_full_decoder(ipb_mosi_arr(0).addr,ipb_mosi_arr(0).rreq);
   --
   -- Register write process
   --
   process(axi4lite_aclk,axi4lite_aresetn)
   begin
      if rising_edge(axi4lite_aclk) then
         axi4lite_sys_out_we <= axi4lite_sys_int_we;
         --
         -- Write to registers from logic, put assignments here 
         -- if logic has lower priority than axi4lite bus master 
         --
         -- ...
         --
         -- hw_permission="w" or hw_permission="wen"
         -- hw_prio="bus"
         --

         --====================================================================
         --
         -- Write to registers from axi4lite side, think twice before modifying
         --
         axi4lite_sys_write_reg(ipb_mosi_arr(0).wdat,
                                      axi4lite_sys_int_we,
                                      axi4lite_sys_int);
         --
         --====================================================================
         --
         -- Write to registers from logic, put assignments here 
         -- if logic has higher priority than axi4lite bus master
         --
         -- ...
         --
         -- hw_permission="w" or hw_permission="wen"
         -- hw_prio="logic"
         --
         axi4lite_sys_int.clkcounter <= axi4lite_sys_in.clkcounter;

      end if;
      if axi4lite_aresetn = '0' then
         axi4lite_sys_reset(axi4lite_sys_int);
         axi4lite_sys_out_we <= axi4lite_sys_reset_out_en(axi4lite_sys_int);        
      end if;
   end process;
   
   ipb_miso_arr(0).wack <= '1';
   ipb_miso_arr(0).rack <= '1';
   ipb_miso_arr(0).rdat <= axi4lite_sys_read_reg(axi4lite_sys_int_re,
                                                       axi4lite_sys_int);

   axi4lite_sys_out    <= axi4lite_sys_int; 
   
   
end architecture;

