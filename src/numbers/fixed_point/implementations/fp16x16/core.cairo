use debug::PrintTrait;

use option::OptionTrait;
use result::{ResultTrait, ResultTraitImpl};
use traits::{TryInto, Into};

use orion::numbers::signed_integer::{i32::i32, i8::i8};
use orion::numbers::fixed_point::core::FixedTrait;
use orion::numbers::fixed_point::implementations::fp16x16::math::{core, trig, hyp};
use orion::numbers::fixed_point::utils;

/// A struct representing a fixed point number.
#[derive(Serde, Copy, Drop)]
struct FP16x16 {
    mag: u32,
    sign: bool
}

// CONSTANTS

const TWO: u32 = 131072; // 2 ** 17
const ONE: u32 = 65536; // 2 ** 16
const HALF: u32 = 32768; // 2 ** 15
const MAX: u32 = 2147483648; // 2 ** 31


impl FP16x16Impl of FixedTrait<FP16x16, u32> {
    fn ZERO() -> FP16x16 {
        return FP16x16 { mag: 0, sign: false };
    }

    fn ONE() -> FP16x16 {
        return FP16x16 { mag: ONE, sign: false };
    }

    fn new(mag: u32, sign: bool) -> FP16x16 {
        return FP16x16 { mag: mag, sign: sign };
    }

    fn new_unscaled(mag: u32, sign: bool) -> FP16x16 {
        return FP16x16 { mag: mag * ONE, sign: sign };
    }

    fn from_felt(val: felt252) -> FP16x16 {
        let mag = integer::u32_try_from_felt252(utils::felt_abs(val)).unwrap();
        return FixedTrait::new(mag, utils::felt_sign(val));
    }

    fn abs(self: FP16x16) -> FP16x16 {
        return core::abs(self);
    }

    fn acos(self: FP16x16) -> FP16x16 {
        return trig::acos_fast(self);
    }

    fn acos_fast(self: FP16x16) -> FP16x16 {
        return trig::acos_fast(self);
    }

    fn acosh(self: FP16x16) -> FP16x16 {
        return hyp::acosh(self);
    }

    fn asin(self: FP16x16) -> FP16x16 {
        return trig::asin_fast(self);
    }

    fn asin_fast(self: FP16x16) -> FP16x16 {
        return trig::asin_fast(self);
    }

    fn asinh(self: FP16x16) -> FP16x16 {
        return hyp::asinh(self);
    }

    fn atan(self: FP16x16) -> FP16x16 {
        return trig::atan_fast(self);
    }

    fn atan_fast(self: FP16x16) -> FP16x16 {
        return trig::atan_fast(self);
    }

    fn atanh(self: FP16x16) -> FP16x16 {
        return hyp::atanh(self);
    }

    fn ceil(self: FP16x16) -> FP16x16 {
        return core::ceil(self);
    }

    fn cos(self: FP16x16) -> FP16x16 {
        return trig::cos_fast(self);
    }

    fn cos_fast(self: FP16x16) -> FP16x16 {
        return trig::cos_fast(self);
    }

    fn cosh(self: FP16x16) -> FP16x16 {
        return hyp::cosh(self);
    }

    fn floor(self: FP16x16) -> FP16x16 {
        return core::floor(self);
    }

    // Calculates the natural exponent of x: e^x
    fn exp(self: FP16x16) -> FP16x16 {
        return core::exp(self);
    }

    // Calculates the binary exponent of x: 2^x
    fn exp2(self: FP16x16) -> FP16x16 {
        return core::exp2(self);
    }

    // Calculates the natural logarithm of x: ln(x)
    // self must be greater than zero
    fn ln(self: FP16x16) -> FP16x16 {
        return core::ln(self);
    }

    // Calculates the binary logarithm of x: log2(x)
    // self must be greather than zero
    fn log2(self: FP16x16) -> FP16x16 {
        return core::log2(self);
    }

    // Calculates the base 10 log of x: log10(x)
    // self must be greater than zero
    fn log10(self: FP16x16) -> FP16x16 {
        return core::log10(self);
    }

    // Calclates the value of x^y and checks for overflow before returning
    // self is a fixed point value
    // b is a fixed point value
    fn pow(self: FP16x16, b: FP16x16) -> FP16x16 {
        return core::pow(self, b);
    }

    fn round(self: FP16x16) -> FP16x16 {
        return core::round(self);
    }

    fn sin(self: FP16x16) -> FP16x16 {
        return trig::sin_fast(self);
    }

    fn sin_fast(self: FP16x16) -> FP16x16 {
        return trig::sin_fast(self);
    }

    fn sinh(self: FP16x16) -> FP16x16 {
        return hyp::sinh(self);
    }

    // Calculates the square root of a fixed point value
    // x must be positive
    fn sqrt(self: FP16x16) -> FP16x16 {
        return core::sqrt(self);
    }

    fn tan(self: FP16x16) -> FP16x16 {
        return trig::tan_fast(self);
    }

    fn tan_fast(self: FP16x16) -> FP16x16 {
        return trig::tan_fast(self);
    }

    fn tanh(self: FP16x16) -> FP16x16 {
        return hyp::tanh(self);
    }

    fn print_tensor_val(self: FP16x16) {
        a.mag.print();
        a.sign.print();
    }
}


impl FP16x16Print of PrintTrait<FP16x16> {
    fn print(self: FP16x16) {
        self.sign.print();
        self.mag.print();
    }
}

// Into a raw felt without unscaling
impl FP16x16IntoFelt252 of Into<FP16x16, felt252> {
    fn into(self: FP16x16) -> felt252 {
        let mag_felt = self.mag.into();

        if self.sign {
            return mag_felt * -1;
        } else {
            return mag_felt * 1;
        }
    }
}

