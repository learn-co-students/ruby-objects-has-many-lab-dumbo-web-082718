class Author

  attr_accessor :name

  @@all_posts_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts<<post
    post.author = self
    @@all_posts_count+=1
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts<<new_post
    @@all_posts_count+=1
  end

  def posts
    @posts
  end

  def self.post_count
    @@all_posts_count
  end



end
