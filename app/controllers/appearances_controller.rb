class AppearancesController < ApplicationController
  
  def new
    @appearance = Appearance.new
  end

  def index
    @appearances = Appearance.all
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  def create
    @appearance = Appearance.new(app_params)
    if @appearance.save
      redirect_to appearance_path(@appearance.episode_id)
    else
      
    end
  end



  private
    def app_params
      params.require(:appearance).permit(:rating, :user_id, :episode_id)
    end
end
