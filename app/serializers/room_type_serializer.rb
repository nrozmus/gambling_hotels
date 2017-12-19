class RoomTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :photo
  has_many :rooms
end
