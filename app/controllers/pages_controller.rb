class PagesController < ApplicationController
  
  def home
  	@interested_user = InterestedUser.new 
    @home = true
  end

  def betahome
  end

  def survey
  end

  def faq
  end

  def demo
  end

  def investor
  	if params[:password] == "cavatelli429"
  		@approved = true
  	else
  		@approved = false
  	end
  end

  def deck

  	open(Rails.root.join('app','assets','docs','Vizibid_Investor_Presentation.pptx')) {|form|
  	      tmpfile = Tempfile.new("temp")
  	      File.open(tmpfile.path, 'wb') do |f| 
  	        f.write form.read
  	      end 
  	      send_file tmpfile.path, :filename =>  'Vizibid_Investor_Presentation.pptx'
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
