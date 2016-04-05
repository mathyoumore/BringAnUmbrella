class AddHoursToUser < ActiveRecord::Migration
  def change
    add_column :users, :hours, :integer, array:true, default: []
  end
end
