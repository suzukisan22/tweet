class Exam01 < ActiveRecord::Base
    validates :content, presence: true, length: { maximum: 255 }
end
