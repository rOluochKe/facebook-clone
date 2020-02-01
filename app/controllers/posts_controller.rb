class PostsController < ApplicationController
  before_action :find_post, except: %i[new create index]
  before_action :authenticate_user!, only: %i[new create edit update destroy]
  before_action :require_login

  def index
    @posts = Post.all
    @post = Post.new
  end

  def new
    @post = current_user.posts.build
  end

  def show
  end

  def edit
  end

  def create
   @post = current_user.posts.create(content: params[:post][:content])
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

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content, :user_id)
  end
end