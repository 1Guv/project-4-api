class BidSerializer < ActiveModel::Serializer
  attributes :id, :amount, :user
  has_one :user
  has_one :plate
end
