class Color < ApplicationRecord
    has_many :palettes
    has_many :clothing_items, through: :palettes
end
