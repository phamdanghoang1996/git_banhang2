class CustomersController < ApplicationController
  before_action :loadheader
  def loadheader
    @categories = Category.select(:id,:name).all
  end
  def new
    @product = Product.find(params[:product_id])
    @customer = Customer.new
  end
  def create
    @customer = Customer.new(set_customer)
    if @customer.save
      flash[:notice] = 'Đã tiếp nhận thành công đơn hàng của khách hàng'
      redirect_to categories_path
    else
      flash[:notice] = 'Có lỗi! Vui lòng thử lại!'
      redirect_to @customer
    end
  end
  private
  def set_customer
      params.require(:customer).permit(:name,:email,:phonenumber,:address)
  end
end
