class Artist
  attr_accessor :song, :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song)
    song = Song.new(song)
    self.add_song(song)
  end

  def self.song_count
    Song.all.count
  end
end
