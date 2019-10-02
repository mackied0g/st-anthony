class UsersController < ApplicationController
    
   before_action :set_user, only: [:show, :update, :destroy]

 # GET /users
 def index
  @users = User.all
  render(json: @users, include: :losts) #relationships done for you!
 end

 
 def show
  render(json: @user, include: :losts)
 end
 
 def create
   @user = User.create(user_params)
     if @user.save
       render(json: @user)
     else
       render(json: @user.errors, status: :unprocessable_entity)
     end
 end
 
 def destroy
   @user.destroy
   render json: {message: "Item deleted."}
 end
 
 def update
   if @user.update(user_params)
       render json: @user
   else
       render json: @user.errors, status: :unprocessable_entity
   end
   end
 
 private

 def set_user
  @user = User.find(params[:id])
 end
 
 def user_params
 params.permit(:username, :password)
 end
 
end
