class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.date :date
      t.text :focus
      t.float :duration
      t.integer :user_id

      t.timestamps
    end
  end
end
