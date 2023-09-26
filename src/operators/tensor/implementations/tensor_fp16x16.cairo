use array::ArrayTrait;
use array::SpanTrait;
use option::OptionTrait;
use traits::{TryInto, Into};

use orion::numbers::fixed_point::core::FixedTrait;
use orion::operators::tensor::core::{
    new_tensor, stride, Tensor, TensorTrait, ravel_index, unravel_index, reshape, at_tensor,
};
use orion::operators::tensor::{math, linalg, quantization, core};
use orion::numbers::{i8, NumberTrait, FP16x16};
use orion::operators::tensor::implementations::{tensor_i8::I8Tensor, tensor_u32::U32Tensor};

impl FP16x16Tensor of TensorTrait<FP16x16> {
    fn new(shape: Span<usize>, data: Span<FP16x16>) -> Tensor<FP16x16> {
        new_tensor(shape, data)
    }

    fn at(self: @Tensor<FP16x16>, indices: Span<usize>) -> FP16x16 {
        *at_tensor(self, indices)
    }

    fn min(self: @Tensor<FP16x16>) -> FP16x16 {
        math::min::min_in_tensor::<FP16x16, u32>(*self.data)
    }

    fn max(self: @Tensor<FP16x16>) -> FP16x16 {
        math::max::max_in_tensor(*self.data)
    }

    fn stride(self: @Tensor<FP16x16>) -> Span<usize> {
        stride(*self.shape)
    }

    fn ravel_index(self: @Tensor<FP16x16>, indices: Span<usize>) -> usize {
        ravel_index(*self.shape, indices)
    }

    fn unravel_index(self: @Tensor<FP16x16>, index: usize) -> Span<usize> {
        unravel_index(index, *self.shape)
    }

    fn reshape(self: @Tensor<FP16x16>, target_shape: Span<usize>) -> Tensor<FP16x16> {
        reshape(self, target_shape)
    }

    fn reduce_sum(self: @Tensor<FP16x16>, axis: usize, keepdims: bool) -> Tensor<FP16x16> {
        math::reduce_sum::reduce_sum(self, axis, keepdims)
    }

    fn argmax(
        self: @Tensor<FP16x16>, axis: usize, keepdims: Option<bool>, select_last_index: Option<bool>
    ) -> Tensor<usize> {
        math::argmax::argmax(self, axis, keepdims, select_last_index)
    }

    fn argmin(
        self: @Tensor<FP16x16>, axis: usize, keepdims: Option<bool>, select_last_index: Option<bool>
    ) -> Tensor<usize> {
        math::argmin::argmin(self, axis, keepdims, select_last_index)
    }

    fn transpose(self: @Tensor<FP16x16>, axes: Span<usize>) -> Tensor<FP16x16> {
        linalg::transpose::transpose(self, axes)
    }

    fn matmul(self: @Tensor<FP16x16>, other: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        linalg::matmul::matmul(self, other)
    }

    fn exp(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::exp::exp(*self)
    }

    fn log(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::log::log(*self)
    }

    fn equal(self: @Tensor<FP16x16>, other: @Tensor<FP16x16>) -> Tensor<usize> {
        math::equal::equal(self, other)
    }

    fn greater(self: @Tensor<FP16x16>, other: @Tensor<FP16x16>) -> Tensor<usize> {
        math::greater::greater(self, other)
    }

    fn greater_equal(self: @Tensor<FP16x16>, other: @Tensor<FP16x16>) -> Tensor<usize> {
        math::greater_equal::greater_equal(self, other)
    }

    fn less(self: @Tensor<FP16x16>, other: @Tensor<FP16x16>) -> Tensor<usize> {
        math::less::less(self, other)
    }

    fn less_equal(self: @Tensor<FP16x16>, other: @Tensor<FP16x16>) -> Tensor<usize> {
        math::less_equal::less_equal(self, other)
    }

    fn abs(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::abs::abs(*self)
    }

