class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author=(author)
    @author=author
  end

  def author_name
    if @author
      return @author.name
    end
    nil
  end

end
