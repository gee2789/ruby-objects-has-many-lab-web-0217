class Artist
  attr_accessor :name, :songs

  @@song_count=0 #class variable

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self  #define the self from artist from song.rb
    @songs << song
    @@song_count+=1
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
#    song.artist=self #artist refers to song.rb
#    @songs << song
#    @@song_count+=1
  end

  def self.song_count
    @@song_count
  end

end
