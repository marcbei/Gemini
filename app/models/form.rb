class Form < ActiveRecord::Base
  attr_accessible :form
  mount_uploader :form, FormUploader

   validates :form, :presence=>true, :length => {:minimum => 5}

end
