class PapersController < ApplicationController
  def index
    @papers = Paper.all
  end

  def show
    @paper = Paper.find_by(id: params[:id])
  end

  def new
    @paper = Paper.new
  end

  def create
    @paper = Paper.new(
      name: params[:name],
      email: params[:email],
      image_name: "default_paper.jpg",
      password: params[:password]
    )
    if @paper.save
      session[:paper_id] = @paper.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/papers/#{@paper.id}")
    else
      render("/papers/new")
    end
  end

  def edit
    @paper = Paper.find_by(id: params[:id])
  end

  def update
    @paper = Paper.find_by(id: params[:id])
    @paper.name = params[:name]
    @paper.email = params[:email]

    if params[:image]
      @paper.image_name = "#{@paper.id}.jpg"
      image = params[:image]
      File.binwrite("public/paper_images/#{@paper.image_name}", image.read)
    end

    if @paper.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/papers/#{@paper.id}")
    else
      render("/papers/edit")
    end
  end

  def login_form
  end

  def login
    @paper = Paper.find_by(email: params[:email], password: params[:password])
    if @paper
      session[:paper_id] = @paper.id
      flash[:notice] = "ログインしました"
      redirect_to("/blogs/index")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render("/papers/login_form")
    end
  end

  def logout
    session[:paper_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/blogs/index")
  end

  # ensure_correct_paperを定義してください
  def ensure_correct_paper
    if @current_paper.id != params[:id].to_i
      flash[:notice] = "権限がありません"
      redirect_to("/blogs/index")
    end
  end
end
