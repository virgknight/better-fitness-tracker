# == Schema Information
#
# Table name: workout_to_exercises
#
#  id          :bigint           not null, primary key
#  exercise_id :integer          not null
#  workout_id  :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class WorkoutToExercise < ApplicationRecord
    validates :exercise_id, :workout_id, presence: true
    validates :exercise_id, uniqueness: {scope: :workout_id}

    belongs_to :exercise,
    class_name: :Exercise

    belongs_to :workout,
    class_name: :Workout

    has_many :log_entries,
    class_name: :LogEntry
end
