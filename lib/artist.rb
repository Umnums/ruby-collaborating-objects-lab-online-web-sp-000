class Artist
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(name)

    name.artist = self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

end
