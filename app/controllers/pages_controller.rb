class PagesController < ApplicationController
  def home
    @dreams = Dream.all
  end

  #get top 5 dreams

  def top_dreams
    @top_dreams = Dream.where(rating: 5)
  end
end
