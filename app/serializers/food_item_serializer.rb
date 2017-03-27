class FoodItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :serving_size, :calories, :fat, :cholesterol, :sodium, :carbs, :protein
  belongs_to :meal
end
