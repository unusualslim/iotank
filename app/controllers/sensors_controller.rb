class SensorsController < ApplicationController
  def index
    @sensors = Sensor.all
  end

  def new
    @sensor = Sensor.new
  end

  def edit
    @sensor = Sensor.find(params[:id])
  end

  def create
    @sensor = Sensor.new(sensor_params)

    if @sensor.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def update
    @sensor = Sensor.find(params[:id])

    if @sensor.update(sensor_params)
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  private
    def sensor_params
      params.require(:sensor).permit(:external_id, :description, :location_id)
    end

end
