class CreateEmails < ActiveRecord::Migration
  def change
    change_table :emails do |t|
      t.string :address
      t.string :password

      t.timestamps
    end
  end
end
