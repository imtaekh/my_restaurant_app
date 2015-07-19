class CreateMyRestaurantApp < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.text :pic_url
      t.integer :price
    end
    create_table :orders do |t|
      t.integer :num_of_customer
      t.string :orders
      t.boolean :is_served
      t.boolean :is_paid
    end
  end
end
