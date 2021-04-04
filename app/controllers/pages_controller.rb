class PagesController < ApplicationController

  def home
    @video = Video.new
  end

  def about
  end

  def contact
  end 
end