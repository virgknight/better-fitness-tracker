# == Schema Information
#
# Table name: workouts
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Workout < ApplicationRecord
    validates :title, presence: true

    has_many :exercise_assignments,
    class_name: :WorkoutToExercise

    has_many :exercises,
    through: :exercise_assignments,
    source: :exercise

    has_many :logs,
    class_name: :Log
end
