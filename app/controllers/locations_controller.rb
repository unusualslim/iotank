class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
  
    if @location.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  private
    def location_params
      params.require(:location).permit(:name, :external_id)
    end

end
