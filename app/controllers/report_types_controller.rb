class ReportTypesController < ApplicationController
  def index
    @report_types = ReportType.all
  end

  def new
    @report_type = ReportType.new
  end

  def create
    @report_type = ReportType.new(report_type_params)

    if @report_type.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  private
    def report_type_params
      params.require(:report_type).permit(:name, :short_name)
    end

end
