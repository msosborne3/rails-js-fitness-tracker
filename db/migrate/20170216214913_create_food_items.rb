class CreateFoodItems < ActiveRecord::Migration[5.0]
  def change
    create_table :food_items do |t|
      t.string :name
      t.integer :meal_id
      t.integer :serving_size
      t.integer :num_servings, :default => 1
      t.integer :calories, :default => 0
      t.integer :fat, :default => 0
      t.integer :cholesterol, :default => 0
      t.integer :sodium, :default => 0
      t.integer :carbs, :default => 0
      t.integer :protein, :default => 0

      t.timestamps
    end
  end
end