impl FP16x16IntoI32 of Into<FP16x16, i32> {
    fn into(self: FP16x16) -> i32 {
        _i32_into_fp(self)
    }
}

impl FP16x16TryIntoI8 of TryInto<FP16x16, i8> {
    fn try_into(self: FP16x16) -> Option<i8> {
        _i8_try_from_fp(self)
    }
}


impl FP16x16TryIntoU128 of TryInto<FP16x16, u128> {
    fn try_into(self: FP16x16) -> Option<u128> {
        if self.sign {
            return Option::None(());
        } else {
            // Unscale the magnitude and round down
            return Option::Some((self.mag / ONE).into());
        }
    }
}

impl FP16x16TryIntoU64 of TryInto<FP16x16, u64> {
    fn try_into(self: FP16x16) -> Option<u64> {
        if self.sign {
            return Option::None(());
        } else {
            // Unscale the magnitude and round down
            return Option::Some((self.mag / ONE).into());
        }
    }
}

impl FP16x16TryIntoU32 of TryInto<FP16x16, u32> {
    fn try_into(self: FP16x16) -> Option<u32> {
        if self.sign {
            return Option::None(());
        } else {
            // Unscale the magnitude and round down
            return Option::Some(self.mag / ONE);
        }
    }
}

impl FP16x16TryIntoU16 of TryInto<FP16x16, u16> {
    fn try_into(self: FP16x16) -> Option<u16> {
        if self.sign {
            Option::None(())
        } else {
            // Unscale the magnitude and round down
            return (self.mag / ONE).try_into();
        }
    }
}

impl FP16x16TryIntoU8 of TryInto<FP16x16, u8> {
    fn try_into(self: FP16x16) -> Option<u8> {
        if self.sign {
            Option::None(())
        } else {
            // Unscale the magnitude and round down
            return (self.mag / ONE).try_into();
        }
    }
}

impl FP16x16PartialEq of PartialEq<FP16x16> {
    #[inline(always)]
    fn eq(lhs: @FP16x16, rhs: @FP16x16) -> bool {
        return core::eq(lhs, rhs);
    }

    #[inline(always)]
    fn ne(lhs: @FP16x16, rhs: @FP16x16) -> bool {
        return core::ne(lhs, rhs);
    }
}

impl FP16x16Add of Add<FP16x16> {
    fn add(lhs: FP16x16, rhs: FP16x16) -> FP16x16 {
        return core::add(lhs, rhs);
    }
}

impl FP16x16AddEq of AddEq<FP16x16> {
    #[inline(always)]
    fn add_eq(ref self: FP16x16, other: FP16x16) {
        self = Add::add(self, other);
    }
}

impl FP16x16Sub of Sub<FP16x16> {
    fn sub(lhs: FP16x16, rhs: FP16x16) -> FP16x16 {
        return core::sub(lhs, rhs);
    }
}

impl FP16x16SubEq of SubEq<FP16x16> {
    #[inline(always)]
    fn sub_eq(ref self: FP16x16, other: FP16x16) {
        self = Sub::sub(self, other);
    }
}

impl FP16x16Mul of Mul<FP16x16> {
    fn mul(lhs: FP16x16, rhs: FP16x16) -> FP16x16 {
        return core::mul(lhs, rhs);
    }
}

impl FP16x16MulEq of MulEq<FP16x16> {
    #[inline(always)]
    fn mul_eq(ref self: FP16x16, other: FP16x16) {
        self = Mul::mul(self, other);
    }
}

impl FP16x16Div of Div<FP16x16> {
    fn div(lhs: FP16x16, rhs: FP16x16) -> FP16x16 {
        return core::div(lhs, rhs);
    }
}

impl FP16x16DivEq of DivEq<FP16x16> {
    #[inline(always)]
    fn div_eq(ref self: FP16x16, other: FP16x16) {
        self = Div::div(self, other);
    }
}

impl FP16x16PartialOrd of PartialOrd<FP16x16> {
    #[inline(always)]
    fn ge(lhs: FP16x16, rhs: FP16x16) -> bool {
        return core::ge(lhs, rhs);
    }

    #[inline(always)]
    fn gt(lhs: FP16x16, rhs: FP16x16) -> bool {
        return core::gt(lhs, rhs);
    }

    #[inline(always)]
    fn le(lhs: FP16x16, rhs: FP16x16) -> bool {
        return core::le(lhs, rhs);
    }

    #[inline(always)]
    fn lt(lhs: FP16x16, rhs: FP16x16) -> bool {
        return core::lt(lhs, rhs);
    }
}

impl FP16x16Neg of Neg<FP16x16> {
    #[inline(always)]
    fn neg(a: FP16x16) -> FP16x16 {
        return core::neg(a);
    }
}

impl FP16x16Rem of Rem<FP16x16> {
    #[inline(always)]
    fn rem(lhs: FP16x16, rhs: FP16x16) -> FP16x16 {
        return core::rem(lhs, rhs);
    }
}


/// INTERNAL

fn _i32_into_fp(x: FP16x16) -> i32 {
    i32 { mag: x.mag / ONE, sign: x.sign }
}

fn _i8_try_from_fp(x: FP16x16) -> Option<i8> {
    let unscaled_mag: Option<u8> = (x.mag / ONE).try_into();

    match unscaled_mag {
        Option::Some(val) => Option::Some(i8 { mag: unscaled_mag.unwrap(), sign: x.sign }),
        Option::None(_) => Option::None(())
    }
}
