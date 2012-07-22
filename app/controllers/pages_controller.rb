class PagesController < ApplicationController
  
  def home
  	@interested_user = InterestedUser.new 
  end

  def about
  end

  def survey
  end

  def faq
  end

end
