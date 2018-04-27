class BlogPostsController < ApplicationController
  before_action :only => [:new, :edit] do
    redirect_to blog_posts_path unless current_user && current_user.admin
  end

  def index
    @blog_posts = BlogPost.all
  end

  def new
    @blog_post = BlogPost.new
  end

  def show
    @blog_post = BlogPost.find(params[:id])
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

  def destroy
    @blog_post = BlogPost.find(params[:id])
    @blog_post.destroy
    redirect_to blog_posts_path
  end

  private
    def blog_post_params
      params.require(:blog_post).permit(:blog_post_title, :blog_post_body)
    end
end
