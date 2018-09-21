class User < ApplicationRecord
  has_secure_password
  has_many :destinations
  has_many :events, through: :destinations
  validates :username, {presence: true, uniqueness: true, case_sensitive: false}
end
