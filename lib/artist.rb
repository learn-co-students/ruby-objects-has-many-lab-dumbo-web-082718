
class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    #everytime a new artist is created, they get an empty array to put their songs in
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    #LadyGAGA.add_song(bad_romance)
    #the thing that is "belonged to" is always going to have the ID of the thing that it belongs to
    #song belongs to the artist, repsonsibility of the song to know it belongs to the artist
  end

  def add_song_by_name(name)
    name = Song.new(name)
    # create new songs
    @songs << name
    # push new songs into the array of song
    name.artist = self
    # song belongs to that artist 
  end

  def self.song_count
    Song.all.count
  end

end
