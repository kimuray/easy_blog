class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_parmas)
    if @blog.save
      redirect_to blog_url(@blog), notice: '記事を投稿しました'
    else
      render :new
    end
  end

  def show
    set_blog
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_parmas
    params.require(:blog).permit(:title, :content, :status)
  end
end
