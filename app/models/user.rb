class User < ActiveRecord::Base
  attr_accessible :barnumber, :email, :name
  
  VALID_BAR_NUMBER_REGEX  = /^[-0-9]+$/
  validates :barnumber,  :presence=> true, :length=> { :maximum=> 50 }, :format=> { :with=> VALID_BAR_NUMBER_REGEX }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence=> true, :format=> { :with=> VALID_EMAIL_REGEX },
                    :uniqueness=> true
end
