class PlateSerializer < ActiveModel::Serializer
  attributes :id, :plate, :meaning, :sell_price, :plate_length
  has_one :user

  def plate_length
    "#{object.plate.gsub(/\s+/, "").length}"
  end
end
