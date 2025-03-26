module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @dotprod(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr, %arg6: !llvm.ptr, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64) -> !llvm.struct<(ptr, ptr, i64)> {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %13 = llvm.insertvalue %arg10, %12[0] : !llvm.struct<(ptr, ptr, i64)> 
    %14 = llvm.insertvalue %arg11, %13[1] : !llvm.struct<(ptr, ptr, i64)> 
    %15 = llvm.insertvalue %arg12, %14[2] : !llvm.struct<(ptr, ptr, i64)> 
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.zero : !llvm.ptr
    %19 = llvm.getelementptr %18[1] : (!llvm.ptr) -> !llvm.ptr, i32
    %20 = llvm.ptrtoint %19 : !llvm.ptr to i64
    %21 = llvm.mlir.constant(64 : index) : i64
    %22 = llvm.add %20, %21  : i64
    %23 = llvm.call @malloc(%22) : (i64) -> !llvm.ptr
    %24 = llvm.ptrtoint %23 : !llvm.ptr to i64
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.sub %21, %25  : i64
    %27 = llvm.add %24, %26  : i64
    %28 = llvm.urem %27, %21  : i64
    %29 = llvm.sub %27, %28  : i64
    %30 = llvm.inttoptr %29 : i64 to !llvm.ptr
    %31 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64)>
    %32 = llvm.insertvalue %23, %31[0] : !llvm.struct<(ptr, ptr, i64)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr, ptr, i64)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr, ptr, i64)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mlir.zero : !llvm.ptr
    %38 = llvm.getelementptr %37[1] : (!llvm.ptr) -> !llvm.ptr, i32
    %39 = llvm.ptrtoint %38 : !llvm.ptr to i64
    %40 = llvm.mul %39, %36  : i64
    %41 = llvm.getelementptr %arg11[%arg12] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %42 = llvm.getelementptr %30[%34] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    "llvm.intr.memcpy"(%42, %41, %40) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.extractvalue %4[3] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.alloca %43 x !llvm.array<1 x i64> : (i64) -> !llvm.ptr
    llvm.store %44, %45 : !llvm.array<1 x i64>, !llvm.ptr
    %46 = llvm.getelementptr %45[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x i64>
    %47 = llvm.load %46 : !llvm.ptr -> i64
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.mlir.constant(4 : index) : i64
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.mlir.constant(-1 : index) : i64
    %52 = llvm.icmp "slt" %47, %50 : i64
    %53 = llvm.sub %51, %47  : i64
    %54 = llvm.select %52, %53, %47 : i1, i64
    %55 = llvm.sdiv %54, %49  : i64
    %56 = llvm.sub %51, %55  : i64
    %57 = llvm.select %52, %56, %55 : i1, i64
    %58 = llvm.mlir.constant(4 : index) : i64
    %59 = llvm.mul %57, %58  : i64
    %60 = llvm.mlir.constant(4 : index) : i64
    llvm.br ^bb1(%48 : i64)
  ^bb1(%61: i64):  // 2 preds: ^bb0, ^bb2
    %62 = llvm.icmp "slt" %61, %59 : i64
    llvm.cond_br %62, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %63 = llvm.getelementptr %arg1[%61] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %64 = llvm.load %63 : !llvm.ptr -> i32
    %65 = llvm.getelementptr %arg6[%61] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %66 = llvm.load %65 : !llvm.ptr -> i32
    %67 = llvm.load %30 : !llvm.ptr -> i32
    %68 = llvm.mul %64, %66  : i32
    %69 = llvm.add %68, %67  : i32
    llvm.store %69, %30 : i32, !llvm.ptr
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.add %61, %70  : i64
    %72 = llvm.getelementptr %arg1[%71] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %73 = llvm.load %72 : !llvm.ptr -> i32
    %74 = llvm.getelementptr %arg6[%71] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %75 = llvm.load %74 : !llvm.ptr -> i32
    %76 = llvm.load %30 : !llvm.ptr -> i32
    %77 = llvm.mul %73, %75  : i32
    %78 = llvm.add %77, %76  : i32
    llvm.store %78, %30 : i32, !llvm.ptr
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.add %61, %79  : i64
    %81 = llvm.getelementptr %arg1[%80] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %82 = llvm.load %81 : !llvm.ptr -> i32
    %83 = llvm.getelementptr %arg6[%80] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %84 = llvm.load %83 : !llvm.ptr -> i32
    %85 = llvm.load %30 : !llvm.ptr -> i32
    %86 = llvm.mul %82, %84  : i32
    %87 = llvm.add %86, %85  : i32
    llvm.store %87, %30 : i32, !llvm.ptr
    %88 = llvm.mlir.constant(3 : index) : i64
    %89 = llvm.add %61, %88  : i64
    %90 = llvm.getelementptr %arg1[%89] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %91 = llvm.load %90 : !llvm.ptr -> i32
    %92 = llvm.getelementptr %arg6[%89] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %93 = llvm.load %92 : !llvm.ptr -> i32
    %94 = llvm.load %30 : !llvm.ptr -> i32
    %95 = llvm.mul %91, %93  : i32
    %96 = llvm.add %95, %94  : i32
    llvm.store %96, %30 : i32, !llvm.ptr
    %97 = llvm.add %61, %60  : i64
    llvm.br ^bb1(%97 : i64)
  ^bb3:  // pred: ^bb1
    %98 = llvm.mlir.constant(4 : index) : i64
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(-1 : index) : i64
    %101 = llvm.icmp "slt" %47, %99 : i64
    %102 = llvm.sub %100, %47  : i64
    %103 = llvm.select %101, %102, %47 : i1, i64
    %104 = llvm.sdiv %103, %98  : i64
    %105 = llvm.sub %100, %104  : i64
    %106 = llvm.select %101, %105, %104 : i1, i64
    %107 = llvm.mlir.constant(4 : index) : i64
    %108 = llvm.mul %106, %107  : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%108 : i64)
  ^bb4(%110: i64):  // 2 preds: ^bb3, ^bb5
    %111 = llvm.icmp "slt" %110, %47 : i64
    llvm.cond_br %111, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %112 = llvm.getelementptr %arg1[%110] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %113 = llvm.load %112 : !llvm.ptr -> i32
    %114 = llvm.getelementptr %arg6[%110] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %115 = llvm.load %114 : !llvm.ptr -> i32
    %116 = llvm.load %30 : !llvm.ptr -> i32
    %117 = llvm.mul %113, %115  : i32
    %118 = llvm.add %117, %116  : i32
    llvm.store %118, %30 : i32, !llvm.ptr
    %119 = llvm.add %110, %109  : i64
    llvm.br ^bb4(%119 : i64)
  ^bb6:  // pred: ^bb4
    llvm.return %35 : !llvm.struct<(ptr, ptr, i64)>
  }
}

