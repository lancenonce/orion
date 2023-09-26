mod input_0;
mod output_0;


use array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::TensorTrait;
use orion::operators::tensor::U32Tensor;
use orion::operators::tensor::U32TensorPartialEq;
use orion::utils::assert_eq;

#[test]
#[available_gas(2000000000)]
fn test_cumsum_u32_2d_axis_1() {
    let input_0 = input_0::input_0();
    let z = output_0::output_0();

    let y = input_0.cumsum(1, Option::None(()), Option::None(()));

    assert_eq(y, z);
}
