class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :date, :user_id, :latitude, :longitude, :city, :country

  belongs_to :user
  has_many :events
end
