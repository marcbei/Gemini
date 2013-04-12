class UserMailer < ActionMailer::Base
  default :from => "\"The Vizibid Team\" <info@vizibid.com>"

  def signup_email(user)
    @interested_user = user 
    mail(:to => "marc@vizibid.com,forrest@vizibid.com", :subject => "New Vizibid Interested User Sign-Up")
  end

  def signup_user_email(user)
	@interested_user = user 
    mail(:to => user.email, :subject => "Vizibid Interest Confirmation")
  end 

end
