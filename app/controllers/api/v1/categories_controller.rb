class  Api::V1::CategoriesController < ApplicationController

  def index
    categories = Category.all
    render json: {status: "success", code: 200, data: categories } and return
  end

  # Return products by category and city
  def products
    category = Category.find(params[:id])
    address = Address.where(city: params[:city], taluka: params[:taluka], district: params[:district]).first
    products = category.products.where(address_id: address.id, is_deleted: false)
    render json: {status: "success", code: 200, data: products } and return
  end
  
end
