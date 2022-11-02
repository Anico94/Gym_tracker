class ChangeWorkoutIdToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :exercises, :workout_id, 'integer USING CAST(workout_id AS integer)'
  end
end
