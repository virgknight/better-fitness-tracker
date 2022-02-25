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

end
