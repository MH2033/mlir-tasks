#! /bin/bash

#Lower to LLVM dialect
../task4/mlir-linalg-extended/build/bin/linalgext-opt ./vecvec.mlir \
        --lower-vecvec \
        --linalg-bufferize \
        --func-bufferize \
        --convert-linalg-to-affine-loops \
        --affine-loop-unroll \
        -lower-affine \
        --convert-scf-to-cf \
        --convert-arith-to-llvm \
        --convert-func-to-llvm \
        --finalize-memref-to-llvm \
        --reconcile-unrealized-casts \
        -o vecvec_lowered.mlir

#Generate LLVM IR from the lowered mlir
mlir-translate --mlir-to-llvmir vecvec_lowered.mlir -o vecvec.ll