class LostsController < ApplicationController
    
   before_action :set_lost, only: [:show, :update, :destroy]

 # GET /losts
 def index
  @losts = Lost.all
  render(json: @losts, include: :user) #relationships done for you!
 end

 
 def show
  render(json: @lost)
 end
 
 def create
   @lost = Lost.new(lost_params)
     if @lost.save
       render(json: @lost)
     else
       render(json: @lost.errors, status: :unprocessable_entity)
     end
 end
 
 def destroy
   @lost.destroy
   render json: {message: "Item deleted."}
 end
 
 def update
   if @lost.update(lost_params)
       render json: @lost
   else
       render json: @lost.errors, status: :unprocessable_entity
   end
   end
 
 private

 def set_lost
  @lost = Lost.find(params[:id])
 end
 
 def lost_params
 params.permit(:name)
 end
 
end
