class ProductsController < ApplicationController
  before_action :loadheader
  before_action :set_product, only: [:show]
  def loadheader
    @categories = Category.select(:id,:name).all
  end
  def show
  end
  private
    def set_product
      @product = Product.find(params[:id])
    end
end
