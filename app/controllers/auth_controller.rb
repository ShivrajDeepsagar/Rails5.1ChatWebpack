class AuthController < ApplicationController
  before_action :only_for_anonymous

  def new; end

  # Get username from params, save to session and redirect to chat window
  def create
    session[:username]= params[:username]
    redirect_to root_path
  end
  private

  def only_for_anonymous
    redirect_to root_path if session[:username]
  end
end
