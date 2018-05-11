#!/bin/bash

THIS_SCRIPT_DIR=`dirname $0`

python $THIS_SCRIPT_DIR/../train_model.py \
  --model_type EE \
  --feature_dim=3,64,64 \
  --num_iterations=50000 \
  --checkpoint_every 100 \
  --record_loss_every 10 \
  --num_val_samples 1000 \
  --optimizer Adam \
  --learning_rate 1e-4 \
  --use_coords 1 \
  --module_stem_batchnorm 1 \
  --module_stem_num_layers 6 \
  --module_stem_subsample_layers 1,3 \
  --module_intermediate_batchnorm 0 \
  --module_batchnorm 0 \
  --module_dim 64 \
  --classifier_batchnorm 1 \
  --weight_decay 1e-5 \
  --classifier_downsample maxpoolfull \
  --classifier_proj_dim 512 \
  --program_generator_parameter_efficient 1 $@
