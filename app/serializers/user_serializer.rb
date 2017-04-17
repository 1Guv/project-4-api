class UserSerializer < ActiveModel::Serializer
  has_many :plates
  attributes :id, :username, :first_name, :last_name, :email, :full_name

  def full_name
    "#{object.first_name} #{object.last_name}"
  end
end
