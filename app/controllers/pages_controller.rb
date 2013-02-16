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

  def investor
  	if params[:password] == "capunet810"
  		@approved = true
  	else
  		@approved = false
  	end
  end

  def deck

	open(Rails.root.join('app','assets','docs','Vizibid_Pitch_Deck.pptx')) {|form|
	      tmpfile = Tempfile.new("temp")
	      File.open(tmpfile.path, 'wb') do |f| 
	        f.write form.read
	      end 
	      send_file tmpfile.path, :filename =>  'Vizibid_Pitch_Deck.pptx'
	    }
  end

  def summary
  	open(Rails.root.join('app','assets','docs','Vizibid_Executive_Summary.pdf')) {|form|
	      tmpfile = Tempfile.new("temp")
	      File.open(tmpfile.path, 'wb') do |f| 
	        f.write form.read
	      end 
	      send_file tmpfile.path, :filename =>  'Vizibid_Executive_Summary.pdf'
	    }
  end
end
