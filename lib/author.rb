
class Author
  attr_accessor :name

  @@posts = []

  def initialize(name)
    @name = name

  end

  def add_post(name)
    @@posts << name
    name.author = self
  end

  def posts
    @@posts
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    @@posts << post


  end

  def self.post_count
    @@posts.length
  end

#class end
end
