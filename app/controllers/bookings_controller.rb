class BookingsController < ApplicationController
  before_action :set_booking, only: %i[destroy]

  def index
    # we need the current user to filter
    @bookings = Booking.all
    # start_date = params.fetch(:start_date, Date.today).to_date
    # @meetings = Meeting.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  def new
    # @booking = Booking.new
  end

  def create
    # Find a specific course
    @course = Course.find(params[:course_id])
    @booking = Booking.new

    @booking.course = @course

    # Find the current user
    @booking.user = current_user

    # Save
    @booking.save

    # Go to bookings/index
    redirect_to bookings_path
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :course_id)
  end
end
