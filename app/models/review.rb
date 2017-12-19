class Review < ActiveRecord::Base
  belongs_to :room_type
  belongs_to :user

  validates_presence_of :length_of_stay
  validates_presence_of :comment
end
