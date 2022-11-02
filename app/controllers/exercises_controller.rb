class ExercisesController < ApplicationController
  def index
  end

  def new
    @exercise = Exercise.new
    @workout = Workout.find params[:workout_id]
  end

  def create 
    exercise = Exercise.create exercise_params
    workout = Workout.find params[:workout_id]
    workout.exercises << exercise
    redirect_to workout
  end 

  def show
  end

  def edit
    @exercise = Exercise.find params[:id]
  end

  def update
    exercise = Exercise.find params[:id]
    exercise.update exercise_params
    redirect_to workout_path(exercise.workout_id)
  end

  def destroy
    exercise = Exercise.find params[:id]
    exercise.destroy
    redirect_to workout_path(exercise.workout_id)

  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :weight, :repetitions, :sets, :distance, :duration)
  end 


end
