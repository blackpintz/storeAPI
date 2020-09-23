
class ClothingItemsController < ApplicationController 
           
   def index
       clothes = ClothingItem.all
       render json: clothes
   end

   def show
    render json: ClothingItem.find(params[:id])
   end
   
   def search
       foundItem = ClothingItem.new_search(params[:search]).first
       render json: foundItem
   end
end



