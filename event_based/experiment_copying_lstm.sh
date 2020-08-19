#!/bin/bash
echo Running on $HOSTNAME
lr=.001
dim1=$1
em=$1
drop=0.5
log=100
memory_slot=1
memory_heads=1
memory_size_head=1
gate_style='unit'
name="Blocks_Copying/LSTM_"$dim1"_"$em"_FALSE_"$drop"_"$lr"_"$log
name="${name//./}"
echo Running version $name
python3 train_copying.py --cuda --cudnn --algo lstm --name $name --lr $lr --drop $drop --nhid $dim1 --nlayers 1 --emsize $em --log-interval $log
