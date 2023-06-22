; ModuleID = 'probe6.78e361c3d7084236-cgu.0'
source_filename = "probe6.78e361c3d7084236-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

@alloc_eb984e1ca370c0fe4a8d404a0a5301b6 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/2d0aa57684e10f7b3d3fe740ee18d431181583ad/library/core/src/num/mod.rs" }>, align 1
@alloc_6276f58a394ca36978212df554b45f3e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_eb984e1ca370c0fe4a8d404a0a5301b6, [16 x i8] c"K\00\00\00\00\00\00\00~\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; probe6::probe
; Function Attrs: uwtable
define void @_ZN6probe65probe17hf48b2bb0ed68c757E() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h1873a729f8d9c721E.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hf4e15fb05d2e20b7E(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_6276f58a394ca36978212df554b45f3e) #3
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h1873a729f8d9c721E.exit": ; preds = %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17hf4e15fb05d2e20b7E(ptr align 1, i64, ptr align 8) unnamed_addr #2

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 8, !"PIC Level", i32 2}
