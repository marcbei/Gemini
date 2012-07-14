class PagesController < ApplicationController
  
  def home
  	@interested_user = InterestedUser.new 
  end

  def about
  end

  def survey
  end

end
