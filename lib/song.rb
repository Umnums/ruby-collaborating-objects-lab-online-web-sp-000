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

  def self.new_by_filename(file)
    artist = file.split(" - ")[0]
    name = file.split(" - ")[1]
    song = Song.new(name)
    song.artist = name
  end

end
file_name = 'Michael Jackson - Black or White - pop.mp3'
print new_instance = Song.new_by_filename(file_name)
