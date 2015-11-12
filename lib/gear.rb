class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(args)
    args       = defaults.merge(args)
    @chainring = args[:chainring]
    @cog       = args[:cog]
    @wheel     = args[:wheel]
  end

  def defaults
    {:chainring => 52, :cog => 11, :wheel => nil}
  end

  def ratio
    chainring / cog.to_f
  end

  def diameter
    wheel.diameter
  end

  def gear_inches
    ratio * diameter
  end
end
