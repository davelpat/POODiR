require 'minitest/autorun'
require 'shoulda/context'
require_relative '../lib/wheel'

class WheelTest < Minitest::Test

  context 'the wheel' do
    setup do
      @wheel = Wheel.new 26, 1.5
    end
    
    should 'return its total diameter' do
      assert_equal 29, @wheel.diameter
    end
  end
end