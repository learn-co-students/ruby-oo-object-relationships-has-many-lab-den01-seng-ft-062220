require 'pry'

class Author
    attr_accessor :name, :posts

    @@post_count = 0

    def initialize name
        @name = name
        @posts = []
    end

    def posts
        @posts
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
    end

    def self.post_count
        @@post_count
    end

    def self.post_count=(change)
        @@post_count = change
    end
    
end