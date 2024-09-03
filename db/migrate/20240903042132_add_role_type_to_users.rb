class AddRoleTypeToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :role_type, :string, null: false
  end
end
