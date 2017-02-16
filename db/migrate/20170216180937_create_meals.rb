class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :meal_time
      t.string :food_name
      t.integer :serving_size
      t.integer :num_servings
      t.integer :calories
      t.integer :fat
      t.integer :saturated_fat
      t.integer :polunsaturated_fat
      t.integer :monounsaturated_fat
      t.integer :trans_fat
      t.integer :cholesterol
      t.integer :sodium
      t.integer :potassium
      t.integer :potassium
      t.integer :carbs
      t.integer :fiber
      t.integer :sugars
      t.integer :protein
      t.integer :vitamin_a
      t.integer :vitamin_c
      t.integer :calcium
      t.integer :iron

      t.timestamps
    end
  end
end