    fn ceil(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::ceil::ceil(*self)
    }

    fn sin(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::sin::sin(*self)
    }

    fn cos(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::cos::cos(*self)
    }

    fn asin(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::asin::asin(*self)
    }

    fn cumsum(
        self: @Tensor<FP16x16>, axis: usize, exclusive: Option<bool>, reverse: Option<bool>
    ) -> Tensor<FP16x16> {
        math::cumsum::cumsum(self, axis, exclusive, reverse)
    }

    fn flatten(self: @Tensor<FP16x16>, axis: usize) -> Tensor<FP16x16> {
        math::flatten::flatten(self, axis)
    }

    fn sinh(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::sinh::sinh(*self)
    }

    fn tanh(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::tanh::tanh(*self)
    }

    fn cosh(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::cosh::cosh(*self)
    }

    fn acosh(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::acosh::acosh(*self)
    }

    fn asinh(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::asinh::asinh(*self)
    }

    fn atan(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::atan::atan(*self)
    }

    fn xor(self: @Tensor<FP16x16>, other: @Tensor<FP16x16>) -> Tensor<usize> {
        math::xor::xor(self, other)
    }

    fn or(self: @Tensor<FP16x16>, other: @Tensor<FP16x16>) -> Tensor<usize> {
        math::or::or(self, other)
    }

    fn acos(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::acos::acos(*self)
    }

    fn onehot(
        self: @Tensor<FP16x16>, depth: usize, axis: Option<usize>, values: Span<usize>
    ) -> Tensor<FP16x16> {
        math::onehot::onehot(self, depth, axis, values)
    }

    fn sqrt(self: @Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::sqrt::sqrt(*self)
    }

    fn concat(tensors: Span<Tensor<FP16x16>>, axis: usize,) -> Tensor<FP16x16> {
        math::concat::concat(tensors, axis)
    }

    fn quantize_linear(
        self: @Tensor<FP16x16>, y_scale: @Tensor<FP16x16>, y_zero_point: @Tensor<FP16x16>
    ) -> Tensor::<i8> {
        quantization::quantize_linear::quantize_linear(
            self,
            y_scale,
            y_zero_point,
            NumberTrait::new_unscaled(128, true),
            NumberTrait::new_unscaled(127, false)
        )
    }

    fn dequantize_linear(
        self: @Tensor<i8>, x_scale: @Tensor<FP16x16>, x_zero_point: @Tensor<FP16x16>
    ) -> Tensor::<FP16x16> {
        quantization::dequantize_linear::dequantize_linear(self, x_scale, x_zero_point)
    }

    fn slice(
        self: @Tensor<FP16x16>,
        starts: Span<usize>,
        ends: Span<usize>,
        axes: Option<Span<usize>>,
        steps: Option<Span<usize>>
    ) -> Tensor<FP16x16> {
        core::slice(self, starts, ends, axes, steps)
    }

    fn print_tensor(self: @Tensor<FP8x23>) {
        core::print_tensor(self)
    }
}

/// Implements addition for `Tensor<FP16x16>` using the `Add` trait.
impl FP16x16TensorAdd of Add<Tensor<FP16x16>> {
    /// Adds two `Tensor<FP16x16>` instances element-wise.
    ///
    /// # Arguments
    /// * `lhs` - The first tensor.
    /// * `rhs` - The second tensor.
    ///
    /// # Returns
    /// * A `Tensor<FP16x16>` instance representing the result of the element-wise addition.
    fn add(lhs: Tensor<FP16x16>, rhs: Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::arithmetic::add(@lhs, @rhs)
    }
}

/// Implements subtraction for `Tensor<FP16x16>` using the `Sub` trait.
impl FP16x16TensorSub of Sub<Tensor<FP16x16>> {
    /// Subtracts two `Tensor<FP16x16>` instances element-wise.
    ///
    /// # Arguments
    /// * `lhs` - The first tensor.
    /// * `rhs` - The second tensor.
    ///
    /// # Returns
    /// * A `Tensor<FP16x16>` instance representing the result of the element-wise subtraction.
    fn sub(lhs: Tensor<FP16x16>, rhs: Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::arithmetic::sub(@lhs, @rhs)
    }
}

