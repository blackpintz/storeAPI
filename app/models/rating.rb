class Rating < ApplicationRecord
    belongs_to :rate
    belongs_to :clothing_item
end
