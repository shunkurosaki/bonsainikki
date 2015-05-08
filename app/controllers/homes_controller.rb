class HomesController < ApplicationController
  def index
    @all_posts = Post.all.order("id DESC")
  end
end
