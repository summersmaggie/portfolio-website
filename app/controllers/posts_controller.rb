class PostsController < ApplicationController

  def index
    slug = params[:slug]
    @post = ButterCMS::Page.get('blog', slug).data.fields
  end
  #
  # def new
  #   @post = Post.new
  # end
  #
  # def edit
  #   @post = Post.find(params[:id])
  # end

  # def show
  #   slug = params[:slug]
  #   @post = ButterCMS::Page.get('blog', slug).data.fields
  # end

  # def create
  #   @post = Post.new(post_params)
  #   if @post.save
  #     flash[:notice] = "Blog post saved!"
  #     redirect_to posts_path
  #   else
  #     flash[:alert] = "Blog post couldn't be saved."
  #     render :new
  #   end
  # end
  #
  # def update
  #   @post = Post.find(params[:id])
  #   if @post.update(post_params)
  #     redirect_to posts_path
  #   else
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   @post = Post.find(params[:id])
  #   @post.destroy
  #   redirect_to posts_path
  # end
  #
  # private
  #   def post_params
  #     params.require(:post).permit(:title, :author, :content)
  #   end
end
