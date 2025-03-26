; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

define { ptr, ptr, i64 } @dotprod(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, ptr %10, ptr %11, i64 %12) {
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %0, 0
  %15 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, ptr %1, 1
  %16 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, i64 %2, 2
  %17 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %16, i64 %3, 3, 0
  %18 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, i64 %4, 4, 0
  %19 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %5, 0
  %20 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %19, ptr %6, 1
  %21 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %20, i64 %7, 2
  %22 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, i64 %8, 3, 0
  %23 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %22, i64 %9, 4, 0
  %24 = insertvalue { ptr, ptr, i64 } undef, ptr %10, 0
  %25 = insertvalue { ptr, ptr, i64 } %24, ptr %11, 1
  %26 = insertvalue { ptr, ptr, i64 } %25, i64 %12, 2
  %27 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64), i64 64))
  %28 = ptrtoint ptr %27 to i64
  %29 = add i64 %28, 63
  %30 = urem i64 %29, 64
  %31 = sub i64 %29, %30
  %32 = inttoptr i64 %31 to ptr
  %33 = insertvalue { ptr, ptr, i64 } undef, ptr %27, 0
  %34 = insertvalue { ptr, ptr, i64 } %33, ptr %32, 1
  %35 = insertvalue { ptr, ptr, i64 } %34, i64 0, 2
  %36 = getelementptr i32, ptr %11, i64 %12
  %37 = getelementptr i32, ptr %32, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %37, ptr %36, i64 ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64), i1 false)
  %38 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %17, 3
  %39 = alloca [1 x i64], i64 1, align 8
  store [1 x i64] %38, ptr %39, align 4
  %40 = getelementptr [1 x i64], ptr %39, i32 0, i32 0
  %41 = load i64, ptr %40, align 4
  %42 = icmp slt i64 %41, 0
  %43 = sub i64 -1, %41
  %44 = select i1 %42, i64 %43, i64 %41
  %45 = sdiv i64 %44, 4
  %46 = sub i64 -1, %45
  %47 = select i1 %42, i64 %46, i64 %45
  %48 = mul i64 %47, 4
  br label %49

49:                                               ; preds = %52, %13
  %50 = phi i64 [ %84, %52 ], [ 0, %13 ]
  %51 = icmp slt i64 %50, %48
  br i1 %51, label %52, label %85

52:                                               ; preds = %49
  %53 = getelementptr i32, ptr %1, i64 %50
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i32, ptr %6, i64 %50
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %32, align 4
  %58 = mul i32 %54, %56
  %59 = add i32 %58, %57
  store i32 %59, ptr %32, align 4
  %60 = add i64 %50, 1
  %61 = getelementptr i32, ptr %1, i64 %60
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr i32, ptr %6, i64 %60
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %32, align 4
  %66 = mul i32 %62, %64
  %67 = add i32 %66, %65
  store i32 %67, ptr %32, align 4
  %68 = add i64 %50, 2
  %69 = getelementptr i32, ptr %1, i64 %68
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i32, ptr %6, i64 %68
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %32, align 4
  %74 = mul i32 %70, %72
  %75 = add i32 %74, %73
  store i32 %75, ptr %32, align 4
  %76 = add i64 %50, 3
  %77 = getelementptr i32, ptr %1, i64 %76
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr i32, ptr %6, i64 %76
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %32, align 4
  %82 = mul i32 %78, %80
  %83 = add i32 %82, %81
  store i32 %83, ptr %32, align 4
  %84 = add i64 %50, 4
  br label %49

85:                                               ; preds = %49
  %86 = icmp slt i64 %41, 0
  %87 = sub i64 -1, %41
  %88 = select i1 %86, i64 %87, i64 %41
  %89 = sdiv i64 %88, 4
  %90 = sub i64 -1, %89
  %91 = select i1 %86, i64 %90, i64 %89
  %92 = mul i64 %91, 4
  br label %93

93:                                               ; preds = %96, %85
  %94 = phi i64 [ %104, %96 ], [ %92, %85 ]
  %95 = icmp slt i64 %94, %41
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = getelementptr i32, ptr %1, i64 %94
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr i32, ptr %6, i64 %94
  %100 = load i32, ptr %99, align 4
  %101 = load i32, ptr %32, align 4
  %102 = mul i32 %98, %100
  %103 = add i32 %102, %101
  store i32 %103, ptr %32, align 4
  %104 = add i64 %94, 1
  br label %93

105:                                              ; preds = %93
  ret { ptr, ptr, i64 } %35
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
