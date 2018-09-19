class EventSerializer < ActiveModel::Serializer
  attributes :id, :description, :date, :destination_id

  belongs_to :destination
end
