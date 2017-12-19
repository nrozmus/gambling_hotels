class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_type_id
  belongs_to :room_type
end
