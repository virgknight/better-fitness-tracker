class CreateLog < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.integer :workout_id, null: false
      t.index :workout_id
      t.timestamps
    end

    create_table :log_ids do |t|
      t.integer :log_id, null: false
      t.index :log_id

      t.integer :workout_exercise_id, null: false
      t.index :workout_exercise_id

      t.integer :set_number, null: false
      t.integer :weight
      t.integer :reps

      t.timestamps
    end
  end
end
