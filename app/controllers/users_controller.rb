class UsersController < ApplicationController
    
    before_filter :authenticate, :except => [:show, :new, :create]
    before_filter :correct_user, :only => [:edit, :update]
    before_filter :admin_user,   :only => :destroy
    
    
    def index
        @users = User.paginate(:page => params[:page], :per_page => 5)
        @title = "MEMBERS"
        end
    
    
    def show
        @user = User.find(params[:id])
        @microposts = @user.microposts.paginate(:page => params[:page], :per_page => 3)
        @title = @user.name

    end
    
    def following 
        
        @title = "Following"
        @user = User.find(params[:id])
        @users = @user.following.paginate(:page => params[:id])
        render 'show_follow'
    end
    
    
    def followers
    
        @title = "Followers"
        @user = User.find(params[:id])
        @users = @user.followers.paginate(:page => params[:id])
        render 'show_follow'
        
        
    end
    
    def new
        
        @user = User.new
        @title = "Sign up"
        end
    
    
    
    def create
        @user = User.new(params[:user])
        if @user.save
            sign_in @user
            redirect_to @user, :flash => { :success => "WELCOME!!!" }
           else
           @title = "Sign up"
           render 'new'
           end
        end
    
    
    def edit
        @user = User.find(params[:id])
        @title = "Edit user"
        
        end
    
    def update
        @user = User.find(params[:id])
            if @user.update_attributes(params[:user])
                redirect_to @user, :flash => { :success => "Updated" }
            else
        @title = "Edit user"
        render 'edit'
        end
    end
     
  

    def destroy
        User.find(params[:id]).destroy
        flash[:notice] = "Bye Bye"
        redirect_to users_path
    
    end
    
    private
    
    def authenticate
     deny_access unless signed_in? 
        
        end
    
    def correct_user
        
        @user = User.find(params[:id])
        redirect_to(root_path) unless current_user?(@user)
        
        end
    def admin_user
        user = User.find(params[:id])
        redirect_to(root_path) unless current_user.admin?        
        end
        
end