class AddindexUsers < ActiveRecord::Migration
  def change
  	add_index :interested_users, :email, :unique=>true
  	add_index :users, :email, :unique=>true
  end
end
