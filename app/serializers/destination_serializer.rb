class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :date, :user_id, :latitude, :longitude, :city, :state, :country

  belongs_to :user
  has_many :events
end
