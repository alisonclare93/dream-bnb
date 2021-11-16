class DreamsController < ApplicationController
  before_action :find_dream, only: %i[show destroy]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @dreams = Dream.where(sql_query, query: "%#{params[:query]}%")
    else
      @dreams = Dream.all
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @dream = Dream.new
  end

  def create
    @dream = Dream.new(dream_params)
    if @dream.save
      redirect_to dream_path(@dream)
    else
      render :new
    end
  end

  def destroy
    @dream.destroy
    redirect_to root_path
  end

  private

  def dream_params
    params.require(:dream).permit(:name, :description, :price, :photo)
  end

  def find_dream
    @dream = Dream.find(params[:id])
  end
end
