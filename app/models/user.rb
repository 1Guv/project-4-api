class User < ApplicationRecord
  has_many :plates
  validates :username, presence: true, uniqueness: true
end
