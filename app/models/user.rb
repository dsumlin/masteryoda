class User < ActiveRecord::Base
    
    
    attr_accessor   :password,  :encrypt_password
    attr_accessible :name, :email, :password, :password_confirmation
    
    has_many :microposts,  :dependent => :destroy
    has_many :friendships, :dependent => :destroy,
                           :foreign_key => "follower_id"
    
    has_many :reverse_friendships, :dependent => :destroy,
                                   :foreign_key => "followed_id",
                                   :class_name => "Friendship"
    
    has_many :following,  :through => :friendships,
                          :source => :followed
    has_many :followers,  :through => :reverse_friendships,
                          :source =>  :follower 
    
    
    has_attached_file :photo,
    :styles => {
    :thumb=> "100x100#",
    :small  => "400x400>",
    :medium => "1500x1500"
    }
    
    
    
    
    
    email_regex = /[\w+\-.]+@[a-z\d\-.]+\.[a-z]+/i
    
    validates :name,        :presence => true,
                            :length => { :maximum => 50 }
    validates :email,       :presence => true,
                            :format => { :with => email_regex },
                            :uniqueness => { :case_sensitive => false}

    validates :password,    :presence => true,
                            :confirmation => true,
                            :length => {:within => 6..40}
    
    
    before_save :encrypt_password
    
    def has_password?(submitted_password)
        
        encrypted_password == encrypt(submitted_password)
        
       
    end
    
    def feed 
        
       microposts.where("user_id=?", id)

        
    end
    
     def following?(followed)
        
   friendships.find_by_followed_id(followed)
        
       end
    
    def follow!(followed)
        
       friendships.create!(:followed_id => followed.id)
        
       end
    def unfollow!(followed)
    
       friendships.find_by_followed_id(followed).destroy

       end
    
    
       class << self 
    
     def authenticate(email, submitted_password)
    
       user = find_by_email(email)
         (user && user.has_password?(submitted_password)) ? user :nil
        end
         
       
    def authenticate_with_salt(id, cookie_salt)
        user = find_by_id(id)
        (user && user.salt == cookie_salt) ? user : nil
        
        end
    end
    
        
    
    private
    
        def encrypt_password
            self.salt = make_salt if new_record?
            self.encrypted_password = encrypt(password)
        end
    
    def encrypt(string)
        
        secure_hash("#{salt}--#{string}")
        
        end
    
    def make_salt
        
        secure_hash("#{Time.now.utc}--#{password}")
        
    end
    
    def secure_hash(string)
        
        Digest::SHA2.hexdigest(string)
        
        end
    
    
    end

