use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP8x23Tensor, FP8x23TensorAdd};
use orion::numbers::{FixedTrait, FP8x23};

fn output_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(3);
    shape.append(4);
    shape.append(5);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 21087944, sign: true });
    data.append(FP8x23 { mag: 14202160, sign: true });
    data.append(FP8x23 { mag: 370069, sign: false });
    data.append(FP8x23 { mag: 4146880, sign: true });
    data.append(FP8x23 { mag: 179760, sign: false });
    data.append(FP8x23 { mag: 7276812, sign: false });
    data.append(FP8x23 { mag: 8153829, sign: false });
    data.append(FP8x23 { mag: 9423354, sign: false });
    data.append(FP8x23 { mag: 609877, sign: false });
    data.append(FP8x23 { mag: 8294132, sign: true });
    data.append(FP8x23 { mag: 12562397, sign: true });
    data.append(FP8x23 { mag: 4880166, sign: true });
    data.append(FP8x23 { mag: 11962724, sign: false });
    data.append(FP8x23 { mag: 9929396, sign: false });
    data.append(FP8x23 { mag: 19547024, sign: true });
    data.append(FP8x23 { mag: 26953908, sign: false });
    data.append(FP8x23 { mag: 5759087, sign: false });
    data.append(FP8x23 { mag: 4445810, sign: true });
    data.append(FP8x23 { mag: 11181212, sign: false });
    data.append(FP8x23 { mag: 28726552, sign: true });
    data.append(FP8x23 { mag: 7242334, sign: true });
    data.append(FP8x23 { mag: 12761861, sign: false });
    data.append(FP8x23 { mag: 193729, sign: true });
    data.append(FP8x23 { mag: 7287480, sign: true });
    data.append(FP8x23 { mag: 7691729, sign: true });
    data.append(FP8x23 { mag: 5568957, sign: false });
    data.append(FP8x23 { mag: 12831901, sign: false });
    data.append(FP8x23 { mag: 7948158, sign: false });
    data.append(FP8x23 { mag: 638959, sign: false });
    data.append(FP8x23 { mag: 8929355, sign: true });
    data.append(FP8x23 { mag: 10329036, sign: true });
    data.append(FP8x23 { mag: 5789921, sign: true });
    data.append(FP8x23 { mag: 13908634, sign: false });
    data.append(FP8x23 { mag: 16091354, sign: true });
    data.append(FP8x23 { mag: 13666367, sign: true });
    data.append(FP8x23 { mag: 159615, sign: false });
    data.append(FP8x23 { mag: 13601758, sign: true });
    data.append(FP8x23 { mag: 5820949, sign: true });
    data.append(FP8x23 { mag: 12683600, sign: true });
    data.append(FP8x23 { mag: 28115886, sign: true });
    data.append(FP8x23 { mag: 6226987, sign: true });
    data.append(FP8x23 { mag: 31992340, sign: true });
    data.append(FP8x23 { mag: 1316199, sign: false });
    data.append(FP8x23 { mag: 5853814, sign: true });
    data.append(FP8x23 { mag: 12777388, sign: true });
    data.append(FP8x23 { mag: 5020211, sign: false });
    data.append(FP8x23 { mag: 19168420, sign: false });
    data.append(FP8x23 { mag: 8940602, sign: false });
    data.append(FP8x23 { mag: 699398, sign: false });
    data.append(FP8x23 { mag: 6298646, sign: true });
    data.append(FP8x23 { mag: 14858262, sign: true });
    data.append(FP8x23 { mag: 5715824, sign: true });
    data.append(FP8x23 { mag: 12345495, sign: false });
    data.append(FP8x23 { mag: 4344728, sign: true });
    data.append(FP8x23 { mag: 5410113, sign: true });
    data.append(FP8x23 { mag: 12525305, sign: false });
    data.append(FP8x23 { mag: 8940445, sign: true });
    data.append(FP8x23 { mag: 11470874, sign: true });
    data.append(FP8x23 { mag: 15836346, sign: true });
    data.append(FP8x23 { mag: 17977528, sign: true });
    data.append(FP8x23 { mag: 6319176, sign: true });
    data.append(FP8x23 { mag: 13319088, sign: true });
    data.append(FP8x23 { mag: 10642511, sign: false });
    data.append(FP8x23 { mag: 6762721, sign: true });
    data.append(FP8x23 { mag: 1653770, sign: false });
    data.append(FP8x23 { mag: 3567792, sign: false });
    data.append(FP8x23 { mag: 12541384, sign: false });
    data.append(FP8x23 { mag: 6553638, sign: false });
    data.append(FP8x23 { mag: 840163, sign: false });
    data.append(FP8x23 { mag: 5905214, sign: true });
    data.append(FP8x23 { mag: 14579163, sign: true });
    data.append(FP8x23 { mag: 8499320, sign: true });
    data.append(FP8x23 { mag: 12977132, sign: false });
    data.append(FP8x23 { mag: 2412819, sign: false });
    data.append(FP8x23 { mag: 5657099, sign: false });
    data.append(FP8x23 { mag: 6293111, sign: false });
    data.append(FP8x23 { mag: 5694987, sign: false });
    data.append(FP8x23 { mag: 4423076, sign: true });
    data.append(FP8x23 { mag: 6521042, sign: false });
    data.append(FP8x23 { mag: 24888322, sign: true });
    data.append(FP8x23 { mag: 12639230, sign: true });
    data.append(FP8x23 { mag: 17876392, sign: false });
    data.append(FP8x23 { mag: 1704105, sign: true });
    data.append(FP8x23 { mag: 10134546, sign: true });
    data.append(FP8x23 { mag: 9163717, sign: true });
    data.append(FP8x23 { mag: 4699486, sign: false });
    data.append(FP8x23 { mag: 22207096, sign: false });
    data.append(FP8x23 { mag: 11617848, sign: false });
    data.append(FP8x23 { mag: 1979972, sign: false });
    data.append(FP8x23 { mag: 6108713, sign: true });
    data.append(FP8x23 { mag: 12926792, sign: true });
    data.append(FP8x23 { mag: 5751667, sign: true });
    data.append(FP8x23 { mag: 13657549, sign: false });
    data.append(FP8x23 { mag: 10448591, sign: true });
    data.append(FP8x23 { mag: 2621331, sign: false });
    data.append(FP8x23 { mag: 1846107, sign: false });
    data.append(FP8x23 { mag: 4501459, sign: false });
    data.append(FP8x23 { mag: 6877419, sign: true });
    data.append(FP8x23 { mag: 2810404, sign: true });
    data.append(FP8x23 { mag: 13194988, sign: true });
    data.append(FP8x23 { mag: 16400489, sign: true });
    data.append(FP8x23 { mag: 7287681, sign: false });
    data.append(FP8x23 { mag: 5386697, sign: true });
    data.append(FP8x23 { mag: 3996463, sign: true });
    data.append(FP8x23 { mag: 816025, sign: false });
    data.append(FP8x23 { mag: 8312861, sign: false });
    data.append(FP8x23 { mag: 4596467, sign: false });
    data.append(FP8x23 { mag: 5489366, sign: false });
    data.append(FP8x23 { mag: 190582, sign: false });
    data.append(FP8x23 { mag: 8824953, sign: true });
    data.append(FP8x23 { mag: 15389404, sign: true });
    data.append(FP8x23 { mag: 10396522, sign: true });
    data.append(FP8x23 { mag: 12260739, sign: false });
    data.append(FP8x23 { mag: 620359, sign: false });
    data.append(FP8x23 { mag: 11915708, sign: false });
    data.append(FP8x23 { mag: 4374361, sign: false });
    data.append(FP8x23 { mag: 11809902, sign: false });
    data.append(FP8x23 { mag: 1667804, sign: true });
    data.append(FP8x23 { mag: 5682543, sign: false });
    data.append(FP8x23 { mag: 21908880, sign: true });
    TensorTrait::new(shape.span(), data.span())
}
