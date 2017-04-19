class PlateSerializer < ActiveModel::Serializer
  has_many :bids
  attributes :id, :plate, :meaning, :sell_price, :plate_length, :status, :start_date, :expiry_date, :reserve
  has_one :user

  def plate_length
    "#{object.plate.gsub(/\s+/, "").length}"
  end
end
