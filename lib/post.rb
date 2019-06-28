class Post

  attr_accessor :name, :author

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def author
    @author
  end

  def author=(author_name)
    @author = author_name
  end

  def self.all
    @@all
  end
end
