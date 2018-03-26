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
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1

  end
  def add_post_by_title(name)
    c = Post.new(name)
    c.author = self
    @@post_count += 1
    @posts << c

  end
  def self.post_count
    @@post_count
  end
end


class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count +=1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@post_count +=1
  end

  def posts
    @posts 
  end

  def self.post_count
    @@post_count
  end
end
