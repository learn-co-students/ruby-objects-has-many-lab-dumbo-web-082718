class Song

  attr_accessor :name, :artist, :songs

  def initialize(name)
    @name = name
    @@all << self
  end

 #awareness of itself
  def self.all
    @@all
  end


  def artist_name
    if self.artist
      return self.artist.name
    else
      return nil
    end
  end
  @@all = []

end
