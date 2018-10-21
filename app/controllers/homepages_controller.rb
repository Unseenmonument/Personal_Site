class HomepagesController < ApplicationController

	def home
		@fan = Fan.new
    	@help = Help.new
    	@codework = Codework.new

    	@user = User.new

    	@stories = Story.all

    	@fans = Fan.all
	end
	private
		def set_user
	      @user = User.find(params[:id])
	    end

	    def user_params
	      params.require(:user).permit(:name, :username, :email, :location, :avatar, :password)
	    end 
	   
	    def resource_name
	      :user
	    end
	    helper_method :resource_name
	   
	    def resource
	      @resource ||= User.new
	    end
	    helper_method :resource
	   
	    def devise_mapping
	      @devise_mapping ||= Devise.mappings[:user]
	    end
	    helper_method :devise_mapping
	   
	    def resource_class
	      User
	    end
	    helper_method :resource_class
end
