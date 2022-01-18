class CreateBugs < ActiveRecord::Migration[6.1]
  def change
    create_table :bugs do |t|
      t.text :title
      t.text :description
      t.text :branch
      t.text :severity
      t.text :priority
      t.integer :reported_by
      t.integer :assigned_to
      t.text :status
      t.text :repro_steps

      t.timestamps
    end
  end
end
