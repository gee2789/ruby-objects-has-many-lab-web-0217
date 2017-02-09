require 'pry'

class Author
  attr_accessor :name, :posts

  @@post_count=0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(title)
    title.author = self  #define the self and set from post.rb
    @posts << title
    @@post_count += 1
  end

  def add_post_by_title(title)
    posts = Post.new(title)
    posts.author=self
    @posts << posts
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end


end
