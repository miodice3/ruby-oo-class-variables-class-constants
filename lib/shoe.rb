require 'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    #binding.pry
    if BRANDS == []
      BRANDS << @brand
    else
      # BRANDS.detect do |b|
      if !BRANDS.detect{|b| b== brand}
          BRANDS << brand
      end
    end
  end
#! operator with detect turns the return from nil or returning shoe brand to true or false. this allows it to be used as the condition for an if statement, SUPER HANDY

def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end