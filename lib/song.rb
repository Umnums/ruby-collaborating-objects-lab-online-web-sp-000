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

  def new_by_filename(file)
    artist = file.strip(" - ")[0]
    name = file.strip(" - ")[1]
    song = Song.new(name)
    song.artist = name
  end

end
file_name = 'Michael Jackson - Black or White - pop.mp3'
new_instance = Song.new_by_filename(file_name)