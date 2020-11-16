require 'pry'
class Artist 
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def add_song(song)
        @songs << song
        song.artist = self 
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.all 
        @@all
    end

    def self.find_or_create_by_name(name)
        self.all.find {|artist| artist.name == name}  || Artist.new(name)
    end

    def print_songs
        self.songs.collect {|song| puts song.name}

        
    end



end