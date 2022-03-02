# == Schema Information
#
# Table name: body_parts
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  category   :string           not null
#
class BodyPart < ApplicationRecord
    validates :name, :category, presence: true
    # Not going to include validation for inclusion, as all of these will be seeded
    # and no option to enter a new body part will be provided (aka I have total control)

    has_many :exercise_assignments,
    class_name: :ExerciseToBodyPart

    has_many :exercises,
    through: :exercise_assignments,
    source: :exercise
end
