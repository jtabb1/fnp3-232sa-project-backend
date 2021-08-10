class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :demand_trend
      t.boolean :is_demand_trend
    end
  end
end
