class Song < ApplicationRecord
  belongs_to :artist#, optional: :true
  has_many :song_genres
  has_many :genres, through: :song_genres

  scope :who_is_my_artist, -> {where(artist_id: 1)} 
  
  # def self.who_is_my_artist
  #   where(artist_id: 1)
  # end

  def self.first_five
    limit(5).order(created_at: :desc)
  end


end
