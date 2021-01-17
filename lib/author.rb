class Author
    attr_accessor :name
    @@all = []

    def initialize(name)
        self.name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post.author = self 
    end

    def add_post_by_title(title)
        add_post(Post.new(title))
    end

    def self.post_count
        count = 0
        all.each {|author| count += author.posts.length}
        count
    end

end