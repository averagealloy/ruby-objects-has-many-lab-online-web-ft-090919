class Author
  attr_accessor :name, :title



  def initialize(name)
    @name = name
    @title = title
    @@all = []
  end

  def posts
    Post.all.select {|post|post.author == self }
  end

  def add_post(post)
  post.author = self

  end

def add_post_by_title(name)
  post = Post.new(name)
  post.author = self
end

def self.post_count
  Post.all.length
end


end
