mod input_0;
mod input_1;
mod output_0;


use orion::operators::tensor::FP8x23TensorPartialEq;
use orion::operators::tensor::{U32Tensor, U32TensorAdd};
use orion::utils::{assert_eq, assert_seq_eq};
use orion::operators::tensor::{FP8x23Tensor, FP8x23TensorAdd};
use orion::operators::tensor::{TensorTrait, Tensor};
use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::U32TensorPartialEq;

#[test]
#[available_gas(2000000000)]
fn test_gather_nd_fp8x23_3d_batch_dims2() {
    let input_0 = input_0::input_0();
    let input_1 = input_1::input_1();
    let z_0 = output_0::output_0();

    let y_0 = input_0.gather_nd(indices: input_1, batch_dims: Option::Some(2));

    assert_eq(y_0, z_0);
}
