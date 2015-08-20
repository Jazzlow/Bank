class AddBalanceToLodgement < ActiveRecord::Migration
  def change
    add_column :lodgements, :balance, :float
  end
end
