class Artist
  attr_accessor :name
  @@song_count = 0
  def initialize(name)
    @name = name
    @songs = []

  end
  def songs
    @songs
  end
  def add_song(song)
    @songs << song
    song.artist = self

  end
  def add_song_by_name(name)
    c = Song.new
    c.name = name
    c.artist = self
  end
  def song_count
    
    
  end
end
