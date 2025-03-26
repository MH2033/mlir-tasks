## Lowering to LLVM Dialect

1. **`--lower-vecvec`**:
  - This pass lowers vector-vector operations to the Linalg dialect by translating it to the corresponding `linalg.generic` equivalent, enabling further optimizations and transformations within the MLIR framework.

The rest of transformation passes are similar to task 2 and 3

## Generating LLVM IR

After lowering the MLIR file to the LLVM dialect, the script uses the following command to generate LLVM IR:

- **`mlir-translate --mlir-to-llvmir`**:
  - Translates the MLIR file in the LLVM dialect (`vecvec_lowered.mlir`) into LLVM IR (`vecvec.ll`).
  - This step produces the final LLVM IR representation, which can be used for further compilation or execution.

## Output

- **`vecvec_lowered.mlir`**: The MLIR file after lowering to the LLVM dialect.
- **`vecvec.ll`**: The generated LLVM IR file.
