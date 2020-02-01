class PostsController < ApplicationController
  before_action :get_post, except: [:new, :create, :index]
	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @posts = Post.all
    @post = Post.new
  end

  def new
    @post = current_user.posts.build
  end

  def create
    puts "#$$$$$$$$$$$$$$ #{current_user}"
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.valid?
      @post.save
      redirect_to posts_url
    else
      render 'new'
    end
  end
  def update
    if @post.update(content: params[:post][:content])
		redirect_to @post
    else
      flash[:error] = 'Could not update'
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def get_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content, :user_id)
  end
end