class BidSerializer < ActiveModel::Serializer
  attributes :id, :amount
  belongs_to :user
  belongs_to :plate
end
