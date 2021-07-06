require 'pry'

class Song
  attr_accessor :name, :artist_name

  @@all = []

  def initialize
    @name
    @artist_name
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def name
    @name
  end

  def self.name= (s_name)
    @name = s_name
  end


  def self.create
    new_song = Song.new
    new_song.save
    new_song
  end

  def self.new_by_name(song_name)
      song = Song.new
      song.name = song_name
      song
      #binding.pry
  end

  def self.create_by_name(song_name)
    song = Song.create
    song.name = song_name
    song
  end

  def self.find_by_name(song)
    self.all.find{|song_in_array| 
      song_in_array.name == song
    }
  end

  def self.find_or_create_by_name(song)
    if self.find_by_name (song)
      return self.find_by_name (song)
    else
      self.create_by_name(song)
    end
  end

  def self.name_list
    self.all.map{|song|song.name}
  end


  def self.alphabetical
     self.all.sort_by &:name
  end

  #could make name_from_file and artist_from_file helper methods
  def self.new_from_filename (file)
    text = file.split(" - ")
    song = Song.new_by_name(text[1][0...-4])
    song.artist_name = text[0]
    song
  end

  def self.create_from_filename (file)
    text = file.split(" - ")
    song = Song.create_by_name(text[1][0...-4])
    song.artist_name = text[0]
    song
  end

  def self.destroy_all
    self.all.clear
  end
  
  #Taylor Swift - Blank Space.mp3



end

song1 = Song.create_by_name ("Help")
song2 = Song.create_by_name("And")
#binding.pry
puts song1
