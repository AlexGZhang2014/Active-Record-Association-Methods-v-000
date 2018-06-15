class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    
  end
end

  it '#drake_made_this' do
    expect(@song.drake_made_this).to be_a(Artist)
    expect(@song.drake_made_this.name).to eq("Drake")
  end