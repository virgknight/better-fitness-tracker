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
    validates :workout_id, presence: true

    belongs_to :workout,
    class_name: :Workout

    has_many :log_entries,
    class_name: :LogEntry,
    dependent: :destroy
end
