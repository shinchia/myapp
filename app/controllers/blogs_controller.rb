class BlogsController < ApplicationController
  def index
        @blogs = Blog.all.order(created_at: :desc)
      end

      def show
        @blog = Blog.find_by(id: params[:id])
      end

      def new
        @blog = Blog.new

      end

      def create
        @blog = Blog.new(
          content: params[:content],
          sentence:params[:sentence])
        if @blog.save
          # 変数flash[:notice]に、指定されたメッセージを代入してください

          redirect_to("/blogs/index")
        else
          render("/blogs/new")
        end
      end

      def edit
        @blog = Blog.find_by(id: params[:id])
      end

      def update
        @blog = Blog.find_by(id: params[:id])
        @blog.content = params[:content]
        @blog.sentence = params[:sentence]


        if params[:sheet]
          @blog.sheet_name = "#{@blog.id}.jpg"
          sheet = params[:sheet]
          File.binwrite("public/blog_sheets/#{@blog.sheet_name}", sheet.read)
        end

        if @blog.save
          flash[:notice] = "投稿を編集しました"
          redirect_to("/blogs/#{@blog.id}")
        else
          render("/blogs/edit")
        end
      end

      def destroy
        @blog = Blog.find_by(id: params[:id])
        @blog.destroy
        # 変数flash[:notice]に、指定されたメッセージを代入してください

        redirect_to("/blogs/index")
      end
end
