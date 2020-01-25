class ArtistsController < ApplicationController
    def index
        artists = Artist.all
        render json: ArtistSerializer.new(artists).to_serialized_json
    end

    def show
        artist = Artist.find_by(id: params[:id])
        render json: ArtistSerializer.new(artist).to_serialized_json
    end
end