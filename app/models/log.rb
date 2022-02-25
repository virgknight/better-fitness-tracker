# == Schema Information
#
# Table name: logs
#
#  id         :bigint           not null, primary key
#  workout_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Log < ApplicationRecord

end
