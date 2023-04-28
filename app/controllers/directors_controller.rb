class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render 'directors/index.html.erb'
  end

  def show
    @director = Director.find(params[:id])
    render 'directors/show.html.erb'
  end

end
 