class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render 'movies/index.html.erb'
  end
  def release_year
    year = self[:year]
    year.year if year
  end
  def show
    @movie = Movie.where(params[:id])
    @director = @movie.director
    render 'movies/show.html.erb'
  end
  

end
