class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end  

  def create
    @product = Product.new(product_params)
    
    if @product.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  private
    def product_params
      params.require(:product).permit(:name, :short_name)
    end
end
