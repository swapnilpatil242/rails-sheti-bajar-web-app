class  Api::V1::ProductsController < ApplicationController

  def index
    address = Address.where(city: params[:city], taluka: params[:taluka], district: params[:district]).first
    products = address.products
    render json: {status: "success", code: 200, data: products } and return
  end
  
end
