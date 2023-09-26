use array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::I32Tensor;
use orion::numbers::{IntegerTrait, i32};

fn input_1() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(3);
    shape.append(3);

    let mut data = ArrayTrait::new();
    data.append(i32 { mag: 27, sign: false });
    data.append(i32 { mag: 28, sign: false });
    data.append(i32 { mag: 29, sign: false });
    data.append(i32 { mag: 30, sign: false });
    data.append(i32 { mag: 31, sign: false });
    data.append(i32 { mag: 32, sign: false });
    data.append(i32 { mag: 33, sign: false });
    data.append(i32 { mag: 34, sign: false });
    data.append(i32 { mag: 35, sign: false });
    data.append(i32 { mag: 36, sign: false });
    data.append(i32 { mag: 37, sign: false });
    data.append(i32 { mag: 38, sign: false });
    data.append(i32 { mag: 39, sign: false });
    data.append(i32 { mag: 40, sign: false });
    data.append(i32 { mag: 41, sign: false });
    data.append(i32 { mag: 42, sign: false });
    data.append(i32 { mag: 43, sign: false });
    data.append(i32 { mag: 44, sign: false });
    data.append(i32 { mag: 45, sign: false });
    data.append(i32 { mag: 46, sign: false });
    data.append(i32 { mag: 47, sign: false });
    data.append(i32 { mag: 48, sign: false });
    data.append(i32 { mag: 49, sign: false });
    data.append(i32 { mag: 50, sign: false });
    data.append(i32 { mag: 51, sign: false });
    data.append(i32 { mag: 52, sign: false });
    data.append(i32 { mag: 53, sign: false });
    TensorTrait::new(shape.span(), data.span())
}
