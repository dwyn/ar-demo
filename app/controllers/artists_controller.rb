class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
    @artist.songs.build
  end
  
  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end 

  private
    def artist_params
      params.require(:artist).permit(
        :name, 
        :country, 
        :songs_attributes => [
          :title,
          :length
        ]
      )
    end

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