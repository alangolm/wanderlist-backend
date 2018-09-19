class User < ApplicationRecord
  has_many :destinations
  has_many :events, through: :destinations
  validates :username, {presence: true, uniqueness: true}
end
