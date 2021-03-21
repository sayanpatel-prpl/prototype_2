class PagesController < ApplicationController

  def home
    @video = Video.new
  end
end