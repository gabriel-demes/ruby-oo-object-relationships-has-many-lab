class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        self.name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        add_song(Song.new(name))
    end

    def self.song_count
        count = 0
        all.each {|artist| count += artist.songs.length }
        count
    end

    
end