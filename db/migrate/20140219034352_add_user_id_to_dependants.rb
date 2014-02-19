class AddUserIdToDependants < ActiveRecord::Migration
  def change
    add_column :dependents, :user_id, :integer
  end
end
