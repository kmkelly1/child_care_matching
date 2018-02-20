class ApplicationController < ActionController::Base
  before_action :authenticate_parent!

  protect_from_forgery with: :exception
end
