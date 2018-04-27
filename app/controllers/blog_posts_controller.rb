class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      flash[:notice] = "Blog post saved!"
      redirect_to blog_posts_path
    else
      flash[:alert] = "Blog post couldn't be saved."
      render :new
    end
  end

  private
    def blog_post_params
      params.require(:blog_post).permit(:blog_post_title, :blog_post_body)
    end
end
