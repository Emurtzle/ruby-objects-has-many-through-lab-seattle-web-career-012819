require "pry"

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(title, genre)
    song = Song.new(title, self, genre)
    @songs << song
  end
end


#[#<Song:0x00000001fd5bf0 @name="Ninety Nine Problems", @artist=#<Artist:0x00000001fd5df8 @name="Jay-Z", @songs=[#<Song:0x00000001fd5bf0 ...>]>, @genre=#<Genre:0x00000001fd5d08 @name="rap", @artists=[#<Artist:0x00000001fd5df8 @name="Jay-Z", @songs=[#<Song:0x00000001fd5bf0 ...>]>], @songs=[#<Song:0x00000001fd5bf0 ...>]>>]

#[#<Song:0x00000001fd5bf0 @name="Ninety Nine Problems", @artist=#<Artist:0x00000001fd5df8 @name="Jay-Z", @songs=[#<Song:0x00000001fd5bf0 ...>]>, @genre=#<Genre:0x00000001fd5d08 @name="rap", @artists=[#<Artist:0x00000001fd5df8 @name="Jay-Z", @songs=[#<Song:0x00000001fd5bf0 ...>]>], @songs=[#<Song:0x00000001fd5bf0 ...>]>>]
