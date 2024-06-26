use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::FP16x16Tensor;
use orion::numbers::{FixedTrait, FP16x16};

fn output_0() -> Tensor<FP16x16> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(3);
    shape.append(4);
    shape.append(5);

    let mut data = ArrayTrait::new();
    data.append(FP16x16 { mag: 34980, sign: false });
    data.append(FP16x16 { mag: 14079, sign: true });
    data.append(FP16x16 { mag: 62083, sign: true });
    data.append(FP16x16 { mag: 147603, sign: false });
    data.append(FP16x16 { mag: 11308, sign: true });
    data.append(FP16x16 { mag: 126598, sign: false });
    data.append(FP16x16 { mag: 73983, sign: false });
    data.append(FP16x16 { mag: 120660, sign: false });
    data.append(FP16x16 { mag: 41515, sign: true });
    data.append(FP16x16 { mag: 53720, sign: true });
    data.append(FP16x16 { mag: 11229, sign: true });
    data.append(FP16x16 { mag: 113880, sign: false });
    data.append(FP16x16 { mag: 59791, sign: false });
    data.append(FP16x16 { mag: 115620, sign: true });
    data.append(FP16x16 { mag: 19505, sign: true });
    data.append(FP16x16 { mag: 29861, sign: false });
    data.append(FP16x16 { mag: 3122, sign: true });
    data.append(FP16x16 { mag: 79516, sign: false });
    data.append(FP16x16 { mag: 11908, sign: false });
    data.append(FP16x16 { mag: 49306, sign: true });
    data.append(FP16x16 { mag: 30901, sign: false });
    data.append(FP16x16 { mag: 4892, sign: true });
    data.append(FP16x16 { mag: 42556, sign: true });
    data.append(FP16x16 { mag: 154572, sign: false });
    data.append(FP16x16 { mag: 1734, sign: true });
    data.append(FP16x16 { mag: 25009, sign: false });
    data.append(FP16x16 { mag: 36229, sign: true });
    data.append(FP16x16 { mag: 122431, sign: false });
    data.append(FP16x16 { mag: 39621, sign: true });
    data.append(FP16x16 { mag: 143085, sign: true });
    data.append(FP16x16 { mag: 110561, sign: true });
    data.append(FP16x16 { mag: 63080, sign: true });
    data.append(FP16x16 { mag: 20513, sign: false });
    data.append(FP16x16 { mag: 85496, sign: true });
    data.append(FP16x16 { mag: 17909, sign: true });
    data.append(FP16x16 { mag: 34541, sign: true });
    data.append(FP16x16 { mag: 135099, sign: true });
    data.append(FP16x16 { mag: 15693, sign: true });
    data.append(FP16x16 { mag: 24867, sign: true });
    data.append(FP16x16 { mag: 44624, sign: true });
    data.append(FP16x16 { mag: 62432, sign: false });
    data.append(FP16x16 { mag: 61070, sign: true });
    data.append(FP16x16 { mag: 9497, sign: true });
    data.append(FP16x16 { mag: 31812, sign: true });
    data.append(FP16x16 { mag: 12740, sign: true });
    data.append(FP16x16 { mag: 28750, sign: false });
    data.append(FP16x16 { mag: 29494, sign: true });
    data.append(FP16x16 { mag: 140863, sign: false });
    data.append(FP16x16 { mag: 42720, sign: true });
    data.append(FP16x16 { mag: 195054, sign: true });
    data.append(FP16x16 { mag: 49531, sign: true });
    data.append(FP16x16 { mag: 38426, sign: false });
    data.append(FP16x16 { mag: 58711, sign: false });
    data.append(FP16x16 { mag: 22407, sign: true });
    data.append(FP16x16 { mag: 2868, sign: false });
    data.append(FP16x16 { mag: 128861, sign: false });
    data.append(FP16x16 { mag: 41612, sign: false });
    data.append(FP16x16 { mag: 187704, sign: true });
    data.append(FP16x16 { mag: 19714, sign: false });
    data.append(FP16x16 { mag: 48637, sign: true });
    data.append(FP16x16 { mag: 58990, sign: false });
    data.append(FP16x16 { mag: 53022, sign: true });
    data.append(FP16x16 { mag: 25027, sign: true });
    data.append(FP16x16 { mag: 144085, sign: true });
    data.append(FP16x16 { mag: 86230, sign: false });
    data.append(FP16x16 { mag: 62331, sign: false });
    data.append(FP16x16 { mag: 3779, sign: false });
    data.append(FP16x16 { mag: 168240, sign: false });
    data.append(FP16x16 { mag: 42633, sign: true });
    data.append(FP16x16 { mag: 97041, sign: true });
    data.append(FP16x16 { mag: 45633, sign: true });
    data.append(FP16x16 { mag: 141649, sign: false });
    data.append(FP16x16 { mag: 162760, sign: false });
    data.append(FP16x16 { mag: 68597, sign: true });
    data.append(FP16x16 { mag: 17735, sign: true });
    data.append(FP16x16 { mag: 77086, sign: false });
    data.append(FP16x16 { mag: 95189, sign: true });
    data.append(FP16x16 { mag: 115074, sign: true });
    data.append(FP16x16 { mag: 980, sign: true });
    data.append(FP16x16 { mag: 75411, sign: true });
    data.append(FP16x16 { mag: 69778, sign: false });
    data.append(FP16x16 { mag: 63413, sign: true });
    data.append(FP16x16 { mag: 25417, sign: true });
    data.append(FP16x16 { mag: 111323, sign: true });
    data.append(FP16x16 { mag: 13487, sign: false });
    data.append(FP16x16 { mag: 79762, sign: true });
    data.append(FP16x16 { mag: 77975, sign: true });
    data.append(FP16x16 { mag: 109742, sign: false });
    data.append(FP16x16 { mag: 43808, sign: true });
    data.append(FP16x16 { mag: 11284, sign: false });
    data.append(FP16x16 { mag: 115283, sign: true });
    data.append(FP16x16 { mag: 29181, sign: false });
    data.append(FP16x16 { mag: 155120, sign: false });
    data.append(FP16x16 { mag: 101365, sign: true });
    data.append(FP16x16 { mag: 9482, sign: true });
    data.append(FP16x16 { mag: 115606, sign: false });
    data.append(FP16x16 { mag: 54304, sign: false });
    data.append(FP16x16 { mag: 64495, sign: false });
    data.append(FP16x16 { mag: 61839, sign: true });
    data.append(FP16x16 { mag: 40715, sign: true });
    data.append(FP16x16 { mag: 54635, sign: false });
    data.append(FP16x16 { mag: 84491, sign: true });
    data.append(FP16x16 { mag: 54222, sign: true });
    data.append(FP16x16 { mag: 124370, sign: true });
    data.append(FP16x16 { mag: 17725, sign: true });
    data.append(FP16x16 { mag: 70484, sign: false });
    data.append(FP16x16 { mag: 120027, sign: true });
    data.append(FP16x16 { mag: 136560, sign: false });
    data.append(FP16x16 { mag: 43343, sign: true });
    data.append(FP16x16 { mag: 260233, sign: true });
    data.append(FP16x16 { mag: 85770, sign: false });
    data.append(FP16x16 { mag: 26220, sign: false });
    data.append(FP16x16 { mag: 106343, sign: false });
    data.append(FP16x16 { mag: 67118, sign: true });
    data.append(FP16x16 { mag: 11865, sign: true });
    data.append(FP16x16 { mag: 129550, sign: false });
    data.append(FP16x16 { mag: 79314, sign: false });
    data.append(FP16x16 { mag: 126419, sign: true });
    data.append(FP16x16 { mag: 62170, sign: true });
    data.append(FP16x16 { mag: 52010, sign: true });
    TensorTrait::new(shape.span(), data.span())
}
