class FilmsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @film=Film.all
  end

  def new

  end

  def edit
    @film=Film.find(params[:id])
  end

  def show
    @film=Film.find(params[:id])
  end

  def create
    @film=Film.new(film_params)
    if(@film.save)
      redirect_to @film
    else
      render 'new'
    end
  end

  def destroy
    @film=Film.find(params[:id])
    @film.destroy
    redirect_to films_path
  end

  def update
    @film=Film.find(params[:id])
    if(@film.update(film_params))
      redirect_to @film
    else
      render 'edit'
    end
  end

  private
  def film_params
    params.require(:film).permit(:name, :director, :year, :actors, :discription)
  end
end
