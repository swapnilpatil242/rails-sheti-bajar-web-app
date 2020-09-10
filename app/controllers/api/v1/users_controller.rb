class Api::V1::UsersController < ApplicationController
  # before_action :validate_params
  # skip_before_action :verify_authenticity_token, if: :json_request?
  skip_before_action :verify_authenticity_token
  skip_before_action :user_authenticate, :only => [:create]

  def create
    address = Address.where(village_id: params[:village_id], taluka_id: params[:taluka_id], district_id: params[:district_id]).first
    unless address.present?
      address = Address.create(village_id: params[:village_id], taluka_id: params[:taluka_id], district_id: params[:district_id])
    end
    user = User.new()
    user.name = params[:name]
    user.mobile_no = params[:mobile_no]
    user.is_verified = params[:is_verified]
    user.address_id = address.id
    user.role_id = Role.find_by_name("नागरिक")['id']
    if user.save!
      render json: {status: "success", code: 200, data: user } and return  
    else
      render json: {status: "error", code: 500, message: "Something went wrong." } and return
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

  # private
  # def validate_params
  #   puts "------- call validate params.........."
  #   params_include?(:users, %w(name mobile_no is_verified city town district))
  # end

  # protected
  # def json_request?
  #   puts "request....."
  #   p request.format.json
  #   request.format.json?
  # end

end