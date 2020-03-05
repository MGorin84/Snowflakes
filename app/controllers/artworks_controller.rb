class ArtworksController < ApplicationController
  before_action :set_artwork, only: [:show, :edit, :update, :destroy]
  before_action :authorize_owner, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /artworks
  # GET /artworks.json
  def index
    @artworks = Artwork.all
  end

  # GET /artworks/1
  # GET /artworks/1.json
  def show
  end

  # GET /artworks/new
  def new
    @artwork = Artwork.new
  end

  # GET /artworks/1/edit
  def edit
  end

  # POST /artworks
  # POST /artworks.json
  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = current_user
    respond_to do |format|
      if @artwork.save
        format.html { redirect_to @artwork, notice: "Artwork was successfully created." }
        format.json { render :show, status: :created, location: @artwork }
      else
        format.html { render :new }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artworks/1
  # PATCH/PUT /artworks/1.json
  def update
    @artwork = Artwork.find(params[:id])
    @artwork.update_attribute :sold, true
  end

  # DELETE /artworks/1
  # DELETE /artworks/1.json
  def destroy
    @artwork.destroy
    respond_to do |format|
      format.html { redirect_to artworks_url, notice: "Artwork was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_artwork
    @artwork = Artwork.find(params[:id])
  end

  def authorize_owner
    return true if @artwork.user == current_user

    flash[:notice] = "You are not permitted to change that photo."
    redirect_to "/"

    return false
  end

  # Only allow a list of trusted parameters through.
  def artwork_params
    params.require(:artwork).permit(:title, :description, :price, :picture, :sold)
  end
end
