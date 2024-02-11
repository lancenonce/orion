use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::I8Tensor;

fn output_0() -> Tensor<i8> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(4);
    shape.append(4);

    let mut data = ArrayTrait::new();
    data.append(0,);
    data.append(1,);
    data.append(2,);
    data.append(3,);
    data.append(5,);
    data.append(4,);
    data.append(6,);
    data.append(7,);
    data.append(10);
    data.append(9,);
    data.append(8,);
    data.append(11);
    data.append(15);
    data.append(14);
    data.append(13);
    data.append(12);
    TensorTrait::new(shape.span(), data.span())
}
