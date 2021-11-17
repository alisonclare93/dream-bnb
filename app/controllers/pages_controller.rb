class PagesController < ApplicationController
  def home
    @dreams = Dream.all
  end

  def home
    @dreams = Dream.where("rating > ?", 3)
  end
end
