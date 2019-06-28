class Artist

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    #song = Song.new(name)
    new_song = Song.new(name)
    new_song.artist=(artist_name) = self

  end
end
