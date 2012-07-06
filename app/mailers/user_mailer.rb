class UserMailer < ActionMailer::Base
  default :from => "info@vizibid.com"

  def signup_email(user)
    @interested_user = user 
    mail(:to => "marc@vizibid.com,forrest@vizibid.com", :subject => "New Vizibid Interested User Sign-Up")
  end

  def signup_user_email(user)
	@interested_user = user 
    mail(:to => user.email, :subject => "Thank You For Signing Up")
  end 

end
