Artist
has_many :songs
has_many :genres, through: :songs

Song
belongs_to :artist
has_many :song_genres
has_many :genres, through: :song_genres

Song_Genres
belongs_to :song
belongs_to :genre

Genre
has_many :song_genres
has_many :songs, through: :song_genres