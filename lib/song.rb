class Song
  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
    @artist = nil
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file)
    this_artist = file.split(" - ")[0]
    name = file.split(" - ")[1]
    song = Song.new(name)
    song.artist = this_artist
    song
  end

  def artist_name=(name)
    if Artist.all.include?(name)
      return Artist.all.find(name)
    else
      artist = Artist.new(name)
      artist
    end
  end

end
# file_name = 'Michael Jackson - Black or White - pop.mp3'
# new_instance = Song.new_by_filename(file_name)
# new_instance.artist = "mike"
# print new_instance.artist

this = Song.new("this")
this.artist_name=
