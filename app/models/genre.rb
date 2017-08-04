class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
  end

  def artist_count
    self.songs.map {|s| s.artist}.length
  end

  def all_artist_names
    self.songs.map {|s| s.artist.name}
  end
end
