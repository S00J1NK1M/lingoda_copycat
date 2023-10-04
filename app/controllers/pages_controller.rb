class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # Read All
    @courses = Course.all
    @languages = @courses.map { |course| course.language.name }

    @languages_filtered = @languages.uniq

    if params[:query].present?
      @courses = Course.joins(:language).where("languages.name ILIKE '#{params[:query]}'")
    elsif params[:level_query].present?
      @courses = Course.where("level ILIKE '#{params[:level_query]}'")
    else
      "Sorry, no courses found."
    end
  end
end
