class ClothingItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  
  has_many :reviews
end
