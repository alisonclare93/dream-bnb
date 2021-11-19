class DreamsController < ApplicationController
  before_action :find_dream, only: %i[show destroy edit]

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
    @dream.user = current_user
    if @dream.save
      redirect_to dream_path(@dream)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @dream = Dream.find(params[:id])
    if @dream.update(dream_params)
      redirect_to dream_path(@dream)
    else
      render :edit
    end
  end

  def destroy
    @dream = Dream.find(params[:id])
    # @booking = Booking.where()
    redirect_to root_path
  end

  private

  def dream_params
    params.require(:dream).permit(:name, :description, :duration, :price, :photo)
  end

  def find_dream
    @dream = Dream.find(params[:id])
  end
end
