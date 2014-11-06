class HifivesController < ApplicationController
# GET /hifives
  def index
    @hifives = Hifive.all
  end


  def show
  end

  def new
    @user_id = session[:user_id]
    @hifive = Hifive.new
    render :new, :layout => false
  end

  def unique
    @hifive = Hifive.new
  end

  def edit
    @hifive = Hifive.find(params[:id])
  end

  def create
    Hifive.create(hifive_params)
    hi5(hifive_params["phone"], hifive_params["from"], hifive_params["message"])
    redirect_to user_path(session[:user_id])
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
