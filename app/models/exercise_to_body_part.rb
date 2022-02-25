# == Schema Information
#
# Table name: exercise_to_body_parts
#
#  id           :bigint           not null, primary key
#  exercise_id  :integer          not null
#  body_part_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class ExerciseToBodyPart < ApplicationRecord

end
