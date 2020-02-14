class XesController < ApplicationController
    def index
        @xes = X.all
        render json: @xes
    end
end
