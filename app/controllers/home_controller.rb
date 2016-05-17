class HomeController < ApplicationController
  def index
    @posts = Post.all.reverse
  end
  
  def write
    post = Post.new(title: params[:title], content: params[:content])
    if post.save
      redirect_to "/home/index"
    else
      render :text => post.errors.messages
    end
  end
  
  def comment_write
    comment = Comment.new(content: params[:comment], post_id: params[:post_id1])
    comment.save
    redirect_to "/home/index"
  end
end
