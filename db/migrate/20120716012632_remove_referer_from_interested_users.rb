class RemoveRefererFromInterestedUsers < ActiveRecord::Migration
  def up
  	remove_column :interested_users, :referer
  end

  def down
  end
end
