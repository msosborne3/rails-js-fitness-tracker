class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  def index
    @workouts = current_user.workouts
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(user_id: current_user.id)
    @workout.update(workout_params)
    if @workout.save
      redirect_to workout_path(@workout)
    else
      redirect_to controller: "workouts", action: "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @workout.update(workout_params)
        format.html { redirect_to @workout, notice: 'Workout was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @workout.destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user), notice: 'Workout was successfully deleted.' }
    end
  end

  private

  def set_workout
    @workout = Workout.find_by(id: params[:id])
  end

  def workout_params
    params.require(:workout).permit(:content, :calories_burned)
  end
end
