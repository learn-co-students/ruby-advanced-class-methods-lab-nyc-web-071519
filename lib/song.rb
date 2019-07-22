class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name, artist_name)
    @name = name
    @artist_name = artist_name
    Song.all << self
  end



  def self.find_by_name
    @@all.name
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  song = Song.new(name)

end
