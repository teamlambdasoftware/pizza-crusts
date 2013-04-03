class Pizza < ActiveRecord::Base
  attr_accessible :description, :name, :price, :delivered

  def deliver_pizza!
    self.update_attributes(:delivered => true)
  end

  def self.deliver_pizza(pizza_id)
    pizza = Pizza.find(pizza_id)
    pizza.deliver_pizza! if pizza
  end

end
