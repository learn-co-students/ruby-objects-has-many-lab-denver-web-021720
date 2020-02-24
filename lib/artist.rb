require 'pry'
class Artist

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def all
        @@all
    end
    
    def songs
        @songs = Song.all.select do |song|
            song.artist == self
        end
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        add_song(new_song)
    end

    def self.song_count
        Song.all.size
    end

end