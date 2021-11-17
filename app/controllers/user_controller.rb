class UserController < ApplicationController
  def show
    @user = current_user
    @bookings = @user.bookings
    @dreams = @user.dreams
  end
end
