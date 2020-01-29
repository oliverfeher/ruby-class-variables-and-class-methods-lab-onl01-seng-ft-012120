class Song
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize (name, artist, genre)
    @name = name
    @artists = artist
    @genre = genre
    
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def count
    @@count
  end
  
  def genres
    @@genres.uniq
  end
  
  def artists
    @@artists.uniq
  end
  
  def genre_count
    @@genres.map { |genre, count| genre count +=1}.to_h
  end
end