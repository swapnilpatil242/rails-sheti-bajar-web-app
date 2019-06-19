class  Api::V1::CategoriesController < ApplicationController

  def index
    categories = Category.all
    render json: {status: "success", code: 200, data: categories } and return
  end

  def products
    category = Category.find(params[:id])
    address = Address.where(city: params[:city], taluka: params[:taluka], district: params[:district]).first
    products = category.products.where(address_id: address.id)
    render json: {status: "success", code: 200, data: products } and return
  end
  
end
