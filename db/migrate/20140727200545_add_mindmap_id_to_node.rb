class AddMindmapIdToNode < ActiveRecord::Migration
  def change
    add_column :nodes, :mindmap_id, :integer
  end
end
