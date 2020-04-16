class Song
  @@all = []

  attr_accessor :name, :artist

  def intialize(name)
    @name = name
    @@all << self
  end
end
