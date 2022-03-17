class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:username, :email))
     if @user.save
        flash[:notice] = "user was created successfully"
        redirect_to users_path
     else
        render 'new'
     end
    end

    def update
        @user = User.find(params[:id])
     if @user.update(params.require(:user).permit(:username, :email))
        redirect_to users_path
     else
        render 'edit'
     end
    end
    
    def delete
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end

end
