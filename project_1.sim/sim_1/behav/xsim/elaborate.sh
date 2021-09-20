#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Sep 20 12:04:04 -03 2021
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 4d856cff516c417f924a0eecca1f263a --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot circuito_tb_behav xil_defaultlib.circuito_tb -log elaborate.log"
xelab -wto 4d856cff516c417f924a0eecca1f263a --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot circuito_tb_behav xil_defaultlib.circuito_tb -log elaborate.log

