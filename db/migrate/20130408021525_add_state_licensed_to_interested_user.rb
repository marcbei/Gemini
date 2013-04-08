class AddStateLicensedToInterestedUser < ActiveRecord::Migration
  def change
  	add_column :interested_users, :state_licensed, :string
  end
end
