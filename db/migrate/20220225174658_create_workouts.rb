class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :title, null: false
      t.text :description
      t.timestamps
    end

    create_table :workout_to_exercises do |t|
      t.integer :exercise_id, null: false
      t.integer :workout_id, null: false
      t.index :workout_id
      t.timestamps
    end
    add_index :workout_to_exercises, [:exercise_id, :workout_id], unique: true

    add_column :body_parts, :category, :string, null: false
  end
end
