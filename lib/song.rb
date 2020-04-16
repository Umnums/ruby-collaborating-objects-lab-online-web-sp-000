class Song
  @@all = []
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_by_filename(name)
    song = Song.new(name.strip(" - ")[0])
    song.artist = name.strip(" - ")[1]
  end

  def artist_name=(name)
    self.artist = @name
  end
end
