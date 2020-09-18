class ClothingItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price

  
  has_many :reviews
  has_many :colors
  has_many :sizes
end
