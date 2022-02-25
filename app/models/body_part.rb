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

end
