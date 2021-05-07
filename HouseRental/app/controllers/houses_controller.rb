class HousesController < ApplicationController
  before_action :set_house, only: [:edit, :show, :destroy, :update]
  def index
    @houses = House.all
  end
  def new
    @house = House.new
    @house.stations.build
  end
  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to houses_path, notice: "Created"
    else
      render :new
    end
  end
  def show
    @station = Station.find_by(house_id: params[:id])
  end
  def edit
  end
  def update
    if @house.update_attributes(house_params)
      redirect_to houses_path, notice: "Updated"
    else
      render :new
    end
  end
  def destroy
    @station = Station.find_by(house_id: params[:id])
    @house.destroy
    @station.destroy
    redirect_to houses_path, notice: "Deleted"
  end
  private
  def set_house
    @house = House.find(params[:id])
  end
  def house_params
    params.require(:house).permit(:house_name, :fee, :address, :built_year, :note,
      stations_attributes: [:id, :line_name, :station_name, :walking_time, :line_name2, :station_name2, :walking_time2, :line_name3, :station_name3, :walking_time3, :_destroy])
  end
end
