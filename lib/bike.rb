class Bicycle
  attr_accessor :tire, :style, :gears
  @@bikes = []

  def initialize(tire, gears, style)
    @tire = tire
    @gears = gears
    @style = style
    @@bikes << self

  end
 
  self.bikes
    @@bikes
  end

end

 
mongoose = Bicycle.new(4, 10, "BMX")

mongoose.tire = 5
mongoose.gears
Bicycle.bikes
mongoose.style