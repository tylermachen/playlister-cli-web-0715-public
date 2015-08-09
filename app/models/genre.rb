class Genre
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  extend Createable::ClassMethods

  attr_accessor :name, :songs
  @@instances = []

  def initialize(name = nil)
    @name = name
    @@instances << self
    @songs = []
    @artists = []
  end

  def artists
    @artists = @artists.uniq
  end

  def self.all
    @@instances
  end
end
