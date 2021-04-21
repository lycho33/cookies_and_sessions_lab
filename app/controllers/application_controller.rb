class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :cart #it makes the controller's methods available to the view

  def cart
    session[:cart] ||= []
  end
end
