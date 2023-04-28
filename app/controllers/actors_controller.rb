class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render 'actors/index.html.erb'
  end

  def show
    the_id = params.fetch("id")
    @characters = Character.where({ :actor_id => the_id })
    @the_actor = Actor.where({ :id => the_id }).first

    render 'actors/show.html.erb'
  end


end
