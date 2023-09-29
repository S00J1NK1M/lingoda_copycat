class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # Read All
    @courses = Course.all
  end
end
