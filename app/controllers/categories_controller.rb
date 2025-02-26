class CategoriesController < ApplicationController

  def show
    set_category
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category, notice: "Category Created successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    set_category
  end

  def update
    set_category
    if @category.update
      redirect_to @category, notice: "Updated successfully!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    set_category_params
    @category.destroy
    redirect_to book_adjectives_path, alert: "Category Deleted Successfully!"
  end
  private

  private
    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:title)
    end
end
