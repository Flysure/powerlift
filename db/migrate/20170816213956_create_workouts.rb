class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.numeric :weeks

      t.timestamps
    end
  end
end
