class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(name)
    song = Song.new(name, self)
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end
end
