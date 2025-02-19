class BookAdjectivesController < ApplicationController
  def index
    @categories = Category.all
    @sub_categories = SubCategory.all
    @genres = Genre.all
  end

  def edit
    set_book_adjective
    @categories = Category.all
  end

  def update
    byebug
    update_categories if params[:category]
    update_sub_categories if params[:sub_category]
    update_genres if params[:genre]

    redirect_to book_adjectives_path, notice: "Updated successfully!"
  end

  private

  def update_categories
      category = Category.find(id)
      category.update
  end

  def update_sub_categories
      sub_category = SubCategory.find(id)
      sub_category.update
  end

  def update_genres
      genre = Genre.find(id)
      genre.update
  end

  def set_book_adjective
    @type = params[:type]
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
    params.require(:book_adjective).permit(:title, :category_id)
  end
end
