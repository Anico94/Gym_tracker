class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.text :name
      t.float :weight
      t.integer :repetitions
      t.integer :sets
      t.float :distance
      t.float :duration
      t.string :workout_id

      t.timestamps
    end
  end
end
