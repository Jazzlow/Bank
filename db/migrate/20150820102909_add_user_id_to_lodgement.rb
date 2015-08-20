class AddUserIdToLodgement < ActiveRecord::Migration
  def change
    add_column :lodgements, :user_id, :integer
  end
end
