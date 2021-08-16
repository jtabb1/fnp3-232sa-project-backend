class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :msrp
      t.integer :qty
      t.belongs_to :category, foreign_key: true
      t.belongs_to :seller, foreign_key: true
    end
  end
end
