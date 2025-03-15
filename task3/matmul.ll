; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @matmul(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20) {
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %0, 0
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, ptr %1, 1
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %23, i64 %2, 2
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, i64 %3, 3, 0
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 %5, 4, 0
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, i64 %4, 3, 1
  %28 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, i64 %6, 4, 1
  %29 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %7, 0
  %30 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, ptr %8, 1
  %31 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %30, i64 %9, 2
  %32 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, i64 %10, 3, 0
  %33 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, i64 %12, 4, 0
  %34 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, i64 %11, 3, 1
  %35 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %34, i64 %13, 4, 1
  %36 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %14, 0
  %37 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %36, ptr %15, 1
  %38 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, i64 %16, 2
  %39 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %38, i64 %17, 3, 0
  %40 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %39, i64 %19, 4, 0
  %41 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, i64 %18, 3, 1
  %42 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, i64 %20, 4, 1
  %43 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 3
  %44 = alloca [2 x i64], i64 1, align 8
  store [2 x i64] %43, ptr %44, align 4
  %45 = getelementptr [2 x i64], ptr %44, i32 0, i32 0
  %46 = load i64, ptr %45, align 4
  %47 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 3
  %48 = alloca [2 x i64], i64 1, align 8
  store [2 x i64] %47, ptr %48, align 4
  %49 = getelementptr [2 x i64], ptr %48, i32 0, i32 1
  %50 = load i64, ptr %49, align 4
  %51 = mul i64 %50, %46
  %52 = getelementptr i32, ptr null, i64 %51
  %53 = ptrtoint ptr %52 to i64
  %54 = add i64 %53, 64
  %55 = call ptr @malloc(i64 %54)
  %56 = ptrtoint ptr %55 to i64
  %57 = add i64 %56, 63
  %58 = urem i64 %57, 64
  %59 = sub i64 %57, %58
  %60 = inttoptr i64 %59 to ptr
  %61 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %55, 0
  %62 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %61, ptr %60, 1
  %63 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %62, i64 0, 2
  %64 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %63, i64 %46, 3, 0
  %65 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %64, i64 %50, 3, 1
  %66 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %65, i64 %50, 4, 0
  %67 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %66, i64 1, 4, 1
  %68 = mul i64 %17, 1
  %69 = mul i64 %68, %18
  %70 = mul i64 %69, ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64)
  %71 = getelementptr i32, ptr %15, i64 %16
  %72 = getelementptr i32, ptr %60, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %72, ptr %71, i64 %70, i1 false)
  %73 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, 3
  %74 = alloca [2 x i64], i64 1, align 8
  store [2 x i64] %73, ptr %74, align 4
  %75 = getelementptr [2 x i64], ptr %74, i32 0, i32 0
  %76 = load i64, ptr %75, align 4
  %77 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, 3
  %78 = alloca [2 x i64], i64 1, align 8
  store [2 x i64] %77, ptr %78, align 4
  %79 = getelementptr [2 x i64], ptr %78, i32 0, i32 1
  %80 = load i64, ptr %79, align 4
  %81 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %34, 3
  %82 = alloca [2 x i64], i64 1, align 8
  store [2 x i64] %81, ptr %82, align 4
  %83 = getelementptr [2 x i64], ptr %82, i32 0, i32 1
  %84 = load i64, ptr %83, align 4
  br label %85

85:                                               ; preds = %208, %21
  %86 = phi i64 [ %209, %208 ], [ 0, %21 ]
  %87 = icmp slt i64 %86, %76
  br i1 %87, label %88, label %210

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %206, %88
  %90 = phi i64 [ %207, %206 ], [ 0, %88 ]
  %91 = icmp slt i64 %90, %84
  br i1 %91, label %92, label %208

92:                                               ; preds = %89
  %93 = icmp slt i64 %80, 0
  %94 = sub i64 -1, %80
  %95 = select i1 %93, i64 %94, i64 %80
  %96 = sdiv i64 %95, 4
  %97 = sub i64 -1, %96
  %98 = select i1 %93, i64 %97, i64 %96
  %99 = mul i64 %98, 4
  br label %100

100:                                              ; preds = %103, %92
  %101 = phi i64 [ %175, %103 ], [ 0, %92 ]
  %102 = icmp slt i64 %101, %99
  br i1 %102, label %103, label %176

