mod input_0;
mod output_0;


use orion::operators::tensor::U32TensorPartialEq;
use orion::utils::{assert_eq, assert_seq_eq};
use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::U32Tensor;
use orion::operators::tensor::{TensorTrait, Tensor};

#[test]
#[available_gas(2000000000)]
fn test_split_u32_2d_equal_parts() {
    let input_0 = input_0::input_0();
    let z = output_0::output_0();

    let y = input_0.split(1, Option::Some(2), Option::None(()));

    assert_seq_eq(y, z);
}
