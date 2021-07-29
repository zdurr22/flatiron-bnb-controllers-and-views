class NeighborhoodsController < ApplicationController
    def show
        @neighborhood = Neighborhood.find(params[:id])
    end

    def new
        @neighborhood = Neighborhood.new
    end

    def create
        @neighborhood = Neighborhood.new
        if @neighborhood.save
            redirect_to neighborhood_path(@neighborhood)
        else
            render :new
        end
    end

    def edit
        @neighborhood = Neighborhood.find(params[:id])
    end

    def update
        @neighborhood = Neighborhood.find(params[:id])
        if @neighborhood.update(neighborhood_params)
            redirect_to neighborhood_path(@neighborhood)
        else
            render :edit
        end
    end

    private

    def neighborhood_params
        params.permit(:name, :city_id)
    end
end
