class Api::V1::UsersController < ApplicationController

  def create
    user = User.new()
    user.name =
    user.mobile_no =
    user.profile =
    user.is_verified =
    user.secrete_token =
    user.address_id =
    if user.save
      render json: {status: "success", code: 200, data: user } and return  
    else
      render json: {status: "error", code: 200, message: "not found." } and return
    end
  end
  
  def show
    user = User.find(params[:id])
    user_addr = user.address
    if user.present?
      render json: {status: "success", code: 200, data: user } and return
    else
      render json: {status: "error", code: 200, message: "not found." } and return
    end
  end

  def update
  end

  def authenticate
    user = User.first
    render json: {status: "success", code: 200, data: user } and return
  end

end