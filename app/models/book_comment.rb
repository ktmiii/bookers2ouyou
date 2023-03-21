class BookComment < ApplicationRecord

  belongs_to :user
  belongs_to :book

  def create
    book = Book.find(params[:post_image_id])
    comment = current_user.book_comments.new(book_comment_params)
    comment.book_image_id = book_image.id
    comment.save
    redirect_to book_path(book)
  end

  private

  def post_comment_params
    params.require(:book).permit(:comment)
  end


end
