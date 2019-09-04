class Admin::BlogsController < Admin::BaseController
  respond_to :json

  def index
    @blogs = Blog.all
    respond_with @blogs
  end

  def new

  end

  def show
    @blog = Blog.find(params[:id])
    respond_with @blog
  end
end
