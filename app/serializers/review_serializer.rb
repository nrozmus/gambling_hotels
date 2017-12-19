class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :length_of_stay, :comment
  has_one :room_type
  has_one :user
end
