class CreateBankaccounts < ActiveRecord::Migration
  def change
    create_table :bankaccounts do |t|
      t.text :image_url
      t.string :name
      t.float :amount
      t.integer :sort_code

      t.timestamps null: false
    end
  end
end
