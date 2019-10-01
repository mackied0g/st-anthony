class LocationsController < ApplicationController
    
   before_action :set_location, only: [:show, :update, :destroy]

   # GET /locations
   def index
      @locations = Location.all
      render(json: @locations, include: :founds) #relationships done for you!
   end

   
   def show
      render(json: @location, include: :founds)
   end
   
   def create
      @location = Location.new(location_params)
      if @location.save
         render(json: @location)
      else
         render(json: @location.errors, status: :unprocessable_entity)
      end
   end
   
   def destroy
      @location.destroy
      render json: {message: "Location deleted."}
   end
   
   def update
      if @location.update(location_params)
         render json: @location
      else
         render json: @location.errors, status: :unprocessable_entity
      end
   end
   
   private

   def set_location
      @location = Location.find(params[:id])
   end
   
   def location_params
      params.permit(:name)
   end

end
