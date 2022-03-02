# == Schema Information
#
# Table name: log_entries
#
#  id                  :bigint           not null, primary key
#  log_id              :integer          not null
#  workout_exercise_id :integer          not null
#  set_number          :integer          not null
#  weight              :integer
#  reps                :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class LogEntry < ApplicationRecord
    validates :log_id, :workout_exercise_id, :set_number, presence: true

    belongs_to :log,
    class_name: :Log

    belongs_to :workout_exercise_assignment,
    class_name: :WorkoutToExercise

    # Note to future self: this feels a little hacky but there is no option for belongs to/through
    # Definitely worth refactoring if a better solution can be found
    has_one :exercise,
    through: :workout_exercise_assignment,
    source: :exercise
end
