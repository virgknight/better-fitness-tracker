class CreateBodyParts < ActiveRecord::Migration[5.2]
  def change
    create_table :body_parts do |t|
      t.string :name, null: false, unique: true
      t.string :category, null: false
      t.timestamps
    end

    create_table :exercise_to_body_parts do |t|
      t.integer :exercise_id, null: false
      t.integer :body_part_id, null: false
      t.index :body_part_id
      t.timestamps
    end
    add_index :exercise_to_body_parts, [:exercise_id, :body_part_id], unique: true
  end
end
