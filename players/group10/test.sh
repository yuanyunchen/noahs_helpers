#!/bin/bash

################################################################################
# Test Configuration

# Player to test (10 = group10)
PLAYER="10"

# Number of helpers
NUM_HELPERS=20

# Animal populations (space-separated list)
# ANIMALS="10 20 40 60 80 100 120 140 160 180"
# ANIMALS="10 20 20 20 40 40 40 60 60 60"
ANIMALS="2 4 6 8 10 12 14 16 18 20"

# Ark position (X Y coordinates)
ARK_X=850
ARK_Y=130

# Simulation duration (turns)
TIME=4000

# Random seed for reproducibility
SEED=4444

# Enable GUI (true/false)
GUI="true"

################################################################################
if [ "$GUI" = "true" ]; then
    uv run main.py \
        --player "$PLAYER" \
        --num_helpers "$NUM_HELPERS" \
        --animals $ANIMALS \
        --ark "$ARK_X" "$ARK_Y" \
        -T "$TIME" \
        --seed "$SEED" \
        --gui
else
    uv run main.py \
        --player "$PLAYER" \
        --num_helpers "$NUM_HELPERS" \
        --animals $ANIMALS \
        --ark "$ARK_X" "$ARK_Y" \
        -T "$TIME" \
        --seed "$SEED"
fi



