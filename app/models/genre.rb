class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
  end

  def artist_count
    # return the number of artists associated with the genre
  end

  def all_artist_names
    # return an array of strings containing every musician's name
  end
end

it '#song_count' do
    @genre.songs << Song.create(name: "Something By That Person Who Sings Stuff")
    @genre.save

    expect(@genre.song_count).to eq(4)
  end

  it '#artist_count' do
    expect(@genre.artist_count).to eq(3)
  end

  describe '#all_artist_names' do 
    it 'returns an array of strings containing every musicians name' do
      expect(@genre.all_artist_names).to eq(["MJ", "Adele", "James Brown"])
    end
  end