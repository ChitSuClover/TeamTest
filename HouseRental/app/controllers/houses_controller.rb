class HousesController < ApplicationController
  def index
    @houses = House.all
  end
  def new
    @house = House.new
    @house.stations.build
  end
  def create
    if @house.save
      @house = House.create(house_params)
      redirect_to houses_path, notice: "Created"
    else
      render :new
    end
  end
  private
  def house_params
    params.require(:house).permit(:house_name, :fee, :address, :built_year, :note,
      stations_attributes: [:line_name, :station_name, :walking_time, :line_name2, :station_name2, :walking_time2, :line_name3, :station_name3, :walking_time3])
  end
end
