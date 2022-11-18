class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  def home
    # @posts = Post.all

    if params[:query].present?
      @posts = Post.search_posts(params[:query])
    else
      @posts = Post.all
    end
  end
end
