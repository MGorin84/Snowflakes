class DashboardController < ApplicationController
    before_action :authenticate_user!
    def index
         @artworks = Artwork.where(user_id: current_user.id)
    end
end
