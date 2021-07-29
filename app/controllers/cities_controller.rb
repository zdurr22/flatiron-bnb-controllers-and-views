class CitiesController < ApplicationController
    def show
        @city = City.find(params[:id])
    end

    def new
        @city = City.new
    end

    def create
        @city = City.new
        if @city.save
            redirect_to city_path(@city)
        else
            render :new
        end
    end

    def edit
        @city = City.find(params[:id])
    end

    def update
        @city = City.find(params[:id])
        if @city.update(city_params)
            redirect_to city_path(@city)
        else
            render :edit
        end
    end

    private

    def city_params
        params.permit(:name)
    end
end
