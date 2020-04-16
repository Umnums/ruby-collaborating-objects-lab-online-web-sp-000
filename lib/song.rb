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
    flag = nil
    Artist.all.each do |artist_name|
      if artist_name.name == name
        flag = artist_name
      end
    end
    if flag == nil
      artist = Artist.new(name)
      flag = artist
    end
    flag
  end

end
# file_name = 'Michael Jackson - Black or White - pop.mp3'
# new_instance = Song.new_by_filename(file_name)
# new_instance.artist = "mike"
# print new_instance.artist

this = Song.new("this")
this.artist_name="Michael"
