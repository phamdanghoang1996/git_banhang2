class Admin::ProductsController < ApplicationController
  layout 'admin/admin'
  before_action :set_products, only: %i[show update]
  def index
    @products = Product.all
  end
  def new
    @product = Product.new
  end
  def create
    @product = Product.new(set_product)
    @product.save
  end
  def update
    @product = Product.new
  end
  private
  def set_product
    params.require(:product).permit(:name,:price,:quantity,:introduce,:category_id)
  end
  def set_products
    @product = Product.find(params[:id])
  end
end
