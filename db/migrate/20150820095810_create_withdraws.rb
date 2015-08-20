class CreateWithdraws < ActiveRecord::Migration
  def change
    create_table :withdraws do |t|
      t.string :name
      t.float :amount
      t.text :description

      t.timestamps null: false
    end
  end
end
