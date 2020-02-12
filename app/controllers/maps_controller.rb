class MapsController < ApplicationController
    def index
        @maps = Map.all
        render json: @maps
    end
end
