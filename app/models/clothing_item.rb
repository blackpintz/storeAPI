class ClothingItem < ApplicationRecord
    has_many :ratings, foreign_key: 'rate_id'
    has_many :reviews, through: :ratings, source: :rate
end