103:                                              ; preds = %100
  %104 = mul i64 %86, %5
  %105 = add i64 %104, %101
  %106 = getelementptr i32, ptr %1, i64 %105
  %107 = load i32, ptr %106, align 4
  %108 = mul i64 %101, %12
  %109 = add i64 %108, %90
  %110 = getelementptr i32, ptr %8, i64 %109
  %111 = load i32, ptr %110, align 4
  %112 = mul i64 %86, %50
  %113 = add i64 %112, %90
  %114 = getelementptr i32, ptr %60, i64 %113
  %115 = load i32, ptr %114, align 4
  %116 = mul i32 %107, %111
  %117 = add i32 %115, %116
  %118 = mul i64 %86, %50
  %119 = add i64 %118, %90
  %120 = getelementptr i32, ptr %60, i64 %119
  store i32 %117, ptr %120, align 4
  %121 = add i64 %101, 1
  %122 = mul i64 %86, %5
  %123 = add i64 %122, %121
  %124 = getelementptr i32, ptr %1, i64 %123
  %125 = load i32, ptr %124, align 4
  %126 = mul i64 %121, %12
  %127 = add i64 %126, %90
  %128 = getelementptr i32, ptr %8, i64 %127
  %129 = load i32, ptr %128, align 4
  %130 = mul i64 %86, %50
  %131 = add i64 %130, %90
  %132 = getelementptr i32, ptr %60, i64 %131
  %133 = load i32, ptr %132, align 4
  %134 = mul i32 %125, %129
  %135 = add i32 %133, %134
  %136 = mul i64 %86, %50
  %137 = add i64 %136, %90
  %138 = getelementptr i32, ptr %60, i64 %137
  store i32 %135, ptr %138, align 4
  %139 = add i64 %101, 2
  %140 = mul i64 %86, %5
  %141 = add i64 %140, %139
  %142 = getelementptr i32, ptr %1, i64 %141
  %143 = load i32, ptr %142, align 4
  %144 = mul i64 %139, %12
  %145 = add i64 %144, %90
  %146 = getelementptr i32, ptr %8, i64 %145
  %147 = load i32, ptr %146, align 4
  %148 = mul i64 %86, %50
  %149 = add i64 %148, %90
  %150 = getelementptr i32, ptr %60, i64 %149
  %151 = load i32, ptr %150, align 4
  %152 = mul i32 %143, %147
  %153 = add i32 %151, %152
  %154 = mul i64 %86, %50
  %155 = add i64 %154, %90
  %156 = getelementptr i32, ptr %60, i64 %155
  store i32 %153, ptr %156, align 4
  %157 = add i64 %101, 3
  %158 = mul i64 %86, %5
  %159 = add i64 %158, %157
  %160 = getelementptr i32, ptr %1, i64 %159
  %161 = load i32, ptr %160, align 4
  %162 = mul i64 %157, %12
  %163 = add i64 %162, %90
  %164 = getelementptr i32, ptr %8, i64 %163
  %165 = load i32, ptr %164, align 4
  %166 = mul i64 %86, %50
  %167 = add i64 %166, %90
  %168 = getelementptr i32, ptr %60, i64 %167
  %169 = load i32, ptr %168, align 4
  %170 = mul i32 %161, %165
  %171 = add i32 %169, %170
  %172 = mul i64 %86, %50
  %173 = add i64 %172, %90
  %174 = getelementptr i32, ptr %60, i64 %173
  store i32 %171, ptr %174, align 4
  %175 = add i64 %101, 4
  br label %100

176:                                              ; preds = %100
  %177 = icmp slt i64 %80, 0
  %178 = sub i64 -1, %80
  %179 = select i1 %177, i64 %178, i64 %80
  %180 = sdiv i64 %179, 4
  %181 = sub i64 -1, %180
  %182 = select i1 %177, i64 %181, i64 %180
  %183 = mul i64 %182, 4
  br label %184

184:                                              ; preds = %187, %176
  %185 = phi i64 [ %205, %187 ], [ %183, %176 ]
  %186 = icmp slt i64 %185, %80
  br i1 %186, label %187, label %206

187:                                              ; preds = %184
  %188 = mul i64 %86, %5
  %189 = add i64 %188, %185
  %190 = getelementptr i32, ptr %1, i64 %189
  %191 = load i32, ptr %190, align 4
  %192 = mul i64 %185, %12
  %193 = add i64 %192, %90
  %194 = getelementptr i32, ptr %8, i64 %193
  %195 = load i32, ptr %194, align 4
  %196 = mul i64 %86, %50
  %197 = add i64 %196, %90
  %198 = getelementptr i32, ptr %60, i64 %197
  %199 = load i32, ptr %198, align 4
  %200 = mul i32 %191, %195
  %201 = add i32 %199, %200
  %202 = mul i64 %86, %50
  %203 = add i64 %202, %90
  %204 = getelementptr i32, ptr %60, i64 %203
  store i32 %201, ptr %204, align 4
  %205 = add i64 %185, 1
  br label %184

206:                                              ; preds = %184
  %207 = add i64 %90, 1
  br label %89

208:                                              ; preds = %89
  %209 = add i64 %86, 1
  br label %85

210:                                              ; preds = %85
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %67
}

define void @_mlir_ciface_matmul(ptr %0, ptr %1, ptr %2, ptr %3) {
  %5 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %1, align 8
  %6 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 0
  %7 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 1
  %8 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 2
  %9 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 3, 0
  %10 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 3, 1
  %11 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 4, 0
  %12 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 4, 1
  %13 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %2, align 8
  %14 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 0
  %15 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 1
  %16 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 2
  %17 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 3, 0
  %18 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 3, 1
  %19 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 4, 0
  %20 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 4, 1
  %21 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %3, align 8
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 0
  %23 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 1
  %24 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 2
  %25 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 3, 0
  %26 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 3, 1
  %27 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 4, 0
  %28 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 4, 1
  %29 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @matmul(ptr %6, ptr %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, ptr %22, ptr %23, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28)
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
