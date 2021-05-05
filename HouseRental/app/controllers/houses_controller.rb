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
      House.create(house_params)
      redirect_to houses_path, notice: "Created"
    else
      render :new
    end
  end

end
