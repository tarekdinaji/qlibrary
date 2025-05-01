class BookAdjectivesController < ApplicationController
  def index
    @categories = Category.all
    @sub_categories = SubCategory.all
    @genres = Genre.all
  end
end
