class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @posts = Post.all
    @post = Post.new
  end

end