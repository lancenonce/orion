use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::FP16x16Tensor;
use orion::numbers::{FixedTrait, FP16x16};

fn output_0() -> Tensor<FP16x16> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(1);
    shape.append(1);
    shape.append(8);
    shape.append(8);

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 30976, sign: false });
    data.append(FP16x16 { mag: 50432, sign: false });
    data.append(FP16x16 { mag: 81664, sign: false });
    data.append(FP16x16 { mag: 122880, sign: false });
    data.append(FP16x16 { mag: 149504, sign: false });
    data.append(FP16x16 { mag: 190720, sign: false });
    data.append(FP16x16 { mag: 221952, sign: false });
    data.append(FP16x16 { mag: 241408, sign: false });
    data.append(FP16x16 { mag: 108800, sign: false });
    data.append(FP16x16 { mag: 128256, sign: false });
    data.append(FP16x16 { mag: 159488, sign: false });
    data.append(FP16x16 { mag: 200704, sign: false });
    data.append(FP16x16 { mag: 227328, sign: false });
    data.append(FP16x16 { mag: 268544, sign: false });
    data.append(FP16x16 { mag: 299776, sign: false });
    data.append(FP16x16 { mag: 319232, sign: false });
    data.append(FP16x16 { mag: 233728, sign: false });
    data.append(FP16x16 { mag: 253184, sign: false });
    data.append(FP16x16 { mag: 284416, sign: false });
    data.append(FP16x16 { mag: 325632, sign: false });
    data.append(FP16x16 { mag: 352256, sign: false });
    data.append(FP16x16 { mag: 393472, sign: false });
    data.append(FP16x16 { mag: 424704, sign: false });
    data.append(FP16x16 { mag: 444160, sign: false });
    data.append(FP16x16 { mag: 398592, sign: false });
    data.append(FP16x16 { mag: 418048, sign: false });
    data.append(FP16x16 { mag: 449280, sign: false });
    data.append(FP16x16 { mag: 490496, sign: false });
    data.append(FP16x16 { mag: 517120, sign: false });
    data.append(FP16x16 { mag: 558336, sign: false });
    data.append(FP16x16 { mag: 589568, sign: false });
    data.append(FP16x16 { mag: 609024, sign: false });
    data.append(FP16x16 { mag: 505088, sign: false });
    data.append(FP16x16 { mag: 524544, sign: false });
    data.append(FP16x16 { mag: 555776, sign: false });
    data.append(FP16x16 { mag: 596992, sign: false });
    data.append(FP16x16 { mag: 623616, sign: false });
    data.append(FP16x16 { mag: 664832, sign: false });
    data.append(FP16x16 { mag: 696064, sign: false });
    data.append(FP16x16 { mag: 715520, sign: false });
    data.append(FP16x16 { mag: 669952, sign: false });
    data.append(FP16x16 { mag: 689408, sign: false });
    data.append(FP16x16 { mag: 720640, sign: false });
    data.append(FP16x16 { mag: 761856, sign: false });
    data.append(FP16x16 { mag: 788480, sign: false });
    data.append(FP16x16 { mag: 829696, sign: false });
    data.append(FP16x16 { mag: 860928, sign: false });
    data.append(FP16x16 { mag: 880384, sign: false });
    data.append(FP16x16 { mag: 794880, sign: false });
    data.append(FP16x16 { mag: 814336, sign: false });
    data.append(FP16x16 { mag: 845568, sign: false });
    data.append(FP16x16 { mag: 886784, sign: false });
    data.append(FP16x16 { mag: 913408, sign: false });
    data.append(FP16x16 { mag: 954624, sign: false });
    data.append(FP16x16 { mag: 985856, sign: false });
    data.append(FP16x16 { mag: 1005312, sign: false });
    data.append(FP16x16 { mag: 872704, sign: false });
    data.append(FP16x16 { mag: 892160, sign: false });
    data.append(FP16x16 { mag: 923392, sign: false });
    data.append(FP16x16 { mag: 964608, sign: false });
    data.append(FP16x16 { mag: 991232, sign: false });
    data.append(FP16x16 { mag: 1032448, sign: false });
    data.append(FP16x16 { mag: 1063680, sign: false });
    data.append(FP16x16 { mag: 1083136, sign: false });
    TensorTrait::new(shape.span(), data.span())
}
