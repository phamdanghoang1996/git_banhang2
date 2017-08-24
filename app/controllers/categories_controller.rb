class CategoriesController < ApplicationController
  before_action :loadheader, only: %i[index show]
  def loadheader
    @categories = Category.select(:id,:name).all
  end
  def index
    @products = Product.all
  end
  def show
    @product = Product.where(category_id: params[:id])
  end
end
