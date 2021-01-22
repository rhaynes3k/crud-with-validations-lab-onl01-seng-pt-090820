class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def index
    @song = Song.all
    #binding.pry
  end

  def create
    #binding.pry
    @song = Song.new(song_params)
    binding.pry
  end

private

  def song_params
    params.require(@song).permit(:title, :artist_name, :release_year, :released, :genre)
  end

end
