class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render 'movies/index.html.erb'
  end
  def release_year
    year = self[:year]
    year.year if year
  end
end
