require 'jwt'

class AuthenticationController < ApplicationController
    def login 
        username = params[:user][:username]
        password = params[:user][:password]

        @user = User.find_by username: username
        if !@user 
            render json: {status: :unauthorized, error: "Invalid username or password"}
        else
            if !@user.authenticate password 
                render json: {status: :unauthorized, error: "Invalid username or password"}
            else
                secret = Rails.application.secrets.secret_key_base[0]
                token = JWT.encode({
                user_id: @user.id
                },secret) 
                render json: {token: token, user: @user.id}
            end
         end
    end
end
