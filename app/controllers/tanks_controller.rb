class TanksController < ApplicationController
  def index
    @tanks = Tank.all
  end

  def new
    @tank = Tank.new
  end

  def edit
    @tank = Tank.find(params[:id])
  end 

  def create
    @tank = Tank.new(tank_params)

    if @tank.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def update
    @tank = Tank.find(params[:id])

    if @tank.update(tank_params)
      redirect_to @tank
    else
      render 'edit'
    end
  end

  private
    def tank_params
      params.require(:tank).permit(:external_id, :product_id, :location_id, :capacity, :bottom, :manifolded)
    end 
end
