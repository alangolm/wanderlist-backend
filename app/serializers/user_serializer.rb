class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password

  has_many :destinations
  has_many :events, through: :destinations
end
