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

end
