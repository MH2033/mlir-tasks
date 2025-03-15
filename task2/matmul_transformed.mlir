#map = affine_map<()[s0] -> ((s0 floordiv 4) * 4)>
#map1 = affine_map<(d0) -> (d0 + 1)>
#map2 = affine_map<(d0) -> (d0 + 2)>
#map3 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @matmul(%arg0: memref<?x?xi32>, %arg1: memref<?x?xi32>, %arg2: memref<?x?xi32>) -> memref<?x?xi32> attributes {llvm.emit_c_interface} {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %dim = memref.dim %arg2, %c0 : memref<?x?xi32>
    %dim_0 = memref.dim %arg2, %c1 : memref<?x?xi32>
    %alloc = memref.alloc(%dim, %dim_0) {alignment = 64 : i64} : memref<?x?xi32>
    memref.copy %arg2, %alloc : memref<?x?xi32> to memref<?x?xi32>
    %dim_1 = memref.dim %arg0, %c0 : memref<?x?xi32>
    %dim_2 = memref.dim %arg0, %c1 : memref<?x?xi32>
    %dim_3 = memref.dim %arg1, %c1 : memref<?x?xi32>
    affine.for %arg3 = 0 to %dim_1 {
      affine.for %arg4 = 0 to %dim_3 {
        affine.for %arg5 = 0 to #map()[%dim_2] step 4 {
          %0 = affine.load %arg0[%arg3, %arg5] : memref<?x?xi32>
          %1 = affine.load %arg1[%arg5, %arg4] : memref<?x?xi32>
          %2 = affine.load %alloc[%arg3, %arg4] : memref<?x?xi32>
          %3 = arith.muli %0, %1 : i32
          %4 = arith.addi %2, %3 : i32
          affine.store %4, %alloc[%arg3, %arg4] : memref<?x?xi32>
          %5 = affine.apply #map1(%arg5)
          %6 = affine.load %arg0[%arg3, %5] : memref<?x?xi32>
          %7 = affine.load %arg1[%5, %arg4] : memref<?x?xi32>
          %8 = affine.load %alloc[%arg3, %arg4] : memref<?x?xi32>
          %9 = arith.muli %6, %7 : i32
          %10 = arith.addi %8, %9 : i32
          affine.store %10, %alloc[%arg3, %arg4] : memref<?x?xi32>
          %11 = affine.apply #map2(%arg5)
          %12 = affine.load %arg0[%arg3, %11] : memref<?x?xi32>
          %13 = affine.load %arg1[%11, %arg4] : memref<?x?xi32>
          %14 = affine.load %alloc[%arg3, %arg4] : memref<?x?xi32>
          %15 = arith.muli %12, %13 : i32
          %16 = arith.addi %14, %15 : i32
          affine.store %16, %alloc[%arg3, %arg4] : memref<?x?xi32>
          %17 = affine.apply #map3(%arg5)
          %18 = affine.load %arg0[%arg3, %17] : memref<?x?xi32>
          %19 = affine.load %arg1[%17, %arg4] : memref<?x?xi32>
          %20 = affine.load %alloc[%arg3, %arg4] : memref<?x?xi32>
          %21 = arith.muli %18, %19 : i32
          %22 = arith.addi %20, %21 : i32
          affine.store %22, %alloc[%arg3, %arg4] : memref<?x?xi32>
        }
        affine.for %arg5 = #map()[%dim_2] to %dim_2 {
          %0 = affine.load %arg0[%arg3, %arg5] : memref<?x?xi32>
          %1 = affine.load %arg1[%arg5, %arg4] : memref<?x?xi32>
          %2 = affine.load %alloc[%arg3, %arg4] : memref<?x?xi32>
          %3 = arith.muli %0, %1 : i32
          %4 = arith.addi %2, %3 : i32
          affine.store %4, %alloc[%arg3, %arg4] : memref<?x?xi32>
        }
      }
    }
    return %alloc : memref<?x?xi32>
  }
}

