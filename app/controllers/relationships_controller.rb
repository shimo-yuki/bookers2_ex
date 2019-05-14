class RelationshipsController < ApplicationController

	def create
		@relationship = current_user.active_relationships.build(followed_id: params[:user_id])
		@relationship.save
		redirect_to user_path(params[:user_id])
	end

	def destroy
		@relationship = current_user.active_relationships.find_by(followed_id: params[:user_id])
		@relationship.destroy
		redirect_to user_path(params[:user_id])
	end

end
