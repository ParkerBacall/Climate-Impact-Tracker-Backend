class MapsController < ApplicationController
    def index
        @maps = Map.all
        render json: @maps, include: [:xes, :ys]
    end
end
