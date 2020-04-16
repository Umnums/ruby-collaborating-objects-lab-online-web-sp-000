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

  def self.find_or_create_by_name(name)
    self.all.include?{|song| song.name == name}
      self.all.find{|song| song.name == name}
    else
      new_artist = Artist.new(name)
    end
  end
end
