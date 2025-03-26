
module {
  func.func @dotprod(%vec1: tensor<?xi32>, %vec2: tensor<?xi32>, %res: tensor<i32>) -> tensor<i32> {
    %0 = linalgExt.vecvec %vec1, %vec2, %res : tensor<?xi32>, tensor<?xi32>, tensor<i32> -> tensor<i32>
    return %0 : tensor<i32>
  }
}