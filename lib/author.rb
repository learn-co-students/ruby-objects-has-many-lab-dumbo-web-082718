
class Author

  attr_accessor :name, :post

  def initialize(name)
    @name = name
    @posts = []
    #everytime a new author is created, they get an empty array to put their posts in
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end


  def add_post_by_title(title)
    title = Post.new(title)
    @posts << title
    title.author = self
  end

  def self.post_count
    Post.all.count
  end

end
