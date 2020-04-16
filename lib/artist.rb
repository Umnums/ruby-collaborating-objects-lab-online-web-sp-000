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
    flag = nil
    self.all.each do |artist|
      if artist.name == name
        flag = song
      end
    end
    if flag == nil
      flag = Artist.new(name)
    end
    flag
  end
end
