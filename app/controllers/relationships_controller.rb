class RelationshipsController < ApplicationController
	before_action :logged_in_user

  	def create
  		user = User.find(params[:followed_id])
    	current_user.follow(user)
      redirect_to :back
  	end

  	def destroy
	    user = Relationship.find(params[:id])
    	current_user.unfollow(user)
    	redirect_to :back
  	end

    def show 
    end
end
