class Song

  attr_accessor :name, :artist

  @@all=[]
  @@song_count=0

  def initialize(name)
    @name = name
    @@all << self
    @@song_count+=1
  end

  def self.all
    @@all
  end

  def artist_name
    if artist
      artist.name
    else
      nil
    end
  end

  def self.song_count
    @@song_count
  end
end
