require_relative '../../lib/gear'

require 'minitest'
require 'minitest/spec'

class MinitestWorld
  extend Minitest::Assertions
  attr_accessor :assertions

  def initialize
    self.assertions = 0
  end
end

World do
  MinitestWorld.new
end