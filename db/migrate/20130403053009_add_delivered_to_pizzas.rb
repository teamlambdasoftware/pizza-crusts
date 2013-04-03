class AddDeliveredToPizzas < ActiveRecord::Migration
  def change
    add_column :pizzas, :delivered, :boolean
  end
end
