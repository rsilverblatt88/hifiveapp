class HifivesController < ApplicationController

# GET /hifives
  def index
    @hifives = Hifive.all
  end


  def show
  end

  def new
    @hifive = User.new
  end

  def edit
    @hifive = User.find(params[:id])
  end

  def create
    Hifive.create(hifive_params)
  end



  private
  def hifive_params
    params.require(:hifive).permit(
      :user_id,
      :to,
      :from,
      :phone,
      :message

      )
  end

end
