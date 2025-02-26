class SubCategoriesController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update, :destroy]

  def index
    @sub_categories = SubCategory.all
  end

  def show
    set_sub_category
  end

  def new
    @sub_category = SubCategory.new
  end

  def create
    @sub_category = SubCategory.new(sub_category_params)
    if @sub_category.save
      redirect_to @sub_category, notice: "SubCategory created successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    set_sub_category
  end

  def update
    set_sub_category
    if @sub_category.update(sub_category_params)
      redirect_to @sub_category, notice: "SubCategory updated successfully!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    set_sub_category
    @sub_category.destroy
    redirect_to sub_categories_path, alert: "SubCategory deleted successfully!"
  end

  private

  def set_sub_category
    @sub_category = SubCategory.find(params[:id])
  end

  def sub_category_params
    params.require(:sub_category).permit(:title)
  end
end
