class UserMailer < ActionMailer::Base
  default :from => "mbeitchman@gmail.com"

  def signup_email(user)
    @user = user 
    mail(:to => "mbeitchman@gmail.com,fcarlson@gmail.com", :subject => "New Gemini Interested User Sign-Up")
  end
end
