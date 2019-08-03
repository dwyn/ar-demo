class Song < ApplicationRecord
  belongs_to :artist#, optional: :true
  has_many :song_genres
  has_many :genres, through: :song_genres

end
