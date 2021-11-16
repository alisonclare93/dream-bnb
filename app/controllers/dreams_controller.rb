class DreamsController < ApplicationController
  before_action :find_dream, only: %i[show destroy]

  def index
    @dreams = Dream.all
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
    @dream.destroy
    redirect_to root_path
  end

  private

  def find_dream
    @dream = Dream.find(params[:id])
  end
end
