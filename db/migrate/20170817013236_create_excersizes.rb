class CreateExcersizes < ActiveRecord::Migration[5.1]
  def change
    create_table :excersizes do |t|
      t.string :name
      t.integer :reps
      t.integer :weight
      t.integer :sets
      t.integer :week_id

      t.timestamps
    end
  end
end
