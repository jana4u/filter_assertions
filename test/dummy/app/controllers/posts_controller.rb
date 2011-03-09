class PostsController < ApplicationController

  skip_before_filter :authenticate, :only => [:index, :show]
  before_filter :increment_counter, :only => [:show]
  before_filter :find_top_posts
  skip_before_filter :find_news
  before_filter :find_post, :except => [:index]
  skip_before_filter :find_posts, :except => [:index]

  def index; end

  def show; end

  def new; end

  def create; end

  def edit; end

  def update; end

  def destroy; end

  private

  def increment_counter
    # code ...
  end

  def find_top_posts
    # code ...
  end

  def find_post
    # code ...
  end
end
