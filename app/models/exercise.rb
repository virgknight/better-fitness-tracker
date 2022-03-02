# == Schema Information
#
# Table name: exercises
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Exercise < ApplicationRecord
    validates :name, presence: true, uniqueness: true

    has_many :body_part_assignments,
    class_name: :ExerciseToBodyPart

    has_many :body_parts,
    through: :body_part_assignments,
    source: :body_part

    has_many :workout_assignments,
    class_name: :WorkoutToExercise

    has_many :workouts,
    through: :workout_assignments,
    source: :workout
end
