class PostsController < ApplicationController

  # http_basic_authenticate_with name: 'Rhys', password: 'doink', except: [:index, :show]

  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post].permit(:title, :body))

    if @post.save
      flash[:notice] = 'Post saved!'
      redirect_to '/posts'
    else
      flash[:notice] = 'Please enter a title of five or more characters!'
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params[:post].permit(:title, :body))

    if @post.save
      flash[:notice] = 'Post successfully updated'
      redirect_to '/posts'
    else
      flash[:notice] = 'Ooops, you done fudged it up!'
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post nuked y'all"
    redirect_to '/posts'
  end

end