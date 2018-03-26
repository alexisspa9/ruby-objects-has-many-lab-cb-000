class Author
  attr_accessor :name
  @@post_count = 0
  def initialize(name)
    @name = name
    @posts = []

  end
  def posts
    @posts
  end
  def add_post(song)
    @posts << song
    song.artist = self
    @@post_count += 1

  end
  def add_post_by_title(name)
    c = Song.new
    c.name = name
    c.artist = self
    @@song_count += 1

  end
  def song_count
    @@song_count
  end
end
