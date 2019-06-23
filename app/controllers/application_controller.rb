class ApplicationController < ActionController::Base
  before_action :api_authenticate, if: :api_request?

  def api_authenticate
    unless ENV["API_SECRETE_TOKEN"] == request.headers["API-SECRETE-TOKEN"]
      render json: {status: "error", code: 401, message: "UnAuthorized request" }, status: :unauthorized
    end
  end

  private
  def api_request?
    request.format.json? || request.format.xml?
  end
end
