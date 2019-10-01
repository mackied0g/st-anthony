class FoundsController < ApplicationController
    
   before_action :set_found, only: [:show, :update, :destroy]

 # GET /founds
 def index
  @founds = Found.all
  render(json: @founds) #relationships done for you!
 end

 
 def show
  render(json: @found, include: { recipes: { include: :comments } })
 end
 
 def create
   @found = Found.create(found_params)
     if @found.save
       render(json: @found)
     else
       render(json: @found.errors, status: :unprocessable_entity)
     end
 end
 
 def destroy
   @found.destroy
   render json: {message: "Item deleted."}
 end
 
 def update
   if @found.update(found_params)
       render json: @found
   else
       render json: @found.errors, status: :unprocessable_entity
   end
   end
 
 private

 def set_found
  @found = Found.find(params[:id])
 end
 
 def found_params
 params.permit(:location_id, :lost_id)
 end
 
end
