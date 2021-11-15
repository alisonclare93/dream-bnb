class DreamsController < ApplicationController
  before_action :find_dream, only: :show

  def index
    @dreams = Dream.all
  end

  def show

  end

  def new
  end

  def create
  end

  private

  def find_dream
    @dream = Dream.find(params[:id])
  end
end
