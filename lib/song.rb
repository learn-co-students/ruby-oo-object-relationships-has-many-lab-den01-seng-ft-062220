require 'pry'

class Song
    attr_accessor :name
    attr_reader :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist=(artist)
        @artist = artist
        Artist.song_count += 1
        artist.songs << self
    end

    def artist_name
        @artist ? @artist.name : nil
    end

    def self.all
        @@all
    end

end