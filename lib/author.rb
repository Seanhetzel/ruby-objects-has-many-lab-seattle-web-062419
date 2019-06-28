class Author

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    #song = Song.new(name)
    new_post = Post.new(title)
    new_post.author = self
  end

  def self.post_count
    Post.all.count
  end
end
