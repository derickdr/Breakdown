class ApplicationController < ActionController::Base

    def current_user
        if session[:user_id].present?
            @current_user ||= User.find_by(id: session[:user_id])   
        end        
    end
    helper_method :current_user

    def user_signed_in?
        current_user.present?
    end
    helper_method :user_signed_in?

    private

    def authenticate_user!
        unless user_signed_in?
            redirect_to sign_in_path
        end    
    end
    helper_method :authenticate_user!

end
