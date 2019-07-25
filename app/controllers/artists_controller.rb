class ArtistsController < ApplicationController

end

















  def new
    @artist = Artist.new
    @song = @artist.songs.build
  end

def show
  @artist = Artist.find(params[:id])
end

  def create
    binding.pry
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

#  