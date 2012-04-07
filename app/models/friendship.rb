class Friendship < ActiveRecord::Base

    attr_accessible :followed_id
    
    
    belongs_to :follower, :foreign_key => "follower_id", :class_name => "User"
    belongs_to :followed, :foreign_key => "follower_id", :class_name => "User"
    
    validates :followed_id, :presence => true
    validates :follower_id,  :presence => true

end
