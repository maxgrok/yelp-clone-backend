class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
  belongs_to :property
end
