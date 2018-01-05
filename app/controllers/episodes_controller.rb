class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episodes = Episode.find(params[:id])
  end
  
end
