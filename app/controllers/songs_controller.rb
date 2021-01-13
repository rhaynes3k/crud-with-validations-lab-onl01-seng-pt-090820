class SongsController < ApplicationController

  def index
    @song = Song.all
  end

  def create
    @song = Song.new(params)
    binding.pry
  end

end
