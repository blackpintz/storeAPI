class Size < ApplicationRecord
    has_many :size_charts
    has_many :clothing_items, through: :size_charts
end
