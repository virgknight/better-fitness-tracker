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

end
