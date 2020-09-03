class ClothingItem < ApplicationRecord
    has_many :ratings, foreign_key: 'rate_id'
    has_many :reviews, through: :ratings, source: :rate
    has_many :palettes
    has_many :colors, through: :palettes
    has_many :size_charts
    has_many :sizes, through: :size_charts
end
