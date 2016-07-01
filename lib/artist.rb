require 'pry'

class Artist
    extend Memorable::ClassMethods, Findable
    include Memorable::InstanceMethods, Paramable
    
    attr_accessor :name
    attr_reader :songs
    
    @@artists = []
    
    def initialize
        super
        @songs = []
    end
    
    def add_song(song)
        song.artist = self
        @songs << song
    end
    
    def add_songs(songs)
        songs.each { |s| add_song(s) }
    end
    
    def self.all
        @@artists
    end
end
