## Mapping
Mapping refers to how the computation is distributed. In MLIR, mapping is often achieved by specifying how loops or operations are partitioned and executed. For example:
- **Parallel Mapping**: Loops can be distributed across multiple threads or processing units.
- **Reduction Mapping**: Loops are marked for reduction, where intermediate results are accumulated into a final value and there is loop carried dependecy involved.

Mapping is crucial for performance optimization, as it determines how well the computation utilizes the underlying hardware.

## Iterator Types
iterator types define the behavior of loops in structured operations like `linalg.generic`. The two primary iterator types are:
- **Parallel**: Indicates that the loop iterations are independent and can be executed in parallel. For example, iterating over rows or columns of a matrix.
- **Reduction**: Indicates that the loop performs a reduction operation, such as summing up partial results. This is used for the inner loop of matrix multiplication.

For `linalg.generic`, the outer loops (over rows and columns) are typically `parallel`, while the innermost loop (over the shared dimension) is a `reduction`.

## Compute Region
The compute region in `linalg.generic` defines the actual computation performed within the operation. The compute region specifies how elements of the input matrices are combined to produce the output matrix. It is expressed as:
```mlir
C[i, j] += A[i, k] * B[k, j]