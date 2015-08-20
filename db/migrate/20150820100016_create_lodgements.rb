class CreateLodgements < ActiveRecord::Migration
  def change
    create_table :lodgements do |t|
      t.string :name
      t.float :amount
      t.text :description

      t.timestamps null: false
    end
  end
end
