class RenameUsersToNewUsers < ActiveRecord::Migration[7.1]
  def up
    unless table_exists?(:new_users)
      rename_table :users, :new_users
    end
  end

  def down
    unless table_exists?(:users)
      rename_table :new_users, :users
    end
  end
end
