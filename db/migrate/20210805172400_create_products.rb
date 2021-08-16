class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :photo_filename
      t.string :name
      t.string :brand
      t.string :amount
      t.integer :selling_multiple
      t.string :selling_points
      t.integer :price
      t.integer :msrp
      t.integer :cost
      t.integer :qty_in_inventory
      t.belongs_to :category, foreign_key: true
      t.belongs_to :seller, foreign_key: true
    end
  end
end
