class CreateWeeks < ActiveRecord::Migration[5.1]
  def change
    create_table :weeks do |t|
      t.text :excersize
      t.integer :workout_id

      t.timestamps
    end
  end
end
