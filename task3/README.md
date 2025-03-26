## Lowering to LLVM Dialect

1. **`-lower-affine`**:
  - This pass lowers operations in the Affine dialect to a combination of Standard MLIR dialects, such as SCF (Structured Control Flow) and Arith (Arithmetic).
  - It eliminates affine constructs like loops and maps, converting them into more generic representations.

2. **`--convert-scf-to-cf`**:
  - Converts SCF (Structured Control Flow) operations into CF (Control Flow) operations.
  - This pass simplifies structured control flow constructs into lower-level control flow constructs like branches and conditionals.

3. **`--convert-arith-to-llvm`**:
  - Lowers operations in the Arith dialect to equivalent LLVM dialect operations.
  - This step ensures that arithmetic operations are compatible with the LLVM dialect.

4. **`--convert-func-to-llvm`**:
  - Converts functions in the Func dialect to the LLVM dialect.
  - This includes transforming function signatures and calls to be compatible with LLVM IR.

5. **`--finalize-memref-to-llvm`**:
  - Finalizes the conversion of MemRef operations to LLVM-compatible operations.
  - This ensures that memory-related constructs are fully lowered to the LLVM dialect.

6. **`--reconcile-unrealized-casts`**:
  - Resolves any unrealized cast operations that may have been introduced during the lowering process.
  - This pass ensures that all intermediate casts are properly reconciled and no unresolved operations remain.

## Generating LLVM IR

After lowering the MLIR file to the LLVM dialect, the script uses the following command to generate LLVM IR:

- **`mlir-translate --mlir-to-llvmir`**:
  - Translates the MLIR file in the LLVM dialect (`matmul_lowered.mlir`) into LLVM IR (`matmul.ll`).
  - This step produces the final LLVM IR representation, which can be used for further compilation or execution.

## Output

- **`matmul_lowered.mlir`**: The MLIR file after lowering to the LLVM dialect.
- **`matmul.ll`**: The generated LLVM IR file.
