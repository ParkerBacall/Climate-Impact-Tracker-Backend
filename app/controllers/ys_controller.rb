class YsController < ApplicationController
    def index
        @ys= Y.all 
        render json: @ys
    end
end
