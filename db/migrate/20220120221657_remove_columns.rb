class RemoveColumns < ActiveRecord::Migration[6.1]
  def self.up
    remove_column :projects, :users_id
  end
end
