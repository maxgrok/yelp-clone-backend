class PropertySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :address, :phone_number, :website, :reviews
  has_many :reviews
end
