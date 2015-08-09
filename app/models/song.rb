class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  extend Createable::ClassMethods

  attr_accessor :name, :artist, :genre
  @@instances = []

  def initialize(name = nil)
    @name = name
    @@instances << self
  end

  def genre=(genre)
    @genre = genre
    @genre.songs << self
  end

  def self.all
    @@instances
  end

  def to_s
    "#{self.artist.name} - #{self.name} [#{self.genre.name}]"
  end
end
