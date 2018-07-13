class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.songs.first.genre
  end

  def song_count
    self.songs.count
  end

  def genre_count
    #return the number of genres associated with the artist
    # inject
    self.songs.inject(0) do |sum, song|
      if song.genre
        sum += 1
      else
    end

  end
end
