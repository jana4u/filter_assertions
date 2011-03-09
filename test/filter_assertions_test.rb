require 'test_helper'

class FilterAssertionsTest < ActiveSupport::TestCase
  context 'PostController:' do
    setup {
      @controller = PostsController
    }
    context 'before filter :increment_counter' do
      should 'be called before :show action' do
        assert_before_filter :increment_counter, :only => [:show]
        assert_no_before_filter :increment_counter, :except => [:show]
      end
      should 'not be called before :index, :new, :create, :edit, :update, :destroy actions' do
        assert_no_before_filter :increment_counter, :only => [:index, :new, :create, :edit, :update, :destroy]
        assert_before_filter :increment_counter, :except => [:index, :new, :create, :edit, :update, :destroy]
      end
    end

    context 'before filter :authenticate' do
      should 'not be called before :index and :show actions' do
        assert_no_before_filter :authenticate, :only => [:index, :show]
        assert_before_filter :authenticate, :except => [:index, :show]
      end
      should 'be called before :new, :create, :edit, :update and :destroy actions' do
        assert_before_filter :authenticate, :only => [:new, :create, :edit, :update, :destroy]
        assert_no_before_filter :authenticate, :except => [:new, :create, :edit, :update, :destroy]
      end
    end

    context 'before filter :find_post' do
      should 'not be called before :index actions' do
        assert_before_filter :find_post, :except => [:index]
        assert_no_before_filter :find_post, :only => [:index]
      end

      should 'be called before :show, :new, :create, :edit, :update and :destroy actions' do
        assert_before_filter :find_post, :only => [:show, :new, :create, :edit, :update, :destroy]
        assert_no_before_filter :find_post, :except => [:show, :new, :create, :edit, :update, :destroy]
      end
    end

    context 'before filter :find_top_posts' do
      should 'be called before each actions' do
        assert_before_filter :find_top_posts
      end
    end

    context 'before filter :find_news' do
      should 'not be called before each actions' do
        assert_no_before_filter :find_news
      end
    end

    context 'before filter :find_posts' do
      should 'be called before :index action' do
        assert_before_filter :find_posts, :only => [:index]
        assert_no_before_filter :find_posts, :except => [:index]
      end
      should 'not be called before :show, :new, :create, :edit, :update and :destroy actions' do
        assert_before_filter :find_posts, :except => [:show, :new, :create, :edit, :update, :destroy]
        assert_no_before_filter :find_posts, :only => [:show, :new, :create, :edit, :update, :destroy]
      end
    end
  end
end
