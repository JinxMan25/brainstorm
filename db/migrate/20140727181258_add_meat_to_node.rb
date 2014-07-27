class AddMeatToNode < ActiveRecord::Migration
  def change
    add_column :nodes, :source, :string
    add_column :nodes, :target, :string
    add_column :nodes, :source_body, :text
    add_column :nodes, :target_body, :text
  end
end
