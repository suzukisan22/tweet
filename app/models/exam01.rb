# == Schema Information
#
# Table name: exam01s
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Exam01 < ActiveRecord::Base
    validates :content, presence: true, length: { maximum: 255 }
end
