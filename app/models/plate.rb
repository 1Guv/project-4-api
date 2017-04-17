class Plate < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :plate, length: { minimum: 2, maximum: 10 }, allow_blank: false
end
