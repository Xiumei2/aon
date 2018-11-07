class CreateAondetails < ActiveRecord::Migration
  def change
    create_table :aondetails do |t|
      t.references :cardholder, index: true, foreign_key: true
      t.integer :roll
      t.integer :bid
      t.boolean :win

      t.timestamps null: false
    end
  end
end
