require 'minitest/autorun'
require 'shoulda/context'
require_relative '../lib/wheel'

class WheelTest < Minitest::Test

  context 'the wheel' do
    setup do
      @wheel = Wheel.new :rim => 26, :tire => 1.5
    end
    
    should 'return its total diameter' do
      assert_equal 29, @wheel.diameter
    end

    should 'return its circumference' do
      assert_equal 91.106186954104, @wheel.circumference
    end
  end
end
