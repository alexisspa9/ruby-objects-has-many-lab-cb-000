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
@song = Song.new
    @song.artist = self
    @@song_count += 1
    @songs << @song

  end
  def add_song_by_name(name)
    @song = Song.new
    @song.name = name
    @song.artist = self
    @songs << @song
    @@song_count += 1

  end
  def song_count
    @@song_count
  end
end
