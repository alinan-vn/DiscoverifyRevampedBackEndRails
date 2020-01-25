class GenresController < ApplicationController
    def index
        genres = Genre.all
        render json: GenreSerializer.new(genres).to_serialized_json
    end

    def show
        genre = Genre.find_by(id: params[:id])
        render json: GenreSerializer.new(genre).to_serialized_json
    end
end