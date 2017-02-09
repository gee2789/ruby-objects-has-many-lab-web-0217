class Song
  attr_accessor :name, :artist

  def initialize(song)
    @name = song
  end

  def artist=(artist) #artist_method refers to artist.rb
    @artist = artist
  end

  def artist_name
    if @artist
      return @artist.name
    end
    nil
  end

end
