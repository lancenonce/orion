// ===== 1D ===== //

#[cfg(test)]
mod tensor_1D {
    use orion::operators::tensor::implementations::tensor_fp8x23::FP8x23Tensor;
    use orion::operators::tensor::core::TensorTrait;
    use orion::tests::helpers::tensor::fixed_point::fp8x23::fp_tensor_1x3_helper;
    use orion::numbers::fixed_point::implementations::fp8x23::core::FP8x23;
    use orion::numbers::fixed_point::core::{FixedTrait};

    #[test]
    #[available_gas(2000000)]
    fn tensor_max() {
        let tensor = fp_tensor_1x3_helper();

        print_tensor(tensor);
    }
}
