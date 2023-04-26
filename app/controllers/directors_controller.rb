class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render 'directors/index.html.erb'
  end
  def show
    @director = Director.find(params[:id])
  end

  def youngest
    @directors = Director.all
    @youngest_director = @directors.min_by { |director| director.dob }
    render 'directors/youngest.html.erb'
  end

  def eldest
    @directors = Director.all
    @oldest_director = @directors.max_by { |director| director.dob }
    render 'directors/eldest.html.erb'
  end
  
end
