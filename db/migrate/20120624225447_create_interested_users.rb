class CreateInterestedUsers < ActiveRecord::Migration
  def change
    create_table :interested_users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
