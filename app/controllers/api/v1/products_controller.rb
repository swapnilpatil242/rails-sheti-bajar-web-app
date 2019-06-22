class  Api::V1::ProductsController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :product_user, only: [:create, :show, :destroy, :update, :user_products]
  before_action :product, only: [:show, :destroy, :update]

  def index
    address = Address.where(city: params[:city], taluka: params[:taluka], district: params[:district]).first
    products = address.products.where(is_deleted: false) if address.present?
    render json: {status: "success", code: 200, data: products } and return
  end
  
  def create
    product = Product.new
    product.title = params[:title]
    product.description = params[:description]
    product.quantity = params[:quantity]
    product.address_id = @user.address_id
    product.category_id = params[:category]
    product.user_id = @user.id
    if product.save
      render json: { status: "success", code: 200, message: "data saved." }
    else
      render json: { status: "error", code: 500, message: "something went wrong." }
    end
  end

  def show
    if @product.present?
      render json: { status: "success", code: 200, data: @product }
    else
      render json: { status: "error", code: 500, message: "data not found" }
    end
  end
  
  def update
    if @product.present?
      render json: { status: "success", code: 200, data: @product }
    else
      render json: { status: "error", code: 500, message: "data not found" }
    end
  end

  def destroy
    if @product.present? && @product.update(is_deleted: true)
      render json: { status: "success", code: 200, message: "product removed" }
    else
      render json: { status: "error", code: 500, message: "data not found" }
    end
  end

  def user_products
    products = @user.products.where(is_deleted: false)
    if products.present?
      render json: { status: "success", code: 200, data: products }
    else
      render json: { status: "error", code: 500, message: "data not found" }
    end
  end

  private
  def product_user
    @user = User.where(is_verified: true, secrete_token: request.headers["secrete-token"]).first    
  end
  
  def product
    @product = Product.where(id: params[:id], user_id: @user.id).first
  end

end
