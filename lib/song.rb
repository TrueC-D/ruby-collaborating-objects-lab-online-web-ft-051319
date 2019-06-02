class Song
  attr_accessor :name, :artist

  def initialize (name)
    @name = name
  end

  def self.new_by_filename(filename)
    new_fn = filename.split (" - ")
    song = Song.new(new_fn[1])
    artist = Artist.find_or_create_by_name(new_fn[0])
    song.artist = artist
    song

  end

end
