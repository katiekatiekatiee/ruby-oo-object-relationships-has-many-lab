require "pry"

class Artist

    attr_accessor :name

    #@@song_count = 0

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

   
    def add_song(song)
        self.songs << song
        song.artist = self
        #@@song_count += 1
    end
    
    def add_song_by_name(name)
        #binding.pry
        song = Song.new(name)
        song.artist = self
        #@@song_count += 1
    end

    def self.song_count
        Song.all.count
    end

    
end
