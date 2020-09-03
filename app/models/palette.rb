class Palette < ApplicationRecord
  belongs_to :clothing_item
  belongs_to :color
end
