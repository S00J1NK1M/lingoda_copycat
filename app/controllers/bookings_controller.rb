class BookingsController < ApplicationController
  before_action :set_booking, only: %i[destroy]

  def index
    # we need the current user to filter
    @bookings = Booking.all
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
    redirect_to booking_path(@booking), status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :course_id)
  end
end
