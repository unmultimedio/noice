class PagesController < ApplicationController
  def dashboard
    redirect_to root_path unless user_signed_in?
  end
end
