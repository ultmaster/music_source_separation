#!/bin/bash
WORKSPACE=${1:-"./workspaces/bytesep"}  # The first argument is workspace directory.

echo "WORKSPACE=${WORKSPACE}"

# Users can modify the following config file.
TRAIN_CONFIG_YAML="./scripts/4_train/musdb18/configs/vocals-accompaniment,mobilenet_subbandtime.yaml"

# Train & evaluate & save checkpoints.
CUDA_VISIBLE_DEVICES=0 python3 bytesep/train.py train \
    --workspace=$WORKSPACE \
    --gpus=1 \
    --config_yaml=$TRAIN_CONFIG_YAML
