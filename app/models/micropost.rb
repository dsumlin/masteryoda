class Micropost < ActiveRecord::Base
    
    
    
    
    attr_accessible :content
    
    
    belongs_to :user
    
    
    
    validates :content, :presence => true, :length => { :maximum => 2000 }
    validates :user_id, :presence => true
    
    default_scope :order => 'microposts.created_at DESC'
    
end