/// Implements multiplication for `Tensor<FP16x16>` using the `Mul` trait.
impl FP16x16TensorMul of Mul<Tensor<FP16x16>> {
    /// Multiplies two `Tensor<FP16x16>` instances element-wise.
    ///
    /// # Arguments
    /// * `lhs` - The first tensor.
    /// * `rhs` - The second tensor.
    ///
    /// # Returns
    /// * A `Tensor<FP16x16>` instance representing the result of the element-wise multiplication.
    fn mul(lhs: Tensor<FP16x16>, rhs: Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::arithmetic::mul(@lhs, @rhs)
    }
}

/// Implements division for `Tensor<FP16x16>` using the `Div` trait.
impl FP16x16TensorDiv of Div<Tensor<FP16x16>> {
    /// Divides two `Tensor<FP16x16>` instances element-wise.
    ///
    /// # Arguments
    /// * `lhs` - The first tensor.
    /// * `rhs` - The second tensor.
    ///
    /// # Returns
    /// * A `Tensor<FP16x16>` instance representing the result of the element-wise division.
    fn div(lhs: Tensor<FP16x16>, rhs: Tensor<FP16x16>) -> Tensor<FP16x16> {
        math::arithmetic::div(@lhs, @rhs)
    }
}

/// Implements partial equal for two `Tensor<FP16x16>` using the `PartialEq` trait.
impl FP16x16TensorPartialEq of PartialEq<Tensor<FP16x16>> {
    fn eq(lhs: @Tensor<FP16x16>, rhs: @Tensor<FP16x16>) -> bool {
        tensor_eq(*lhs, *rhs)
    }

    fn ne(lhs: @Tensor<FP16x16>, rhs: @Tensor<FP16x16>) -> bool {
        !tensor_eq(*lhs, *rhs)
    }
}

impl U32TryIntoU32 of TryInto<u32, u32> {
    fn try_into(self: u32) -> Option<u32> {
        Option::Some(self)
    }
}

impl TensorI8IntoTensorFP16x16 of Into<Tensor<i8>, Tensor<FP16x16>> {
    fn into(self: Tensor<i8>) -> Tensor<FP16x16> {
        tensor_i8_to_tensor_fp16x16(@self)
    }
}


// Internals
const PRECISION: u32 = 589; // 0.009

fn relative_eq(lhs: @FP16x16, rhs: @FP16x16) -> bool {
    let diff = *lhs - *rhs;

    let rel_diff = if *lhs.mag != 0 {
        (diff / *lhs).mag
    } else {
        diff.mag
    };

    rel_diff <= PRECISION
}


fn tensor_eq(mut lhs: Tensor<FP16x16>, mut rhs: Tensor<FP16x16>,) -> bool {
    let mut is_eq = true;

    loop {
        if lhs.shape.len() == 0 || !is_eq {
            break;
        }

        is_eq = lhs.shape.pop_front().unwrap() == rhs.shape.pop_front().unwrap();
    };

    if !is_eq {
        return false;
    }

    loop {
        if lhs.data.len() == 0 || !is_eq {
            break;
        }

        is_eq = relative_eq(lhs.data.pop_front().unwrap(), rhs.data.pop_front().unwrap());
    };

    return is_eq;
}

fn tensor_i8_to_tensor_fp16x16(x: @Tensor<i8>) -> Tensor<FP16x16> {
    let mut result_data = ArrayTrait::<FP16x16>::new();
    let mut data = *x.data;

    loop {
        result_data.append((*data.pop_front().unwrap()).into());

        if data.len() == 0 {
            break ();
        };
    };

    return TensorTrait::new(*x.shape, result_data.span());
}
