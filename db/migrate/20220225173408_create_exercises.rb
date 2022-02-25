class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name, null: false, unique: true
      t.text :description
      t.timestamps
    end
  end
end
