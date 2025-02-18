class BookAdjectivesController < ApplicationController
  before_action :set_book_adjective, only: [:edit, :update]

  def index
    @categories = Category.all
    @sub_categories = SubCategory.all
    @genres = Genre.all
  end

  def edit
  end

  def update
    if @book_adjective.update(book_adjective_params)
      redirect_to book_adjectives_path, notice: "#{@book_adjective.class.name} updated successfully!"
    else
      render :edit
    end
  end

  private

  def set_book_adjective
    case params[:type]
    when "Category"
      @book_adjective = Category.find(params[:id])
    when "SubCategory"
      @book_adjective = SubCategory.find(params[:id])
    when "Genre"
      @book_adjective = Genre.find(params[:id])
    else
      redirect_to book_adjectives_path, alert: "Invalid type!"
    end
  end

  def book_adjective_params
    params.require(:book_adjective).permit(:title)
  end
end
