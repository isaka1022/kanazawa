class SpotsController < ApplicationController
  def new
    @spot = Spot.new
  end

  def create
    spot = Spot.create(spot_params)
    redirect_to root_path
  end

  def show
    @spot = Spot.find(params[:id])
  end

  private
  def spot_params
    params.require(:spot).permit(:name, :address, :start_time, :last_admission_time, :end_time, :fee, :parking, :picture)
  end

end
