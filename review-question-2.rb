
require "pry"
class Car
  attr_reader :make, :model

  @@all = []

  def initialize(make:, model:)
    @make = make
    @model = model
    @@all << self
  end

  def drive
    "VROOOOOOOOOOOOM!"
  end

  def self.all
      @@all
  end

end

car = Car.new("volvo", "lightening")
car.make
#=> "volvo"
car.model
#=> "ligthening"

car.drive
# => "VROOOOOOOOOOOOM!"

Car.all
#=> [car1, car2, car3]
#
# BONUS:

# car = Car.new(model: "lightening", make: "volvo")
#
# car.make
# #=> "volvo"
# car.model
# #=> "ligthening"
binding.pry
