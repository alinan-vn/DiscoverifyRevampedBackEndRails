class SongsController < ApplicationController
    def index
        songs = Song.all
        render json: SongSerializer.new(songs).to_serialized_json
    end

    def show
        song = Song.find_by(id: params[:id])
        render json: SongSerializer.new(song).to_serialized_json
    end
end

# def index
#     sightings = Sighting.all
#     render json: SightingSerializer.new(sightings).to_serialized_json
# end

# songs = Song.all
# render json: SongSerializer.new(songs).to_serialized_json

# def index
#     songs = Song.all
#     render json: songs, :include => {
#         :artist => {
#             :only => [:name, :video_url, :likes]
#         },
#         :genre => {
#             :only => [:name]
#         }                
#     },
#     :except => [:updated_at]
# end