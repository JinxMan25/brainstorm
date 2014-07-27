class CreateMindmaps < ActiveRecord::Migration
  def change
    create_table :mindmaps do |t|

      t.timestamps
    end
  end
end
