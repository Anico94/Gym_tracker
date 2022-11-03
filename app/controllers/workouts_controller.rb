class WorkoutsController < ApplicationController
  before_action :check_for_login
  
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
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Workout #{@workout.date}", template: "workouts/workout.html.erb"  # Excluding ".pdf" extension.
      end
    end
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
