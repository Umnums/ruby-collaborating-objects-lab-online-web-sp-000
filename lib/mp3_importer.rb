class MP3Importer

  attr_accessor :path
  def initialize(file)
    @path = file
  end

  def files
    Dir[@path]
  end

end
