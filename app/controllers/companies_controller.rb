class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

    if @company.save
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  private
    def company_params
      params.require(:company).permit(:name)
    end
end
