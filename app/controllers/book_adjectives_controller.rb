class BookAdjectivesController < ApplicationController
  def index
    @categories = Category.all
    @sub_categories = SubCategory.all
    @genres = Genre.all 
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
