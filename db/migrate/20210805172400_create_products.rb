class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :cost
      t.integer :qty
      t.string :demand_trend
      t.boolean :is_demand_trend
      t.belongs_to :category, foreign_key: true
    end
  end
end
