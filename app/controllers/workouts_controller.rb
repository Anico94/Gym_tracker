class WorkoutsController < ApplicationController
  def index
  end

  def new
    @workout = Workout.new
  end

  def create
    workout = Workout.create workout_params
    @current_user.workouts << workout
    redirect_to workout
  end

  def show
    @workout = Workout.find params[:id]
  end

  def edit
    @workout = Workout.find params[:id]
  end

  def update
    workout = Workout.find params[:id]
    workout.update workout_params
    redirect_to workout
  end

  def destroy
    workout = Workout.find params[:id]
    workout.destroy
    redirect_to workouts_path
  end


  private 
  def workout_params
    params.require(:workout).permit(:date, :focus, :duration)
  end

end
