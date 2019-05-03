
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name SPWM -dir "C:/work/SPWM/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "main.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ipcore_dir/IP.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {PWM.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {PHASE.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MMU.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {CLK.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {div.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {AMP.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ADDR.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {main.vhf}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top main $srcset
add_files [list {main.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/IP.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/mbl.ncf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
