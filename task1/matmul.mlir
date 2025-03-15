module {
  func.func @matmul(%A: tensor<?x?xi32>, %B: tensor<?x?xi32>, %C: tensor<?x?xi32>) -> tensor<?x?xi32> attributes {llvm.emit_c_interface} {
    %res = linalg.generic
        // C(i, j) += A(i, k) * B(k, j)
        { indexing_maps = [
            affine_map<(i, j, k) -> (i, k)>,
            affine_map<(i, j, k) -> (k, j)>,
            affine_map<(i, j, k) -> (i, j)>
          ],
          iterator_types = ["parallel", "parallel", "reduction"] }
      ins(%A, %B : tensor<?x?xi32>, tensor<?x?xi32>)
      outs(%C : tensor<?x?xi32>) {

      ^bb0(%a: i32, %b: i32, %c: i32):
        %mul = arith.muli %a, %b : i32
        %acc = arith.addi %c, %mul : i32
        linalg.yield %acc : i32
    } -> tensor<?x?xi32>
    return %res : tensor<?x?xi32>
  }
}
