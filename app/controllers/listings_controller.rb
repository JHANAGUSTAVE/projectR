class ListingsController < ApplicationController
    before_action :set_listing, only: [:edit, :destory]

    def index 
        @listings = Listing.all
    end

    def edit 
        @listing = Article.find(params[:id])
    end

    def destroy 
    end
end
