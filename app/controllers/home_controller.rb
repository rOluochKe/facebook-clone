<<<<<<< HEAD
# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :authenticate_user!, only: %i[index new]
=======
class HomeController < ApplicationController
  before_action :authenticate_user!
  
>>>>>>> 19e38b9cd4832a0e46d2c13b6b77b5a505419706
  def index
    @posts = Post.all
    @post = Post.new
  end

<<<<<<< HEAD
  def new; end

  def edit; end
end
=======
end
>>>>>>> 19e38b9cd4832a0e46d2c13b6b77b5a505419706
