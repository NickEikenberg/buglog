class AddProjectReferenceToBugs < ActiveRecord::Migration[6.1]
  def change
    add_reference :bugs, :project
  end
end
