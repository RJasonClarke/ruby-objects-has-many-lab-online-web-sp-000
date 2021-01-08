class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    @@song_count += 1
    @songs << song
    song.artist = self
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end
end
