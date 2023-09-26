use array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::FP16x16Tensor;
use orion::numbers::FixedTrait;
use orion::numbers::FP16x16;

fn input_0() -> Tensor<FP16x16> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(2);

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 42997, sign: true });
    data.append(FP16x16 { mag: 108408, sign: true });
    data.append(FP16x16 { mag: 87345, sign: false });
    data.append(FP16x16 { mag: 169098, sign: false });
    TensorTrait::new(shape.span(), data.span())
}
