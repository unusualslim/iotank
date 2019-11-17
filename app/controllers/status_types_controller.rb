class StatusTypesController < ApplicationController
  def index
    @status_types = StatusType.all
  end

  def new
    @status_type = StatusType.new
  end

  def create
    @status_type = StatusType.new(status_type_params)

    if @status_type.save
      redirect_to action: "index"
    else
      redirect_to 'new'
    end
  end

  private
    def status_type_params
      params.require(:status_type).permit(:name)
    end
end
