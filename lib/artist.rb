class Artist

  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def songs
    @songs
  end

  def self.song_count
    Song.all.length
  end

end
