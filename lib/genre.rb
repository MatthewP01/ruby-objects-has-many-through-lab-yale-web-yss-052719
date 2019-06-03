require "pry"

class Genre

    attr_reader :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |gen|
            gen.genre == self
        end
    end

    def artists
        Song.all.map do |art|
            art.artist
        end
    end

end