# Copyright (C) 2022  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime: Generate Tcl File for Project
# File: RISCV.tcl
# Generated on: Sat Jan 21 15:12:45 2023

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "RISCV"]} {
		puts "Project RISCV is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists RISCV]} {
		project_open -revision RISCV RISCV
	} else {
		project_new -revision RISCV RISCV
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name DEVICE 5CGXFC5C6F27C7
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 12
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "TUE JUN  4 20:41:15 2013"
	set_global_assignment -name LAST_QUARTUS_VERSION "21.1.1 Lite Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
	set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name NUM_PARALLEL_PROCESSORS 4
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name OPTIMIZATION_TECHNIQUE BALANCED
	set_global_assignment -name SYNTH_TIMING_DRIVEN_SYNTHESIS ON
	set_global_assignment -name STRATIXV_CONFIGURATION_SCHEME "ACTIVE SERIAL X4"
	set_global_assignment -name USE_CONFIGURATION_DEVICE ON
	set_global_assignment -name STRATIXII_CONFIGURATION_DEVICE EPCQ256
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN ON
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -fall
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -fall
	set_global_assignment -name ACTIVE_SERIAL_CLOCK FREQ_100MHZ
	set_global_assignment -name OPTIMIZE_HOLD_TIMING "ALL PATHS"
	set_global_assignment -name OPTIMIZE_MULTI_CORNER_TIMING ON
	set_global_assignment -name FITTER_EFFORT "STANDARD FIT"
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim (VHDL)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name ENABLE_OCT_DONE OFF
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS_WEAK_PULLUP "AS INPUT TRI-STATED"
	set_global_assignment -name ENABLE_SIGNALTAP ON
	set_global_assignment -name USE_SIGNALTAP_FILE output_files/stp1.stp
	set_global_assignment -name SLD_NODE_CREATOR_ID 110 -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_ENTITY_NAME sld_signaltap -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_RAM_BLOCK_TYPE=AUTO" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_NODE_INFO=805334528" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_POWER_UP_TRIGGER=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ATTRIBUTE_MEM_MODE=OFF" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_FLOW_USE_GENERATED=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_BITS=11" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_BUFFER_FULL_STOP=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_CURRENT_RESOURCE_WIDTH=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STORAGE_QUALIFIER_GAP_RECORD=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STORAGE_QUALIFIER_MODE=TRANSITIONAL" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INCREMENTAL_ROUTING=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_IN_ENABLED=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_PIPELINE=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_RAM_PIPELINE=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_COUNTER_PIPELINE=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ADVANCED_TRIGGER_ENTITY=basic,1," -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL_PIPELINE=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ENABLE_ADVANCED_TRIGGER=0" -section_id auto_signaltap_0
	set_global_assignment -name SDC_FILE C5GALL.sdc
	set_global_assignment -name QIP_FILE Instruction_ROM.qip
	set_global_assignment -name SOURCE_FILE Instruction_ROM.cmp
	set_global_assignment -name VHDL_FILE SRAMController.vhd
	set_global_assignment -name VHDL_FILE SevenSeg.vhd
	set_global_assignment -name BDF_FILE RISCV.bdf
	set_global_assignment -name VHDL_FILE RegSet.vhd
	set_global_assignment -name VHDL_FILE Multiplexer32Bit.vhd
	set_global_assignment -name VHDL_FILE MemStage.vhd
	set_global_assignment -name VHDL_FILE MemMux.vhd
	set_global_assignment -name VHDL_FILE Forward.vhd
	set_global_assignment -name VHDL_FILE FetchStage.vhd
	set_global_assignment -name VHDL_FILE Fetch.vhd
	set_global_assignment -name VHDL_FILE ExecuteStage.vhd
	set_global_assignment -name VHDL_FILE DecodeStage.vhd
	set_global_assignment -name VHDL_FILE Decode.vhd
	set_global_assignment -name VHDL_FILE constants.vhd
	set_global_assignment -name VHDL_FILE ALU.vhd
	set_global_assignment -name SIGNALTAP_FILE output_files/stp1.stp
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SEGMENT_SIZE=1024" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SAMPLE_DEPTH=1024" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_DATA_BITS=646" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_BITS=646" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STORAGE_QUALIFIER_BITS=646" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK=00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK_LENGTH=2609" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STORAGE_QUALIFIER_INVERSION_MASK_LENGTH=647" -section_id auto_signaltap_0
	set_global_assignment -name SLD_FILE db/stp1_auto_stripped.stp
	set_location_assignment PIN_R20 -to CLOCK_50_B5B
	set_location_assignment PIN_V19 -to HEX0[0]
	set_location_assignment PIN_V18 -to HEX0[1]
	set_location_assignment PIN_V17 -to HEX0[2]
	set_location_assignment PIN_W18 -to HEX0[3]
	set_location_assignment PIN_Y20 -to HEX0[4]
	set_location_assignment PIN_Y19 -to HEX0[5]
	set_location_assignment PIN_Y18 -to HEX0[6]
	set_location_assignment PIN_AA18 -to HEX1[0]
	set_location_assignment PIN_AD26 -to HEX1[1]
	set_location_assignment PIN_AB19 -to HEX1[2]
	set_location_assignment PIN_AE26 -to HEX1[3]
	set_location_assignment PIN_AE25 -to HEX1[4]
	set_location_assignment PIN_AC19 -to HEX1[5]
	set_location_assignment PIN_AF24 -to HEX1[6]
	set_location_assignment PIN_P11 -to KEY[0]
	set_location_assignment PIN_B25 -to SRAM_A[0]
	set_location_assignment PIN_B26 -to SRAM_A[1]
	set_location_assignment PIN_H19 -to SRAM_A[2]
	set_location_assignment PIN_H20 -to SRAM_A[3]
	set_location_assignment PIN_D25 -to SRAM_A[4]
	set_location_assignment PIN_C25 -to SRAM_A[5]
	set_location_assignment PIN_J20 -to SRAM_A[6]
	set_location_assignment PIN_J21 -to SRAM_A[7]
	set_location_assignment PIN_D22 -to SRAM_A[8]
	set_location_assignment PIN_E23 -to SRAM_A[9]
	set_location_assignment PIN_G20 -to SRAM_A[10]
	set_location_assignment PIN_F21 -to SRAM_A[11]
	set_location_assignment PIN_E21 -to SRAM_A[12]
	set_location_assignment PIN_F22 -to SRAM_A[13]
	set_location_assignment PIN_J25 -to SRAM_A[14]
	set_location_assignment PIN_J26 -to SRAM_A[15]
	set_location_assignment PIN_N24 -to SRAM_A[16]
	set_location_assignment PIN_M24 -to SRAM_A[17]
	set_location_assignment PIN_N23 -to SRAM_CE_n
	set_location_assignment PIN_E24 -to SRAM_D[0]
	set_location_assignment PIN_E25 -to SRAM_D[1]
	set_location_assignment PIN_K24 -to SRAM_D[2]
	set_location_assignment PIN_K23 -to SRAM_D[3]
	set_location_assignment PIN_F24 -to SRAM_D[4]
	set_location_assignment PIN_G24 -to SRAM_D[5]
	set_location_assignment PIN_L23 -to SRAM_D[6]
	set_location_assignment PIN_L24 -to SRAM_D[7]
	set_location_assignment PIN_H23 -to SRAM_D[8]
	set_location_assignment PIN_H24 -to SRAM_D[9]
	set_location_assignment PIN_H22 -to SRAM_D[10]
	set_location_assignment PIN_J23 -to SRAM_D[11]
	set_location_assignment PIN_F23 -to SRAM_D[12]
	set_location_assignment PIN_G22 -to SRAM_D[13]
	set_location_assignment PIN_L22 -to SRAM_D[14]
	set_location_assignment PIN_K21 -to SRAM_D[15]
	set_location_assignment PIN_H25 -to SRAM_LB_n
	set_location_assignment PIN_M22 -to SRAM_OE_n
	set_location_assignment PIN_M25 -to SRAM_UB_n
	set_location_assignment PIN_G25 -to SRAM_WE_n
	set_location_assignment PIN_AD7 -to HEX2[0]
	set_location_assignment PIN_AD6 -to HEX2[1]
	set_location_assignment PIN_U20 -to HEX2[2]
	set_location_assignment PIN_V22 -to HEX2[3]
	set_location_assignment PIN_V20 -to HEX2[4]
	set_location_assignment PIN_W21 -to HEX2[5]
	set_location_assignment PIN_W20 -to HEX2[6]
	set_location_assignment PIN_Y24 -to HEX3[0]
	set_location_assignment PIN_Y23 -to HEX3[1]
	set_location_assignment PIN_AA23 -to HEX3[2]
	set_location_assignment PIN_AA22 -to HEX3[3]
	set_location_assignment PIN_AC24 -to HEX3[4]
	set_location_assignment PIN_AC23 -to HEX3[5]
	set_location_assignment PIN_AC22 -to HEX3[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLOCK_50_B5B
	set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX0[0]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX0[1]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX0[2]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX0[3]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX0[4]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX0[5]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX0[6]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX1[0]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX1[1]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX1[2]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX1[3]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX1[4]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX1[5]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX1[6]
	set_instance_assignment -name IO_STANDARD "1.2 V" -to KEY[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[8]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[9]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[10]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[11]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[12]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[13]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[14]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[15]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[16]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_A[17]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_CE_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[8]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[9]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[10]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[11]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[12]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[13]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[14]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_D[15]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_LB_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_OE_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_UB_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SRAM_WE_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[6]
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_clk -to CLOCK_50_B5B -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[4] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[15] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[0] -to "ALU:inst2|JumpTargetO[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[1] -to "ALU:inst2|JumpTargetO[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[2] -to "ALU:inst2|JumpTargetO[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[3] -to "ALU:inst2|JumpTargetO[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[4] -to "ALU:inst2|JumpTargetO[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[5] -to "ALU:inst2|JumpTargetO[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[6] -to "ALU:inst2|JumpTargetO[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[7] -to "ALU:inst2|JumpTargetO[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[8] -to "ALU:inst2|JumpTargetO[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[9] -to "ALU:inst2|JumpTargetO[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[10] -to "ALU:inst2|JumpTargetO[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[11] -to "ALU:inst2|JumpTargetO[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[12] -to "ALU:inst2|JumpTargetO[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[13] -to "ALU:inst2|JumpTargetO[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[14] -to "ALU:inst2|JumpTargetO[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[15] -to "ALU:inst2|JumpTargetO[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[16] -to "ALU:inst2|JumpTargetO[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[17] -to "ALU:inst2|JumpTargetO[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[18] -to "ALU:inst2|JumpTargetO[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[19] -to "ALU:inst2|JumpTargetO[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[20] -to "ALU:inst2|JumpTargetO[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[21] -to "ALU:inst2|JumpTargetO[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[22] -to "ALU:inst2|JumpTargetO[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[23] -to "ALU:inst2|JumpTargetO[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[24] -to "ALU:inst2|JumpTargetO[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[25] -to "ALU:inst2|JumpTargetO[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[26] -to "ALU:inst2|JumpTargetO[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[27] -to "ALU:inst2|JumpTargetO[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[28] -to "ALU:inst2|JumpTargetO[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[29] -to "ALU:inst2|JumpTargetO[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[30] -to "ALU:inst2|JumpTargetO[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[31] -to "ALU:inst2|JumpTargetO[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[32] -to "ALU:inst2|X[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[33] -to "ALU:inst2|X[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[34] -to "ALU:inst2|X[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[35] -to "ALU:inst2|X[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[36] -to "ALU:inst2|X[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[37] -to "ALU:inst2|X[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[38] -to "ALU:inst2|X[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[39] -to "ALU:inst2|X[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[40] -to "ALU:inst2|X[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[41] -to "ALU:inst2|X[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[42] -to "ALU:inst2|X[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[43] -to "ALU:inst2|X[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[44] -to "ALU:inst2|X[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[45] -to "ALU:inst2|X[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[46] -to "ALU:inst2|X[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[47] -to "ALU:inst2|X[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[48] -to "ALU:inst2|X[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[49] -to "ALU:inst2|X[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[50] -to "ALU:inst2|X[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[51] -to "ALU:inst2|X[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[52] -to "ALU:inst2|X[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[53] -to "ALU:inst2|X[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[54] -to "ALU:inst2|X[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[55] -to "ALU:inst2|X[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[56] -to "ALU:inst2|X[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[57] -to "ALU:inst2|X[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[58] -to "ALU:inst2|X[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[59] -to "ALU:inst2|X[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[60] -to "ALU:inst2|X[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[61] -to "ALU:inst2|X[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[62] -to "ALU:inst2|X[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[63] -to "ALU:inst2|X[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[0] -to "ALU:inst2|JumpTargetO[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[1] -to "ALU:inst2|JumpTargetO[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[2] -to "ALU:inst2|JumpTargetO[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[3] -to "ALU:inst2|JumpTargetO[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[4] -to "ALU:inst2|JumpTargetO[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[5] -to "ALU:inst2|JumpTargetO[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[6] -to "ALU:inst2|JumpTargetO[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[7] -to "ALU:inst2|JumpTargetO[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[8] -to "ALU:inst2|JumpTargetO[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[9] -to "ALU:inst2|JumpTargetO[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[10] -to "ALU:inst2|JumpTargetO[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[11] -to "ALU:inst2|JumpTargetO[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[12] -to "ALU:inst2|JumpTargetO[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[13] -to "ALU:inst2|JumpTargetO[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[14] -to "ALU:inst2|JumpTargetO[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[15] -to "ALU:inst2|JumpTargetO[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[16] -to "ALU:inst2|JumpTargetO[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[17] -to "ALU:inst2|JumpTargetO[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[18] -to "ALU:inst2|JumpTargetO[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[19] -to "ALU:inst2|JumpTargetO[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[20] -to "ALU:inst2|JumpTargetO[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[21] -to "ALU:inst2|JumpTargetO[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[22] -to "ALU:inst2|JumpTargetO[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[23] -to "ALU:inst2|JumpTargetO[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[24] -to "ALU:inst2|JumpTargetO[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[25] -to "ALU:inst2|JumpTargetO[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[26] -to "ALU:inst2|JumpTargetO[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[27] -to "ALU:inst2|JumpTargetO[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[28] -to "ALU:inst2|JumpTargetO[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[29] -to "ALU:inst2|JumpTargetO[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[30] -to "ALU:inst2|JumpTargetO[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[31] -to "ALU:inst2|JumpTargetO[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[32] -to "ALU:inst2|X[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[33] -to "ALU:inst2|X[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[34] -to "ALU:inst2|X[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[35] -to "ALU:inst2|X[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[36] -to "ALU:inst2|X[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[37] -to "ALU:inst2|X[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[38] -to "ALU:inst2|X[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[39] -to "ALU:inst2|X[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[40] -to "ALU:inst2|X[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[41] -to "ALU:inst2|X[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[42] -to "ALU:inst2|X[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[43] -to "ALU:inst2|X[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[44] -to "ALU:inst2|X[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[45] -to "ALU:inst2|X[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[46] -to "ALU:inst2|X[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[47] -to "ALU:inst2|X[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[48] -to "ALU:inst2|X[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[49] -to "ALU:inst2|X[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[50] -to "ALU:inst2|X[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[51] -to "ALU:inst2|X[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[52] -to "ALU:inst2|X[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[53] -to "ALU:inst2|X[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[54] -to "ALU:inst2|X[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[55] -to "ALU:inst2|X[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[56] -to "ALU:inst2|X[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[57] -to "ALU:inst2|X[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[58] -to "ALU:inst2|X[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[59] -to "ALU:inst2|X[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[60] -to "ALU:inst2|X[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[61] -to "ALU:inst2|X[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[62] -to "ALU:inst2|X[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[63] -to "ALU:inst2|X[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[0] -to "ALU:inst2|JumpTargetO[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[1] -to "ALU:inst2|JumpTargetO[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[2] -to "ALU:inst2|JumpTargetO[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[3] -to "ALU:inst2|JumpTargetO[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[4] -to "ALU:inst2|JumpTargetO[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[5] -to "ALU:inst2|JumpTargetO[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[6] -to "ALU:inst2|JumpTargetO[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[7] -to "ALU:inst2|JumpTargetO[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[8] -to "ALU:inst2|JumpTargetO[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[9] -to "ALU:inst2|JumpTargetO[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[10] -to "ALU:inst2|JumpTargetO[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[11] -to "ALU:inst2|JumpTargetO[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[12] -to "ALU:inst2|JumpTargetO[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[13] -to "ALU:inst2|JumpTargetO[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[14] -to "ALU:inst2|JumpTargetO[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[15] -to "ALU:inst2|JumpTargetO[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[16] -to "ALU:inst2|JumpTargetO[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[17] -to "ALU:inst2|JumpTargetO[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[18] -to "ALU:inst2|JumpTargetO[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[19] -to "ALU:inst2|JumpTargetO[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[20] -to "ALU:inst2|JumpTargetO[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[21] -to "ALU:inst2|JumpTargetO[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[22] -to "ALU:inst2|JumpTargetO[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[23] -to "ALU:inst2|JumpTargetO[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[24] -to "ALU:inst2|JumpTargetO[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[25] -to "ALU:inst2|JumpTargetO[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[26] -to "ALU:inst2|JumpTargetO[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[27] -to "ALU:inst2|JumpTargetO[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[28] -to "ALU:inst2|JumpTargetO[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[29] -to "ALU:inst2|JumpTargetO[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[30] -to "ALU:inst2|JumpTargetO[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[31] -to "ALU:inst2|JumpTargetO[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[32] -to "ALU:inst2|X[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[33] -to "ALU:inst2|X[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[34] -to "ALU:inst2|X[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[35] -to "ALU:inst2|X[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[36] -to "ALU:inst2|X[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[37] -to "ALU:inst2|X[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[38] -to "ALU:inst2|X[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[39] -to "ALU:inst2|X[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[40] -to "ALU:inst2|X[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[41] -to "ALU:inst2|X[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[42] -to "ALU:inst2|X[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[43] -to "ALU:inst2|X[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[44] -to "ALU:inst2|X[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[45] -to "ALU:inst2|X[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[46] -to "ALU:inst2|X[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[47] -to "ALU:inst2|X[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[48] -to "ALU:inst2|X[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[49] -to "ALU:inst2|X[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[50] -to "ALU:inst2|X[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[51] -to "ALU:inst2|X[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[52] -to "ALU:inst2|X[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[53] -to "ALU:inst2|X[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[54] -to "ALU:inst2|X[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[55] -to "ALU:inst2|X[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[56] -to "ALU:inst2|X[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[57] -to "ALU:inst2|X[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[58] -to "ALU:inst2|X[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[59] -to "ALU:inst2|X[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[60] -to "ALU:inst2|X[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[61] -to "ALU:inst2|X[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[62] -to "ALU:inst2|X[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[63] -to "ALU:inst2|X[9]" -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[6] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[23] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[64] -to "Decode:inst4|Clear" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[65] -to "Decode:inst4|DestWrEn" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[66] -to "Decode:inst4|Imm[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[67] -to "Decode:inst4|Imm[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[68] -to "Decode:inst4|Imm[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[69] -to "Decode:inst4|Imm[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[70] -to "Decode:inst4|Imm[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[71] -to "Decode:inst4|Imm[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[72] -to "Decode:inst4|Imm[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[73] -to "Decode:inst4|Imm[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[74] -to "Decode:inst4|Imm[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[75] -to "Decode:inst4|Imm[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[76] -to "Decode:inst4|Imm[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[77] -to "Decode:inst4|Imm[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[78] -to "Decode:inst4|Imm[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[79] -to "Decode:inst4|Imm[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[80] -to "Decode:inst4|Imm[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[81] -to "Decode:inst4|Imm[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[82] -to "Decode:inst4|Imm[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[83] -to "Decode:inst4|Imm[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[84] -to "Decode:inst4|Imm[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[85] -to "Decode:inst4|Imm[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[86] -to "Decode:inst4|Imm[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[87] -to "Decode:inst4|Imm[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[88] -to "Decode:inst4|Imm[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[89] -to "Decode:inst4|Imm[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[90] -to "Decode:inst4|Imm[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[91] -to "Decode:inst4|Imm[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[92] -to "Decode:inst4|Imm[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[93] -to "Decode:inst4|Imm[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[94] -to "Decode:inst4|Imm[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[95] -to "Decode:inst4|Imm[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[96] -to "Decode:inst4|Imm[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[97] -to "Decode:inst4|Imm[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[98] -to "Decode:inst4|InterlockI" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[99] -to "Decode:inst4|JumpTarget[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[100] -to "Decode:inst4|JumpTarget[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[101] -to "Decode:inst4|JumpTarget[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[102] -to "Decode:inst4|JumpTarget[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[103] -to "Decode:inst4|JumpTarget[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[104] -to "Decode:inst4|JumpTarget[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[105] -to "Decode:inst4|JumpTarget[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[106] -to "Decode:inst4|JumpTarget[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[107] -to "Decode:inst4|JumpTarget[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[108] -to "Decode:inst4|JumpTarget[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[109] -to "Decode:inst4|JumpTarget[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[110] -to "Decode:inst4|JumpTarget[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[111] -to "Decode:inst4|JumpTarget[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[112] -to "Decode:inst4|JumpTarget[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[113] -to "Decode:inst4|JumpTarget[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[114] -to "Decode:inst4|JumpTarget[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[115] -to "Decode:inst4|JumpTarget[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[116] -to "Decode:inst4|JumpTarget[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[117] -to "Decode:inst4|JumpTarget[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[118] -to "Decode:inst4|JumpTarget[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[119] -to "Decode:inst4|JumpTarget[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[120] -to "Decode:inst4|JumpTarget[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[121] -to "Decode:inst4|JumpTarget[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[122] -to "Decode:inst4|JumpTarget[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[123] -to "Decode:inst4|JumpTarget[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[124] -to "Decode:inst4|JumpTarget[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[125] -to "Decode:inst4|JumpTarget[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[126] -to "Decode:inst4|JumpTarget[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[127] -to "Decode:inst4|JumpTarget[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[128] -to "Decode:inst4|JumpTarget[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[129] -to "Decode:inst4|JumpTarget[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[130] -to "Decode:inst4|JumpTarget[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[64] -to "Decode:inst4|Clear" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[65] -to "Decode:inst4|DestWrEn" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[66] -to "Decode:inst4|Imm[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[67] -to "Decode:inst4|Imm[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[68] -to "Decode:inst4|Imm[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[69] -to "Decode:inst4|Imm[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[70] -to "Decode:inst4|Imm[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[71] -to "Decode:inst4|Imm[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[72] -to "Decode:inst4|Imm[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[73] -to "Decode:inst4|Imm[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[74] -to "Decode:inst4|Imm[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[75] -to "Decode:inst4|Imm[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[76] -to "Decode:inst4|Imm[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[77] -to "Decode:inst4|Imm[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[78] -to "Decode:inst4|Imm[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[79] -to "Decode:inst4|Imm[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[80] -to "Decode:inst4|Imm[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[81] -to "Decode:inst4|Imm[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[82] -to "Decode:inst4|Imm[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[83] -to "Decode:inst4|Imm[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[84] -to "Decode:inst4|Imm[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[85] -to "Decode:inst4|Imm[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[86] -to "Decode:inst4|Imm[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[87] -to "Decode:inst4|Imm[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[88] -to "Decode:inst4|Imm[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[89] -to "Decode:inst4|Imm[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[90] -to "Decode:inst4|Imm[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[91] -to "Decode:inst4|Imm[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[92] -to "Decode:inst4|Imm[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[93] -to "Decode:inst4|Imm[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[94] -to "Decode:inst4|Imm[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[95] -to "Decode:inst4|Imm[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[96] -to "Decode:inst4|Imm[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[97] -to "Decode:inst4|Imm[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[98] -to "Decode:inst4|InterlockI" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[99] -to "Decode:inst4|JumpTarget[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[100] -to "Decode:inst4|JumpTarget[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[101] -to "Decode:inst4|JumpTarget[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[102] -to "Decode:inst4|JumpTarget[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[103] -to "Decode:inst4|JumpTarget[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[104] -to "Decode:inst4|JumpTarget[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[105] -to "Decode:inst4|JumpTarget[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[106] -to "Decode:inst4|JumpTarget[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[107] -to "Decode:inst4|JumpTarget[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[108] -to "Decode:inst4|JumpTarget[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[109] -to "Decode:inst4|JumpTarget[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[110] -to "Decode:inst4|JumpTarget[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[111] -to "Decode:inst4|JumpTarget[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[112] -to "Decode:inst4|JumpTarget[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[113] -to "Decode:inst4|JumpTarget[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[114] -to "Decode:inst4|JumpTarget[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[115] -to "Decode:inst4|JumpTarget[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[116] -to "Decode:inst4|JumpTarget[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[117] -to "Decode:inst4|JumpTarget[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[118] -to "Decode:inst4|JumpTarget[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[119] -to "Decode:inst4|JumpTarget[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[120] -to "Decode:inst4|JumpTarget[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[121] -to "Decode:inst4|JumpTarget[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[122] -to "Decode:inst4|JumpTarget[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[123] -to "Decode:inst4|JumpTarget[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[124] -to "Decode:inst4|JumpTarget[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[125] -to "Decode:inst4|JumpTarget[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[126] -to "Decode:inst4|JumpTarget[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[127] -to "Decode:inst4|JumpTarget[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[128] -to "Decode:inst4|JumpTarget[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[129] -to "Decode:inst4|JumpTarget[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[130] -to "Decode:inst4|JumpTarget[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[64] -to "Decode:inst4|Clear" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[65] -to "Decode:inst4|DestWrEn" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[66] -to "Decode:inst4|Imm[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[67] -to "Decode:inst4|Imm[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[68] -to "Decode:inst4|Imm[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[69] -to "Decode:inst4|Imm[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[70] -to "Decode:inst4|Imm[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[71] -to "Decode:inst4|Imm[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[72] -to "Decode:inst4|Imm[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[73] -to "Decode:inst4|Imm[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[74] -to "Decode:inst4|Imm[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[75] -to "Decode:inst4|Imm[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[76] -to "Decode:inst4|Imm[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[77] -to "Decode:inst4|Imm[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[78] -to "Decode:inst4|Imm[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[79] -to "Decode:inst4|Imm[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[80] -to "Decode:inst4|Imm[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[81] -to "Decode:inst4|Imm[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[82] -to "Decode:inst4|Imm[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[83] -to "Decode:inst4|Imm[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[84] -to "Decode:inst4|Imm[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[85] -to "Decode:inst4|Imm[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[86] -to "Decode:inst4|Imm[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[87] -to "Decode:inst4|Imm[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[88] -to "Decode:inst4|Imm[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[89] -to "Decode:inst4|Imm[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[90] -to "Decode:inst4|Imm[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[91] -to "Decode:inst4|Imm[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[92] -to "Decode:inst4|Imm[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[93] -to "Decode:inst4|Imm[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[94] -to "Decode:inst4|Imm[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[95] -to "Decode:inst4|Imm[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[96] -to "Decode:inst4|Imm[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[97] -to "Decode:inst4|Imm[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[98] -to "Decode:inst4|InterlockI" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[99] -to "Decode:inst4|JumpTarget[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[100] -to "Decode:inst4|JumpTarget[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[101] -to "Decode:inst4|JumpTarget[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[102] -to "Decode:inst4|JumpTarget[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[103] -to "Decode:inst4|JumpTarget[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[104] -to "Decode:inst4|JumpTarget[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[105] -to "Decode:inst4|JumpTarget[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[106] -to "Decode:inst4|JumpTarget[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[107] -to "Decode:inst4|JumpTarget[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[108] -to "Decode:inst4|JumpTarget[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[109] -to "Decode:inst4|JumpTarget[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[110] -to "Decode:inst4|JumpTarget[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[111] -to "Decode:inst4|JumpTarget[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[112] -to "Decode:inst4|JumpTarget[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[113] -to "Decode:inst4|JumpTarget[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[114] -to "Decode:inst4|JumpTarget[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[115] -to "Decode:inst4|JumpTarget[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[116] -to "Decode:inst4|JumpTarget[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[117] -to "Decode:inst4|JumpTarget[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[118] -to "Decode:inst4|JumpTarget[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[119] -to "Decode:inst4|JumpTarget[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[120] -to "Decode:inst4|JumpTarget[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[121] -to "Decode:inst4|JumpTarget[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[122] -to "Decode:inst4|JumpTarget[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[123] -to "Decode:inst4|JumpTarget[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[124] -to "Decode:inst4|JumpTarget[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[125] -to "Decode:inst4|JumpTarget[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[126] -to "Decode:inst4|JumpTarget[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[127] -to "Decode:inst4|JumpTarget[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[128] -to "Decode:inst4|JumpTarget[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[129] -to "Decode:inst4|JumpTarget[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[130] -to "Decode:inst4|JumpTarget[9]" -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[13] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[16] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[28] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[22] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[11] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[31] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[131] -to "Decode:inst4|MemAccess" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[132] -to "Decode:inst4|MemWrEn" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[133] -to "Decode:inst4|Set7Segment" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[134] -to "DecodeStage:inst7|InsnI[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[135] -to "DecodeStage:inst7|InsnI[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[136] -to "DecodeStage:inst7|InsnI[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[137] -to "DecodeStage:inst7|InsnI[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[138] -to "DecodeStage:inst7|InsnI[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[139] -to "DecodeStage:inst7|InsnI[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[140] -to "DecodeStage:inst7|InsnI[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[141] -to "DecodeStage:inst7|InsnI[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[142] -to "DecodeStage:inst7|InsnI[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[143] -to "DecodeStage:inst7|InsnI[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[144] -to "DecodeStage:inst7|InsnI[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[145] -to "DecodeStage:inst7|InsnI[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[146] -to "DecodeStage:inst7|InsnI[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[147] -to "DecodeStage:inst7|InsnI[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[148] -to "DecodeStage:inst7|InsnI[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[149] -to "DecodeStage:inst7|InsnI[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[150] -to "DecodeStage:inst7|InsnI[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[151] -to "DecodeStage:inst7|InsnI[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[152] -to "DecodeStage:inst7|InsnI[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[153] -to "DecodeStage:inst7|InsnI[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[154] -to "DecodeStage:inst7|InsnI[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[155] -to "DecodeStage:inst7|InsnI[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[156] -to "DecodeStage:inst7|InsnI[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[157] -to "DecodeStage:inst7|InsnI[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[158] -to "DecodeStage:inst7|InsnI[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[159] -to "DecodeStage:inst7|InsnI[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[160] -to "DecodeStage:inst7|InsnI[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[161] -to "DecodeStage:inst7|InsnI[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[162] -to "DecodeStage:inst7|InsnI[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[163] -to "DecodeStage:inst7|InsnI[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[164] -to "DecodeStage:inst7|InsnI[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[165] -to "DecodeStage:inst7|InsnI[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[166] -to "DecodeStage:inst7|PCNextI[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[167] -to "DecodeStage:inst7|PCNextI[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[168] -to "DecodeStage:inst7|PCNextI[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[169] -to "DecodeStage:inst7|PCNextI[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[170] -to "DecodeStage:inst7|PCNextI[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[171] -to "DecodeStage:inst7|PCNextI[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[172] -to "DecodeStage:inst7|PCNextI[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[173] -to "DecodeStage:inst7|PCNextI[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[174] -to "DecodeStage:inst7|PCNextI[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[175] -to "DecodeStage:inst7|PCNextI[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[176] -to "DecodeStage:inst7|PCNextI[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[177] -to "DecodeStage:inst7|PCNextI[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[178] -to "DecodeStage:inst7|PCNextI[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[179] -to "DecodeStage:inst7|PCNextI[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[180] -to "DecodeStage:inst7|PCNextI[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[181] -to "DecodeStage:inst7|PCNextI[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[182] -to "DecodeStage:inst7|PCNextI[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[183] -to "DecodeStage:inst7|PCNextI[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[184] -to "DecodeStage:inst7|PCNextI[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[185] -to "DecodeStage:inst7|PCNextI[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[186] -to "DecodeStage:inst7|PCNextI[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[187] -to "DecodeStage:inst7|PCNextI[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[188] -to "DecodeStage:inst7|PCNextI[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[189] -to "DecodeStage:inst7|PCNextI[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[190] -to "DecodeStage:inst7|PCNextI[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[191] -to "DecodeStage:inst7|PCNextI[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[192] -to "DecodeStage:inst7|PCNextI[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[193] -to "DecodeStage:inst7|PCNextI[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[194] -to "DecodeStage:inst7|PCNextI[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[195] -to "DecodeStage:inst7|PCNextI[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[196] -to "DecodeStage:inst7|PCNextI[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[197] -to "DecodeStage:inst7|PCNextI[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[198] -to "DecodeStage:inst7|PCNextO[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[199] -to "DecodeStage:inst7|PCNextO[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[200] -to "DecodeStage:inst7|PCNextO[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[201] -to "DecodeStage:inst7|PCNextO[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[202] -to "DecodeStage:inst7|PCNextO[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[203] -to "DecodeStage:inst7|PCNextO[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[204] -to "DecodeStage:inst7|PCNextO[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[205] -to "DecodeStage:inst7|PCNextO[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[206] -to "DecodeStage:inst7|PCNextO[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[207] -to "DecodeStage:inst7|PCNextO[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[208] -to "DecodeStage:inst7|PCNextO[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[209] -to "DecodeStage:inst7|PCNextO[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[210] -to "DecodeStage:inst7|PCNextO[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[211] -to "DecodeStage:inst7|PCNextO[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[212] -to "DecodeStage:inst7|PCNextO[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[213] -to "DecodeStage:inst7|PCNextO[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[214] -to "DecodeStage:inst7|PCNextO[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[215] -to "DecodeStage:inst7|PCNextO[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[216] -to "DecodeStage:inst7|PCNextO[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[217] -to "DecodeStage:inst7|PCNextO[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[218] -to "DecodeStage:inst7|PCNextO[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[219] -to "DecodeStage:inst7|PCNextO[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[220] -to "DecodeStage:inst7|PCNextO[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[221] -to "DecodeStage:inst7|PCNextO[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[222] -to "DecodeStage:inst7|PCNextO[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[223] -to "DecodeStage:inst7|PCNextO[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[224] -to "DecodeStage:inst7|PCNextO[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[225] -to "DecodeStage:inst7|PCNextO[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[226] -to "DecodeStage:inst7|PCNextO[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[227] -to "DecodeStage:inst7|PCNextO[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[228] -to "DecodeStage:inst7|PCNextO[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[229] -to "DecodeStage:inst7|PCNextO[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[230] -to "DecodeStage:inst7|SetRV32CO" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[231] -to "DecodeStage:inst7|sv16bit[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[232] -to "DecodeStage:inst7|sv16bit[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[233] -to "DecodeStage:inst7|sv16bit[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[234] -to "DecodeStage:inst7|sv16bit[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[235] -to "DecodeStage:inst7|sv16bit[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[236] -to "DecodeStage:inst7|sv16bit[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[237] -to "DecodeStage:inst7|sv16bit[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[238] -to "DecodeStage:inst7|sv16bit[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[239] -to "DecodeStage:inst7|sv16bit[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[240] -to "DecodeStage:inst7|sv16bit[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[241] -to "DecodeStage:inst7|sv16bit[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[242] -to "DecodeStage:inst7|sv16bit[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[243] -to "DecodeStage:inst7|sv16bit[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[244] -to "DecodeStage:inst7|sv16bit[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[245] -to "DecodeStage:inst7|sv16bit[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[246] -to "DecodeStage:inst7|sv16bit[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[247] -to KEY[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[131] -to "Decode:inst4|MemAccess" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[132] -to "Decode:inst4|MemWrEn" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[133] -to "Decode:inst4|Set7Segment" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[134] -to "DecodeStage:inst7|InsnI[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[135] -to "DecodeStage:inst7|InsnI[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[136] -to "DecodeStage:inst7|InsnI[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[137] -to "DecodeStage:inst7|InsnI[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[138] -to "DecodeStage:inst7|InsnI[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[139] -to "DecodeStage:inst7|InsnI[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[140] -to "DecodeStage:inst7|InsnI[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[141] -to "DecodeStage:inst7|InsnI[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[142] -to "DecodeStage:inst7|InsnI[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[143] -to "DecodeStage:inst7|InsnI[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[144] -to "DecodeStage:inst7|InsnI[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[145] -to "DecodeStage:inst7|InsnI[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[146] -to "DecodeStage:inst7|InsnI[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[147] -to "DecodeStage:inst7|InsnI[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[148] -to "DecodeStage:inst7|InsnI[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[149] -to "DecodeStage:inst7|InsnI[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[150] -to "DecodeStage:inst7|InsnI[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[151] -to "DecodeStage:inst7|InsnI[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[152] -to "DecodeStage:inst7|InsnI[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[153] -to "DecodeStage:inst7|InsnI[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[154] -to "DecodeStage:inst7|InsnI[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[155] -to "DecodeStage:inst7|InsnI[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[156] -to "DecodeStage:inst7|InsnI[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[157] -to "DecodeStage:inst7|InsnI[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[158] -to "DecodeStage:inst7|InsnI[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[159] -to "DecodeStage:inst7|InsnI[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[160] -to "DecodeStage:inst7|InsnI[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[161] -to "DecodeStage:inst7|InsnI[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[162] -to "DecodeStage:inst7|InsnI[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[163] -to "DecodeStage:inst7|InsnI[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[164] -to "DecodeStage:inst7|InsnI[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[165] -to "DecodeStage:inst7|InsnI[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[166] -to "DecodeStage:inst7|PCNextI[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[167] -to "DecodeStage:inst7|PCNextI[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[168] -to "DecodeStage:inst7|PCNextI[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[169] -to "DecodeStage:inst7|PCNextI[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[170] -to "DecodeStage:inst7|PCNextI[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[171] -to "DecodeStage:inst7|PCNextI[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[172] -to "DecodeStage:inst7|PCNextI[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[173] -to "DecodeStage:inst7|PCNextI[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[174] -to "DecodeStage:inst7|PCNextI[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[175] -to "DecodeStage:inst7|PCNextI[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[176] -to "DecodeStage:inst7|PCNextI[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[177] -to "DecodeStage:inst7|PCNextI[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[178] -to "DecodeStage:inst7|PCNextI[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[179] -to "DecodeStage:inst7|PCNextI[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[180] -to "DecodeStage:inst7|PCNextI[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[181] -to "DecodeStage:inst7|PCNextI[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[182] -to "DecodeStage:inst7|PCNextI[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[183] -to "DecodeStage:inst7|PCNextI[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[184] -to "DecodeStage:inst7|PCNextI[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[185] -to "DecodeStage:inst7|PCNextI[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[186] -to "DecodeStage:inst7|PCNextI[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[187] -to "DecodeStage:inst7|PCNextI[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[188] -to "DecodeStage:inst7|PCNextI[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[189] -to "DecodeStage:inst7|PCNextI[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[190] -to "DecodeStage:inst7|PCNextI[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[191] -to "DecodeStage:inst7|PCNextI[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[192] -to "DecodeStage:inst7|PCNextI[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[193] -to "DecodeStage:inst7|PCNextI[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[194] -to "DecodeStage:inst7|PCNextI[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[195] -to "DecodeStage:inst7|PCNextI[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[196] -to "DecodeStage:inst7|PCNextI[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[197] -to "DecodeStage:inst7|PCNextI[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[198] -to "DecodeStage:inst7|PCNextO[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[199] -to "DecodeStage:inst7|PCNextO[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[200] -to "DecodeStage:inst7|PCNextO[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[201] -to "DecodeStage:inst7|PCNextO[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[202] -to "DecodeStage:inst7|PCNextO[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[203] -to "DecodeStage:inst7|PCNextO[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[204] -to "DecodeStage:inst7|PCNextO[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[205] -to "DecodeStage:inst7|PCNextO[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[206] -to "DecodeStage:inst7|PCNextO[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[207] -to "DecodeStage:inst7|PCNextO[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[208] -to "DecodeStage:inst7|PCNextO[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[209] -to "DecodeStage:inst7|PCNextO[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[210] -to "DecodeStage:inst7|PCNextO[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[211] -to "DecodeStage:inst7|PCNextO[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[212] -to "DecodeStage:inst7|PCNextO[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[213] -to "DecodeStage:inst7|PCNextO[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[214] -to "DecodeStage:inst7|PCNextO[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[215] -to "DecodeStage:inst7|PCNextO[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[216] -to "DecodeStage:inst7|PCNextO[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[217] -to "DecodeStage:inst7|PCNextO[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[218] -to "DecodeStage:inst7|PCNextO[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[219] -to "DecodeStage:inst7|PCNextO[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[220] -to "DecodeStage:inst7|PCNextO[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[221] -to "DecodeStage:inst7|PCNextO[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[222] -to "DecodeStage:inst7|PCNextO[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[223] -to "DecodeStage:inst7|PCNextO[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[224] -to "DecodeStage:inst7|PCNextO[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[225] -to "DecodeStage:inst7|PCNextO[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[226] -to "DecodeStage:inst7|PCNextO[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[227] -to "DecodeStage:inst7|PCNextO[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[228] -to "DecodeStage:inst7|PCNextO[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[229] -to "DecodeStage:inst7|PCNextO[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[230] -to "DecodeStage:inst7|SetRV32CO" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[231] -to "DecodeStage:inst7|sv16bit[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[232] -to "DecodeStage:inst7|sv16bit[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[233] -to "DecodeStage:inst7|sv16bit[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[234] -to "DecodeStage:inst7|sv16bit[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[235] -to "DecodeStage:inst7|sv16bit[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[236] -to "DecodeStage:inst7|sv16bit[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[237] -to "DecodeStage:inst7|sv16bit[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[238] -to "DecodeStage:inst7|sv16bit[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[239] -to "DecodeStage:inst7|sv16bit[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[240] -to "DecodeStage:inst7|sv16bit[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[241] -to "DecodeStage:inst7|sv16bit[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[242] -to "DecodeStage:inst7|sv16bit[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[243] -to "DecodeStage:inst7|sv16bit[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[244] -to "DecodeStage:inst7|sv16bit[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[245] -to "DecodeStage:inst7|sv16bit[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[246] -to "DecodeStage:inst7|sv16bit[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[247] -to KEY[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[131] -to "Decode:inst4|MemAccess" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[132] -to "Decode:inst4|MemWrEn" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[133] -to "Decode:inst4|Set7Segment" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[134] -to "DecodeStage:inst7|InsnI[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[135] -to "DecodeStage:inst7|InsnI[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[136] -to "DecodeStage:inst7|InsnI[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[137] -to "DecodeStage:inst7|InsnI[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[138] -to "DecodeStage:inst7|InsnI[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[139] -to "DecodeStage:inst7|InsnI[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[140] -to "DecodeStage:inst7|InsnI[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[141] -to "DecodeStage:inst7|InsnI[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[142] -to "DecodeStage:inst7|InsnI[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[143] -to "DecodeStage:inst7|InsnI[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[144] -to "DecodeStage:inst7|InsnI[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[145] -to "DecodeStage:inst7|InsnI[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[146] -to "DecodeStage:inst7|InsnI[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[147] -to "DecodeStage:inst7|InsnI[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[148] -to "DecodeStage:inst7|InsnI[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[149] -to "DecodeStage:inst7|InsnI[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[150] -to "DecodeStage:inst7|InsnI[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[151] -to "DecodeStage:inst7|InsnI[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[152] -to "DecodeStage:inst7|InsnI[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[153] -to "DecodeStage:inst7|InsnI[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[154] -to "DecodeStage:inst7|InsnI[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[155] -to "DecodeStage:inst7|InsnI[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[156] -to "DecodeStage:inst7|InsnI[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[157] -to "DecodeStage:inst7|InsnI[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[158] -to "DecodeStage:inst7|InsnI[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[159] -to "DecodeStage:inst7|InsnI[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[160] -to "DecodeStage:inst7|InsnI[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[161] -to "DecodeStage:inst7|InsnI[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[162] -to "DecodeStage:inst7|InsnI[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[163] -to "DecodeStage:inst7|InsnI[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[164] -to "DecodeStage:inst7|InsnI[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[165] -to "DecodeStage:inst7|InsnI[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[166] -to "DecodeStage:inst7|PCNextI[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[167] -to "DecodeStage:inst7|PCNextI[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[168] -to "DecodeStage:inst7|PCNextI[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[169] -to "DecodeStage:inst7|PCNextI[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[170] -to "DecodeStage:inst7|PCNextI[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[171] -to "DecodeStage:inst7|PCNextI[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[172] -to "DecodeStage:inst7|PCNextI[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[173] -to "DecodeStage:inst7|PCNextI[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[174] -to "DecodeStage:inst7|PCNextI[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[175] -to "DecodeStage:inst7|PCNextI[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[176] -to "DecodeStage:inst7|PCNextI[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[177] -to "DecodeStage:inst7|PCNextI[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[178] -to "DecodeStage:inst7|PCNextI[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[179] -to "DecodeStage:inst7|PCNextI[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[180] -to "DecodeStage:inst7|PCNextI[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[181] -to "DecodeStage:inst7|PCNextI[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[182] -to "DecodeStage:inst7|PCNextI[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[183] -to "DecodeStage:inst7|PCNextI[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[184] -to "DecodeStage:inst7|PCNextI[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[185] -to "DecodeStage:inst7|PCNextI[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[186] -to "DecodeStage:inst7|PCNextI[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[187] -to "DecodeStage:inst7|PCNextI[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[188] -to "DecodeStage:inst7|PCNextI[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[189] -to "DecodeStage:inst7|PCNextI[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[190] -to "DecodeStage:inst7|PCNextI[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[191] -to "DecodeStage:inst7|PCNextI[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[192] -to "DecodeStage:inst7|PCNextI[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[193] -to "DecodeStage:inst7|PCNextI[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[194] -to "DecodeStage:inst7|PCNextI[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[195] -to "DecodeStage:inst7|PCNextI[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[196] -to "DecodeStage:inst7|PCNextI[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[197] -to "DecodeStage:inst7|PCNextI[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[198] -to "DecodeStage:inst7|PCNextO[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[199] -to "DecodeStage:inst7|PCNextO[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[200] -to "DecodeStage:inst7|PCNextO[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[201] -to "DecodeStage:inst7|PCNextO[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[202] -to "DecodeStage:inst7|PCNextO[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[203] -to "DecodeStage:inst7|PCNextO[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[204] -to "DecodeStage:inst7|PCNextO[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[205] -to "DecodeStage:inst7|PCNextO[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[206] -to "DecodeStage:inst7|PCNextO[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[207] -to "DecodeStage:inst7|PCNextO[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[208] -to "DecodeStage:inst7|PCNextO[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[209] -to "DecodeStage:inst7|PCNextO[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[210] -to "DecodeStage:inst7|PCNextO[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[211] -to "DecodeStage:inst7|PCNextO[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[212] -to "DecodeStage:inst7|PCNextO[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[213] -to "DecodeStage:inst7|PCNextO[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[214] -to "DecodeStage:inst7|PCNextO[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[215] -to "DecodeStage:inst7|PCNextO[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[216] -to "DecodeStage:inst7|PCNextO[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[217] -to "DecodeStage:inst7|PCNextO[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[218] -to "DecodeStage:inst7|PCNextO[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[219] -to "DecodeStage:inst7|PCNextO[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[220] -to "DecodeStage:inst7|PCNextO[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[221] -to "DecodeStage:inst7|PCNextO[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[222] -to "DecodeStage:inst7|PCNextO[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[223] -to "DecodeStage:inst7|PCNextO[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[224] -to "DecodeStage:inst7|PCNextO[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[225] -to "DecodeStage:inst7|PCNextO[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[226] -to "DecodeStage:inst7|PCNextO[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[227] -to "DecodeStage:inst7|PCNextO[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[228] -to "DecodeStage:inst7|PCNextO[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[229] -to "DecodeStage:inst7|PCNextO[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[230] -to "DecodeStage:inst7|SetRV32CO" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[231] -to "DecodeStage:inst7|sv16bit[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[232] -to "DecodeStage:inst7|sv16bit[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[233] -to "DecodeStage:inst7|sv16bit[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[234] -to "DecodeStage:inst7|sv16bit[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[235] -to "DecodeStage:inst7|sv16bit[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[236] -to "DecodeStage:inst7|sv16bit[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[237] -to "DecodeStage:inst7|sv16bit[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[238] -to "DecodeStage:inst7|sv16bit[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[239] -to "DecodeStage:inst7|sv16bit[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[240] -to "DecodeStage:inst7|sv16bit[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[241] -to "DecodeStage:inst7|sv16bit[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[242] -to "DecodeStage:inst7|sv16bit[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[243] -to "DecodeStage:inst7|sv16bit[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[244] -to "DecodeStage:inst7|sv16bit[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[245] -to "DecodeStage:inst7|sv16bit[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[246] -to "DecodeStage:inst7|sv16bit[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[247] -to KEY[0] -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[5] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[21] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[248] -to "MemMux:inst11|ALUDataIn[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[249] -to "MemMux:inst11|ALUDataIn[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[250] -to "MemMux:inst11|ALUDataIn[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[251] -to "MemMux:inst11|ALUDataIn[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[252] -to "MemMux:inst11|ALUDataIn[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[253] -to "MemMux:inst11|ALUDataIn[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[254] -to "MemMux:inst11|ALUDataIn[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[255] -to "MemMux:inst11|ALUDataIn[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[256] -to "MemMux:inst11|ALUDataIn[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[257] -to "MemMux:inst11|ALUDataIn[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[258] -to "MemMux:inst11|ALUDataIn[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[259] -to "MemMux:inst11|ALUDataIn[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[260] -to "MemMux:inst11|ALUDataIn[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[261] -to "MemMux:inst11|ALUDataIn[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[262] -to "MemMux:inst11|ALUDataIn[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[263] -to "MemMux:inst11|ALUDataIn[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[264] -to "MemMux:inst11|ALUDataIn[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[265] -to "MemMux:inst11|ALUDataIn[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[266] -to "MemMux:inst11|ALUDataIn[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[267] -to "MemMux:inst11|ALUDataIn[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[268] -to "MemMux:inst11|ALUDataIn[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[269] -to "MemMux:inst11|ALUDataIn[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[270] -to "MemMux:inst11|ALUDataIn[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[271] -to "MemMux:inst11|ALUDataIn[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[272] -to "MemMux:inst11|ALUDataIn[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[273] -to "MemMux:inst11|ALUDataIn[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[274] -to "MemMux:inst11|ALUDataIn[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[275] -to "MemMux:inst11|ALUDataIn[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[276] -to "MemMux:inst11|ALUDataIn[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[277] -to "MemMux:inst11|ALUDataIn[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[278] -to "MemMux:inst11|ALUDataIn[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[279] -to "MemMux:inst11|ALUDataIn[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[280] -to "MemMux:inst11|FunctI[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[281] -to "MemMux:inst11|FunctI[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[282] -to "MemMux:inst11|FunctI[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[248] -to "MemMux:inst11|ALUDataIn[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[249] -to "MemMux:inst11|ALUDataIn[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[250] -to "MemMux:inst11|ALUDataIn[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[251] -to "MemMux:inst11|ALUDataIn[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[252] -to "MemMux:inst11|ALUDataIn[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[253] -to "MemMux:inst11|ALUDataIn[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[254] -to "MemMux:inst11|ALUDataIn[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[255] -to "MemMux:inst11|ALUDataIn[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[256] -to "MemMux:inst11|ALUDataIn[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[257] -to "MemMux:inst11|ALUDataIn[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[258] -to "MemMux:inst11|ALUDataIn[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[259] -to "MemMux:inst11|ALUDataIn[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[260] -to "MemMux:inst11|ALUDataIn[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[261] -to "MemMux:inst11|ALUDataIn[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[262] -to "MemMux:inst11|ALUDataIn[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[263] -to "MemMux:inst11|ALUDataIn[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[264] -to "MemMux:inst11|ALUDataIn[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[265] -to "MemMux:inst11|ALUDataIn[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[266] -to "MemMux:inst11|ALUDataIn[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[267] -to "MemMux:inst11|ALUDataIn[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[268] -to "MemMux:inst11|ALUDataIn[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[269] -to "MemMux:inst11|ALUDataIn[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[270] -to "MemMux:inst11|ALUDataIn[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[271] -to "MemMux:inst11|ALUDataIn[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[272] -to "MemMux:inst11|ALUDataIn[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[273] -to "MemMux:inst11|ALUDataIn[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[274] -to "MemMux:inst11|ALUDataIn[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[275] -to "MemMux:inst11|ALUDataIn[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[276] -to "MemMux:inst11|ALUDataIn[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[277] -to "MemMux:inst11|ALUDataIn[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[278] -to "MemMux:inst11|ALUDataIn[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[279] -to "MemMux:inst11|ALUDataIn[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[280] -to "MemMux:inst11|FunctI[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[281] -to "MemMux:inst11|FunctI[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[282] -to "MemMux:inst11|FunctI[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[248] -to "MemMux:inst11|ALUDataIn[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[249] -to "MemMux:inst11|ALUDataIn[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[250] -to "MemMux:inst11|ALUDataIn[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[251] -to "MemMux:inst11|ALUDataIn[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[252] -to "MemMux:inst11|ALUDataIn[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[253] -to "MemMux:inst11|ALUDataIn[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[254] -to "MemMux:inst11|ALUDataIn[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[255] -to "MemMux:inst11|ALUDataIn[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[256] -to "MemMux:inst11|ALUDataIn[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[257] -to "MemMux:inst11|ALUDataIn[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[258] -to "MemMux:inst11|ALUDataIn[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[259] -to "MemMux:inst11|ALUDataIn[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[260] -to "MemMux:inst11|ALUDataIn[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[261] -to "MemMux:inst11|ALUDataIn[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[262] -to "MemMux:inst11|ALUDataIn[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[263] -to "MemMux:inst11|ALUDataIn[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[264] -to "MemMux:inst11|ALUDataIn[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[265] -to "MemMux:inst11|ALUDataIn[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[266] -to "MemMux:inst11|ALUDataIn[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[267] -to "MemMux:inst11|ALUDataIn[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[268] -to "MemMux:inst11|ALUDataIn[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[269] -to "MemMux:inst11|ALUDataIn[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[270] -to "MemMux:inst11|ALUDataIn[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[271] -to "MemMux:inst11|ALUDataIn[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[272] -to "MemMux:inst11|ALUDataIn[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[273] -to "MemMux:inst11|ALUDataIn[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[274] -to "MemMux:inst11|ALUDataIn[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[275] -to "MemMux:inst11|ALUDataIn[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[276] -to "MemMux:inst11|ALUDataIn[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[277] -to "MemMux:inst11|ALUDataIn[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[278] -to "MemMux:inst11|ALUDataIn[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[279] -to "MemMux:inst11|ALUDataIn[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[280] -to "MemMux:inst11|FunctI[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[281] -to "MemMux:inst11|FunctI[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[282] -to "MemMux:inst11|FunctI[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[283] -to "MemMux:inst11|ROMDataIn[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[284] -to "MemMux:inst11|ROMDataIn[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[285] -to "MemMux:inst11|ROMDataIn[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[286] -to "MemMux:inst11|ROMDataIn[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[287] -to "MemMux:inst11|ROMDataIn[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[288] -to "MemMux:inst11|ROMDataIn[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[289] -to "MemMux:inst11|ROMDataIn[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[290] -to "MemMux:inst11|ROMDataIn[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[291] -to "MemMux:inst11|ROMDataIn[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[292] -to "MemMux:inst11|ROMDataIn[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[293] -to "MemMux:inst11|ROMDataIn[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[294] -to "MemMux:inst11|ROMDataIn[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[295] -to "MemMux:inst11|ROMDataIn[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[296] -to "MemMux:inst11|ROMDataIn[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[297] -to "MemMux:inst11|ROMDataIn[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[298] -to "MemMux:inst11|ROMDataIn[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[299] -to "MemMux:inst11|ROMDataIn[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[300] -to "MemMux:inst11|ROMDataIn[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[301] -to "MemMux:inst11|ROMDataIn[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[302] -to "MemMux:inst11|ROMDataIn[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[303] -to "MemMux:inst11|ROMDataIn[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[304] -to "MemMux:inst11|ROMDataIn[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[305] -to "MemMux:inst11|ROMDataIn[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[306] -to "MemMux:inst11|ROMDataIn[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[307] -to "MemMux:inst11|ROMDataIn[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[308] -to "MemMux:inst11|ROMDataIn[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[309] -to "MemMux:inst11|ROMDataIn[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[310] -to "MemMux:inst11|ROMDataIn[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[311] -to "MemMux:inst11|ROMDataIn[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[312] -to "MemMux:inst11|ROMDataIn[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[313] -to "MemMux:inst11|ROMDataIn[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[314] -to "MemMux:inst11|ROMDataIn[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[315] -to "MemMux:inst11|Sel" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[316] -to "MemMux:inst11|WrData[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[317] -to "MemMux:inst11|WrData[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[318] -to "MemMux:inst11|WrData[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[319] -to "MemMux:inst11|WrData[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[320] -to "MemMux:inst11|WrData[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[321] -to "MemMux:inst11|WrData[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[322] -to "MemMux:inst11|WrData[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[323] -to "MemMux:inst11|WrData[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[324] -to "MemMux:inst11|WrData[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[325] -to "MemMux:inst11|WrData[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[326] -to "MemMux:inst11|WrData[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[327] -to "MemMux:inst11|WrData[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[328] -to "MemMux:inst11|WrData[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[329] -to "MemMux:inst11|WrData[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[330] -to "MemMux:inst11|WrData[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[331] -to "MemMux:inst11|WrData[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[332] -to "MemMux:inst11|WrData[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[333] -to "MemMux:inst11|WrData[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[334] -to "MemMux:inst11|WrData[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[335] -to "MemMux:inst11|WrData[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[336] -to "MemMux:inst11|WrData[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[337] -to "MemMux:inst11|WrData[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[338] -to "MemMux:inst11|WrData[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[339] -to "MemMux:inst11|WrData[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[340] -to "MemMux:inst11|WrData[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[341] -to "MemMux:inst11|WrData[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[342] -to "MemMux:inst11|WrData[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[343] -to "MemMux:inst11|WrData[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[344] -to "MemMux:inst11|WrData[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[345] -to "MemMux:inst11|WrData[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[346] -to "MemMux:inst11|WrData[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[347] -to "MemMux:inst11|WrData[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[348] -to "MemStage:inst9|Stall" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[349] -to "RegSet:inst3|RdData1[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[350] -to "RegSet:inst3|RdData1[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[351] -to "RegSet:inst3|RdData1[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[352] -to "RegSet:inst3|RdData1[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[353] -to "RegSet:inst3|RdData1[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[354] -to "RegSet:inst3|RdData1[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[355] -to "RegSet:inst3|RdData1[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[356] -to "RegSet:inst3|RdData1[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[357] -to "RegSet:inst3|RdData1[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[358] -to "RegSet:inst3|RdData1[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[359] -to "RegSet:inst3|RdData1[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[360] -to "RegSet:inst3|RdData1[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[361] -to "RegSet:inst3|RdData1[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[362] -to "RegSet:inst3|RdData1[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[363] -to "RegSet:inst3|RdData1[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[364] -to "RegSet:inst3|RdData1[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[365] -to "RegSet:inst3|RdData1[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[366] -to "RegSet:inst3|RdData1[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[367] -to "RegSet:inst3|RdData1[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[368] -to "RegSet:inst3|RdData1[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[369] -to "RegSet:inst3|RdData1[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[370] -to "RegSet:inst3|RdData1[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[371] -to "RegSet:inst3|RdData1[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[372] -to "RegSet:inst3|RdData1[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[373] -to "RegSet:inst3|RdData1[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[374] -to "RegSet:inst3|RdData1[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[375] -to "RegSet:inst3|RdData1[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[376] -to "RegSet:inst3|RdData1[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[377] -to "RegSet:inst3|RdData1[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[378] -to "RegSet:inst3|RdData1[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[379] -to "RegSet:inst3|RdData1[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[380] -to "RegSet:inst3|RdData1[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[381] -to "RegSet:inst3|RdData2[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[382] -to "RegSet:inst3|RdData2[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[383] -to "RegSet:inst3|RdData2[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[384] -to "RegSet:inst3|RdData2[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[385] -to "RegSet:inst3|RdData2[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[386] -to "RegSet:inst3|RdData2[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[387] -to "RegSet:inst3|RdData2[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[388] -to "RegSet:inst3|RdData2[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[389] -to "RegSet:inst3|RdData2[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[390] -to "RegSet:inst3|RdData2[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[391] -to "RegSet:inst3|RdData2[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[392] -to "RegSet:inst3|RdData2[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[393] -to "RegSet:inst3|RdData2[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[394] -to "RegSet:inst3|RdData2[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[395] -to "RegSet:inst3|RdData2[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[396] -to "RegSet:inst3|RdData2[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[397] -to "RegSet:inst3|RdData2[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[398] -to "RegSet:inst3|RdData2[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[399] -to "RegSet:inst3|RdData2[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[400] -to "RegSet:inst3|RdData2[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[401] -to "RegSet:inst3|RdData2[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[402] -to "RegSet:inst3|RdData2[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[403] -to "RegSet:inst3|RdData2[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[404] -to "RegSet:inst3|RdData2[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[405] -to "RegSet:inst3|RdData2[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[406] -to "RegSet:inst3|RdData2[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[407] -to "RegSet:inst3|RdData2[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[408] -to "RegSet:inst3|RdData2[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[409] -to "RegSet:inst3|RdData2[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[410] -to "RegSet:inst3|RdData2[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[411] -to "RegSet:inst3|RdData2[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[412] -to "RegSet:inst3|RdData2[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[413] -to "RegSet:inst3|RdRegNo1[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[414] -to "RegSet:inst3|RdRegNo1[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[415] -to "RegSet:inst3|RdRegNo1[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[416] -to "RegSet:inst3|RdRegNo1[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[417] -to "RegSet:inst3|RdRegNo1[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[418] -to "RegSet:inst3|RdRegNo2[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[419] -to "RegSet:inst3|RdRegNo2[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[420] -to "RegSet:inst3|RdRegNo2[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[421] -to "RegSet:inst3|RdRegNo2[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[422] -to "RegSet:inst3|RdRegNo2[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[423] -to "RegSet:inst3|WrData[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[424] -to "RegSet:inst3|WrData[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[425] -to "RegSet:inst3|WrData[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[426] -to "RegSet:inst3|WrData[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[427] -to "RegSet:inst3|WrData[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[428] -to "RegSet:inst3|WrData[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[429] -to "RegSet:inst3|WrData[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[430] -to "RegSet:inst3|WrData[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[431] -to "RegSet:inst3|WrData[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[432] -to "RegSet:inst3|WrData[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[433] -to "RegSet:inst3|WrData[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[434] -to "RegSet:inst3|WrData[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[435] -to "RegSet:inst3|WrData[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[436] -to "RegSet:inst3|WrData[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[437] -to "RegSet:inst3|WrData[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[438] -to "RegSet:inst3|WrData[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[439] -to "RegSet:inst3|WrData[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[440] -to "RegSet:inst3|WrData[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[441] -to "RegSet:inst3|WrData[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[442] -to "RegSet:inst3|WrData[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[443] -to "RegSet:inst3|WrData[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[444] -to "RegSet:inst3|WrData[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[445] -to "RegSet:inst3|WrData[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[446] -to "RegSet:inst3|WrData[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[447] -to "RegSet:inst3|WrData[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[448] -to "RegSet:inst3|WrData[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[449] -to "RegSet:inst3|WrData[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[450] -to "RegSet:inst3|WrData[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[451] -to "RegSet:inst3|WrData[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[452] -to "RegSet:inst3|WrData[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[453] -to "RegSet:inst3|WrData[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[454] -to "RegSet:inst3|WrData[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[455] -to "RegSet:inst3|WrEn" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[456] -to "RegSet:inst3|WrRegNo[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[457] -to "RegSet:inst3|WrRegNo[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[458] -to "RegSet:inst3|WrRegNo[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[459] -to "RegSet:inst3|WrRegNo[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[460] -to "RegSet:inst3|WrRegNo[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[461] -to "SRAMController:inst14|Stall" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[283] -to "MemMux:inst11|ROMDataIn[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[284] -to "MemMux:inst11|ROMDataIn[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[285] -to "MemMux:inst11|ROMDataIn[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[286] -to "MemMux:inst11|ROMDataIn[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[287] -to "MemMux:inst11|ROMDataIn[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[288] -to "MemMux:inst11|ROMDataIn[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[289] -to "MemMux:inst11|ROMDataIn[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[290] -to "MemMux:inst11|ROMDataIn[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[291] -to "MemMux:inst11|ROMDataIn[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[292] -to "MemMux:inst11|ROMDataIn[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[293] -to "MemMux:inst11|ROMDataIn[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[294] -to "MemMux:inst11|ROMDataIn[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[295] -to "MemMux:inst11|ROMDataIn[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[296] -to "MemMux:inst11|ROMDataIn[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[297] -to "MemMux:inst11|ROMDataIn[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[298] -to "MemMux:inst11|ROMDataIn[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[299] -to "MemMux:inst11|ROMDataIn[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[300] -to "MemMux:inst11|ROMDataIn[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[301] -to "MemMux:inst11|ROMDataIn[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[302] -to "MemMux:inst11|ROMDataIn[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[303] -to "MemMux:inst11|ROMDataIn[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[304] -to "MemMux:inst11|ROMDataIn[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[305] -to "MemMux:inst11|ROMDataIn[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[306] -to "MemMux:inst11|ROMDataIn[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[307] -to "MemMux:inst11|ROMDataIn[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[308] -to "MemMux:inst11|ROMDataIn[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[309] -to "MemMux:inst11|ROMDataIn[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[310] -to "MemMux:inst11|ROMDataIn[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[311] -to "MemMux:inst11|ROMDataIn[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[312] -to "MemMux:inst11|ROMDataIn[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[313] -to "MemMux:inst11|ROMDataIn[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[314] -to "MemMux:inst11|ROMDataIn[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[315] -to "MemMux:inst11|Sel" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[316] -to "MemMux:inst11|WrData[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[317] -to "MemMux:inst11|WrData[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[318] -to "MemMux:inst11|WrData[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[319] -to "MemMux:inst11|WrData[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[320] -to "MemMux:inst11|WrData[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[321] -to "MemMux:inst11|WrData[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[322] -to "MemMux:inst11|WrData[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[323] -to "MemMux:inst11|WrData[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[324] -to "MemMux:inst11|WrData[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[325] -to "MemMux:inst11|WrData[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[326] -to "MemMux:inst11|WrData[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[327] -to "MemMux:inst11|WrData[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[328] -to "MemMux:inst11|WrData[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[329] -to "MemMux:inst11|WrData[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[330] -to "MemMux:inst11|WrData[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[331] -to "MemMux:inst11|WrData[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[332] -to "MemMux:inst11|WrData[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[333] -to "MemMux:inst11|WrData[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[334] -to "MemMux:inst11|WrData[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[335] -to "MemMux:inst11|WrData[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[336] -to "MemMux:inst11|WrData[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[337] -to "MemMux:inst11|WrData[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[338] -to "MemMux:inst11|WrData[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[339] -to "MemMux:inst11|WrData[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[340] -to "MemMux:inst11|WrData[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[341] -to "MemMux:inst11|WrData[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[342] -to "MemMux:inst11|WrData[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[343] -to "MemMux:inst11|WrData[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[344] -to "MemMux:inst11|WrData[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[345] -to "MemMux:inst11|WrData[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[346] -to "MemMux:inst11|WrData[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[347] -to "MemMux:inst11|WrData[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[348] -to "MemStage:inst9|Stall" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[349] -to "RegSet:inst3|RdData1[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[350] -to "RegSet:inst3|RdData1[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[351] -to "RegSet:inst3|RdData1[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[352] -to "RegSet:inst3|RdData1[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[353] -to "RegSet:inst3|RdData1[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[354] -to "RegSet:inst3|RdData1[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[355] -to "RegSet:inst3|RdData1[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[356] -to "RegSet:inst3|RdData1[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[357] -to "RegSet:inst3|RdData1[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[358] -to "RegSet:inst3|RdData1[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[359] -to "RegSet:inst3|RdData1[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[360] -to "RegSet:inst3|RdData1[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[361] -to "RegSet:inst3|RdData1[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[362] -to "RegSet:inst3|RdData1[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[363] -to "RegSet:inst3|RdData1[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[364] -to "RegSet:inst3|RdData1[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[365] -to "RegSet:inst3|RdData1[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[366] -to "RegSet:inst3|RdData1[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[367] -to "RegSet:inst3|RdData1[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[368] -to "RegSet:inst3|RdData1[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[369] -to "RegSet:inst3|RdData1[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[370] -to "RegSet:inst3|RdData1[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[371] -to "RegSet:inst3|RdData1[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[372] -to "RegSet:inst3|RdData1[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[373] -to "RegSet:inst3|RdData1[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[374] -to "RegSet:inst3|RdData1[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[375] -to "RegSet:inst3|RdData1[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[376] -to "RegSet:inst3|RdData1[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[377] -to "RegSet:inst3|RdData1[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[378] -to "RegSet:inst3|RdData1[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[379] -to "RegSet:inst3|RdData1[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[380] -to "RegSet:inst3|RdData1[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[381] -to "RegSet:inst3|RdData2[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[382] -to "RegSet:inst3|RdData2[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[383] -to "RegSet:inst3|RdData2[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[384] -to "RegSet:inst3|RdData2[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[385] -to "RegSet:inst3|RdData2[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[386] -to "RegSet:inst3|RdData2[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[387] -to "RegSet:inst3|RdData2[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[388] -to "RegSet:inst3|RdData2[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[389] -to "RegSet:inst3|RdData2[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[390] -to "RegSet:inst3|RdData2[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[391] -to "RegSet:inst3|RdData2[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[392] -to "RegSet:inst3|RdData2[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[393] -to "RegSet:inst3|RdData2[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[394] -to "RegSet:inst3|RdData2[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[395] -to "RegSet:inst3|RdData2[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[396] -to "RegSet:inst3|RdData2[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[397] -to "RegSet:inst3|RdData2[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[398] -to "RegSet:inst3|RdData2[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[399] -to "RegSet:inst3|RdData2[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[400] -to "RegSet:inst3|RdData2[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[401] -to "RegSet:inst3|RdData2[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[402] -to "RegSet:inst3|RdData2[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[403] -to "RegSet:inst3|RdData2[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[404] -to "RegSet:inst3|RdData2[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[405] -to "RegSet:inst3|RdData2[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[406] -to "RegSet:inst3|RdData2[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[407] -to "RegSet:inst3|RdData2[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[408] -to "RegSet:inst3|RdData2[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[409] -to "RegSet:inst3|RdData2[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[410] -to "RegSet:inst3|RdData2[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[411] -to "RegSet:inst3|RdData2[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[412] -to "RegSet:inst3|RdData2[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[413] -to "RegSet:inst3|RdRegNo1[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[414] -to "RegSet:inst3|RdRegNo1[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[415] -to "RegSet:inst3|RdRegNo1[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[416] -to "RegSet:inst3|RdRegNo1[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[417] -to "RegSet:inst3|RdRegNo1[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[418] -to "RegSet:inst3|RdRegNo2[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[419] -to "RegSet:inst3|RdRegNo2[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[420] -to "RegSet:inst3|RdRegNo2[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[421] -to "RegSet:inst3|RdRegNo2[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[422] -to "RegSet:inst3|RdRegNo2[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[423] -to "RegSet:inst3|WrData[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[424] -to "RegSet:inst3|WrData[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[425] -to "RegSet:inst3|WrData[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[426] -to "RegSet:inst3|WrData[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[427] -to "RegSet:inst3|WrData[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[428] -to "RegSet:inst3|WrData[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[429] -to "RegSet:inst3|WrData[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[430] -to "RegSet:inst3|WrData[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[431] -to "RegSet:inst3|WrData[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[432] -to "RegSet:inst3|WrData[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[433] -to "RegSet:inst3|WrData[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[434] -to "RegSet:inst3|WrData[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[435] -to "RegSet:inst3|WrData[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[436] -to "RegSet:inst3|WrData[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[437] -to "RegSet:inst3|WrData[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[438] -to "RegSet:inst3|WrData[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[439] -to "RegSet:inst3|WrData[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[440] -to "RegSet:inst3|WrData[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[441] -to "RegSet:inst3|WrData[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[442] -to "RegSet:inst3|WrData[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[443] -to "RegSet:inst3|WrData[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[444] -to "RegSet:inst3|WrData[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[445] -to "RegSet:inst3|WrData[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[446] -to "RegSet:inst3|WrData[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[447] -to "RegSet:inst3|WrData[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[448] -to "RegSet:inst3|WrData[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[449] -to "RegSet:inst3|WrData[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[450] -to "RegSet:inst3|WrData[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[451] -to "RegSet:inst3|WrData[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[452] -to "RegSet:inst3|WrData[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[453] -to "RegSet:inst3|WrData[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[454] -to "RegSet:inst3|WrData[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[455] -to "RegSet:inst3|WrEn" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[456] -to "RegSet:inst3|WrRegNo[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[457] -to "RegSet:inst3|WrRegNo[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[458] -to "RegSet:inst3|WrRegNo[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[459] -to "RegSet:inst3|WrRegNo[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[460] -to "RegSet:inst3|WrRegNo[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[461] -to "SRAMController:inst14|Stall" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[283] -to "MemMux:inst11|ROMDataIn[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[284] -to "MemMux:inst11|ROMDataIn[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[285] -to "MemMux:inst11|ROMDataIn[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[286] -to "MemMux:inst11|ROMDataIn[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[287] -to "MemMux:inst11|ROMDataIn[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[288] -to "MemMux:inst11|ROMDataIn[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[289] -to "MemMux:inst11|ROMDataIn[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[290] -to "MemMux:inst11|ROMDataIn[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[291] -to "MemMux:inst11|ROMDataIn[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[292] -to "MemMux:inst11|ROMDataIn[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[293] -to "MemMux:inst11|ROMDataIn[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[294] -to "MemMux:inst11|ROMDataIn[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[295] -to "MemMux:inst11|ROMDataIn[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[296] -to "MemMux:inst11|ROMDataIn[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[297] -to "MemMux:inst11|ROMDataIn[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[298] -to "MemMux:inst11|ROMDataIn[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[299] -to "MemMux:inst11|ROMDataIn[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[300] -to "MemMux:inst11|ROMDataIn[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[301] -to "MemMux:inst11|ROMDataIn[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[302] -to "MemMux:inst11|ROMDataIn[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[303] -to "MemMux:inst11|ROMDataIn[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[304] -to "MemMux:inst11|ROMDataIn[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[305] -to "MemMux:inst11|ROMDataIn[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[306] -to "MemMux:inst11|ROMDataIn[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[307] -to "MemMux:inst11|ROMDataIn[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[308] -to "MemMux:inst11|ROMDataIn[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[309] -to "MemMux:inst11|ROMDataIn[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[310] -to "MemMux:inst11|ROMDataIn[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[311] -to "MemMux:inst11|ROMDataIn[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[312] -to "MemMux:inst11|ROMDataIn[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[313] -to "MemMux:inst11|ROMDataIn[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[314] -to "MemMux:inst11|ROMDataIn[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[315] -to "MemMux:inst11|Sel" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[316] -to "MemMux:inst11|WrData[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[317] -to "MemMux:inst11|WrData[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[318] -to "MemMux:inst11|WrData[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[319] -to "MemMux:inst11|WrData[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[320] -to "MemMux:inst11|WrData[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[321] -to "MemMux:inst11|WrData[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[322] -to "MemMux:inst11|WrData[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[323] -to "MemMux:inst11|WrData[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[324] -to "MemMux:inst11|WrData[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[325] -to "MemMux:inst11|WrData[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[326] -to "MemMux:inst11|WrData[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[327] -to "MemMux:inst11|WrData[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[328] -to "MemMux:inst11|WrData[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[329] -to "MemMux:inst11|WrData[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[330] -to "MemMux:inst11|WrData[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[331] -to "MemMux:inst11|WrData[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[332] -to "MemMux:inst11|WrData[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[333] -to "MemMux:inst11|WrData[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[334] -to "MemMux:inst11|WrData[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[335] -to "MemMux:inst11|WrData[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[336] -to "MemMux:inst11|WrData[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[337] -to "MemMux:inst11|WrData[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[338] -to "MemMux:inst11|WrData[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[339] -to "MemMux:inst11|WrData[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[340] -to "MemMux:inst11|WrData[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[341] -to "MemMux:inst11|WrData[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[342] -to "MemMux:inst11|WrData[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[343] -to "MemMux:inst11|WrData[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[344] -to "MemMux:inst11|WrData[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[345] -to "MemMux:inst11|WrData[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[346] -to "MemMux:inst11|WrData[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[347] -to "MemMux:inst11|WrData[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[348] -to "MemStage:inst9|Stall" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[349] -to "RegSet:inst3|RdData1[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[350] -to "RegSet:inst3|RdData1[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[351] -to "RegSet:inst3|RdData1[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[352] -to "RegSet:inst3|RdData1[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[353] -to "RegSet:inst3|RdData1[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[354] -to "RegSet:inst3|RdData1[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[355] -to "RegSet:inst3|RdData1[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[356] -to "RegSet:inst3|RdData1[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[357] -to "RegSet:inst3|RdData1[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[358] -to "RegSet:inst3|RdData1[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[359] -to "RegSet:inst3|RdData1[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[360] -to "RegSet:inst3|RdData1[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[361] -to "RegSet:inst3|RdData1[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[362] -to "RegSet:inst3|RdData1[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[363] -to "RegSet:inst3|RdData1[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[364] -to "RegSet:inst3|RdData1[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[365] -to "RegSet:inst3|RdData1[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[366] -to "RegSet:inst3|RdData1[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[367] -to "RegSet:inst3|RdData1[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[368] -to "RegSet:inst3|RdData1[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[369] -to "RegSet:inst3|RdData1[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[370] -to "RegSet:inst3|RdData1[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[371] -to "RegSet:inst3|RdData1[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[372] -to "RegSet:inst3|RdData1[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[373] -to "RegSet:inst3|RdData1[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[374] -to "RegSet:inst3|RdData1[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[375] -to "RegSet:inst3|RdData1[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[376] -to "RegSet:inst3|RdData1[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[377] -to "RegSet:inst3|RdData1[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[378] -to "RegSet:inst3|RdData1[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[379] -to "RegSet:inst3|RdData1[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[380] -to "RegSet:inst3|RdData1[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[381] -to "RegSet:inst3|RdData2[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[382] -to "RegSet:inst3|RdData2[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[383] -to "RegSet:inst3|RdData2[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[384] -to "RegSet:inst3|RdData2[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[385] -to "RegSet:inst3|RdData2[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[386] -to "RegSet:inst3|RdData2[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[387] -to "RegSet:inst3|RdData2[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[388] -to "RegSet:inst3|RdData2[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[389] -to "RegSet:inst3|RdData2[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[390] -to "RegSet:inst3|RdData2[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[391] -to "RegSet:inst3|RdData2[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[392] -to "RegSet:inst3|RdData2[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[393] -to "RegSet:inst3|RdData2[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[394] -to "RegSet:inst3|RdData2[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[395] -to "RegSet:inst3|RdData2[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[396] -to "RegSet:inst3|RdData2[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[397] -to "RegSet:inst3|RdData2[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[398] -to "RegSet:inst3|RdData2[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[399] -to "RegSet:inst3|RdData2[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[400] -to "RegSet:inst3|RdData2[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[401] -to "RegSet:inst3|RdData2[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[402] -to "RegSet:inst3|RdData2[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[403] -to "RegSet:inst3|RdData2[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[404] -to "RegSet:inst3|RdData2[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[405] -to "RegSet:inst3|RdData2[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[406] -to "RegSet:inst3|RdData2[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[407] -to "RegSet:inst3|RdData2[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[408] -to "RegSet:inst3|RdData2[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[409] -to "RegSet:inst3|RdData2[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[410] -to "RegSet:inst3|RdData2[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[411] -to "RegSet:inst3|RdData2[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[412] -to "RegSet:inst3|RdData2[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[413] -to "RegSet:inst3|RdRegNo1[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[414] -to "RegSet:inst3|RdRegNo1[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[415] -to "RegSet:inst3|RdRegNo1[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[416] -to "RegSet:inst3|RdRegNo1[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[417] -to "RegSet:inst3|RdRegNo1[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[418] -to "RegSet:inst3|RdRegNo2[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[419] -to "RegSet:inst3|RdRegNo2[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[420] -to "RegSet:inst3|RdRegNo2[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[421] -to "RegSet:inst3|RdRegNo2[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[422] -to "RegSet:inst3|RdRegNo2[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[423] -to "RegSet:inst3|WrData[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[424] -to "RegSet:inst3|WrData[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[425] -to "RegSet:inst3|WrData[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[426] -to "RegSet:inst3|WrData[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[427] -to "RegSet:inst3|WrData[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[428] -to "RegSet:inst3|WrData[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[429] -to "RegSet:inst3|WrData[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[430] -to "RegSet:inst3|WrData[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[431] -to "RegSet:inst3|WrData[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[432] -to "RegSet:inst3|WrData[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[433] -to "RegSet:inst3|WrData[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[434] -to "RegSet:inst3|WrData[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[435] -to "RegSet:inst3|WrData[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[436] -to "RegSet:inst3|WrData[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[437] -to "RegSet:inst3|WrData[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[438] -to "RegSet:inst3|WrData[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[439] -to "RegSet:inst3|WrData[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[440] -to "RegSet:inst3|WrData[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[441] -to "RegSet:inst3|WrData[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[442] -to "RegSet:inst3|WrData[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[443] -to "RegSet:inst3|WrData[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[444] -to "RegSet:inst3|WrData[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[445] -to "RegSet:inst3|WrData[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[446] -to "RegSet:inst3|WrData[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[447] -to "RegSet:inst3|WrData[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[448] -to "RegSet:inst3|WrData[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[449] -to "RegSet:inst3|WrData[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[450] -to "RegSet:inst3|WrData[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[451] -to "RegSet:inst3|WrData[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[452] -to "RegSet:inst3|WrData[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[453] -to "RegSet:inst3|WrData[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[454] -to "RegSet:inst3|WrData[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[455] -to "RegSet:inst3|WrEn" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[456] -to "RegSet:inst3|WrRegNo[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[457] -to "RegSet:inst3|WrRegNo[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[458] -to "RegSet:inst3|WrRegNo[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[459] -to "RegSet:inst3|WrRegNo[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[460] -to "RegSet:inst3|WrRegNo[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[461] -to "SRAMController:inst14|Stall" -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[0] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[3] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[12] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[14] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[18] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[20] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[24] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[26] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[27] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[29] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[462] -to "SRAMController:inst14|address[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[463] -to "SRAMController:inst14|address[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[464] -to "SRAMController:inst14|address[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[465] -to "SRAMController:inst14|address[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[466] -to "SRAMController:inst14|address[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[467] -to "SRAMController:inst14|address[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[468] -to "SRAMController:inst14|address[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[469] -to "SRAMController:inst14|address[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[470] -to "SRAMController:inst14|address[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[471] -to "SRAMController:inst14|address[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[472] -to "SRAMController:inst14|address[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[473] -to "SRAMController:inst14|address[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[474] -to "SRAMController:inst14|address[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[475] -to "SRAMController:inst14|address[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[476] -to "SRAMController:inst14|address[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[477] -to "SRAMController:inst14|address[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[478] -to "SRAMController:inst14|address[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[479] -to "SRAMController:inst14|address[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[480] -to "SRAMController:inst14|byteena[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[481] -to "SRAMController:inst14|byteena[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[482] -to "SRAMController:inst14|byteena[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[483] -to "SRAMController:inst14|byteena[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[484] -to "SRAMController:inst14|data[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[485] -to "SRAMController:inst14|data[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[486] -to "SRAMController:inst14|data[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[487] -to "SRAMController:inst14|data[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[488] -to "SRAMController:inst14|data[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[489] -to "SRAMController:inst14|data[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[490] -to "SRAMController:inst14|data[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[491] -to "SRAMController:inst14|data[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[492] -to "SRAMController:inst14|data[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[493] -to "SRAMController:inst14|data[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[494] -to "SRAMController:inst14|data[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[495] -to "SRAMController:inst14|data[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[496] -to "SRAMController:inst14|data[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[497] -to "SRAMController:inst14|data[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[498] -to "SRAMController:inst14|data[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[499] -to "SRAMController:inst14|data[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[500] -to "SRAMController:inst14|data[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[501] -to "SRAMController:inst14|data[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[502] -to "SRAMController:inst14|data[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[503] -to "SRAMController:inst14|data[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[504] -to "SRAMController:inst14|data[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[505] -to "SRAMController:inst14|data[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[506] -to "SRAMController:inst14|data[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[507] -to "SRAMController:inst14|data[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[508] -to "SRAMController:inst14|data[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[509] -to "SRAMController:inst14|data[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[510] -to "SRAMController:inst14|data[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[511] -to "SRAMController:inst14|data[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[512] -to "SRAMController:inst14|data[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[513] -to "SRAMController:inst14|data[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[514] -to "SRAMController:inst14|data[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[515] -to "SRAMController:inst14|data[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[516] -to "SRAMController:inst14|data_out[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[517] -to "SRAMController:inst14|data_out[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[518] -to "SRAMController:inst14|data_out[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[519] -to "SRAMController:inst14|data_out[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[520] -to "SRAMController:inst14|data_out[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[521] -to "SRAMController:inst14|data_out[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[522] -to "SRAMController:inst14|data_out[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[523] -to "SRAMController:inst14|data_out[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[524] -to "SRAMController:inst14|data_out[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[525] -to "SRAMController:inst14|data_out[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[526] -to "SRAMController:inst14|data_out[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[527] -to "SRAMController:inst14|data_out[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[528] -to "SRAMController:inst14|data_out[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[529] -to "SRAMController:inst14|data_out[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[530] -to "SRAMController:inst14|data_out[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[531] -to "SRAMController:inst14|data_out[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[532] -to "SRAMController:inst14|data_out[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[533] -to "SRAMController:inst14|data_out[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[534] -to "SRAMController:inst14|data_out[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[535] -to "SRAMController:inst14|data_out[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[536] -to "SRAMController:inst14|data_out[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[537] -to "SRAMController:inst14|data_out[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[538] -to "SRAMController:inst14|data_out[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[539] -to "SRAMController:inst14|data_out[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[540] -to "SRAMController:inst14|data_out[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[541] -to "SRAMController:inst14|data_out[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[542] -to "SRAMController:inst14|data_out[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[543] -to "SRAMController:inst14|data_out[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[544] -to "SRAMController:inst14|data_out[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[545] -to "SRAMController:inst14|data_out[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[546] -to "SRAMController:inst14|data_out[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[547] -to "SRAMController:inst14|data_out[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[548] -to "SRAMController:inst14|wren" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[549] -to SRAM_A[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[550] -to SRAM_A[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[551] -to SRAM_A[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[552] -to SRAM_A[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[553] -to SRAM_A[13] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[554] -to SRAM_A[14] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[555] -to SRAM_A[15] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[556] -to SRAM_A[16] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[557] -to SRAM_A[17] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[558] -to SRAM_A[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[559] -to SRAM_A[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[560] -to SRAM_A[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[561] -to SRAM_A[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[562] -to SRAM_A[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[563] -to SRAM_A[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[564] -to SRAM_A[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[565] -to SRAM_A[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[566] -to SRAM_A[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[567] -to SRAM_D[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[568] -to SRAM_D[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[569] -to SRAM_D[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[570] -to SRAM_D[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[571] -to SRAM_D[13] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[572] -to SRAM_D[14] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[573] -to SRAM_D[15] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[574] -to SRAM_D[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[575] -to SRAM_D[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[576] -to SRAM_D[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[577] -to SRAM_D[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[578] -to SRAM_D[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[579] -to SRAM_D[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[580] -to SRAM_D[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[581] -to SRAM_D[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[582] -to SRAM_D[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[583] -to "SevenSeg:inst13|CLK" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[584] -to "SevenSeg:inst13|Hex0[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[585] -to "SevenSeg:inst13|Hex0[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[586] -to "SevenSeg:inst13|Hex0[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[587] -to "SevenSeg:inst13|Hex0[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[588] -to "SevenSeg:inst13|Hex0[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[589] -to "SevenSeg:inst13|Hex0[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[590] -to "SevenSeg:inst13|Hex0[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[591] -to "SevenSeg:inst13|Hex1[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[592] -to "SevenSeg:inst13|Hex1[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[593] -to "SevenSeg:inst13|Hex1[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[594] -to "SevenSeg:inst13|Hex1[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[595] -to "SevenSeg:inst13|Hex1[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[596] -to "SevenSeg:inst13|Hex1[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[597] -to "SevenSeg:inst13|Hex1[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[598] -to "SevenSeg:inst13|Hex2[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[599] -to "SevenSeg:inst13|Hex2[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[600] -to "SevenSeg:inst13|Hex2[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[601] -to "SevenSeg:inst13|Hex2[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[602] -to "SevenSeg:inst13|Hex2[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[603] -to "SevenSeg:inst13|Hex2[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[604] -to "SevenSeg:inst13|Hex2[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[605] -to "SevenSeg:inst13|Hex3[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[606] -to "SevenSeg:inst13|Hex3[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[607] -to "SevenSeg:inst13|Hex3[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[608] -to "SevenSeg:inst13|Hex3[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[609] -to "SevenSeg:inst13|Hex3[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[610] -to "SevenSeg:inst13|Hex3[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[611] -to "SevenSeg:inst13|Hex3[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[612] -to "SevenSeg:inst13|nRst" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[613] -to "SevenSeg:inst13|set" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[614] -to "SevenSeg:inst13|v[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[615] -to "SevenSeg:inst13|v[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[616] -to "SevenSeg:inst13|v[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[617] -to "SevenSeg:inst13|v[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[618] -to "SevenSeg:inst13|v[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[619] -to "SevenSeg:inst13|v[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[620] -to "SevenSeg:inst13|v[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[621] -to "SevenSeg:inst13|v[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[622] -to "SevenSeg:inst13|v[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[623] -to "SevenSeg:inst13|v[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[624] -to "SevenSeg:inst13|v[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[625] -to "SevenSeg:inst13|v[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[626] -to "SevenSeg:inst13|v[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[627] -to "SevenSeg:inst13|v[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[628] -to "SevenSeg:inst13|v[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[629] -to "SevenSeg:inst13|v[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[630] -to "SevenSeg:inst13|v[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[631] -to "SevenSeg:inst13|v[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[632] -to "SevenSeg:inst13|v[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[633] -to "SevenSeg:inst13|v[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[634] -to "SevenSeg:inst13|v[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[635] -to "SevenSeg:inst13|v[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[636] -to "SevenSeg:inst13|v[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[637] -to "SevenSeg:inst13|v[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[638] -to "SevenSeg:inst13|v[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[639] -to "SevenSeg:inst13|v[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[640] -to "SevenSeg:inst13|v[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[641] -to "SevenSeg:inst13|v[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[642] -to "SevenSeg:inst13|v[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[643] -to "SevenSeg:inst13|v[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[644] -to "SevenSeg:inst13|v[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[645] -to "SevenSeg:inst13|v[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[462] -to "SRAMController:inst14|address[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[463] -to "SRAMController:inst14|address[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[464] -to "SRAMController:inst14|address[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[465] -to "SRAMController:inst14|address[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[466] -to "SRAMController:inst14|address[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[467] -to "SRAMController:inst14|address[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[468] -to "SRAMController:inst14|address[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[469] -to "SRAMController:inst14|address[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[470] -to "SRAMController:inst14|address[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[471] -to "SRAMController:inst14|address[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[472] -to "SRAMController:inst14|address[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[473] -to "SRAMController:inst14|address[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[474] -to "SRAMController:inst14|address[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[475] -to "SRAMController:inst14|address[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[476] -to "SRAMController:inst14|address[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[477] -to "SRAMController:inst14|address[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[478] -to "SRAMController:inst14|address[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[479] -to "SRAMController:inst14|address[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[480] -to "SRAMController:inst14|byteena[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[481] -to "SRAMController:inst14|byteena[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[482] -to "SRAMController:inst14|byteena[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[483] -to "SRAMController:inst14|byteena[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[484] -to "SRAMController:inst14|data[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[485] -to "SRAMController:inst14|data[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[486] -to "SRAMController:inst14|data[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[487] -to "SRAMController:inst14|data[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[488] -to "SRAMController:inst14|data[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[489] -to "SRAMController:inst14|data[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[490] -to "SRAMController:inst14|data[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[491] -to "SRAMController:inst14|data[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[492] -to "SRAMController:inst14|data[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[493] -to "SRAMController:inst14|data[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[494] -to "SRAMController:inst14|data[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[495] -to "SRAMController:inst14|data[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[496] -to "SRAMController:inst14|data[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[497] -to "SRAMController:inst14|data[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[498] -to "SRAMController:inst14|data[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[499] -to "SRAMController:inst14|data[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[500] -to "SRAMController:inst14|data[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[501] -to "SRAMController:inst14|data[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[502] -to "SRAMController:inst14|data[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[503] -to "SRAMController:inst14|data[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[504] -to "SRAMController:inst14|data[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[505] -to "SRAMController:inst14|data[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[506] -to "SRAMController:inst14|data[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[507] -to "SRAMController:inst14|data[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[508] -to "SRAMController:inst14|data[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[509] -to "SRAMController:inst14|data[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[510] -to "SRAMController:inst14|data[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[511] -to "SRAMController:inst14|data[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[512] -to "SRAMController:inst14|data[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[513] -to "SRAMController:inst14|data[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[514] -to "SRAMController:inst14|data[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[515] -to "SRAMController:inst14|data[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[516] -to "SRAMController:inst14|data_out[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[517] -to "SRAMController:inst14|data_out[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[518] -to "SRAMController:inst14|data_out[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[519] -to "SRAMController:inst14|data_out[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[520] -to "SRAMController:inst14|data_out[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[521] -to "SRAMController:inst14|data_out[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[522] -to "SRAMController:inst14|data_out[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[523] -to "SRAMController:inst14|data_out[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[524] -to "SRAMController:inst14|data_out[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[525] -to "SRAMController:inst14|data_out[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[526] -to "SRAMController:inst14|data_out[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[527] -to "SRAMController:inst14|data_out[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[528] -to "SRAMController:inst14|data_out[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[529] -to "SRAMController:inst14|data_out[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[530] -to "SRAMController:inst14|data_out[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[531] -to "SRAMController:inst14|data_out[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[532] -to "SRAMController:inst14|data_out[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[533] -to "SRAMController:inst14|data_out[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[534] -to "SRAMController:inst14|data_out[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[535] -to "SRAMController:inst14|data_out[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[536] -to "SRAMController:inst14|data_out[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[537] -to "SRAMController:inst14|data_out[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[538] -to "SRAMController:inst14|data_out[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[539] -to "SRAMController:inst14|data_out[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[540] -to "SRAMController:inst14|data_out[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[541] -to "SRAMController:inst14|data_out[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[542] -to "SRAMController:inst14|data_out[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[543] -to "SRAMController:inst14|data_out[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[544] -to "SRAMController:inst14|data_out[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[545] -to "SRAMController:inst14|data_out[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[546] -to "SRAMController:inst14|data_out[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[547] -to "SRAMController:inst14|data_out[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[548] -to "SRAMController:inst14|wren" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[549] -to SRAM_A[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[550] -to SRAM_A[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[551] -to SRAM_A[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[552] -to SRAM_A[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[553] -to SRAM_A[13] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[554] -to SRAM_A[14] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[555] -to SRAM_A[15] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[556] -to SRAM_A[16] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[557] -to SRAM_A[17] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[558] -to SRAM_A[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[559] -to SRAM_A[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[560] -to SRAM_A[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[561] -to SRAM_A[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[562] -to SRAM_A[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[563] -to SRAM_A[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[564] -to SRAM_A[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[565] -to SRAM_A[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[566] -to SRAM_A[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[567] -to SRAM_D[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[568] -to SRAM_D[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[569] -to SRAM_D[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[570] -to SRAM_D[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[571] -to SRAM_D[13] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[572] -to SRAM_D[14] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[573] -to SRAM_D[15] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[574] -to SRAM_D[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[575] -to SRAM_D[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[576] -to SRAM_D[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[577] -to SRAM_D[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[578] -to SRAM_D[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[579] -to SRAM_D[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[580] -to SRAM_D[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[581] -to SRAM_D[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[582] -to SRAM_D[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[583] -to "SevenSeg:inst13|CLK" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[584] -to "SevenSeg:inst13|Hex0[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[585] -to "SevenSeg:inst13|Hex0[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[586] -to "SevenSeg:inst13|Hex0[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[587] -to "SevenSeg:inst13|Hex0[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[588] -to "SevenSeg:inst13|Hex0[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[589] -to "SevenSeg:inst13|Hex0[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[590] -to "SevenSeg:inst13|Hex0[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[591] -to "SevenSeg:inst13|Hex1[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[592] -to "SevenSeg:inst13|Hex1[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[593] -to "SevenSeg:inst13|Hex1[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[594] -to "SevenSeg:inst13|Hex1[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[595] -to "SevenSeg:inst13|Hex1[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[596] -to "SevenSeg:inst13|Hex1[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[597] -to "SevenSeg:inst13|Hex1[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[598] -to "SevenSeg:inst13|Hex2[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[599] -to "SevenSeg:inst13|Hex2[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[600] -to "SevenSeg:inst13|Hex2[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[601] -to "SevenSeg:inst13|Hex2[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[602] -to "SevenSeg:inst13|Hex2[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[603] -to "SevenSeg:inst13|Hex2[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[604] -to "SevenSeg:inst13|Hex2[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[605] -to "SevenSeg:inst13|Hex3[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[606] -to "SevenSeg:inst13|Hex3[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[607] -to "SevenSeg:inst13|Hex3[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[608] -to "SevenSeg:inst13|Hex3[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[609] -to "SevenSeg:inst13|Hex3[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[610] -to "SevenSeg:inst13|Hex3[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[611] -to "SevenSeg:inst13|Hex3[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[612] -to "SevenSeg:inst13|nRst" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[613] -to "SevenSeg:inst13|set" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[614] -to "SevenSeg:inst13|v[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[615] -to "SevenSeg:inst13|v[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[616] -to "SevenSeg:inst13|v[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[617] -to "SevenSeg:inst13|v[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[618] -to "SevenSeg:inst13|v[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[619] -to "SevenSeg:inst13|v[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[620] -to "SevenSeg:inst13|v[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[621] -to "SevenSeg:inst13|v[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[622] -to "SevenSeg:inst13|v[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[623] -to "SevenSeg:inst13|v[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[624] -to "SevenSeg:inst13|v[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[625] -to "SevenSeg:inst13|v[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[626] -to "SevenSeg:inst13|v[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[627] -to "SevenSeg:inst13|v[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[628] -to "SevenSeg:inst13|v[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[629] -to "SevenSeg:inst13|v[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[630] -to "SevenSeg:inst13|v[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[631] -to "SevenSeg:inst13|v[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[632] -to "SevenSeg:inst13|v[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[633] -to "SevenSeg:inst13|v[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[634] -to "SevenSeg:inst13|v[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[635] -to "SevenSeg:inst13|v[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[636] -to "SevenSeg:inst13|v[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[637] -to "SevenSeg:inst13|v[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[638] -to "SevenSeg:inst13|v[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[639] -to "SevenSeg:inst13|v[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[640] -to "SevenSeg:inst13|v[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[641] -to "SevenSeg:inst13|v[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[642] -to "SevenSeg:inst13|v[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[643] -to "SevenSeg:inst13|v[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[644] -to "SevenSeg:inst13|v[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[645] -to "SevenSeg:inst13|v[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[462] -to "SRAMController:inst14|address[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[463] -to "SRAMController:inst14|address[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[464] -to "SRAMController:inst14|address[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[465] -to "SRAMController:inst14|address[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[466] -to "SRAMController:inst14|address[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[467] -to "SRAMController:inst14|address[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[468] -to "SRAMController:inst14|address[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[469] -to "SRAMController:inst14|address[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[470] -to "SRAMController:inst14|address[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[471] -to "SRAMController:inst14|address[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[472] -to "SRAMController:inst14|address[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[473] -to "SRAMController:inst14|address[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[474] -to "SRAMController:inst14|address[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[475] -to "SRAMController:inst14|address[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[476] -to "SRAMController:inst14|address[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[477] -to "SRAMController:inst14|address[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[478] -to "SRAMController:inst14|address[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[479] -to "SRAMController:inst14|address[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[480] -to "SRAMController:inst14|byteena[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[481] -to "SRAMController:inst14|byteena[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[482] -to "SRAMController:inst14|byteena[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[483] -to "SRAMController:inst14|byteena[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[484] -to "SRAMController:inst14|data[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[485] -to "SRAMController:inst14|data[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[486] -to "SRAMController:inst14|data[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[487] -to "SRAMController:inst14|data[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[488] -to "SRAMController:inst14|data[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[489] -to "SRAMController:inst14|data[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[490] -to "SRAMController:inst14|data[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[491] -to "SRAMController:inst14|data[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[492] -to "SRAMController:inst14|data[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[493] -to "SRAMController:inst14|data[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[494] -to "SRAMController:inst14|data[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[495] -to "SRAMController:inst14|data[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[496] -to "SRAMController:inst14|data[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[497] -to "SRAMController:inst14|data[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[498] -to "SRAMController:inst14|data[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[499] -to "SRAMController:inst14|data[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[500] -to "SRAMController:inst14|data[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[501] -to "SRAMController:inst14|data[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[502] -to "SRAMController:inst14|data[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[503] -to "SRAMController:inst14|data[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[504] -to "SRAMController:inst14|data[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[505] -to "SRAMController:inst14|data[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[506] -to "SRAMController:inst14|data[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[507] -to "SRAMController:inst14|data[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[508] -to "SRAMController:inst14|data[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[509] -to "SRAMController:inst14|data[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[510] -to "SRAMController:inst14|data[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[511] -to "SRAMController:inst14|data[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[512] -to "SRAMController:inst14|data[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[513] -to "SRAMController:inst14|data[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[514] -to "SRAMController:inst14|data[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[515] -to "SRAMController:inst14|data[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[516] -to "SRAMController:inst14|data_out[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[517] -to "SRAMController:inst14|data_out[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[518] -to "SRAMController:inst14|data_out[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[519] -to "SRAMController:inst14|data_out[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[520] -to "SRAMController:inst14|data_out[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[521] -to "SRAMController:inst14|data_out[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[522] -to "SRAMController:inst14|data_out[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[523] -to "SRAMController:inst14|data_out[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[524] -to "SRAMController:inst14|data_out[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[525] -to "SRAMController:inst14|data_out[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[526] -to "SRAMController:inst14|data_out[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[527] -to "SRAMController:inst14|data_out[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[528] -to "SRAMController:inst14|data_out[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[529] -to "SRAMController:inst14|data_out[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[530] -to "SRAMController:inst14|data_out[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[531] -to "SRAMController:inst14|data_out[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[532] -to "SRAMController:inst14|data_out[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[533] -to "SRAMController:inst14|data_out[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[534] -to "SRAMController:inst14|data_out[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[535] -to "SRAMController:inst14|data_out[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[536] -to "SRAMController:inst14|data_out[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[537] -to "SRAMController:inst14|data_out[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[538] -to "SRAMController:inst14|data_out[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[539] -to "SRAMController:inst14|data_out[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[540] -to "SRAMController:inst14|data_out[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[541] -to "SRAMController:inst14|data_out[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[542] -to "SRAMController:inst14|data_out[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[543] -to "SRAMController:inst14|data_out[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[544] -to "SRAMController:inst14|data_out[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[545] -to "SRAMController:inst14|data_out[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[546] -to "SRAMController:inst14|data_out[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[547] -to "SRAMController:inst14|data_out[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[548] -to "SRAMController:inst14|wren" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[549] -to SRAM_A[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[550] -to SRAM_A[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[551] -to SRAM_A[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[552] -to SRAM_A[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[553] -to SRAM_A[13] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[554] -to SRAM_A[14] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[555] -to SRAM_A[15] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[556] -to SRAM_A[16] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[557] -to SRAM_A[17] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[558] -to SRAM_A[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[559] -to SRAM_A[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[560] -to SRAM_A[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[561] -to SRAM_A[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[562] -to SRAM_A[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[563] -to SRAM_A[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[564] -to SRAM_A[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[565] -to SRAM_A[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[566] -to SRAM_A[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[567] -to SRAM_D[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[568] -to SRAM_D[10] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[569] -to SRAM_D[11] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[570] -to SRAM_D[12] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[571] -to SRAM_D[13] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[572] -to SRAM_D[14] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[573] -to SRAM_D[15] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[574] -to SRAM_D[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[575] -to SRAM_D[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[576] -to SRAM_D[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[577] -to SRAM_D[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[578] -to SRAM_D[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[579] -to SRAM_D[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[580] -to SRAM_D[7] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[581] -to SRAM_D[8] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[582] -to SRAM_D[9] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[583] -to "SevenSeg:inst13|CLK" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[584] -to "SevenSeg:inst13|Hex0[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[585] -to "SevenSeg:inst13|Hex0[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[586] -to "SevenSeg:inst13|Hex0[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[587] -to "SevenSeg:inst13|Hex0[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[588] -to "SevenSeg:inst13|Hex0[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[589] -to "SevenSeg:inst13|Hex0[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[590] -to "SevenSeg:inst13|Hex0[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[591] -to "SevenSeg:inst13|Hex1[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[592] -to "SevenSeg:inst13|Hex1[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[593] -to "SevenSeg:inst13|Hex1[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[594] -to "SevenSeg:inst13|Hex1[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[595] -to "SevenSeg:inst13|Hex1[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[596] -to "SevenSeg:inst13|Hex1[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[597] -to "SevenSeg:inst13|Hex1[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[598] -to "SevenSeg:inst13|Hex2[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[599] -to "SevenSeg:inst13|Hex2[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[600] -to "SevenSeg:inst13|Hex2[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[601] -to "SevenSeg:inst13|Hex2[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[602] -to "SevenSeg:inst13|Hex2[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[603] -to "SevenSeg:inst13|Hex2[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[604] -to "SevenSeg:inst13|Hex2[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[605] -to "SevenSeg:inst13|Hex3[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[606] -to "SevenSeg:inst13|Hex3[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[607] -to "SevenSeg:inst13|Hex3[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[608] -to "SevenSeg:inst13|Hex3[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[609] -to "SevenSeg:inst13|Hex3[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[610] -to "SevenSeg:inst13|Hex3[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[611] -to "SevenSeg:inst13|Hex3[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[612] -to "SevenSeg:inst13|nRst" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[613] -to "SevenSeg:inst13|set" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[614] -to "SevenSeg:inst13|v[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[615] -to "SevenSeg:inst13|v[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[616] -to "SevenSeg:inst13|v[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[617] -to "SevenSeg:inst13|v[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[618] -to "SevenSeg:inst13|v[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[619] -to "SevenSeg:inst13|v[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[620] -to "SevenSeg:inst13|v[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[621] -to "SevenSeg:inst13|v[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[622] -to "SevenSeg:inst13|v[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[623] -to "SevenSeg:inst13|v[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[624] -to "SevenSeg:inst13|v[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[625] -to "SevenSeg:inst13|v[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[626] -to "SevenSeg:inst13|v[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[627] -to "SevenSeg:inst13|v[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[628] -to "SevenSeg:inst13|v[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[629] -to "SevenSeg:inst13|v[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[630] -to "SevenSeg:inst13|v[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[631] -to "SevenSeg:inst13|v[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[632] -to "SevenSeg:inst13|v[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[633] -to "SevenSeg:inst13|v[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[634] -to "SevenSeg:inst13|v[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[635] -to "SevenSeg:inst13|v[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[636] -to "SevenSeg:inst13|v[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[637] -to "SevenSeg:inst13|v[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[638] -to "SevenSeg:inst13|v[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[639] -to "SevenSeg:inst13|v[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[640] -to "SevenSeg:inst13|v[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[641] -to "SevenSeg:inst13|v[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[642] -to "SevenSeg:inst13|v[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[643] -to "SevenSeg:inst13|v[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[644] -to "SevenSeg:inst13|v[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_storage_qualifier_in[645] -to "SevenSeg:inst13|v[9]" -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[1] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[2] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[7] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[8] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[9] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[10] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[17] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[19] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[25] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[30] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Including default assignments
	set_global_assignment -name REVISION_TYPE BASE -family "Cyclone V"
	set_global_assignment -name TIMING_ANALYZER_MULTICORNER_ANALYSIS ON -family "Cyclone V"
	set_global_assignment -name TIMING_ANALYZER_REPORT_WORST_CASE_TIMING_PATHS OFF -family "Cyclone V"
	set_global_assignment -name TIMING_ANALYZER_CCPP_TRADEOFF_TOLERANCE 0 -family "Cyclone V"
	set_global_assignment -name TDC_CCPP_TRADEOFF_TOLERANCE 30 -family "Cyclone V"
	set_global_assignment -name TIMING_ANALYZER_DO_CCPP_REMOVAL ON -family "Cyclone V"
	set_global_assignment -name DISABLE_LEGACY_TIMING_ANALYZER OFF -family "Cyclone V"
	set_global_assignment -name SYNCHRONIZATION_REGISTER_CHAIN_LENGTH 3 -family "Cyclone V"
	set_global_assignment -name SYNTH_RESOURCE_AWARE_INFERENCE_FOR_BLOCK_RAM ON -family "Cyclone V"
	set_global_assignment -name AUTO_DELAY_CHAINS ON -family "Cyclone V"
	set_global_assignment -name ADVANCED_PHYSICAL_OPTIMIZATION ON -family "Cyclone V"

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
