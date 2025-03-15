module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @matmul(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr, %arg15: !llvm.ptr, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg14, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg16, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg19, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg20, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.extractvalue %22[3] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.alloca %26 x !llvm.array<2 x i64> : (i64) -> !llvm.ptr
    llvm.store %27, %28 : !llvm.array<2 x i64>, !llvm.ptr
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i64>
    %30 = llvm.load %29 : !llvm.ptr -> i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.extractvalue %22[3] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.alloca %31 x !llvm.array<2 x i64> : (i64) -> !llvm.ptr
    llvm.store %32, %33 : !llvm.array<2 x i64>, !llvm.ptr
    %34 = llvm.getelementptr %33[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i64>
    %35 = llvm.load %34 : !llvm.ptr -> i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mul %35, %30  : i64
    %38 = llvm.mlir.zero : !llvm.ptr
    %39 = llvm.getelementptr %38[%37] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %40 = llvm.ptrtoint %39 : !llvm.ptr to i64
    %41 = llvm.mlir.constant(64 : index) : i64
    %42 = llvm.add %40, %41  : i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr
    %44 = llvm.ptrtoint %43 : !llvm.ptr to i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.sub %41, %45  : i64
    %47 = llvm.add %44, %46  : i64
    %48 = llvm.urem %47, %41  : i64
    %49 = llvm.sub %47, %48  : i64
    %50 = llvm.inttoptr %49 : i64 to !llvm.ptr
    %51 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %52 = llvm.insertvalue %43, %51[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.insertvalue %54, %53[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.insertvalue %30, %55[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.insertvalue %35, %56[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.insertvalue %35, %57[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.insertvalue %36, %58[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mul %arg17, %60  : i64
    %62 = llvm.mul %61, %arg18  : i64
    %63 = llvm.mlir.zero : !llvm.ptr
    %64 = llvm.getelementptr %63[1] : (!llvm.ptr) -> !llvm.ptr, i32
    %65 = llvm.ptrtoint %64 : !llvm.ptr to i64
    %66 = llvm.mul %62, %65  : i64
    %67 = llvm.getelementptr %arg15[%arg16] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %68 = llvm.getelementptr %50[%54] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    "llvm.intr.memcpy"(%68, %67, %66) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.extractvalue %6[3] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.alloca %69 x !llvm.array<2 x i64> : (i64) -> !llvm.ptr
    llvm.store %70, %71 : !llvm.array<2 x i64>, !llvm.ptr
    %72 = llvm.getelementptr %71[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i64>
    %73 = llvm.load %72 : !llvm.ptr -> i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.extractvalue %6[3] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.alloca %74 x !llvm.array<2 x i64> : (i64) -> !llvm.ptr
    llvm.store %75, %76 : !llvm.array<2 x i64>, !llvm.ptr
    %77 = llvm.getelementptr %76[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i64>
    %78 = llvm.load %77 : !llvm.ptr -> i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.extractvalue %14[3] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.alloca %79 x !llvm.array<2 x i64> : (i64) -> !llvm.ptr
    llvm.store %80, %81 : !llvm.array<2 x i64>, !llvm.ptr
    %82 = llvm.getelementptr %81[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x i64>
    %83 = llvm.load %82 : !llvm.ptr -> i64
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%84 : i64)
  ^bb1(%86: i64):  // 2 preds: ^bb0, ^bb11
    %87 = llvm.icmp "slt" %86, %73 : i64
    llvm.cond_br %87, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%88 : i64)
  ^bb3(%90: i64):  // 2 preds: ^bb2, ^bb10
    %91 = llvm.icmp "slt" %90, %83 : i64
    llvm.cond_br %91, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.mlir.constant(4 : index) : i64
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(-1 : index) : i64
    %96 = llvm.icmp "slt" %78, %94 : i64
    %97 = llvm.sub %95, %78  : i64
    %98 = llvm.select %96, %97, %78 : i1, i64
    %99 = llvm.sdiv %98, %93  : i64
    %100 = llvm.sub %95, %99  : i64
    %101 = llvm.select %96, %100, %99 : i1, i64
    %102 = llvm.mlir.constant(4 : index) : i64
    %103 = llvm.mul %101, %102  : i64
    %104 = llvm.mlir.constant(4 : index) : i64
    llvm.br ^bb5(%92 : i64)
  ^bb5(%105: i64):  // 2 preds: ^bb4, ^bb6
    %106 = llvm.icmp "slt" %105, %103 : i64
    llvm.cond_br %106, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %107 = llvm.mul %86, %arg5  : i64
    %108 = llvm.add %107, %105  : i64
    %109 = llvm.getelementptr %arg1[%108] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %110 = llvm.load %109 : !llvm.ptr -> i32
    %111 = llvm.mul %105, %arg12  : i64
    %112 = llvm.add %111, %90  : i64
    %113 = llvm.getelementptr %arg8[%112] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %114 = llvm.load %113 : !llvm.ptr -> i32
    %115 = llvm.mul %86, %35  : i64
    %116 = llvm.add %115, %90  : i64
    %117 = llvm.getelementptr %50[%116] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %118 = llvm.load %117 : !llvm.ptr -> i32
    %119 = llvm.mul %110, %114  : i32
    %120 = llvm.add %118, %119  : i32
    %121 = llvm.mul %86, %35  : i64
    %122 = llvm.add %121, %90  : i64
    %123 = llvm.getelementptr %50[%122] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %120, %123 : i32, !llvm.ptr
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.add %105, %124  : i64
    %126 = llvm.mul %86, %arg5  : i64
    %127 = llvm.add %126, %125  : i64
    %128 = llvm.getelementptr %arg1[%127] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %129 = llvm.load %128 : !llvm.ptr -> i32
    %130 = llvm.mul %125, %arg12  : i64
    %131 = llvm.add %130, %90  : i64
    %132 = llvm.getelementptr %arg8[%131] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %133 = llvm.load %132 : !llvm.ptr -> i32
    %134 = llvm.mul %86, %35  : i64
    %135 = llvm.add %134, %90  : i64
    %136 = llvm.getelementptr %50[%135] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %137 = llvm.load %136 : !llvm.ptr -> i32
    %138 = llvm.mul %129, %133  : i32
    %139 = llvm.add %137, %138  : i32
    %140 = llvm.mul %86, %35  : i64
    %141 = llvm.add %140, %90  : i64
    %142 = llvm.getelementptr %50[%141] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %139, %142 : i32, !llvm.ptr
    %143 = llvm.mlir.constant(2 : index) : i64
    %144 = llvm.add %105, %143  : i64
    %145 = llvm.mul %86, %arg5  : i64
    %146 = llvm.add %145, %144  : i64
    %147 = llvm.getelementptr %arg1[%146] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %148 = llvm.load %147 : !llvm.ptr -> i32
    %149 = llvm.mul %144, %arg12  : i64
    %150 = llvm.add %149, %90  : i64
    %151 = llvm.getelementptr %arg8[%150] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %152 = llvm.load %151 : !llvm.ptr -> i32
    %153 = llvm.mul %86, %35  : i64
    %154 = llvm.add %153, %90  : i64
    %155 = llvm.getelementptr %50[%154] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %156 = llvm.load %155 : !llvm.ptr -> i32
    %157 = llvm.mul %148, %152  : i32
    %158 = llvm.add %156, %157  : i32
    %159 = llvm.mul %86, %35  : i64
    %160 = llvm.add %159, %90  : i64
    %161 = llvm.getelementptr %50[%160] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %158, %161 : i32, !llvm.ptr
    %162 = llvm.mlir.constant(3 : index) : i64
    %163 = llvm.add %105, %162  : i64
    %164 = llvm.mul %86, %arg5  : i64
    %165 = llvm.add %164, %163  : i64
    %166 = llvm.getelementptr %arg1[%165] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %167 = llvm.load %166 : !llvm.ptr -> i32
    %168 = llvm.mul %163, %arg12  : i64
    %169 = llvm.add %168, %90  : i64
    %170 = llvm.getelementptr %arg8[%169] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %171 = llvm.load %170 : !llvm.ptr -> i32
    %172 = llvm.mul %86, %35  : i64
    %173 = llvm.add %172, %90  : i64
    %174 = llvm.getelementptr %50[%173] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %175 = llvm.load %174 : !llvm.ptr -> i32
    %176 = llvm.mul %167, %171  : i32
    %177 = llvm.add %175, %176  : i32
    %178 = llvm.mul %86, %35  : i64
    %179 = llvm.add %178, %90  : i64
    %180 = llvm.getelementptr %50[%179] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %177, %180 : i32, !llvm.ptr
    %181 = llvm.add %105, %104  : i64
    llvm.br ^bb5(%181 : i64)
  ^bb7:  // pred: ^bb5
    %182 = llvm.mlir.constant(4 : index) : i64
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(-1 : index) : i64
    %185 = llvm.icmp "slt" %78, %183 : i64
    %186 = llvm.sub %184, %78  : i64
    %187 = llvm.select %185, %186, %78 : i1, i64
    %188 = llvm.sdiv %187, %182  : i64
    %189 = llvm.sub %184, %188  : i64
    %190 = llvm.select %185, %189, %188 : i1, i64
    %191 = llvm.mlir.constant(4 : index) : i64
    %192 = llvm.mul %190, %191  : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb8(%192 : i64)
  ^bb8(%194: i64):  // 2 preds: ^bb7, ^bb9
    %195 = llvm.icmp "slt" %194, %78 : i64
    llvm.cond_br %195, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %196 = llvm.mul %86, %arg5  : i64
    %197 = llvm.add %196, %194  : i64
    %198 = llvm.getelementptr %arg1[%197] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %199 = llvm.load %198 : !llvm.ptr -> i32
    %200 = llvm.mul %194, %arg12  : i64
    %201 = llvm.add %200, %90  : i64
    %202 = llvm.getelementptr %arg8[%201] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %203 = llvm.load %202 : !llvm.ptr -> i32
    %204 = llvm.mul %86, %35  : i64
    %205 = llvm.add %204, %90  : i64
    %206 = llvm.getelementptr %50[%205] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %207 = llvm.load %206 : !llvm.ptr -> i32
    %208 = llvm.mul %199, %203  : i32
    %209 = llvm.add %207, %208  : i32
    %210 = llvm.mul %86, %35  : i64
    %211 = llvm.add %210, %90  : i64
    %212 = llvm.getelementptr %50[%211] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %209, %212 : i32, !llvm.ptr
    %213 = llvm.add %194, %193  : i64
    llvm.br ^bb8(%213 : i64)
  ^bb10:  // pred: ^bb8
    %214 = llvm.add %90, %89  : i64
    llvm.br ^bb3(%214 : i64)
  ^bb11:  // pred: ^bb3
    %215 = llvm.add %86, %85  : i64
    llvm.br ^bb1(%215 : i64)
  ^bb12:  // pred: ^bb1
    llvm.return %59 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
  }
  llvm.func @_mlir_ciface_matmul(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: !llvm.ptr) attributes {llvm.emit_c_interface} {
    %0 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.load %arg3 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.extractvalue %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.extractvalue %16[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.extractvalue %16[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.extractvalue %16[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.extractvalue %16[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.extractvalue %16[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.extractvalue %16[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.call @matmul(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.store %24, %arg0 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    llvm.return
  }
}

