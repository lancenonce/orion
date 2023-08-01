use orion::numbers::signed_integer::i32::i32;
use orion::numbers::fixed_point::core::FixedType;
use orion::operators::tensor::core::{Tensor, TensorTrait};
use orion::operators::tensor::implementations::{
    impl_tensor_i32::Tensor_i32, impl_tensor_fp::{Tensor_fp, FixedTypeTensorDiv}
};
use orion::operators::tensor::linalg::matmul::dot_product;

fn conv(self: @Tensor<T>, w: @Tensor<T>, kernel_size: (usize, usize), stride: (usize, usize), padding: (usize, usize)) -> Tensor<FixedType> {
    // create output
    // let y = Tensor::<FixedType>::new((self.shape.0, self.shape.1, w.shape.2));

    // verify that dimensions = 3
    // define height, width, and channels
    // assert channels = the first dimension in self

    // establish pad height and width (padding.0 and padding.1)

    // establish output height and width 
    // define output
    // let y = Tensor::<FixedType>::new

    // loop and perform conv operation
}
