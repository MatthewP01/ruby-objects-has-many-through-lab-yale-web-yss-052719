require "pry"

class Artist

    attr_reader :name, :genre

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self

        @songs = []
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        this_song = Song.new(name, self, genre)
        #binding.pry

        # @songs << this_song
    end 

    def songs
        Song.all.select do |song_|
            song_.artist == self
        end
    end

    def genres
        Song.all.map do |gen|
            #binding.pry
            gen.genre
        end
    end
end