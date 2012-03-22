class CreatePratosRestaurantesJoinTable < ActiveRecord::Migration
  def up
  	create_table :pratos_restaurantes, :id => false do |t|
  		t.integer :prato_id
  		t.integer :restaurante_id
	end
  end

  def down
  	drop_table :pratos_restaurantes
  end
end
