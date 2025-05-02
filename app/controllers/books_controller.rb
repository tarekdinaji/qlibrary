class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy]
  
    # GET /books
    def index
      @books = Book.includes(:author, :category, :sub_category, :genres).all
    
      @books = @books.where("title ILIKE ?", "%#{params[:title]}%") if params[:title].present?
      @books = @books.where(author_id: params[:author_id]) if params[:author_id].present?
      @books = @books.where(category_id: params[:category_id]) if params[:category_id].present?
      @books = @books.where(sub_category_id: params[:sub_category_id]) if params[:sub_category_id].present?
      @books = @books.where(language: params[:language]) if params[:language].present?
    
      if params[:genre_id].present?
        @books = @books.joins(:genres).where(genres: { id: params[:genre_id] }).distinct
      end
    
      @categories = Category.all
      @sub_categories = SubCategory.all
      @genres = Genre.all
      @languages = Book.select(:language).distinct.pluck(:language)
      @authors = Author.all
      @books = Book.all
    end
  
    # GET /books/1
    def show
    end
  
    # GET /books/new
    def new
      @book = Book.new
      @categories = Category.all
      @sub_categories = SubCategory.all
      @authors = Author.all
    end
  
    # GET /books/1/edit
    def edit
      @categories = Category.all
      @sub_categories = SubCategory.all
      @authors = Author.all
    end
  
    # POST /books
    def create
      @book = Book.new(book_params)
  
      if @book.save
        redirect_to @book, notice: 'Book was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /books/1
    def update
      if @book.update(book_params)
        redirect_to @book, notice: 'Book was successfully updated.'
      else
        render :edit
      end
    end
  
    # DELETE /books/1
    def destroy
      @book.destroy
      redirect_to books_url, notice: 'Book was successfully destroyed.'
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_book
        @book = Book.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def book_params
        params.require(:book).permit(
          :title, :edition, :language, :isbn, :description, :cover_image, 
          :age_group, :available_copy, :total_copy, :book_location, 
          :publishing_date, :publisher, :category_id, :sub_category_id, :author_id
        )
      end
  end
  