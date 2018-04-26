class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    return @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    @@genres.each do |x|
      if @@genre_count.has_key?(x)
        @@genre_count[x] += 1
      else
        @@genre_count[x] = 1
      end
    end
    return @@genre_count
  end

  def self.artist_count
    @@artists.each do |x|
      if @@artist_count.has_key?(x)
        @@artist_count[x] += 1
      else
        @@artist_count[x] = 1
      end
    end
    return @@artist_count
  end

end
