class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :meal_id
      t.integer :serving_size
      t.integer :num_servings, :default => 1
      t.integer :calories, :default => 0
      t.integer :fat, :default => 0
      t.integer :saturated_fat, :default => 0
      t.integer :polunsaturated_fat, :default => 0
      t.integer :monounsaturated_fat, :default => 0
      t.integer :trans_fat, :default => 0
      t.integer :cholesterol, :default => 0
      t.integer :sodium, :default => 0
      t.integer :potassium, :default => 0
      t.integer :potassium, :default => 0
      t.integer :carbs, :default => 0
      t.integer :fiber, :default => 0
      t.integer :sugars, :default => 0
      t.integer :protein, :default => 0
      t.integer :vitamin_a, :default => 0
      t.integer :vitamin_c, :default => 0
      t.integer :calcium, :default => 0
      t.integer :iron, :default => 0

      t.timestamps
    end
  end
end
