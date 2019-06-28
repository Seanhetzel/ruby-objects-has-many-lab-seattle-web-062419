require 'pry'
class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author
    @author
  end

  def author=(author_name)
    @author = author_name
  end

  def author_name
    if author.name.is_a?(String)
      binding.pry
      author.name
    else
      nil
    end
  end

  def self.all
    @@all
  end
end
