class PagesController < ApplicationController
  def home

    # Read All
    @courses = Course.all
  end
end
