class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[show destroy update]
  def index
    @artists = Artist.all
    render json: @artists
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      render json: @artist, status: :created, location: @artist
    else
      render json: @artist.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @artist.destroy
  end

  def update
    if @artist.update(artist_params)
      render json: @artist
    else 
      renser json: @artist.errors, status: :unprocessable_entity
    end
  end


  private
    def set_artist
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:name, :dob, :gender, :address, :no_of_albums_released, :first_release_year)
    end
end
