class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new #tao doi tuong de kiem tra error
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      # chuyển tới trang show post
      redirect_to @post
    else
      # quay lại trang tạo post mới, đồng thời show error
      #redirect_to new_post_path, flash: { error: @post.errors.full_messages }
      render 'new' #render sẽ save content (ko refresh trang)
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    #@post.update(params[:post].permit(:title, :content, :img))
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params[:post].permit(:title, :content, :img))
      redirect_to @post
    else
      #render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  def post_params
    params.require(:post).permit(:title, :content, :img)
  end
end