class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    set_genre
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to @genre, notice: "Genre created successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    set_genre
  end

  def update
    set_genre
    if @genre.update(genre_params)
      redirect_to @genre, notice: "Genre updated successfully!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    set_genre
    @genre.destroy
    redirect_to genres_path, alert: "Genre deleted successfully!"
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:title)
  end
end
