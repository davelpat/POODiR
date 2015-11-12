class Wheel
  attr_reader :rim, :tire
  def initialize(args)
    args = default.merge(args)
    @rim = args[:rim]
    @tire = args[:tire]
  end

  def default
    {:rim => 26, :tire => 1.5}
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end