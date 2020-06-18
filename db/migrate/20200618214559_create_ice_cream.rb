class CreateIceCream < ActiveRecord::Migration
  def change
    create_table :ice_creams do |t|
      t.string :flavor
      t.string :toppings
      t.float :rating
      t.references :user_id
    end

  end
end
