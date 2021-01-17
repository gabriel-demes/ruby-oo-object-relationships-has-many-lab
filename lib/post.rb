class Post

    attr_accessor :title, :author
    @@all = []

    def initialize(title)
        self.title = title
        self.class.all << self
    end

    def self.all
        @@all
    end

    def author_name
        if author
            author.name
        else
            nil
        end
    end

end