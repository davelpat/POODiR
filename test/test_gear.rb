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
