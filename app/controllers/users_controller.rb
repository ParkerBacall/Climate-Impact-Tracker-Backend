class UsersController < ApplicationController

    before_action :authenticate, only: [:index]

    def index
        render json: @user,  include: {maps: {include: [:xes, :ys]}}
    end

    def create
        @user = User.create(user_params)
        render json: {user: @user}
    end

    private
    def user_params
        params.require(:user).permit([:name, :username, :email, :password])
    end
end
