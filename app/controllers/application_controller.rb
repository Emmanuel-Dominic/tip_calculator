class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  def index
  end

  def route_not_found
    respond_to do |format|
      format.html { render template: 'errors/not_found', status: :not_found }
      format.json { render json: { error: "Not Found" }, status: :not_found }
      format.any { head :not_found }
    end
  end
end
