class AddMembersToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :members, :bigint
  end
end
