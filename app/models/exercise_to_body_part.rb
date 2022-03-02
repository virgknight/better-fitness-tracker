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
    validates :exercise_id, :body_part_id, presence: true
    validates :exercise_id, uniqueness: {scope: :body_part_id}

    belongs_to :exercise,
    class_name: :Exercise

    belongs_to :body_part,
    class_name: :BodyPart
end
