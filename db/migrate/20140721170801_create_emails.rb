class CreateEmails < ActiveRecord::Migration
  def change 
    create_table :emails do |t|
      t.string :address
      t.index :address
      t.string :password
      t.index :password

      t.timestamps
    end
  end
end
