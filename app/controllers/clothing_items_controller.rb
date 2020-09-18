
class ClothingItemsController < ApplicationController 
           
   def index
       clothes = ClothingItem.all
       render json: clothes
   end

   def show
    render json: ClothingItem.find(params[:id])
    end
           
end



