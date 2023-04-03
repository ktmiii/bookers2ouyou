class BookCommentsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @comment = @book.book_comments.new(book_comment_params)
    @comment.user_id = current_user.id
    unless @comment.save
      render 'error'
    end
    @book_comment = BookComment.new

  end

  def destroy
    @book = Book.find(params[:book_id])
    book_comment = BookComment.find(params[:id])
    book_comment.destroy
  end


  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end



end
