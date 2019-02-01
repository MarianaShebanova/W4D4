class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            login(@user)
            render :show
        else
            flash.now[:errors] = @user.errors.full_messages
            render :show
        end
    end    

    def user_params
        params.require(:user).permit(:email, :password)
    end
end
