class UserGraphsController < ApplicationController
    def index
        @user_graphs = UserGraph.all 
        render json: @user_graphs, include: [:user, :map]
    end

    def create 
        @user_graph = UserGraph.create(map_id: params[:graph], user_id: params[:user])
        render json: @user_graph 
    end

    def destroy 
        @user_graph = UserGraph.find_by(map_id: params[:id])
        @user_graph.destroy
    end


end
