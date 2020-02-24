require 'pry'
class Author

    attr_accessor :name, :posts

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def all
        @@all
    end
    
    def posts
        @posts = Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        new_post = Post.new(post_title)
        add_post(new_post)
    end

    def self.post_count
        Post.all.size
    end

end