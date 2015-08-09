class LibraryParser
  attr_accessor :path

  def initialize(path = 'db/data')
    @path = path
  end

  def files
    @files = Dir.entries(@path)[2..-1]
  end

  def parse_filename(filename)
    reg_ex = filename.split(/\s-\s|\.|\[|\]/)
    @parts = [reg_ex[0].strip, reg_ex[1].strip, reg_ex[2].strip]
  end

  def build_song(artist, song, genre)
    song = Song.new(song)
    song.artist = Artist.new(artist)
    song.genre = Genre.new(genre)
    song
  end

  def call
    files.each do |file|
      f = parse_filename(file)
      build_song(f[0],f[1],f[2])
    end
  end
end
