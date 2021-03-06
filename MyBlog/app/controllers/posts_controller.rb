class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:show,:index]
  def index
    @post=Post.all
  end

  def new
    @post=Post.new
  end

  def edit
    @post=Post.find(params[:id])
  end

  def show
    @post=Post.find(params[:id])
  end

  def create
    movies=params[:val]
    movies=movies.split("|")
    @post=Post.new(post_params)
    movies.size.times do |i|
      @film=Film.find_by_name(movies[i])
      @post.films << @film
    end
    if(@post.save)
      redirect_to @post
    else
      render 'new'
    end
  end

  def destroy
      @post=Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  def update
    @post=Post.find(params[:id])
    if(@post.update(post_params))
      redirect_to @post
    else
      render 'edit'
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
