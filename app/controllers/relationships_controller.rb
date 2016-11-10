class RelationshipsController < ApplicationController

  def create
    @relationship = current_user.relationship.build(friend_id: params[:friend_id])

    if @relationship.save
      flash[:notice] = "You're now friends!"
      redirect_to profile_path(current_user.id)
    else
      flash[:notice] = "Unable to follow."
      redirect_to root_path
    end
  end

  private

  def relationship_params
    params.require(:relationship).permit(:user_id, :friend_id)
  end

end
