class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # Read All
    @courses = Course.all
    @languages = @courses.map { |course| course.language.name }

    @languages_filtered = Language.all.pluck(:name).uniq.sort
    @levels = ["A1", "A2", "B1", "B2", "C1"]

    if params[:query].present? && params[:level_query].present?
      @courses = @courses.joins(:language)
      .where("languages.name ILIKE '#{params[:query]}'")
      .where("level ILIKE '#{params[:level_query]}'")
    elsif params[:query].present?
      @courses = @courses.joins(:language).where("languages.name ILIKE '#{params[:query]}'")
    elsif params[:level_query].present?
      @courses = @courses.where("level ILIKE '#{params[:level_query]}'")
    end
  end
end
