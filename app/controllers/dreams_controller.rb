class DreamsController < ApplicationController
  before_action :find_dream, only: :show

  def index
    @dreams = Dream.all
  end

  def show
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

  private

  def dream_params
    params.require(:dream).permit(:name, :description, :price, :photo)
  end

  def find_dream
    @dream = Dream.find(params[:id])
  end
end
