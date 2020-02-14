class UserGraphsController < ApplicationController
    def index
        @user_graphs = UserGraph.all 
        render json: @user_graphs, include: [:user, :map]
    end

    def create 
        @user_graph = UserGraph.create(map_id: params[:graph], user_id: params[:user])
        render json: @user_graph 
    end


end
