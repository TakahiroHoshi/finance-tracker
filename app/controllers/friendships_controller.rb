class FriendshipsController < ApplicationController
  def destroy
    @friendship = current_user.friendhips.where(friend_id: param[:id]).first
    @friendship.destroy
    respond_to do |format|
      format.html {redirect_to my_friends_path, notice: "Friend was successfully removed"}
    end      
  end

end