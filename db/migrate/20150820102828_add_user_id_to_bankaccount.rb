class AddUserIdToBankaccount < ActiveRecord::Migration
  def change
    add_column :bankaccounts, :user_id, :integer
  end
end
