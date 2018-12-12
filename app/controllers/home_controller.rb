class HomeController < ApplicationController
  before_action :forbid_login_user, {only: [:top]}

  def index
    @blogs = Blog.all.order(created_at: :desc)
  end

def top
end

def about
end
end
