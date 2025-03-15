#! /bin/bash

# Lower the the .mlir to affine and apply the loop-unroll transformation on it
mlir-opt ../task1/matmul.mlir \
        --linalg-bufferize \
        --func-bufferize \
        --convert-linalg-to-affine-loops \
        --affine-loop-unroll \
        -o matmul_transformed.mlir