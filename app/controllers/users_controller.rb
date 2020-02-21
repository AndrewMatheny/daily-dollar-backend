class UsersController < ApplicationController
    def index
        @users = User.all 
        render :json => @users
    end

    def show
        @user = User.find(params[:id])
        render :json => @user
    end

    def create 
        @user = User.find_or_create_by(user_params)
        @user.save 
        render :json => @user
    end

    def edit 
        @user = User.find(params[:id])
    end 

    def update 
        @user = User.find(params[:id])
        @user.update(user_params)
        render :json => @user
    end 

    private 
    def user_params
        params.require(:user).permit(:indiv, :name, :email)
    end 
end
