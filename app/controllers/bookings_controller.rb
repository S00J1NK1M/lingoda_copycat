class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to booking_path(@booking), status: :see_other
  end

  private
  def set_booking
    @booking = Booking.find(params[:id])
 end
# Only allow a list of trusted parameters through.
 def booking_params
   params.require(:booking).permit(:user_id, :course_id)
  end
end
