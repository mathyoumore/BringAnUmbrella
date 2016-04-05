class CreateUsers < ActiveRecord::Migration
  def change
    drop_table :users
    
    create_table :users do |t|
      t.string :email
      t.string :zip_code

      t.timestamps null: false
    end
  end
end
