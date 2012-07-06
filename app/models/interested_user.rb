class InterestedUser < ActiveRecord::Base
  attr_accessible :email, :name

  before_save { |user| user.email = email.downcase }

  VALID_NAME_REGEX  = /[\w]+([\s]+[\w]+){1}+/
  validates :name, :presence=> true, :length=> { :maximum=> 75 }#, :format=> { :with=> VALID_NAME_REGEX }
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence=> true, :format=> { :with=> VALID_EMAIL_REGEX },
                    :uniqueness=> true
end
