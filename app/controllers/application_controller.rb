class ApplicationController < ActionController::Base

  protect_from_forgery
	
  private
  #	def current_user
  #		User.find(session[:user_id])
  #	end
  
	def verify_is_admin
  (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
	end

  protected
 	def authorize
	  unless user_signed_in?
	  	redirect_to login_path, :method => :get, :notice => "Please login"
	  end
	end

	def authorize_admin
	  unless user_signed_in? && current_user.admin?
	  	  redirect_to root_url, :notice => "You don't have the permissions."
      end
	end

	def authorize_mentor
	  unless user_signed_in? && current_user.mentor == true
	      redirect_to root_url, :notice => "You don't have the permissions."
	  end
	end

private


end
