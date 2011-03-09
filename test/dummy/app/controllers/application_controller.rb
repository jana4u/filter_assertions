class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate
  before_filter :find_news
  before_filter :find_posts

  private

  def authenticate
    # code ...
  end

  def find_news
    # code ...
  end

  def find_posts
    # code
  end
end
