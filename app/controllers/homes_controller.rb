class HomesController < ApplicationController
  def index
    @all_posts = Post.all
  end
end
