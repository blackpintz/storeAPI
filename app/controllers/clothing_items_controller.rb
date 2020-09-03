
class ClothingItemsController < ApplicationController 
           
   def index
       clothes = ClothingItem.all
       render json: clothes
   end
           
end



