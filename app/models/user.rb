class User < ApplicationRecord
  has_secure_password
  has_many :plates
  validates :username, presence: true, uniqueness: true
end
