class AddTitleToMindmap < ActiveRecord::Migration
  def change
    add_column :mindmaps, :mindmap_name, :string
  end
end
