class SongsController < ApplicationController

  # genres/1/songs/new
  # songs/new

  def new
    @genre = Genres.find_by_id(params[:genre_id])
    @song = Song.new
  end

  private
    def songs_params

    end
end
