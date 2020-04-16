class Artist
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(name)
    song = Song.new(name)
    song.artist = self
  end

  def self.all
    Song.all.select {|song| song.artist == self}
  end

end
