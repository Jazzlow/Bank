class AddUserIdToWithdraw < ActiveRecord::Migration
  def change
    add_column :withdraws, :user_id, :integer
  end
end
