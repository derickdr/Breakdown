class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new user_params
        if @user.save
            flash[:notice] = 'Success'
        else
            redirect_to user_new_path
            flash[:notice] = 'Failure'
        end
    end

    def show
    end

    def index
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
