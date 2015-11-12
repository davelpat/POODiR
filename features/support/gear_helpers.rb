def create_wheel(rim, tire)
  Wheel.new rim.to_f, tire.to_f
end

def create_gearset(chainring, cog, wheel=nil)
  Gear.new chainring.to_i, cog.to_i, wheel
end

# get_precision returns the precision of the number or zero if an integer
# @param [Float, Fixnum, String] num
# @return [Fixnum]
def get_precision(num)
  str_num = num.to_s
  str_num.include?('.') ? str_num.length - str_num.index('.') - 1 : 0
end

# compare_with_expected_precision asserts two numbers are equal within the precision of the expected result
# @param [String] calculation, the type of numbers being compared
# @param [Float, Fixnum, String] expected_result, precision is taken from this number
# @param [Float, Fixnum] calculated_result, the number being checked
def compare_with_expected_precision(calculation, expected_result, calculated_result)
  expected_precision = get_precision expected_result
  expected_result = expected_result.to_f
  rounded_calculation = calculated_result.round(expected_precision)
  assert_equal expected_result, rounded_calculation,
               "Expected a #{calculation} of #{expected_result}, but got #{rounded_calculation}"
end
