class DreamsController < ApplicationController
  before_action :find_dream, only: :show

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @dreams = Dream.where(sql_query, query: "%#{params[:query]}%")
    else
      @dreams = Dream.all
    end
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
