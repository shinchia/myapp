class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def authenticate_user
    if @current_user == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/users/login")
    end
  end

  def forbid_login_user
    if @current_user
      flash[:notice] = "すでにログインしています"
      redirect_to("/posts/index")
    end
  end



before_action :set_current_paper

  def set_current_paper
    @current_paper = Paper.find_by(id: session[:paper_id])
  end

  def authenticate_paper
    if @current_paper == nil
      flash[:notice] = "編集権原がありません。"
      redirect_to("/blogs/index")
    end
  end

  def forbid_login_paper
    if @current_

      flash[:notice] = "すでにログインしています"
      redirect_to("/blogs/index")
    end
  end
end
