class User < ActiveRecord::Base
  attr_accessor :confirmationcode
  attr_accessible :barnumber, :email, :name, :password, :password_confirmation, :confirmationcode

  has_secure_password
  
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  
  VALID_BAR_NUMBER_REGEX  = /^[-0-9]+$/
  validates :barnumber,  :presence=> true, :length=> { :maximum=> 50 }, :format=> { :with=> VALID_BAR_NUMBER_REGEX }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence=> true, :format=> { :with=> VALID_EMAIL_REGEX },
                    :uniqueness=> true
  VALID_NAME_REGEX  = /[\w]+([\s]+[\w]+){1}+/
  validates :name, :presence=> true, :length=> { :maximum=> 50 }, :format=> { :with=> VALID_NAME_REGEX }
  validates :password, :presence=> true, :length=> { :minimum=> 6 }
  validates :password_confirmation, :presence=> true
  validates :confirmationcode, :presence=>true, :length => {:minimum => 4, :maximum => 6}


private
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end

end
