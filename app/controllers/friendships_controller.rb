class FriendshipsController < ApplicationController

    before_filter :authenticate


def create

    user = User.find(params[:friendship][:followed_id])
    current_user.follow!(user)
    redirect_to user
    
end

def destroy
    
    user = Friendship.find(params[:id]).destroy
    redirect_to current_user
end

end