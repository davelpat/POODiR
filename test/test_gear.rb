require 'minitest/autorun'
require 'shoulda/context'
require_relative '../lib/gear'

class GearTest < Minitest::Test

# Called before every test method runs. Can be used
# to set up fixture information.
  context 'the gear' do
    setup do
      @gear = Gear.new(52, 11)
    end

    # Gear ratio test
    should 'return its ratio' do
      assert_equal 4.7272727272727275, @gear.ratio
    end
  end
end

class GearHelperTest < Minitest::Test
  require_relative '../features/support/gear_helpers'

  context 'the Gear helper function get_precision' do
    should 'return precision from a float' do
      assert_equal 5, get_precision(3.14159)
    end

    should 'return precision from a float string' do
      assert_equal 4, get_precision('3.1416')
    end

    should 'return zero from an integer' do
      assert_equal 0, get_precision(3)
    end

    should 'return zero from an integer string' do
      assert_equal 0, get_precision('10')
    end
  end
end