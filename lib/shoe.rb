class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []
  @@uniq_b = []

  def initialize(brand)
    @brand = brand
    @@uniq_b << brand
    @@uniq_b = @@uniq_b.uniq
    if @@uniq_b[-1] == brand
      BRANDS << brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end