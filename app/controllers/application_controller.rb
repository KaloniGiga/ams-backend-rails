class ApplicationController < ActionController::API
    # before_action :authenticate_user!
    respond_to :html, :json
end
