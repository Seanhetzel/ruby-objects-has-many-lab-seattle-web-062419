class Post

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist
    @artist
  end

  def artist=(artist_name)
    @artist = artist_name
  end

  def self.all
    @@all
  end
end
