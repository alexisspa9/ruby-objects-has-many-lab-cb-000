class Post
  attr_accessor :title, :author
  def initialize(title)
    @title = title

  end
  def author
    if self.author
      self.author.name
    else
      nil
    end
  end

end
