class ListingsController < ApplicationController
    def show
        @listing = Listing.find(params[:id])
    end

    def new
        @listing = Listing.new
    end

    def create
        @listing = Listing.new
        if @listing.save
            redirect_to listing_path(@listing)
        else
            render :new
        end
    end

    def edit
        @listing = Listing.find(params[:id])
    end

    def update
        @listing = Listing.find(params[:id])
        if @listing.update(listing_params)
            redirect_to listing_path(@listing)
        else
            render :edit
        end
    end

    private

    def listing_params
        params.permit(:address, :listing_type, :title, :description, :price, :neighborhood_id, :host_id)
    end
end
