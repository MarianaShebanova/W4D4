class SessionsController < ApplicationController

    def new
        
    end

    def  create
        user = User.find_by_credentials(params[:user][:email], params[:user][:password])
        if user
            login(user)
            render :show
        else
            flash.now[:errors] = "No GO"
            render :show
        end
    end

    def desrtoy
        debugger
        logout
        redirect_to new_session_url
    end
end
