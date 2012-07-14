class AddReferToInterestedUsers < ActiveRecord::Migration
  def change
    add_column :interested_users, :referer, :string
  end
end
