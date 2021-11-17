class BookingsController < ApplicationController
  before_action :find_dream, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.dream = Dream.find(params[:dream_id])
    @booking.user = current_user
    if @booking.save
      redirect_to user_bookings_path(:user_id)
    end
  end

  def index
    @bookings = Booking.all
    @my_bookings = @bookings.select { |n| n.user == current_user }
  end

  private

  def find_dream
    @dream = Dream.find(params[:dream_id])
  end
end
