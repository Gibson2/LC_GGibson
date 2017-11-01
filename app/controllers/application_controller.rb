class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #load_and_authorize_resource
  #before_action :authenticate_user!
  #before_action :authenticate_user!, except: [:index, :news, :contact, :about, :service]


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message  
  end

end
