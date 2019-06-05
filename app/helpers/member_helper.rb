module MemberHelper
    def log_in(user)
        session[:email] = user.email
    end
    def current_user
            @current_user ||= User.find_by(email: session[:email])
    end
    def user_signed_in?
        !current_user.nil?
    end
    
    
end
