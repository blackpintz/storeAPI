class Rate < ApplicationRecord
    has_many :ratings
    has_many :clothing_items, through: :ratings
end
