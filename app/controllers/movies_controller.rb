class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render 'movies/index.html.erb'
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    if @movie
      @director = Director.where(id: @movie.director_id).first
      render 'movies/show.html.erb'
    else
      # handle the case where the movie doesn't exist
      render plain: "Movie not found", status: :not_found
    end
  end

  def movie_path(movie)
    "/movies/#{movie.id}"
  end
end
