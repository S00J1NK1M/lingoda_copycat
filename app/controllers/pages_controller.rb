class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # Read All
    @courses = Course.all
    @languages = @courses.map { |course| course.language.name }

    @languages_filtered = @languages.uniq
  end
end
