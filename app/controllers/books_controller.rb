class BooksController < ApplicationController
  def new
    @book = Book.new #tytleとbodyが格納
  end
  
  def create
     book = Book.new(book_params)
     book.save
     redirect_to '/books/index'
  end

  def index
  end

  def show
  end

  def edit
  end
  
   private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
