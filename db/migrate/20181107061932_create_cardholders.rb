class CreateCardholders < ActiveRecord::Migration
  def change
    create_table :cardholders do |t|
      t.string :name
      t.string :email
      t.date :birthday
      t.string :card_number
      t.integer :balance
      t.integer :debit
      t.integer :credit

      t.timestamps null: false
    end
  end
end
