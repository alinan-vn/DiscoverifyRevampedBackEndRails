class SongsController < ApplicationController
    def index
        songs = Song.all
        render json: SongSerializer.new(songs).to_serialized_json
        # render json: JSON.pretty_generate(SongSerializer.new(songs).to_serialized_json)
    end

    def show
        song = Song.find_by(id: params[:id])
        render json: SongSerializer.new(song).to_serialized_json
    end
end
