class CoursesController < ApplicationController
  before_action :set_course, only: %i[ show ]

  def index
    @courses = Course.all
  end

  def show
  end

  private
    def set_course
      @course = Course.find(params[:id])
   end
  # Only allow a list of trusted parameters through.
   def course_params
     params.require(:course).permit(:description, :level, :start_at, :end_at, :language_id, :teacher_id)
    end
end
