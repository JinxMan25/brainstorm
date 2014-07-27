class AddMindmapRefToNode < ActiveRecord::Migration
  def change
    add_column :nodes, :mindmap, :references
  end
end
