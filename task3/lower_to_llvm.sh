#! /bin/bash

#Lower to LLVM dialect
mlir-opt ../task2/matmul_transformed.mlir \
        -lower-affine \
        --convert-scf-to-cf \
        --convert-arith-to-llvm \
        --convert-func-to-llvm \
        --finalize-memref-to-llvm \
        --reconcile-unrealized-casts \
        -o matmul_lowered.mlir

#Generate LLVM IR from the lowered mlir
mlir-translate --mlir-to-llvmir matmul_lowered.mlir -o matmul.ll