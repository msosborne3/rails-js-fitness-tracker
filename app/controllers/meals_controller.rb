class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]

  def index
    @meals = current_user.meals
  end

  def new
    @meal = Meal.new
    @meal.food_items.build()
    @meal.food_items.build()
  end

  def create
    @meal = Meal.new(user_id: current_user.id)
    @meal.update(meal_params)
    binding.pry
    if @meal.save
      redirect_to meal_path(@meal)
    else
      redirect_to controller: "meals", action: "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @meal.update(meal_params)
        format.html { redirect_to @meal, notice: 'Meal was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @meal.destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user), notice: 'Meal was successfully deleted.' }
    end
  end

  private

  def set_meal
    @meal = Meal.find_by(id: params[:id])
  end

  def meal_params
    params.require(:meal).permit(:meal_type, food_items_attributes: [
      :name,
      :serving_size,
      :num_servings,
      :calories,
      :fat,
      :cholesterol,
      :sodium,
      :carbs,
      :protein
      ]
    )
  end
end

