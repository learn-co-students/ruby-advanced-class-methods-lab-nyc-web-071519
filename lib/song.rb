require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []
  def initiate
  end

  def self.create
    song = Song.new
    song.save
    song
  end
  
  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = Song.new
    song.name = name
    song.save
    song
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_by_name(name)
    self.all.find {|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    found = Song.find_by_name(name)
    found ? found : Song.create_by_name(name)
  end

  def self.alphabetical
    self.all.sort_by {|song| song.name}
  end

  def self.new_from_filename(filename)
    song = Song.new_by_name(filename.split(" - ").last.delete_suffix!('.mp3'))
    song.artist_name = filename.split(" - ").first
    song
  end

  def self.create_from_filename(filename)
    song = Song.new_by_name(filename.split(" - ").last.delete_suffix!('.mp3'))
    song.artist_name = filename.split(" - ").first
    song.save
    song
  end

  def self.destroy_all
    @@all = []
  end
end


