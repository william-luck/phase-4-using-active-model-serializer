class SummariesController < ApplicationController

    def index
        movies = Movie.all
        # Have to specify the name of the serializer... 
        render json: movies, each_serializer: MovieSummarySerializer
    end

    def show
        movie = Movie.find(params[:id])
        # Have to specify the name of the serializer... 
        render json: movie, serializer: MovieSummarySerializer
    end
end
