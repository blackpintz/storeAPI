
class ClothingItemsController < ApplicationController 
           
   def index
       clothes = ClothingItem.all
       render json: clothes.to_json(include: {reviews: {only: :number}})
   end
           
end



