class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    self.artists.collect {|artist| artist.name}
  end
end

  describe '#all_artist_names' do 
    it 'returns an array of strings containing every musicians name' do
      expect(@genre.all_artist_names).to eq(["MJ", "Adele", "James Brown"])
    end
  end