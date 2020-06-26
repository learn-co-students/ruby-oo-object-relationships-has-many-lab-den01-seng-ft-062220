require 'pry'

class Post
    attr_accessor :title
    attr_reader :author

    @@all = []

    def initialize title
        @title = title
        @@all << self

    end

    def self.all
        @@all
    end

    def author=(name)
        @author = name
        @author.posts << self
        Author.post_count += 1
    end

    def author_name
        @author ? @author.name : nil
    end
    
end