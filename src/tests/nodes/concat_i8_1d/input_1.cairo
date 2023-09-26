use array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::FP8x23Tensor;
use orion::numbers::FixedTrait;
use orion::numbers::FP8x23;

fn input_1() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 3, sign: false });
    data.append(FP8x23 { mag: 4, sign: false });
    data.append(FP8x23 { mag: 5, sign: false });
    TensorTrait::new(shape.span(), data.span())
}
