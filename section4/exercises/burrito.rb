# Add the following methods to this burrito class and
# call the methods below the class:
# 1. add_topping
# 2. remove_topping
# 3. change_protein

class Burrito
  attr_reader :protein, :base, :toppings
  def initialize(protein, base, toppings)
    @protein  = protein
    @base     = base
    @toppings = toppings
  end

  def add_topping(new_topping)
    toppings.push new_topping
    puts "I'll add #{new_topping} to your burrito"
  end

  def remove_topping(old_topping)
    toppings.delete(old_topping)
    puts "OK, I'll remove the #{old_topping}."
  end

  def change_protein(new_protein)
      @protein = new_protein
      puts "Ok, I'll change your protein to #{new_protein}"
  end
end

dinner = Burrito.new("Beans", "Rice", ["cheese", "salsa", "guacamole"])
dinner.change_protein("chicken")
p dinner.protein
p dinner.base
dinner.add_topping("lettuce")
dinner.remove_topping("salsa")
p dinner.toppings
