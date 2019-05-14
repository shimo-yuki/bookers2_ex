class FavoritesController < ApplicationController
	def create
		@favorite = current_user.favorites.build(book_id: params[:book_id])
		@favorite.save
		redirect_to book_path(@favorite.book)
	end

	def destroy
		@book = Book.find(params[:book_id])
		@favorite = @book.favorites.find_by(user_id: current_user.id)
		@favorite.destroy
		redirect_to book_path(@book)
	end
end
