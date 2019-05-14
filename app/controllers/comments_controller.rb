class CommentsController < ApplicationController
	def create
		book = Book.find(params[:book_id])
		@comment = current_user.comments.new(comment_params)
		@comment.book_id = book.id
		@comment.save
		redirect_to book_path(@comment.book)
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def update
		comment = Comment.find(params[:id])
		comment.update(comment_params)
		redirect_to book_path(comment.book)
	end

	def destroy
		comment = Comment.find(params[:id])
		book = comment.book
		comment.destroy
		redirect_to book_path(book)
	end
	private

	def comment_params
  		params.require(:comment).permit(:text)
	end


end
