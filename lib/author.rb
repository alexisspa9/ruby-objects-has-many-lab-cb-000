class Author
  attr_accessor :name
  @@song_count = 0
  def initialize(name)
    @name = name
    @posts = []

  end
  def posts
    @posts
  end
  def add_post(song)
    @songs << song
    song.artist = self
    @@song_count += 1

  end
  def add_song_by_name(name)
    c = Song.new
    c.name = name
    c.artist = self
    @@song_count += 1

  end
  def song_count
    @@song_count
  end
end
